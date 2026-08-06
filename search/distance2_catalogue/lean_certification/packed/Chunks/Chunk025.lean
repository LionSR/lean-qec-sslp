import SS

namespace Catalogue.Chunk025

open SS SS.Verify

/-- Catalogue code #12500: ((6,2,2)), m=17, a=[1, 2, 9, 9, 14, 15], S=[0, 12]. -/
def code_12500 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12501: ((6,2,2)), m=17, a=[1, 2, 9, 13, 14, 15], S=[0, 12]. -/
def code_12501 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12502: ((6,2,2)), m=17, a=[1, 3, 3, 4, 5, 5], S=[0, 10]. -/
def code_12502 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12503: ((6,2,2)), m=17, a=[1, 3, 3, 4, 5, 5], S=[0, 11]. -/
def code_12503 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12504: ((6,2,2)), m=17, a=[1, 3, 3, 4, 5, 6], S=[0, 10]. -/
def code_12504 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12505: ((6,2,2)), m=17, a=[1, 3, 3, 4, 5, 7], S=[0, 11]. -/
def code_12505 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12506: ((6,2,2)), m=17, a=[1, 3, 3, 4, 6, 7], S=[0, 12]. -/
def code_12506 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12507: ((6,2,2)), m=17, a=[1, 3, 3, 4, 6, 12], S=[0, 7]. -/
def code_12507 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12508: ((6,2,2)), m=17, a=[1, 3, 3, 4, 10, 12], S=[0, 11]. -/
def code_12508 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12509: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 6], S=[0, 10]. -/
def code_12509 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12510: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 6], S=[0, 13]. -/
def code_12510 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12511: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 7], S=[0, 11]. -/
def code_12511 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12512: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 7], S=[0, 13]. -/
def code_12512 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12513: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 13], S=[0, 6]. -/
def code_12513 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12514: ((6,2,2)), m=17, a=[1, 3, 3, 5, 5, 13], S=[0, 7]. -/
def code_12514 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12515: ((6,2,2)), m=17, a=[1, 3, 3, 5, 6, 7], S=[0, 13]. -/
def code_12515 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12516: ((6,2,2)), m=17, a=[1, 3, 3, 5, 10, 11], S=[0, 4]. -/
def code_12516 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12517: ((6,2,2)), m=17, a=[1, 3, 3, 5, 10, 13], S=[0, 6]. -/
def code_12517 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12518: ((6,2,2)), m=17, a=[1, 3, 3, 5, 11, 13], S=[0, 7]. -/
def code_12518 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12519: ((6,2,2)), m=17, a=[1, 3, 3, 6, 10, 12], S=[0, 13]. -/
def code_12519 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12520: ((6,2,2)), m=17, a=[1, 3, 3, 6, 12, 12], S=[0, 7]. -/
def code_12520 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12521: ((6,2,2)), m=17, a=[1, 3, 3, 6, 12, 12], S=[0, 13]. -/
def code_12521 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12522: ((6,2,2)), m=17, a=[1, 3, 3, 10, 11, 13], S=[0, 12]. -/
def code_12522 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12523: ((6,2,2)), m=17, a=[1, 3, 3, 10, 12, 12], S=[0, 11]. -/
def code_12523 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12524: ((6,2,2)), m=17, a=[1, 3, 3, 10, 12, 12], S=[0, 13]. -/
def code_12524 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12525: ((6,2,2)), m=17, a=[1, 3, 4, 5, 5, 6], S=[0, 10]. -/
def code_12525 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12526: ((6,2,2)), m=17, a=[1, 3, 4, 5, 5, 7], S=[0, 11]. -/
def code_12526 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12527: ((6,2,2)), m=17, a=[1, 3, 4, 5, 8, 9], S=[0, 15]. -/
def code_12527 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12528: ((6,2,2)), m=17, a=[1, 3, 4, 6, 12, 12], S=[0, 7]. -/
def code_12528 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12529: ((6,2,2)), m=17, a=[1, 3, 4, 9, 9, 12], S=[0, 2]. -/
def code_12529 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12530: ((6,2,2)), m=17, a=[1, 3, 4, 9, 9, 15], S=[0, 5]. -/
def code_12530 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12531: ((6,2,2)), m=17, a=[1, 3, 4, 9, 15, 15], S=[0, 5]. -/
def code_12531 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12532: ((6,2,2)), m=17, a=[1, 3, 4, 10, 12, 12], S=[0, 11]. -/
def code_12532 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12533: ((6,2,2)), m=17, a=[1, 3, 4, 12, 15, 15], S=[0, 8]. -/
def code_12533 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12534: ((6,2,2)), m=17, a=[1, 3, 5, 5, 6, 7], S=[0, 13]. -/
def code_12534 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12535: ((6,2,2)), m=17, a=[1, 3, 5, 5, 10, 11], S=[0, 4]. -/
def code_12535 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12536: ((6,2,2)), m=17, a=[1, 3, 5, 5, 10, 13], S=[0, 6]. -/
def code_12536 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12537: ((6,2,2)), m=17, a=[1, 3, 5, 5, 11, 13], S=[0, 7]. -/
def code_12537 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12538: ((6,2,2)), m=17, a=[1, 3, 5, 8, 8, 13], S=[0, 2]. -/
def code_12538 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12539: ((6,2,2)), m=17, a=[1, 3, 5, 8, 8, 15], S=[0, 4]. -/
def code_12539 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12540: ((6,2,2)), m=17, a=[1, 3, 5, 8, 15, 15], S=[0, 4]. -/
def code_12540 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12541: ((6,2,2)), m=17, a=[1, 3, 5, 13, 15, 15], S=[0, 9]. -/
def code_12541 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12542: ((6,2,2)), m=17, a=[1, 3, 6, 7, 12, 12], S=[0, 4]. -/
def code_12542 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12543: ((6,2,2)), m=17, a=[1, 3, 6, 7, 12, 14], S=[0, 4]. -/
def code_12543 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12544: ((6,2,2)), m=17, a=[1, 3, 6, 7, 13, 14], S=[0, 5]. -/
def code_12544 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12545: ((6,2,2)), m=17, a=[1, 3, 6, 10, 12, 12], S=[0, 13]. -/
def code_12545 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12546: ((6,2,2)), m=17, a=[1, 3, 6, 12, 12, 13], S=[0, 10]. -/
def code_12546 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12547: ((6,2,2)), m=17, a=[1, 3, 6, 12, 12, 14], S=[0, 4]. -/
def code_12547 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12548: ((6,2,2)), m=17, a=[1, 3, 6, 12, 12, 14], S=[0, 10]. -/
def code_12548 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12549: ((6,2,2)), m=17, a=[1, 3, 6, 12, 13, 14], S=[0, 10]. -/
def code_12549 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12550: ((6,2,2)), m=17, a=[1, 3, 7, 12, 12, 13], S=[0, 11]. -/
def code_12550 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12551: ((6,2,2)), m=17, a=[1, 3, 7, 12, 12, 14], S=[0, 4]. -/
def code_12551 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12552: ((6,2,2)), m=17, a=[1, 3, 7, 12, 12, 14], S=[0, 11]. -/
def code_12552 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12553: ((6,2,2)), m=17, a=[1, 3, 7, 12, 13, 14], S=[0, 11]. -/
def code_12553 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12554: ((6,2,2)), m=17, a=[1, 3, 8, 8, 13, 15], S=[0, 12]. -/
def code_12554 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12555: ((6,2,2)), m=17, a=[1, 3, 8, 8, 15, 15], S=[0, 4]. -/
def code_12555 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12556: ((6,2,2)), m=17, a=[1, 3, 8, 8, 15, 15], S=[0, 12]. -/
def code_12556 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12557: ((6,2,2)), m=17, a=[1, 3, 8, 13, 15, 15], S=[0, 12]. -/
def code_12557 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12558: ((6,2,2)), m=17, a=[1, 3, 9, 9, 12, 13], S=[0, 15]. -/
def code_12558 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12559: ((6,2,2)), m=17, a=[1, 3, 9, 9, 12, 15], S=[0, 13]. -/
def code_12559 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12560: ((6,2,2)), m=17, a=[1, 3, 9, 9, 15, 15], S=[0, 5]. -/
def code_12560 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12561: ((6,2,2)), m=17, a=[1, 3, 9, 12, 15, 15], S=[0, 13]. -/
def code_12561 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12562: ((6,2,2)), m=17, a=[1, 3, 12, 12, 13, 14], S=[0, 10]. -/
def code_12562 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12563: ((6,2,2)), m=17, a=[1, 3, 12, 12, 13, 14], S=[0, 11]. -/
def code_12563 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (3 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-13 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12564: ((6,2,2)), m=17, a=[1, 4, 4, 6, 7, 9], S=[0, 15]. -/
def code_12564 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12565: ((6,2,2)), m=17, a=[1, 4, 4, 6, 8, 10], S=[0, 15]. -/
def code_12565 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12566: ((6,2,2)), m=17, a=[1, 4, 4, 6, 8, 16], S=[0, 7]. -/
def code_12566 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12567: ((6,2,2)), m=17, a=[1, 4, 4, 6, 8, 16], S=[0, 15]. -/
def code_12567 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12568: ((6,2,2)), m=17, a=[1, 4, 4, 6, 10, 16], S=[0, 9]. -/
def code_12568 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12569: ((6,2,2)), m=17, a=[1, 4, 4, 6, 10, 16], S=[0, 15]. -/
def code_12569 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12570: ((6,2,2)), m=17, a=[1, 4, 4, 7, 8, 11], S=[0, 2]. -/
def code_12570 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12571: ((6,2,2)), m=17, a=[1, 4, 4, 7, 8, 15], S=[0, 6]. -/
def code_12571 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12572: ((6,2,2)), m=17, a=[1, 4, 4, 7, 11, 15], S=[0, 9]. -/
def code_12572 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12573: ((6,2,2)), m=17, a=[1, 4, 4, 8, 10, 16], S=[0, 11]. -/
def code_12573 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12574: ((6,2,2)), m=17, a=[1, 4, 4, 8, 10, 16], S=[0, 15]. -/
def code_12574 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12575: ((6,2,2)), m=17, a=[1, 4, 4, 8, 11, 15], S=[0, 10]. -/
def code_12575 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12576: ((6,2,2)), m=17, a=[1, 4, 5, 5, 6, 7], S=[0, 14]. -/
def code_12576 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12577: ((6,2,2)), m=17, a=[1, 4, 5, 7, 11, 12], S=[0, 3]. -/
def code_12577 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12578: ((6,2,2)), m=17, a=[1, 4, 5, 7, 12, 14], S=[0, 6]. -/
def code_12578 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12579: ((6,2,2)), m=17, a=[1, 4, 5, 7, 14, 14], S=[0, 6]. -/
def code_12579 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12580: ((6,2,2)), m=17, a=[1, 4, 5, 11, 12, 14], S=[0, 10]. -/
def code_12580 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12581: ((6,2,2)), m=17, a=[1, 4, 5, 11, 14, 14], S=[0, 10]. -/
def code_12581 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12582: ((6,2,2)), m=17, a=[1, 4, 5, 12, 14, 14], S=[0, 6]. -/
def code_12582 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12583: ((6,2,2)), m=17, a=[1, 4, 5, 12, 14, 14], S=[0, 10]. -/
def code_12583 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12584: ((6,2,2)), m=17, a=[1, 4, 6, 8, 10, 16], S=[0, 15]. -/
def code_12584 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12585: ((6,2,2)), m=17, a=[1, 4, 6, 10, 12, 12], S=[0, 14]. -/
def code_12585 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12586: ((6,2,2)), m=17, a=[1, 4, 7, 11, 14, 14], S=[0, 5]. -/
def code_12586 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12587: ((6,2,2)), m=17, a=[1, 4, 7, 12, 14, 14], S=[0, 6]. -/
def code_12587 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12588: ((6,2,2)), m=17, a=[1, 4, 8, 8, 12, 14], S=[0, 15]. -/
def code_12588 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12589: ((6,2,2)), m=17, a=[1, 4, 9, 9, 12, 15], S=[0, 14]. -/
def code_12589 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12590: ((6,2,2)), m=17, a=[1, 4, 9, 9, 15, 15], S=[0, 5]. -/
def code_12590 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12591: ((6,2,2)), m=17, a=[1, 4, 9, 9, 15, 15], S=[0, 14]. -/
def code_12591 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12592: ((6,2,2)), m=17, a=[1, 4, 9, 10, 11, 13], S=[0, 15]. -/
def code_12592 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12593: ((6,2,2)), m=17, a=[1, 4, 9, 12, 15, 15], S=[0, 14]. -/
def code_12593 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12594: ((6,2,2)), m=17, a=[1, 4, 11, 12, 14, 14], S=[0, 10]. -/
def code_12594 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12595: ((6,2,2)), m=17, a=[1, 5, 5, 6, 10, 13], S=[0, 3]. -/
def code_12595 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12596: ((6,2,2)), m=17, a=[1, 5, 5, 6, 10, 14], S=[0, 4]. -/
def code_12596 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12597: ((6,2,2)), m=17, a=[1, 5, 5, 6, 13, 14], S=[0, 7]. -/
def code_12597 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12598: ((6,2,2)), m=17, a=[1, 5, 5, 6, 14, 14], S=[0, 4]. -/
def code_12598 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12599: ((6,2,2)), m=17, a=[1, 5, 5, 6, 14, 14], S=[0, 7]. -/
def code_12599 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12600: ((6,2,2)), m=17, a=[1, 5, 5, 10, 11, 13], S=[0, 14]. -/
def code_12600 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12601: ((6,2,2)), m=17, a=[1, 5, 5, 10, 13, 14], S=[0, 11]. -/
def code_12601 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12602: ((6,2,2)), m=17, a=[1, 5, 5, 10, 14, 14], S=[0, 4]. -/
def code_12602 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12603: ((6,2,2)), m=17, a=[1, 5, 5, 10, 14, 14], S=[0, 11]. -/
def code_12603 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12604: ((6,2,2)), m=17, a=[1, 5, 5, 13, 14, 14], S=[0, 7]. -/
def code_12604 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12605: ((6,2,2)), m=17, a=[1, 5, 5, 13, 14, 14], S=[0, 11]. -/
def code_12605 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12606: ((6,2,2)), m=17, a=[1, 5, 6, 10, 14, 14], S=[0, 4]. -/
def code_12606 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((11 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12607: ((6,2,2)), m=17, a=[1, 5, 6, 13, 14, 14], S=[0, 7]. -/
def code_12607 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12608: ((6,2,2)), m=17, a=[1, 5, 7, 11, 12, 14], S=[0, 13]. -/
def code_12608 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12609: ((6,2,2)), m=17, a=[1, 5, 7, 11, 14, 14], S=[0, 13]. -/
def code_12609 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12610: ((6,2,2)), m=17, a=[1, 5, 7, 12, 14, 14], S=[0, 6]. -/
def code_12610 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12611: ((6,2,2)), m=17, a=[1, 5, 7, 12, 14, 14], S=[0, 13]. -/
def code_12611 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12612: ((6,2,2)), m=17, a=[1, 5, 8, 8, 13, 15], S=[0, 14]. -/
def code_12612 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12613: ((6,2,2)), m=17, a=[1, 5, 8, 8, 15, 15], S=[0, 4]. -/
def code_12613 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12614: ((6,2,2)), m=17, a=[1, 5, 8, 8, 15, 15], S=[0, 14]. -/
def code_12614 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12615: ((6,2,2)), m=17, a=[1, 5, 8, 13, 15, 15], S=[0, 14]. -/
def code_12615 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12616: ((6,2,2)), m=17, a=[1, 5, 9, 9, 13, 14], S=[0, 2]. -/
def code_12616 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12617: ((6,2,2)), m=17, a=[1, 5, 9, 9, 14, 15], S=[0, 4]. -/
def code_12617 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #12618: ((6,2,2)), m=17, a=[1, 5, 10, 13, 14, 14], S=[0, 11]. -/
def code_12618 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12619: ((6,2,2)), m=17, a=[1, 5, 11, 12, 14, 14], S=[0, 10]. -/
def code_12619 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12620: ((6,2,2)), m=17, a=[1, 5, 11, 12, 14, 14], S=[0, 13]. -/
def code_12620 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12621: ((6,2,2)), m=17, a=[1, 6, 7, 8, 13, 13], S=[0, 15]. -/
def code_12621 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12622: ((6,2,2)), m=17, a=[1, 6, 7, 12, 12, 13], S=[0, 3]. -/
def code_12622 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12623: ((6,2,2)), m=17, a=[1, 6, 7, 12, 12, 14], S=[0, 4]. -/
def code_12623 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12624: ((6,2,2)), m=17, a=[1, 6, 9, 10, 13, 13], S=[0, 2]. -/
def code_12624 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12625: ((6,2,2)), m=17, a=[1, 6, 9, 13, 13, 15], S=[0, 7]. -/
def code_12625 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12626: ((6,2,2)), m=17, a=[1, 6, 10, 13, 13, 15], S=[0, 8]. -/
def code_12626 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12627: ((6,2,2)), m=17, a=[1, 6, 10, 13, 14, 14], S=[0, 12]. -/
def code_12627 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12628: ((6,2,2)), m=17, a=[1, 6, 12, 12, 13, 14], S=[0, 10]. -/
def code_12628 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12629: ((6,2,2)), m=17, a=[1, 7, 9, 11, 13, 13], S=[0, 2]. -/
def code_12629 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12630: ((6,2,2)), m=17, a=[1, 7, 9, 11, 13, 16], S=[0, 2]. -/
def code_12630 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12631: ((6,2,2)), m=17, a=[1, 7, 9, 11, 15, 16], S=[0, 4]. -/
def code_12631 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12632: ((6,2,2)), m=17, a=[1, 7, 9, 13, 13, 15], S=[0, 6]. -/
def code_12632 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12633: ((6,2,2)), m=17, a=[1, 7, 9, 13, 13, 16], S=[0, 2]. -/
def code_12633 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12634: ((6,2,2)), m=17, a=[1, 7, 9, 13, 13, 16], S=[0, 6]. -/
def code_12634 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12635: ((6,2,2)), m=17, a=[1, 7, 9, 13, 15, 16], S=[0, 6]. -/
def code_12635 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12636: ((6,2,2)), m=17, a=[1, 7, 11, 12, 14, 14], S=[0, 13]. -/
def code_12636 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12637: ((6,2,2)), m=17, a=[1, 7, 11, 13, 13, 15], S=[0, 8]. -/
def code_12637 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12638: ((6,2,2)), m=17, a=[1, 7, 11, 13, 13, 16], S=[0, 2]. -/
def code_12638 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12639: ((6,2,2)), m=17, a=[1, 7, 11, 13, 13, 16], S=[0, 8]. -/
def code_12639 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12640: ((6,2,2)), m=17, a=[1, 7, 11, 13, 15, 16], S=[0, 8]. -/
def code_12640 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12641: ((6,2,2)), m=17, a=[1, 7, 12, 12, 13, 14], S=[0, 11]. -/
def code_12641 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #12642: ((6,2,2)), m=17, a=[1, 7, 13, 13, 15, 16], S=[0, 6]. -/
def code_12642 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12643: ((6,2,2)), m=17, a=[1, 7, 13, 13, 15, 16], S=[0, 8]. -/
def code_12643 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12644: ((6,2,2)), m=17, a=[1, 8, 8, 13, 15, 15], S=[0, 12]. -/
def code_12644 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12645: ((6,2,2)), m=17, a=[1, 8, 8, 13, 15, 15], S=[0, 14]. -/
def code_12645 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12646: ((6,2,2)), m=17, a=[1, 9, 9, 12, 15, 15], S=[0, 13]. -/
def code_12646 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12647: ((6,2,2)), m=17, a=[1, 9, 9, 12, 15, 15], S=[0, 14]. -/
def code_12647 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12648: ((6,2,2)), m=17, a=[1, 9, 9, 13, 14, 15], S=[0, 12]. -/
def code_12648 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #12649: ((6,2,2)), m=17, a=[1, 9, 10, 13, 13, 15], S=[0, 11]. -/
def code_12649 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12650: ((6,2,2)), m=17, a=[1, 9, 11, 13, 13, 15], S=[0, 10]. -/
def code_12650 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12651: ((6,2,2)), m=17, a=[1, 9, 11, 13, 13, 16], S=[0, 2]. -/
def code_12651 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12652: ((6,2,2)), m=17, a=[1, 9, 11, 13, 13, 16], S=[0, 10]. -/
def code_12652 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12653: ((6,2,2)), m=17, a=[1, 9, 11, 13, 15, 16], S=[0, 10]. -/
def code_12653 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12654: ((6,2,2)), m=17, a=[1, 9, 13, 13, 15, 16], S=[0, 6]. -/
def code_12654 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12655: ((6,2,2)), m=17, a=[1, 9, 13, 13, 15, 16], S=[0, 10]. -/
def code_12655 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12656: ((6,2,2)), m=17, a=[1, 11, 13, 13, 15, 16], S=[0, 8]. -/
def code_12656 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12657: ((6,2,2)), m=17, a=[1, 11, 13, 13, 15, 16], S=[0, 10]. -/
def code_12657 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12658: ((6,2,2)), m=17, a=[2, 2, 3, 4, 5, 8], S=[0, 16]. -/
def code_12658 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #12659: ((6,2,2)), m=17, a=[2, 2, 3, 4, 5, 9], S=[0, 16]. -/
def code_12659 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #12660: ((6,2,2)), m=17, a=[2, 2, 3, 4, 8, 9], S=[0, 12]. -/
def code_12660 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12661: ((6,2,2)), m=17, a=[2, 2, 3, 4, 8, 9], S=[0, 16]. -/
def code_12661 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12662: ((6,2,2)), m=17, a=[2, 2, 3, 5, 8, 9], S=[0, 13]. -/
def code_12662 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12663: ((6,2,2)), m=17, a=[2, 2, 3, 5, 8, 9], S=[0, 16]. -/
def code_12663 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12664: ((6,2,2)), m=17, a=[2, 2, 3, 9, 9, 12], S=[0, 4]. -/
def code_12664 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12665: ((6,2,2)), m=17, a=[2, 2, 3, 9, 9, 12], S=[0, 16]. -/
def code_12665 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12666: ((6,2,2)), m=17, a=[2, 2, 3, 9, 12, 13], S=[0, 16]. -/
def code_12666 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12667: ((6,2,2)), m=17, a=[2, 2, 4, 5, 8, 9], S=[0, 14]. -/
def code_12667 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12668: ((6,2,2)), m=17, a=[2, 2, 4, 9, 9, 12], S=[0, 3]. -/
def code_12668 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12669: ((6,2,2)), m=17, a=[2, 2, 4, 9, 12, 16], S=[0, 3]. -/
def code_12669 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12670: ((6,2,2)), m=17, a=[2, 2, 4, 9, 14, 16], S=[0, 5]. -/
def code_12670 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12671: ((6,2,2)), m=17, a=[2, 2, 5, 8, 8, 14], S=[0, 1]. -/
def code_12671 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12672: ((6,2,2)), m=17, a=[2, 2, 5, 8, 8, 14], S=[0, 4]. -/
def code_12672 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12673: ((6,2,2)), m=17, a=[2, 2, 5, 8, 8, 16], S=[0, 3]. -/
def code_12673 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12674: ((6,2,2)), m=17, a=[2, 2, 5, 8, 8, 16], S=[0, 4]. -/
def code_12674 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12675: ((6,2,2)), m=17, a=[2, 2, 5, 8, 13, 14], S=[0, 1]. -/
def code_12675 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12676: ((6,2,2)), m=17, a=[2, 2, 5, 8, 13, 16], S=[0, 3]. -/
def code_12676 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12677: ((6,2,2)), m=17, a=[2, 2, 5, 8, 14, 16], S=[0, 4]. -/
def code_12677 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12678: ((6,2,2)), m=17, a=[2, 2, 5, 13, 14, 16], S=[0, 9]. -/
def code_12678 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12679: ((6,2,2)), m=17, a=[2, 2, 8, 8, 13, 14], S=[0, 1]. -/
def code_12679 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12680: ((6,2,2)), m=17, a=[2, 2, 8, 8, 13, 14], S=[0, 12]. -/
def code_12680 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12681: ((6,2,2)), m=17, a=[2, 2, 8, 8, 13, 16], S=[0, 3]. -/
def code_12681 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12682: ((6,2,2)), m=17, a=[2, 2, 8, 8, 13, 16], S=[0, 12]. -/
def code_12682 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12683: ((6,2,2)), m=17, a=[2, 2, 8, 13, 14, 16], S=[0, 12]. -/
def code_12683 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12684: ((6,2,2)), m=17, a=[2, 3, 4, 5, 8, 9], S=[0, 16]. -/
def code_12684 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12685: ((6,2,2)), m=17, a=[2, 3, 4, 8, 8, 12], S=[0, 1]. -/
def code_12685 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12686: ((6,2,2)), m=17, a=[2, 3, 4, 8, 8, 15], S=[0, 1]. -/
def code_12686 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12687: ((6,2,2)), m=17, a=[2, 3, 4, 8, 8, 15], S=[0, 5]. -/
def code_12687 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12688: ((6,2,2)), m=17, a=[2, 3, 4, 8, 8, 16], S=[0, 5]. -/
def code_12688 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12689: ((6,2,2)), m=17, a=[2, 3, 4, 8, 12, 15], S=[0, 1]. -/
def code_12689 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12690: ((6,2,2)), m=17, a=[2, 3, 4, 8, 15, 16], S=[0, 5]. -/
def code_12690 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12691: ((6,2,2)), m=17, a=[2, 3, 4, 12, 15, 16], S=[0, 9]. -/
def code_12691 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12692: ((6,2,2)), m=17, a=[2, 3, 5, 6, 6, 9], S=[0, 7]. -/
def code_12692 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12693: ((6,2,2)), m=17, a=[2, 3, 5, 6, 6, 10], S=[0, 8]. -/
def code_12693 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12694: ((6,2,2)), m=17, a=[2, 3, 5, 6, 10, 10], S=[0, 8]. -/
def code_12694 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12695: ((6,2,2)), m=17, a=[2, 3, 5, 9, 10, 10], S=[0, 11]. -/
def code_12695 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12696: ((6,2,2)), m=17, a=[2, 3, 6, 6, 7, 7], S=[0, 5]. -/
def code_12696 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12697: ((6,2,2)), m=17, a=[2, 3, 6, 6, 7, 7], S=[0, 9]. -/
def code_12697 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12698: ((6,2,2)), m=17, a=[2, 3, 6, 6, 7, 8], S=[0, 5]. -/
def code_12698 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12699: ((6,2,2)), m=17, a=[2, 3, 6, 6, 7, 12], S=[0, 9]. -/
def code_12699 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12700: ((6,2,2)), m=17, a=[2, 3, 6, 6, 8, 12], S=[0, 10]. -/
def code_12700 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12701: ((6,2,2)), m=17, a=[2, 3, 6, 6, 9, 10], S=[0, 12]. -/
def code_12701 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12702: ((6,2,2)), m=17, a=[2, 3, 6, 6, 10, 10], S=[0, 8]. -/
def code_12702 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12703: ((6,2,2)), m=17, a=[2, 3, 6, 7, 7, 8], S=[0, 5]. -/
def code_12703 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12704: ((6,2,2)), m=17, a=[2, 3, 6, 7, 7, 12], S=[0, 9]. -/
def code_12704 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12705: ((6,2,2)), m=17, a=[2, 3, 6, 9, 10, 10], S=[0, 12]. -/
def code_12705 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12706: ((6,2,2)), m=17, a=[2, 3, 7, 7, 8, 12], S=[0, 11]. -/
def code_12706 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12707: ((6,2,2)), m=17, a=[2, 3, 8, 8, 12, 15], S=[0, 1]. -/
def code_12707 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12708: ((6,2,2)), m=17, a=[2, 3, 8, 8, 12, 15], S=[0, 13]. -/
def code_12708 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12709: ((6,2,2)), m=17, a=[2, 3, 8, 8, 12, 16], S=[0, 13]. -/
def code_12709 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12710: ((6,2,2)), m=17, a=[2, 3, 8, 8, 15, 16], S=[0, 5]. -/
def code_12710 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12711: ((6,2,2)), m=17, a=[2, 3, 8, 8, 15, 16], S=[0, 13]. -/
def code_12711 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12712: ((6,2,2)), m=17, a=[2, 3, 8, 12, 15, 16], S=[0, 13]. -/
def code_12712 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12713: ((6,2,2)), m=17, a=[2, 3, 9, 9, 12, 13], S=[0, 16]. -/
def code_12713 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12714: ((6,2,2)), m=17, a=[2, 3, 9, 10, 10, 11], S=[0, 5]. -/
def code_12714 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12715: ((6,2,2)), m=17, a=[2, 3, 9, 10, 10, 12], S=[0, 6]. -/
def code_12715 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12716: ((6,2,2)), m=17, a=[2, 3, 9, 10, 11, 11], S=[0, 5]. -/
def code_12716 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12717: ((6,2,2)), m=17, a=[2, 3, 9, 11, 11, 12], S=[0, 7]. -/
def code_12717 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12718: ((6,2,2)), m=17, a=[2, 3, 10, 10, 11, 11], S=[0, 5]. -/
def code_12718 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12719: ((6,2,2)), m=17, a=[2, 3, 10, 10, 11, 11], S=[0, 8]. -/
def code_12719 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12720: ((6,2,2)), m=17, a=[2, 3, 10, 10, 11, 12], S=[0, 8]. -/
def code_12720 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12721: ((6,2,2)), m=17, a=[2, 3, 10, 11, 11, 12], S=[0, 8]. -/
def code_12721 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12722: ((6,2,2)), m=17, a=[2, 4, 4, 7, 8, 11], S=[0, 1]. -/
def code_12722 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12723: ((6,2,2)), m=17, a=[2, 4, 4, 7, 8, 16], S=[0, 6]. -/
def code_12723 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12724: ((6,2,2)), m=17, a=[2, 4, 4, 7, 11, 16], S=[0, 9]. -/
def code_12724 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12725: ((6,2,2)), m=17, a=[2, 4, 4, 8, 11, 16], S=[0, 10]. -/
def code_12725 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12726: ((6,2,2)), m=17, a=[2, 4, 7, 8, 16, 16], S=[0, 6]. -/
def code_12726 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12727: ((6,2,2)), m=17, a=[2, 4, 7, 11, 16, 16], S=[0, 9]. -/
def code_12727 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12728: ((6,2,2)), m=17, a=[2, 4, 8, 8, 15, 16], S=[0, 5]. -/
def code_12728 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12729: ((6,2,2)), m=17, a=[2, 4, 8, 8, 15, 16], S=[0, 14]. -/
def code_12729 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12730: ((6,2,2)), m=17, a=[2, 4, 8, 11, 16, 16], S=[0, 10]. -/
def code_12730 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12731: ((6,2,2)), m=17, a=[2, 4, 8, 12, 15, 16], S=[0, 14]. -/
def code_12731 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12732: ((6,2,2)), m=17, a=[2, 4, 9, 10, 11, 13], S=[0, 16]. -/
def code_12732 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12733: ((6,2,2)), m=17, a=[2, 5, 6, 6, 9, 10], S=[0, 14]. -/
def code_12733 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12734: ((6,2,2)), m=17, a=[2, 5, 6, 6, 10, 10], S=[0, 8]. -/
def code_12734 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12735: ((6,2,2)), m=17, a=[2, 5, 6, 6, 10, 10], S=[0, 14]. -/
def code_12735 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12736: ((6,2,2)), m=17, a=[2, 5, 6, 9, 10, 10], S=[0, 14]. -/
def code_12736 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12737: ((6,2,2)), m=17, a=[2, 5, 7, 8, 10, 11], S=[0, 3]. -/
def code_12737 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12738: ((6,2,2)), m=17, a=[2, 5, 7, 8, 10, 14], S=[0, 6]. -/
def code_12738 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12739: ((6,2,2)), m=17, a=[2, 5, 7, 8, 11, 11], S=[0, 3]. -/
def code_12739 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12740: ((6,2,2)), m=17, a=[2, 5, 7, 10, 11, 11], S=[0, 3]. -/
def code_12740 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12741: ((6,2,2)), m=17, a=[2, 5, 7, 10, 11, 11], S=[0, 9]. -/
def code_12741 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12742: ((6,2,2)), m=17, a=[2, 5, 7, 10, 11, 14], S=[0, 9]. -/
def code_12742 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12743: ((6,2,2)), m=17, a=[2, 5, 7, 11, 11, 14], S=[0, 9]. -/
def code_12743 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12744: ((6,2,2)), m=17, a=[2, 5, 8, 8, 13, 14], S=[0, 1]. -/
def code_12744 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12745: ((6,2,2)), m=17, a=[2, 5, 8, 8, 13, 16], S=[0, 3]. -/
def code_12745 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12746: ((6,2,2)), m=17, a=[2, 5, 8, 8, 14, 16], S=[0, 4]. -/
def code_12746 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12747: ((6,2,2)), m=17, a=[2, 5, 8, 10, 11, 11], S=[0, 3]. -/
def code_12747 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12748: ((6,2,2)), m=17, a=[2, 5, 8, 11, 11, 14], S=[0, 7]. -/
def code_12748 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12749: ((6,2,2)), m=17, a=[2, 5, 9, 9, 14, 15], S=[0, 4]. -/
def code_12749 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-13 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12750: ((6,2,2)), m=17, a=[2, 5, 9, 9, 14, 15], S=[0, 16]. -/
def code_12750 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12751: ((6,2,2)), m=17, a=[2, 5, 9, 13, 14, 15], S=[0, 16]. -/
def code_12751 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12752: ((6,2,2)), m=17, a=[2, 6, 6, 7, 8, 12], S=[0, 14]. -/
def code_12752 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12753: ((6,2,2)), m=17, a=[2, 6, 7, 7, 8, 12], S=[0, 14]. -/
def code_12753 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12754: ((6,2,2)), m=17, a=[2, 6, 7, 7, 9, 14], S=[0, 5]. -/
def code_12754 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12755: ((6,2,2)), m=17, a=[2, 6, 7, 7, 11, 12], S=[0, 3]. -/
def code_12755 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12756: ((6,2,2)), m=17, a=[2, 6, 7, 7, 11, 12], S=[0, 8]. -/
def code_12756 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12757: ((6,2,2)), m=17, a=[2, 6, 7, 7, 11, 14], S=[0, 5]. -/
def code_12757 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12758: ((6,2,2)), m=17, a=[2, 6, 7, 7, 11, 14], S=[0, 8]. -/
def code_12758 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12759: ((6,2,2)), m=17, a=[2, 6, 7, 9, 11, 12], S=[0, 3]. -/
def code_12759 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12760: ((6,2,2)), m=17, a=[2, 6, 7, 9, 11, 14], S=[0, 5]. -/
def code_12760 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12761: ((6,2,2)), m=17, a=[2, 6, 7, 11, 12, 14], S=[0, 8]. -/
def code_12761 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12762: ((6,2,2)), m=17, a=[2, 6, 9, 11, 12, 14], S=[0, 10]. -/
def code_12762 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12763: ((6,2,2)), m=17, a=[2, 6, 9, 13, 13, 16], S=[0, 7]. -/
def code_12763 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12764: ((6,2,2)), m=17, a=[2, 6, 9, 13, 16, 16], S=[0, 7]. -/
def code_12764 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12765: ((6,2,2)), m=17, a=[2, 6, 10, 13, 13, 16], S=[0, 8]. -/
def code_12765 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12766: ((6,2,2)), m=17, a=[2, 6, 10, 13, 16, 16], S=[0, 8]. -/
def code_12766 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12767: ((6,2,2)), m=17, a=[2, 6, 13, 13, 16, 16], S=[0, 7]. -/
def code_12767 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12768: ((6,2,2)), m=17, a=[2, 6, 13, 13, 16, 16], S=[0, 8]. -/
def code_12768 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12769: ((6,2,2)), m=17, a=[2, 7, 7, 9, 11, 12], S=[0, 3]. -/
def code_12769 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12770: ((6,2,2)), m=17, a=[2, 7, 7, 9, 11, 14], S=[0, 5]. -/
def code_12770 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12771: ((6,2,2)), m=17, a=[2, 7, 7, 9, 12, 14], S=[0, 6]. -/
def code_12771 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12772: ((6,2,2)), m=17, a=[2, 7, 7, 11, 12, 14], S=[0, 8]. -/
def code_12772 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12773: ((6,2,2)), m=17, a=[2, 7, 8, 10, 11, 11], S=[0, 3]. -/
def code_12773 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12774: ((6,2,2)), m=17, a=[2, 7, 8, 10, 11, 11], S=[0, 12]. -/
def code_12774 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12775: ((6,2,2)), m=17, a=[2, 7, 8, 10, 11, 14], S=[0, 12]. -/
def code_12775 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12776: ((6,2,2)), m=17, a=[2, 7, 8, 11, 11, 14], S=[0, 12]. -/
def code_12776 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12777: ((6,2,2)), m=17, a=[2, 7, 8, 11, 16, 16], S=[0, 13]. -/
def code_12777 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12778: ((6,2,2)), m=17, a=[2, 7, 10, 11, 11, 14], S=[0, 9]. -/
def code_12778 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12779: ((6,2,2)), m=17, a=[2, 7, 10, 11, 11, 14], S=[0, 12]. -/
def code_12779 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12780: ((6,2,2)), m=17, a=[2, 8, 8, 12, 15, 16], S=[0, 13]. -/
def code_12780 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12781: ((6,2,2)), m=17, a=[2, 8, 8, 12, 15, 16], S=[0, 14]. -/
def code_12781 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12782: ((6,2,2)), m=17, a=[2, 8, 8, 13, 14, 16], S=[0, 12]. -/
def code_12782 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12783: ((6,2,2)), m=17, a=[2, 8, 10, 11, 11, 14], S=[0, 12]. -/
def code_12783 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12784: ((6,2,2)), m=17, a=[2, 9, 9, 13, 14, 15], S=[0, 12]. -/
def code_12784 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12785: ((6,2,2)), m=17, a=[2, 9, 9, 13, 14, 15], S=[0, 16]. -/
def code_12785 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12786: ((6,2,2)), m=17, a=[2, 9, 10, 10, 11, 12], S=[0, 14]. -/
def code_12786 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12787: ((6,2,2)), m=17, a=[2, 9, 10, 11, 11, 12], S=[0, 14]. -/
def code_12787 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12788: ((6,2,2)), m=17, a=[2, 9, 10, 13, 13, 16], S=[0, 11]. -/
def code_12788 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12789: ((6,2,2)), m=17, a=[2, 9, 10, 13, 16, 16], S=[0, 11]. -/
def code_12789 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12790: ((6,2,2)), m=17, a=[2, 9, 13, 13, 16, 16], S=[0, 7]. -/
def code_12790 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12791: ((6,2,2)), m=17, a=[2, 9, 13, 13, 16, 16], S=[0, 11]. -/
def code_12791 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12792: ((6,2,2)), m=17, a=[2, 10, 10, 11, 11, 12], S=[0, 8]. -/
def code_12792 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12793: ((6,2,2)), m=17, a=[2, 10, 10, 11, 11, 12], S=[0, 14]. -/
def code_12793 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12794: ((6,2,2)), m=17, a=[2, 10, 13, 13, 16, 16], S=[0, 8]. -/
def code_12794 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12795: ((6,2,2)), m=17, a=[2, 10, 13, 13, 16, 16], S=[0, 11]. -/
def code_12795 : ExampleData 6 17 2 where
  a := ![(2 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12796: ((6,2,2)), m=17, a=[3, 3, 4, 5, 5, 7], S=[0, 11]. -/
def code_12796 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12797: ((6,2,2)), m=17, a=[3, 3, 4, 5, 5, 7], S=[0, 16]. -/
def code_12797 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12798: ((6,2,2)), m=17, a=[3, 3, 4, 5, 6, 7], S=[0, 16]. -/
def code_12798 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12799: ((6,2,2)), m=17, a=[3, 3, 4, 6, 10, 12], S=[0, 16]. -/
def code_12799 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12800: ((6,2,2)), m=17, a=[3, 3, 4, 7, 11, 12], S=[0, 1]. -/
def code_12800 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12801: ((6,2,2)), m=17, a=[3, 3, 4, 7, 11, 16], S=[0, 5]. -/
def code_12801 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12802: ((6,2,2)), m=17, a=[3, 3, 4, 7, 12, 12], S=[0, 1]. -/
def code_12802 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12803: ((6,2,2)), m=17, a=[3, 3, 4, 7, 12, 12], S=[0, 6]. -/
def code_12803 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12804: ((6,2,2)), m=17, a=[3, 3, 4, 7, 12, 16], S=[0, 6]. -/
def code_12804 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12805: ((6,2,2)), m=17, a=[3, 3, 4, 11, 12, 16], S=[0, 10]. -/
def code_12805 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12806: ((6,2,2)), m=17, a=[3, 3, 5, 5, 10, 13], S=[0, 6]. -/
def code_12806 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12807: ((6,2,2)), m=17, a=[3, 3, 5, 5, 10, 13], S=[0, 16]. -/
def code_12807 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12808: ((6,2,2)), m=17, a=[3, 3, 5, 6, 10, 12], S=[0, 1]. -/
def code_12808 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12809: ((6,2,2)), m=17, a=[3, 3, 5, 6, 10, 12], S=[0, 4]. -/
def code_12809 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12810: ((6,2,2)), m=17, a=[3, 3, 5, 6, 10, 13], S=[0, 1]. -/
def code_12810 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12811: ((6,2,2)), m=17, a=[3, 3, 5, 6, 10, 16], S=[0, 4]. -/
def code_12811 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-11 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12812: ((6,2,2)), m=17, a=[3, 3, 5, 6, 12, 13], S=[0, 1]. -/
def code_12812 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12813: ((6,2,2)), m=17, a=[3, 3, 5, 6, 12, 13], S=[0, 7]. -/
def code_12813 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12814: ((6,2,2)), m=17, a=[3, 3, 5, 6, 12, 16], S=[0, 4]. -/
def code_12814 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12815: ((6,2,2)), m=17, a=[3, 3, 5, 6, 12, 16], S=[0, 7]. -/
def code_12815 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12816: ((6,2,2)), m=17, a=[3, 3, 5, 6, 13, 16], S=[0, 7]. -/
def code_12816 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12817: ((6,2,2)), m=17, a=[3, 3, 5, 10, 11, 13], S=[0, 16]. -/
def code_12817 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12818: ((6,2,2)), m=17, a=[3, 3, 5, 10, 12, 13], S=[0, 1]. -/
def code_12818 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12819: ((6,2,2)), m=17, a=[3, 3, 5, 10, 12, 13], S=[0, 11]. -/
def code_12819 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12820: ((6,2,2)), m=17, a=[3, 3, 5, 10, 12, 16], S=[0, 4]. -/
def code_12820 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12821: ((6,2,2)), m=17, a=[3, 3, 5, 10, 12, 16], S=[0, 11]. -/
def code_12821 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12822: ((6,2,2)), m=17, a=[3, 3, 6, 10, 12, 13], S=[0, 1]. -/
def code_12822 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12823: ((6,2,2)), m=17, a=[3, 3, 6, 10, 12, 16], S=[0, 4]. -/
def code_12823 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12824: ((6,2,2)), m=17, a=[3, 3, 7, 11, 12, 12], S=[0, 1]. -/
def code_12824 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12825: ((6,2,2)), m=17, a=[3, 3, 7, 11, 12, 12], S=[0, 13]. -/
def code_12825 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12826: ((6,2,2)), m=17, a=[3, 3, 7, 11, 12, 16], S=[0, 13]. -/
def code_12826 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12827: ((6,2,2)), m=17, a=[3, 3, 7, 12, 12, 16], S=[0, 6]. -/
def code_12827 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12828: ((6,2,2)), m=17, a=[3, 3, 7, 12, 12, 16], S=[0, 13]. -/
def code_12828 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12829: ((6,2,2)), m=17, a=[3, 3, 10, 12, 13, 16], S=[0, 11]. -/
def code_12829 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (3 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12830: ((6,2,2)), m=17, a=[3, 4, 5, 5, 6, 7], S=[0, 16]. -/
def code_12830 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12831: ((6,2,2)), m=17, a=[3, 4, 5, 5, 10, 11], S=[0, 1]. -/
def code_12831 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12832: ((6,2,2)), m=17, a=[3, 4, 5, 5, 10, 14], S=[0, 1]. -/
def code_12832 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12833: ((6,2,2)), m=17, a=[3, 4, 5, 5, 10, 14], S=[0, 6]. -/
def code_12833 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12834: ((6,2,2)), m=17, a=[3, 4, 5, 5, 10, 16], S=[0, 6]. -/
def code_12834 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12835: ((6,2,2)), m=17, a=[3, 4, 5, 5, 11, 16], S=[0, 7]. -/
def code_12835 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12836: ((6,2,2)), m=17, a=[3, 4, 5, 5, 14, 16], S=[0, 6]. -/
def code_12836 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-13 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12837: ((6,2,2)), m=17, a=[3, 4, 5, 5, 14, 16], S=[0, 7]. -/
def code_12837 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12838: ((6,2,2)), m=17, a=[3, 4, 5, 10, 11, 14], S=[0, 1]. -/
def code_12838 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12839: ((6,2,2)), m=17, a=[3, 4, 5, 10, 14, 16], S=[0, 6]. -/
def code_12839 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12840: ((6,2,2)), m=17, a=[3, 4, 5, 11, 14, 16], S=[0, 7]. -/
def code_12840 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12841: ((6,2,2)), m=17, a=[3, 4, 6, 10, 12, 12], S=[0, 16]. -/
def code_12841 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12842: ((6,2,2)), m=17, a=[3, 4, 7, 11, 12, 12], S=[0, 1]. -/
def code_12842 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12843: ((6,2,2)), m=17, a=[3, 4, 7, 12, 12, 16], S=[0, 6]. -/
def code_12843 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12844: ((6,2,2)), m=17, a=[3, 4, 9, 12, 15, 15], S=[0, 16]. -/
def code_12844 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12845: ((6,2,2)), m=17, a=[3, 4, 10, 11, 14, 16], S=[0, 12]. -/
def code_12845 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12846: ((6,2,2)), m=17, a=[3, 5, 5, 10, 11, 13], S=[0, 16]. -/
def code_12846 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12847: ((6,2,2)), m=17, a=[3, 5, 5, 10, 11, 14], S=[0, 1]. -/
def code_12847 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12848: ((6,2,2)), m=17, a=[3, 5, 5, 10, 11, 14], S=[0, 13]. -/
def code_12848 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12849: ((6,2,2)), m=17, a=[3, 5, 5, 10, 11, 16], S=[0, 13]. -/
def code_12849 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12850: ((6,2,2)), m=17, a=[3, 5, 5, 10, 14, 16], S=[0, 6]. -/
def code_12850 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12851: ((6,2,2)), m=17, a=[3, 5, 5, 10, 14, 16], S=[0, 13]. -/
def code_12851 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12852: ((6,2,2)), m=17, a=[3, 5, 5, 11, 14, 16], S=[0, 7]. -/
def code_12852 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12853: ((6,2,2)), m=17, a=[3, 5, 5, 11, 14, 16], S=[0, 13]. -/
def code_12853 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12854: ((6,2,2)), m=17, a=[3, 5, 6, 6, 9, 10], S=[0, 15]. -/
def code_12854 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12855: ((6,2,2)), m=17, a=[3, 5, 6, 6, 10, 10], S=[0, 8]. -/
def code_12855 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12856: ((6,2,2)), m=17, a=[3, 5, 6, 8, 10, 10], S=[0, 2]. -/
def code_12856 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12857: ((6,2,2)), m=17, a=[3, 5, 6, 8, 10, 11], S=[0, 2]. -/
def code_12857 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12858: ((6,2,2)), m=17, a=[3, 5, 6, 8, 11, 15], S=[0, 7]. -/
def code_12858 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12859: ((6,2,2)), m=17, a=[3, 5, 6, 10, 10, 11], S=[0, 2]. -/
def code_12859 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12860: ((6,2,2)), m=17, a=[3, 5, 6, 10, 10, 11], S=[0, 9]. -/
def code_12860 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12861: ((6,2,2)), m=17, a=[3, 5, 6, 10, 10, 15], S=[0, 9]. -/
def code_12861 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12862: ((6,2,2)), m=17, a=[3, 5, 6, 10, 11, 15], S=[0, 9]. -/
def code_12862 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12863: ((6,2,2)), m=17, a=[3, 5, 6, 10, 12, 13], S=[0, 1]. -/
def code_12863 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12864: ((6,2,2)), m=17, a=[3, 5, 6, 10, 12, 16], S=[0, 4]. -/
def code_12864 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12865: ((6,2,2)), m=17, a=[3, 5, 6, 12, 13, 16], S=[0, 7]. -/
def code_12865 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12866: ((6,2,2)), m=17, a=[3, 5, 7, 7, 9, 11], S=[0, 2]. -/
def code_12866 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12867: ((6,2,2)), m=17, a=[3, 5, 7, 7, 9, 15], S=[0, 6]. -/
def code_12867 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12868: ((6,2,2)), m=17, a=[3, 5, 7, 7, 11, 11], S=[0, 8]. -/
def code_12868 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12869: ((6,2,2)), m=17, a=[3, 5, 7, 7, 11, 15], S=[0, 8]. -/
def code_12869 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12870: ((6,2,2)), m=17, a=[3, 5, 7, 9, 11, 11], S=[0, 2]. -/
def code_12870 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12871: ((6,2,2)), m=17, a=[3, 5, 7, 11, 11, 15], S=[0, 8]. -/
def code_12871 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12872: ((6,2,2)), m=17, a=[3, 5, 8, 8, 13, 15], S=[0, 16]. -/
def code_12872 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12873: ((6,2,2)), m=17, a=[3, 5, 8, 8, 15, 15], S=[0, 4]. -/
def code_12873 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12874: ((6,2,2)), m=17, a=[3, 5, 8, 8, 15, 15], S=[0, 16]. -/
def code_12874 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((13 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12875: ((6,2,2)), m=17, a=[3, 5, 8, 10, 10, 11], S=[0, 2]. -/
def code_12875 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #12876: ((6,2,2)), m=17, a=[3, 5, 8, 10, 10, 15], S=[0, 6]. -/
def code_12876 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12877: ((6,2,2)), m=17, a=[3, 5, 8, 13, 15, 15], S=[0, 16]. -/
def code_12877 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12878: ((6,2,2)), m=17, a=[3, 5, 9, 9, 13, 16], S=[0, 2]. -/
def code_12878 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12879: ((6,2,2)), m=17, a=[3, 5, 9, 9, 15, 16], S=[0, 4]. -/
def code_12879 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12880: ((6,2,2)), m=17, a=[3, 5, 9, 11, 11, 15], S=[0, 10]. -/
def code_12880 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12881: ((6,2,2)), m=17, a=[3, 5, 9, 15, 15, 16], S=[0, 4]. -/
def code_12881 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12882: ((6,2,2)), m=17, a=[3, 5, 10, 10, 11, 15], S=[0, 9]. -/
def code_12882 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12883: ((6,2,2)), m=17, a=[3, 5, 10, 11, 14, 16], S=[0, 13]. -/
def code_12883 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12884: ((6,2,2)), m=17, a=[3, 5, 10, 12, 13, 16], S=[0, 11]. -/
def code_12884 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12885: ((6,2,2)), m=17, a=[3, 5, 13, 15, 15, 16], S=[0, 8]. -/
def code_12885 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12886: ((6,2,2)), m=17, a=[3, 6, 6, 7, 8, 12], S=[0, 15]. -/
def code_12886 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12887: ((6,2,2)), m=17, a=[3, 6, 6, 7, 9, 10], S=[0, 2]. -/
def code_12887 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12888: ((6,2,2)), m=17, a=[3, 6, 6, 7, 9, 10], S=[0, 5]. -/
def code_12888 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12889: ((6,2,2)), m=17, a=[3, 6, 6, 7, 9, 15], S=[0, 5]. -/
def code_12889 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12890: ((6,2,2)), m=17, a=[3, 6, 6, 7, 12, 15], S=[0, 8]. -/
def code_12890 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-11 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12891: ((6,2,2)), m=17, a=[3, 6, 6, 9, 10, 12], S=[0, 2]. -/
def code_12891 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12892: ((6,2,2)), m=17, a=[3, 6, 6, 9, 10, 15], S=[0, 5]. -/
def code_12892 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12893: ((6,2,2)), m=17, a=[3, 6, 7, 7, 8, 12], S=[0, 15]. -/
def code_12893 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12894: ((6,2,2)), m=17, a=[3, 6, 7, 9, 10, 12], S=[0, 2]. -/
def code_12894 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12895: ((6,2,2)), m=17, a=[3, 6, 7, 9, 10, 15], S=[0, 5]. -/
def code_12895 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12896: ((6,2,2)), m=17, a=[3, 6, 7, 10, 12, 15], S=[0, 8]. -/
def code_12896 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12897: ((6,2,2)), m=17, a=[3, 6, 7, 12, 12, 13], S=[0, 16]. -/
def code_12897 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12898: ((6,2,2)), m=17, a=[3, 6, 7, 12, 12, 14], S=[0, 4]. -/
def code_12898 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12899: ((6,2,2)), m=17, a=[3, 6, 7, 12, 12, 14], S=[0, 16]. -/
def code_12899 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12900: ((6,2,2)), m=17, a=[3, 6, 7, 12, 13, 14], S=[0, 16]. -/
def code_12900 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12901: ((6,2,2)), m=17, a=[3, 6, 8, 10, 10, 11], S=[0, 2]. -/
def code_12901 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12902: ((6,2,2)), m=17, a=[3, 6, 8, 10, 10, 11], S=[0, 12]. -/
def code_12902 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12903: ((6,2,2)), m=17, a=[3, 6, 8, 10, 11, 15], S=[0, 12]. -/
def code_12903 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12904: ((6,2,2)), m=17, a=[3, 6, 10, 10, 11, 15], S=[0, 9]. -/
def code_12904 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12905: ((6,2,2)), m=17, a=[3, 6, 10, 10, 11, 15], S=[0, 12]. -/
def code_12905 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12906: ((6,2,2)), m=17, a=[3, 7, 7, 9, 11, 11], S=[0, 2]. -/
def code_12906 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12907: ((6,2,2)), m=17, a=[3, 7, 7, 9, 11, 11], S=[0, 12]. -/
def code_12907 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12908: ((6,2,2)), m=17, a=[3, 7, 7, 9, 11, 15], S=[0, 12]. -/
def code_12908 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12909: ((6,2,2)), m=17, a=[3, 7, 7, 11, 11, 15], S=[0, 8]. -/
def code_12909 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12910: ((6,2,2)), m=17, a=[3, 7, 7, 11, 11, 15], S=[0, 12]. -/
def code_12910 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12911: ((6,2,2)), m=17, a=[3, 7, 9, 10, 12, 15], S=[0, 11]. -/
def code_12911 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12912: ((6,2,2)), m=17, a=[3, 7, 9, 11, 11, 15], S=[0, 12]. -/
def code_12912 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12913: ((6,2,2)), m=17, a=[3, 7, 11, 12, 12, 16], S=[0, 13]. -/
def code_12913 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12914: ((6,2,2)), m=17, a=[3, 7, 12, 12, 13, 14], S=[0, 11]. -/
def code_12914 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12915: ((6,2,2)), m=17, a=[3, 7, 12, 12, 13, 14], S=[0, 16]. -/
def code_12915 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12916: ((6,2,2)), m=17, a=[3, 8, 8, 12, 15, 16], S=[0, 13]. -/
def code_12916 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-15 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12917: ((6,2,2)), m=17, a=[3, 8, 8, 13, 15, 15], S=[0, 12]. -/
def code_12917 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12918: ((6,2,2)), m=17, a=[3, 8, 10, 10, 11, 15], S=[0, 12]. -/
def code_12918 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12919: ((6,2,2)), m=17, a=[3, 9, 9, 13, 15, 15], S=[0, 12]. -/
def code_12919 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12920: ((6,2,2)), m=17, a=[3, 9, 9, 13, 15, 16], S=[0, 12]. -/
def code_12920 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12921: ((6,2,2)), m=17, a=[3, 9, 10, 10, 11, 12], S=[0, 15]. -/
def code_12921 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12922: ((6,2,2)), m=17, a=[3, 9, 10, 11, 11, 12], S=[0, 15]. -/
def code_12922 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12923: ((6,2,2)), m=17, a=[3, 9, 13, 15, 15, 16], S=[0, 12]. -/
def code_12923 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12924: ((6,2,2)), m=17, a=[3, 10, 10, 11, 11, 12], S=[0, 8]. -/
def code_12924 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12925: ((6,2,2)), m=17, a=[3, 10, 10, 11, 11, 12], S=[0, 15]. -/
def code_12925 : ExampleData 6 17 2 where
  a := ![(3 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12926: ((6,2,2)), m=17, a=[4, 4, 7, 8, 11, 16], S=[0, 15]. -/
def code_12926 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12927: ((6,2,2)), m=17, a=[4, 4, 7, 8, 16, 16], S=[0, 6]. -/
def code_12927 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12928: ((6,2,2)), m=17, a=[4, 4, 7, 8, 16, 16], S=[0, 15]. -/
def code_12928 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12929: ((6,2,2)), m=17, a=[4, 4, 9, 10, 11, 16], S=[0, 2]. -/
def code_12929 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12930: ((6,2,2)), m=17, a=[4, 4, 9, 15, 16, 16], S=[0, 6]. -/
def code_12930 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12931: ((6,2,2)), m=17, a=[4, 5, 5, 10, 11, 16], S=[0, 3]. -/
def code_12931 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12932: ((6,2,2)), m=17, a=[4, 5, 5, 10, 14, 16], S=[0, 6]. -/
def code_12932 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12933: ((6,2,2)), m=17, a=[4, 5, 5, 11, 14, 16], S=[0, 7]. -/
def code_12933 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12934: ((6,2,2)), m=17, a=[4, 5, 7, 11, 12, 14], S=[0, 16]. -/
def code_12934 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12935: ((6,2,2)), m=17, a=[4, 5, 7, 12, 14, 14], S=[0, 6]. -/
def code_12935 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12936: ((6,2,2)), m=17, a=[4, 5, 7, 12, 14, 14], S=[0, 16]. -/
def code_12936 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12937: ((6,2,2)), m=17, a=[4, 5, 8, 8, 14, 15], S=[0, 1]. -/
def code_12937 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12938: ((6,2,2)), m=17, a=[4, 5, 8, 8, 14, 16], S=[0, 2]. -/
def code_12938 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12939: ((6,2,2)), m=17, a=[4, 5, 8, 8, 15, 15], S=[0, 1]. -/
def code_12939 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12940: ((6,2,2)), m=17, a=[4, 5, 8, 8, 15, 15], S=[0, 3]. -/
def code_12940 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12941: ((6,2,2)), m=17, a=[4, 5, 8, 8, 15, 16], S=[0, 3]. -/
def code_12941 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12942: ((6,2,2)), m=17, a=[4, 5, 8, 14, 15, 15], S=[0, 1]. -/
def code_12942 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12943: ((6,2,2)), m=17, a=[4, 5, 8, 15, 15, 16], S=[0, 3]. -/
def code_12943 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12944: ((6,2,2)), m=17, a=[4, 5, 11, 12, 14, 14], S=[0, 10]. -/
def code_12944 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12945: ((6,2,2)), m=17, a=[4, 5, 11, 12, 14, 14], S=[0, 16]. -/
def code_12945 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12946: ((6,2,2)), m=17, a=[4, 6, 7, 8, 13, 15], S=[0, 1]. -/
def code_12946 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12947: ((6,2,2)), m=17, a=[4, 6, 7, 8, 13, 16], S=[0, 2]. -/
def code_12947 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12948: ((6,2,2)), m=17, a=[4, 6, 7, 8, 16, 16], S=[0, 2]. -/
def code_12948 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12949: ((6,2,2)), m=17, a=[4, 6, 7, 12, 12, 14], S=[0, 1]. -/
def code_12949 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12950: ((6,2,2)), m=17, a=[4, 6, 7, 13, 15, 16], S=[0, 9]. -/
def code_12950 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12951: ((6,2,2)), m=17, a=[4, 6, 7, 13, 16, 16], S=[0, 2]. -/
def code_12951 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12952: ((6,2,2)), m=17, a=[4, 6, 7, 13, 16, 16], S=[0, 9]. -/
def code_12952 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12953: ((6,2,2)), m=17, a=[4, 6, 7, 14, 14, 16], S=[0, 5]. -/
def code_12953 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12954: ((6,2,2)), m=17, a=[4, 6, 7, 15, 16, 16], S=[0, 9]. -/
def code_12954 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12955: ((6,2,2)), m=17, a=[4, 6, 8, 13, 15, 16], S=[0, 10]. -/
def code_12955 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12956: ((6,2,2)), m=17, a=[4, 6, 8, 13, 16, 16], S=[0, 2]. -/
def code_12956 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12957: ((6,2,2)), m=17, a=[4, 6, 8, 13, 16, 16], S=[0, 10]. -/
def code_12957 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12958: ((6,2,2)), m=17, a=[4, 6, 13, 15, 16, 16], S=[0, 9]. -/
def code_12958 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12959: ((6,2,2)), m=17, a=[4, 6, 13, 15, 16, 16], S=[0, 10]. -/
def code_12959 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12960: ((6,2,2)), m=17, a=[4, 7, 8, 11, 16, 16], S=[0, 15]. -/
def code_12960 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12961: ((6,2,2)), m=17, a=[4, 7, 8, 13, 15, 16], S=[0, 11]. -/
def code_12961 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12962: ((6,2,2)), m=17, a=[4, 7, 8, 13, 16, 16], S=[0, 2]. -/
def code_12962 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12963: ((6,2,2)), m=17, a=[4, 7, 8, 13, 16, 16], S=[0, 11]. -/
def code_12963 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12964: ((6,2,2)), m=17, a=[4, 7, 8, 15, 16, 16], S=[0, 11]. -/
def code_12964 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12965: ((6,2,2)), m=17, a=[4, 7, 11, 12, 12, 16], S=[0, 14]. -/
def code_12965 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12966: ((6,2,2)), m=17, a=[4, 7, 11, 12, 14, 14], S=[0, 16]. -/
def code_12966 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12967: ((6,2,2)), m=17, a=[4, 7, 12, 12, 14, 16], S=[0, 11]. -/
def code_12967 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12968: ((6,2,2)), m=17, a=[4, 7, 12, 14, 14, 16], S=[0, 11]. -/
def code_12968 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12969: ((6,2,2)), m=17, a=[4, 7, 13, 15, 16, 16], S=[0, 9]. -/
def code_12969 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12970: ((6,2,2)), m=17, a=[4, 7, 13, 15, 16, 16], S=[0, 11]. -/
def code_12970 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12971: ((6,2,2)), m=17, a=[4, 8, 8, 14, 15, 16], S=[0, 12]. -/
def code_12971 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12972: ((6,2,2)), m=17, a=[4, 8, 13, 15, 16, 16], S=[0, 10]. -/
def code_12972 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12973: ((6,2,2)), m=17, a=[4, 8, 13, 15, 16, 16], S=[0, 11]. -/
def code_12973 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12974: ((6,2,2)), m=17, a=[4, 10, 11, 15, 16, 16], S=[0, 8]. -/
def code_12974 : ExampleData 6 17 2 where
  a := ![(4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12975: ((6,2,2)), m=17, a=[5, 5, 6, 10, 13, 14], S=[0, 16]. -/
def code_12975 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12976: ((6,2,2)), m=17, a=[5, 5, 6, 10, 14, 14], S=[0, 16]. -/
def code_12976 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12977: ((6,2,2)), m=17, a=[5, 5, 6, 13, 14, 14], S=[0, 7]. -/
def code_12977 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12978: ((6,2,2)), m=17, a=[5, 5, 6, 13, 14, 14], S=[0, 16]. -/
def code_12978 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12979: ((6,2,2)), m=17, a=[5, 5, 7, 11, 13, 16], S=[0, 3]. -/
def code_12979 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12980: ((6,2,2)), m=17, a=[5, 5, 7, 13, 14, 16], S=[0, 6]. -/
def code_12980 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12981: ((6,2,2)), m=17, a=[5, 5, 11, 13, 14, 14], S=[0, 1]. -/
def code_12981 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12982: ((6,2,2)), m=17, a=[5, 5, 11, 13, 14, 16], S=[0, 10]. -/
def code_12982 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12983: ((6,2,2)), m=17, a=[5, 5, 11, 14, 14, 16], S=[0, 4]. -/
def code_12983 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12984: ((6,2,2)), m=17, a=[5, 5, 11, 14, 14, 16], S=[0, 10]. -/
def code_12984 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (5 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12985: ((6,2,2)), m=17, a=[5, 6, 6, 7, 7, 14], S=[0, 2]. -/
def code_12985 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12986: ((6,2,2)), m=17, a=[5, 6, 6, 7, 7, 15], S=[0, 3]. -/
def code_12986 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12987: ((6,2,2)), m=17, a=[5, 6, 6, 7, 7, 15], S=[0, 9]. -/
def code_12987 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12988: ((6,2,2)), m=17, a=[5, 6, 6, 7, 8, 14], S=[0, 2]. -/
def code_12988 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12989: ((6,2,2)), m=17, a=[5, 6, 6, 7, 8, 15], S=[0, 3]. -/
def code_12989 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12990: ((6,2,2)), m=17, a=[5, 6, 6, 7, 14, 15], S=[0, 9]. -/
def code_12990 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12991: ((6,2,2)), m=17, a=[5, 6, 6, 8, 14, 15], S=[0, 10]. -/
def code_12991 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12992: ((6,2,2)), m=17, a=[5, 6, 7, 7, 8, 14], S=[0, 2]. -/
def code_12992 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12993: ((6,2,2)), m=17, a=[5, 6, 7, 7, 8, 15], S=[0, 3]. -/
def code_12993 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12994: ((6,2,2)), m=17, a=[5, 6, 7, 7, 14, 15], S=[0, 9]. -/
def code_12994 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12995: ((6,2,2)), m=17, a=[5, 6, 8, 10, 10, 11], S=[0, 2]. -/
def code_12995 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12996: ((6,2,2)), m=17, a=[5, 6, 8, 10, 10, 11], S=[0, 14]. -/
def code_12996 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12997: ((6,2,2)), m=17, a=[5, 6, 8, 10, 10, 15], S=[0, 14]. -/
def code_12997 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12998: ((6,2,2)), m=17, a=[5, 6, 8, 10, 11, 15], S=[0, 14]. -/
def code_12998 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12999: ((6,2,2)), m=17, a=[5, 6, 10, 10, 11, 15], S=[0, 9]. -/
def code_12999 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17)]
def checks : List Bool :=
  [decide code_12500.OK,
   decide code_12501.OK,
   decide code_12502.OK,
   decide code_12503.OK,
   decide code_12504.OK,
   decide code_12505.OK,
   decide code_12506.OK,
   decide code_12507.OK,
   decide code_12508.OK,
   decide code_12509.OK,
   decide code_12510.OK,
   decide code_12511.OK,
   decide code_12512.OK,
   decide code_12513.OK,
   decide code_12514.OK,
   decide code_12515.OK,
   decide code_12516.OK,
   decide code_12517.OK,
   decide code_12518.OK,
   decide code_12519.OK,
   decide code_12520.OK,
   decide code_12521.OK,
   decide code_12522.OK,
   decide code_12523.OK,
   decide code_12524.OK,
   decide code_12525.OK,
   decide code_12526.OK,
   decide code_12527.OK,
   decide code_12528.OK,
   decide code_12529.OK,
   decide code_12530.OK,
   decide code_12531.OK,
   decide code_12532.OK,
   decide code_12533.OK,
   decide code_12534.OK,
   decide code_12535.OK,
   decide code_12536.OK,
   decide code_12537.OK,
   decide code_12538.OK,
   decide code_12539.OK,
   decide code_12540.OK,
   decide code_12541.OK,
   decide code_12542.OK,
   decide code_12543.OK,
   decide code_12544.OK,
   decide code_12545.OK,
   decide code_12546.OK,
   decide code_12547.OK,
   decide code_12548.OK,
   decide code_12549.OK,
   decide code_12550.OK,
   decide code_12551.OK,
   decide code_12552.OK,
   decide code_12553.OK,
   decide code_12554.OK,
   decide code_12555.OK,
   decide code_12556.OK,
   decide code_12557.OK,
   decide code_12558.OK,
   decide code_12559.OK,
   decide code_12560.OK,
   decide code_12561.OK,
   decide code_12562.OK,
   decide code_12563.OK,
   decide code_12564.OK,
   decide code_12565.OK,
   decide code_12566.OK,
   decide code_12567.OK,
   decide code_12568.OK,
   decide code_12569.OK,
   decide code_12570.OK,
   decide code_12571.OK,
   decide code_12572.OK,
   decide code_12573.OK,
   decide code_12574.OK,
   decide code_12575.OK,
   decide code_12576.OK,
   decide code_12577.OK,
   decide code_12578.OK,
   decide code_12579.OK,
   decide code_12580.OK,
   decide code_12581.OK,
   decide code_12582.OK,
   decide code_12583.OK,
   decide code_12584.OK,
   decide code_12585.OK,
   decide code_12586.OK,
   decide code_12587.OK,
   decide code_12588.OK,
   decide code_12589.OK,
   decide code_12590.OK,
   decide code_12591.OK,
   decide code_12592.OK,
   decide code_12593.OK,
   decide code_12594.OK,
   decide code_12595.OK,
   decide code_12596.OK,
   decide code_12597.OK,
   decide code_12598.OK,
   decide code_12599.OK,
   decide code_12600.OK,
   decide code_12601.OK,
   decide code_12602.OK,
   decide code_12603.OK,
   decide code_12604.OK,
   decide code_12605.OK,
   decide code_12606.OK,
   decide code_12607.OK,
   decide code_12608.OK,
   decide code_12609.OK,
   decide code_12610.OK,
   decide code_12611.OK,
   decide code_12612.OK,
   decide code_12613.OK,
   decide code_12614.OK,
   decide code_12615.OK,
   decide code_12616.OK,
   decide code_12617.OK,
   decide code_12618.OK,
   decide code_12619.OK,
   decide code_12620.OK,
   decide code_12621.OK,
   decide code_12622.OK,
   decide code_12623.OK,
   decide code_12624.OK,
   decide code_12625.OK,
   decide code_12626.OK,
   decide code_12627.OK,
   decide code_12628.OK,
   decide code_12629.OK,
   decide code_12630.OK,
   decide code_12631.OK,
   decide code_12632.OK,
   decide code_12633.OK,
   decide code_12634.OK,
   decide code_12635.OK,
   decide code_12636.OK,
   decide code_12637.OK,
   decide code_12638.OK,
   decide code_12639.OK,
   decide code_12640.OK,
   decide code_12641.OK,
   decide code_12642.OK,
   decide code_12643.OK,
   decide code_12644.OK,
   decide code_12645.OK,
   decide code_12646.OK,
   decide code_12647.OK,
   decide code_12648.OK,
   decide code_12649.OK,
   decide code_12650.OK,
   decide code_12651.OK,
   decide code_12652.OK,
   decide code_12653.OK,
   decide code_12654.OK,
   decide code_12655.OK,
   decide code_12656.OK,
   decide code_12657.OK,
   decide code_12658.OK,
   decide code_12659.OK,
   decide code_12660.OK,
   decide code_12661.OK,
   decide code_12662.OK,
   decide code_12663.OK,
   decide code_12664.OK,
   decide code_12665.OK,
   decide code_12666.OK,
   decide code_12667.OK,
   decide code_12668.OK,
   decide code_12669.OK,
   decide code_12670.OK,
   decide code_12671.OK,
   decide code_12672.OK,
   decide code_12673.OK,
   decide code_12674.OK,
   decide code_12675.OK,
   decide code_12676.OK,
   decide code_12677.OK,
   decide code_12678.OK,
   decide code_12679.OK,
   decide code_12680.OK,
   decide code_12681.OK,
   decide code_12682.OK,
   decide code_12683.OK,
   decide code_12684.OK,
   decide code_12685.OK,
   decide code_12686.OK,
   decide code_12687.OK,
   decide code_12688.OK,
   decide code_12689.OK,
   decide code_12690.OK,
   decide code_12691.OK,
   decide code_12692.OK,
   decide code_12693.OK,
   decide code_12694.OK,
   decide code_12695.OK,
   decide code_12696.OK,
   decide code_12697.OK,
   decide code_12698.OK,
   decide code_12699.OK,
   decide code_12700.OK,
   decide code_12701.OK,
   decide code_12702.OK,
   decide code_12703.OK,
   decide code_12704.OK,
   decide code_12705.OK,
   decide code_12706.OK,
   decide code_12707.OK,
   decide code_12708.OK,
   decide code_12709.OK,
   decide code_12710.OK,
   decide code_12711.OK,
   decide code_12712.OK,
   decide code_12713.OK,
   decide code_12714.OK,
   decide code_12715.OK,
   decide code_12716.OK,
   decide code_12717.OK,
   decide code_12718.OK,
   decide code_12719.OK,
   decide code_12720.OK,
   decide code_12721.OK,
   decide code_12722.OK,
   decide code_12723.OK,
   decide code_12724.OK,
   decide code_12725.OK,
   decide code_12726.OK,
   decide code_12727.OK,
   decide code_12728.OK,
   decide code_12729.OK,
   decide code_12730.OK,
   decide code_12731.OK,
   decide code_12732.OK,
   decide code_12733.OK,
   decide code_12734.OK,
   decide code_12735.OK,
   decide code_12736.OK,
   decide code_12737.OK,
   decide code_12738.OK,
   decide code_12739.OK,
   decide code_12740.OK,
   decide code_12741.OK,
   decide code_12742.OK,
   decide code_12743.OK,
   decide code_12744.OK,
   decide code_12745.OK,
   decide code_12746.OK,
   decide code_12747.OK,
   decide code_12748.OK,
   decide code_12749.OK,
   decide code_12750.OK,
   decide code_12751.OK,
   decide code_12752.OK,
   decide code_12753.OK,
   decide code_12754.OK,
   decide code_12755.OK,
   decide code_12756.OK,
   decide code_12757.OK,
   decide code_12758.OK,
   decide code_12759.OK,
   decide code_12760.OK,
   decide code_12761.OK,
   decide code_12762.OK,
   decide code_12763.OK,
   decide code_12764.OK,
   decide code_12765.OK,
   decide code_12766.OK,
   decide code_12767.OK,
   decide code_12768.OK,
   decide code_12769.OK,
   decide code_12770.OK,
   decide code_12771.OK,
   decide code_12772.OK,
   decide code_12773.OK,
   decide code_12774.OK,
   decide code_12775.OK,
   decide code_12776.OK,
   decide code_12777.OK,
   decide code_12778.OK,
   decide code_12779.OK,
   decide code_12780.OK,
   decide code_12781.OK,
   decide code_12782.OK,
   decide code_12783.OK,
   decide code_12784.OK,
   decide code_12785.OK,
   decide code_12786.OK,
   decide code_12787.OK,
   decide code_12788.OK,
   decide code_12789.OK,
   decide code_12790.OK,
   decide code_12791.OK,
   decide code_12792.OK,
   decide code_12793.OK,
   decide code_12794.OK,
   decide code_12795.OK,
   decide code_12796.OK,
   decide code_12797.OK,
   decide code_12798.OK,
   decide code_12799.OK,
   decide code_12800.OK,
   decide code_12801.OK,
   decide code_12802.OK,
   decide code_12803.OK,
   decide code_12804.OK,
   decide code_12805.OK,
   decide code_12806.OK,
   decide code_12807.OK,
   decide code_12808.OK,
   decide code_12809.OK,
   decide code_12810.OK,
   decide code_12811.OK,
   decide code_12812.OK,
   decide code_12813.OK,
   decide code_12814.OK,
   decide code_12815.OK,
   decide code_12816.OK,
   decide code_12817.OK,
   decide code_12818.OK,
   decide code_12819.OK,
   decide code_12820.OK,
   decide code_12821.OK,
   decide code_12822.OK,
   decide code_12823.OK,
   decide code_12824.OK,
   decide code_12825.OK,
   decide code_12826.OK,
   decide code_12827.OK,
   decide code_12828.OK,
   decide code_12829.OK,
   decide code_12830.OK,
   decide code_12831.OK,
   decide code_12832.OK,
   decide code_12833.OK,
   decide code_12834.OK,
   decide code_12835.OK,
   decide code_12836.OK,
   decide code_12837.OK,
   decide code_12838.OK,
   decide code_12839.OK,
   decide code_12840.OK,
   decide code_12841.OK,
   decide code_12842.OK,
   decide code_12843.OK,
   decide code_12844.OK,
   decide code_12845.OK,
   decide code_12846.OK,
   decide code_12847.OK,
   decide code_12848.OK,
   decide code_12849.OK,
   decide code_12850.OK,
   decide code_12851.OK,
   decide code_12852.OK,
   decide code_12853.OK,
   decide code_12854.OK,
   decide code_12855.OK,
   decide code_12856.OK,
   decide code_12857.OK,
   decide code_12858.OK,
   decide code_12859.OK,
   decide code_12860.OK,
   decide code_12861.OK,
   decide code_12862.OK,
   decide code_12863.OK,
   decide code_12864.OK,
   decide code_12865.OK,
   decide code_12866.OK,
   decide code_12867.OK,
   decide code_12868.OK,
   decide code_12869.OK,
   decide code_12870.OK,
   decide code_12871.OK,
   decide code_12872.OK,
   decide code_12873.OK,
   decide code_12874.OK,
   decide code_12875.OK,
   decide code_12876.OK,
   decide code_12877.OK,
   decide code_12878.OK,
   decide code_12879.OK,
   decide code_12880.OK,
   decide code_12881.OK,
   decide code_12882.OK,
   decide code_12883.OK,
   decide code_12884.OK,
   decide code_12885.OK,
   decide code_12886.OK,
   decide code_12887.OK,
   decide code_12888.OK,
   decide code_12889.OK,
   decide code_12890.OK,
   decide code_12891.OK,
   decide code_12892.OK,
   decide code_12893.OK,
   decide code_12894.OK,
   decide code_12895.OK,
   decide code_12896.OK,
   decide code_12897.OK,
   decide code_12898.OK,
   decide code_12899.OK,
   decide code_12900.OK,
   decide code_12901.OK,
   decide code_12902.OK,
   decide code_12903.OK,
   decide code_12904.OK,
   decide code_12905.OK,
   decide code_12906.OK,
   decide code_12907.OK,
   decide code_12908.OK,
   decide code_12909.OK,
   decide code_12910.OK,
   decide code_12911.OK,
   decide code_12912.OK,
   decide code_12913.OK,
   decide code_12914.OK,
   decide code_12915.OK,
   decide code_12916.OK,
   decide code_12917.OK,
   decide code_12918.OK,
   decide code_12919.OK,
   decide code_12920.OK,
   decide code_12921.OK,
   decide code_12922.OK,
   decide code_12923.OK,
   decide code_12924.OK,
   decide code_12925.OK,
   decide code_12926.OK,
   decide code_12927.OK,
   decide code_12928.OK,
   decide code_12929.OK,
   decide code_12930.OK,
   decide code_12931.OK,
   decide code_12932.OK,
   decide code_12933.OK,
   decide code_12934.OK,
   decide code_12935.OK,
   decide code_12936.OK,
   decide code_12937.OK,
   decide code_12938.OK,
   decide code_12939.OK,
   decide code_12940.OK,
   decide code_12941.OK,
   decide code_12942.OK,
   decide code_12943.OK,
   decide code_12944.OK,
   decide code_12945.OK,
   decide code_12946.OK,
   decide code_12947.OK,
   decide code_12948.OK,
   decide code_12949.OK,
   decide code_12950.OK,
   decide code_12951.OK,
   decide code_12952.OK,
   decide code_12953.OK,
   decide code_12954.OK,
   decide code_12955.OK,
   decide code_12956.OK,
   decide code_12957.OK,
   decide code_12958.OK,
   decide code_12959.OK,
   decide code_12960.OK,
   decide code_12961.OK,
   decide code_12962.OK,
   decide code_12963.OK,
   decide code_12964.OK,
   decide code_12965.OK,
   decide code_12966.OK,
   decide code_12967.OK,
   decide code_12968.OK,
   decide code_12969.OK,
   decide code_12970.OK,
   decide code_12971.OK,
   decide code_12972.OK,
   decide code_12973.OK,
   decide code_12974.OK,
   decide code_12975.OK,
   decide code_12976.OK,
   decide code_12977.OK,
   decide code_12978.OK,
   decide code_12979.OK,
   decide code_12980.OK,
   decide code_12981.OK,
   decide code_12982.OK,
   decide code_12983.OK,
   decide code_12984.OK,
   decide code_12985.OK,
   decide code_12986.OK,
   decide code_12987.OK,
   decide code_12988.OK,
   decide code_12989.OK,
   decide code_12990.OK,
   decide code_12991.OK,
   decide code_12992.OK,
   decide code_12993.OK,
   decide code_12994.OK,
   decide code_12995.OK,
   decide code_12996.OK,
   decide code_12997.OK,
   decide code_12998.OK,
   decide code_12999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk025
