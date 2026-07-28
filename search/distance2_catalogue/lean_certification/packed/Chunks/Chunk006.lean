import SS

namespace Catalogue.Chunk006

open SS SS.Verify

/-- Catalogue code #3000: ((6,2,2)), m=11, a=[1, 3, 5, 6, 7, 7], S=[0, 9]. -/
def code_3000 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3001: ((6,2,2)), m=11, a=[1, 3, 5, 6, 7, 8], S=[0, 9]. -/
def code_3001 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3002: ((6,2,2)), m=11, a=[1, 3, 5, 6, 7, 10], S=[0, 2]. -/
def code_3002 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3003: ((6,2,2)), m=11, a=[1, 3, 5, 6, 9, 9], S=[0, 4]. -/
def code_3003 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3004: ((6,2,2)), m=11, a=[1, 3, 5, 6, 9, 9], S=[0, 7]. -/
def code_3004 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3005: ((6,2,2)), m=11, a=[1, 3, 5, 7, 7, 7], S=[0, 2]. -/
def code_3005 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3006: ((6,2,2)), m=11, a=[1, 3, 5, 7, 7, 10], S=[0, 2]. -/
def code_3006 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3007: ((6,2,2)), m=11, a=[1, 3, 5, 7, 7, 10], S=[0, 9]. -/
def code_3007 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3008: ((6,2,2)), m=11, a=[1, 3, 5, 7, 8, 8], S=[0, 9]. -/
def code_3008 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3009: ((6,2,2)), m=11, a=[1, 3, 5, 7, 8, 10], S=[0, 9]. -/
def code_3009 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3010: ((6,2,2)), m=11, a=[1, 3, 5, 8, 8, 10], S=[0, 4]. -/
def code_3010 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3011: ((6,2,2)), m=11, a=[1, 3, 5, 8, 8, 10], S=[0, 9]. -/
def code_3011 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3012: ((6,2,2)), m=11, a=[1, 3, 5, 8, 9, 9], S=[0, 4]. -/
def code_3012 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3013: ((6,2,2)), m=11, a=[1, 3, 5, 8, 9, 9], S=[0, 7]. -/
def code_3013 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3014: ((6,2,2)), m=11, a=[1, 3, 5, 8, 9, 10], S=[0, 7]. -/
def code_3014 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3015: ((6,2,2)), m=11, a=[1, 3, 5, 8, 10, 10], S=[0, 9]. -/
def code_3015 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3016: ((6,2,2)), m=11, a=[1, 3, 5, 9, 9, 10], S=[0, 7]. -/
def code_3016 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3017: ((6,2,2)), m=11, a=[1, 3, 6, 6, 6, 7], S=[0, 9]. -/
def code_3017 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3018: ((6,2,2)), m=11, a=[1, 3, 6, 6, 6, 8], S=[0, 4]. -/
def code_3018 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3019: ((6,2,2)), m=11, a=[1, 3, 6, 6, 6, 8], S=[0, 9]. -/
def code_3019 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3020: ((6,2,2)), m=11, a=[1, 3, 6, 6, 6, 9], S=[0, 7]. -/
def code_3020 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3021: ((6,2,2)), m=11, a=[1, 3, 6, 6, 6, 10], S=[0, 2]. -/
def code_3021 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3022: ((6,2,2)), m=11, a=[1, 3, 6, 6, 7, 7], S=[0, 9]. -/
def code_3022 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3023: ((6,2,2)), m=11, a=[1, 3, 6, 6, 7, 10], S=[0, 2]. -/
def code_3023 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3024: ((6,2,2)), m=11, a=[1, 3, 6, 6, 7, 10], S=[0, 9]. -/
def code_3024 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3025: ((6,2,2)), m=11, a=[1, 3, 6, 6, 8, 9], S=[0, 4]. -/
def code_3025 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3026: ((6,2,2)), m=11, a=[1, 3, 6, 6, 8, 9], S=[0, 7]. -/
def code_3026 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3027: ((6,2,2)), m=11, a=[1, 3, 6, 6, 8, 10], S=[0, 2]. -/
def code_3027 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3028: ((6,2,2)), m=11, a=[1, 3, 6, 6, 9, 9], S=[0, 4]. -/
def code_3028 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3029: ((6,2,2)), m=11, a=[1, 3, 6, 6, 9, 9], S=[0, 7]. -/
def code_3029 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3030: ((6,2,2)), m=11, a=[1, 3, 6, 6, 9, 10], S=[0, 4]. -/
def code_3030 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3031: ((6,2,2)), m=11, a=[1, 3, 6, 7, 7, 8], S=[0, 9]. -/
def code_3031 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3032: ((6,2,2)), m=11, a=[1, 3, 6, 7, 7, 10], S=[0, 2]. -/
def code_3032 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3033: ((6,2,2)), m=11, a=[1, 3, 6, 7, 7, 10], S=[0, 9]. -/
def code_3033 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3034: ((6,2,2)), m=11, a=[1, 3, 6, 7, 8, 10], S=[0, 9]. -/
def code_3034 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3035: ((6,2,2)), m=11, a=[1, 3, 6, 8, 9, 9], S=[0, 4]. -/
def code_3035 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3036: ((6,2,2)), m=11, a=[1, 3, 6, 8, 9, 9], S=[0, 7]. -/
def code_3036 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3037: ((6,2,2)), m=11, a=[1, 3, 6, 8, 9, 10], S=[0, 7]. -/
def code_3037 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3038: ((6,2,2)), m=11, a=[1, 3, 6, 9, 9, 9], S=[0, 7]. -/
def code_3038 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3039: ((6,2,2)), m=11, a=[1, 3, 7, 7, 7, 9], S=[0, 6]. -/
def code_3039 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3040: ((6,2,2)), m=11, a=[1, 3, 7, 7, 8, 8], S=[0, 6]. -/
def code_3040 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3041: ((6,2,2)), m=11, a=[1, 3, 7, 7, 8, 10], S=[0, 5]. -/
def code_3041 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3042: ((6,2,2)), m=11, a=[1, 3, 7, 7, 8, 10], S=[0, 9]. -/
def code_3042 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3043: ((6,2,2)), m=11, a=[1, 3, 7, 7, 9, 9], S=[0, 6]. -/
def code_3043 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3044: ((6,2,2)), m=11, a=[1, 3, 7, 7, 9, 10], S=[0, 5]. -/
def code_3044 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3045: ((6,2,2)), m=11, a=[1, 3, 7, 8, 8, 10], S=[0, 2]. -/
def code_3045 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3046: ((6,2,2)), m=11, a=[1, 3, 7, 8, 8, 10], S=[0, 6]. -/
def code_3046 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3047: ((6,2,2)), m=11, a=[1, 3, 7, 8, 8, 10], S=[0, 9]. -/
def code_3047 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3048: ((6,2,2)), m=11, a=[1, 3, 7, 8, 9, 9], S=[0, 5]. -/
def code_3048 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3049: ((6,2,2)), m=11, a=[1, 3, 7, 8, 9, 9], S=[0, 6]. -/
def code_3049 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3050: ((6,2,2)), m=11, a=[1, 3, 9, 9, 9, 10], S=[0, 4]. -/
def code_3050 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3051: ((6,2,2)), m=11, a=[1, 4, 4, 4, 5, 5], S=[0, 3]. -/
def code_3051 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3052: ((6,2,2)), m=11, a=[1, 4, 4, 4, 5, 5], S=[0, 9]. -/
def code_3052 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3053: ((6,2,2)), m=11, a=[1, 4, 4, 4, 5, 8], S=[0, 9]. -/
def code_3053 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3054: ((6,2,2)), m=11, a=[1, 4, 4, 4, 6, 10], S=[0, 9]. -/
def code_3054 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3055: ((6,2,2)), m=11, a=[1, 4, 4, 4, 9, 9], S=[0, 8]. -/
def code_3055 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3056: ((6,2,2)), m=11, a=[1, 4, 4, 4, 9, 10], S=[0, 5]. -/
def code_3056 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3057: ((6,2,2)), m=11, a=[1, 4, 4, 4, 9, 10], S=[0, 8]. -/
def code_3057 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3058: ((6,2,2)), m=11, a=[1, 4, 4, 4, 10, 10], S=[0, 2]. -/
def code_3058 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3059: ((6,2,2)), m=11, a=[1, 4, 4, 4, 10, 10], S=[0, 9]. -/
def code_3059 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3060: ((6,2,2)), m=11, a=[1, 4, 4, 5, 5, 8], S=[0, 9]. -/
def code_3060 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3061: ((6,2,2)), m=11, a=[1, 4, 4, 5, 5, 9], S=[0, 3]. -/
def code_3061 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3062: ((6,2,2)), m=11, a=[1, 4, 4, 5, 5, 9], S=[0, 8]. -/
def code_3062 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3063: ((6,2,2)), m=11, a=[1, 4, 4, 5, 6, 7], S=[0, 2]. -/
def code_3063 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3064: ((6,2,2)), m=11, a=[1, 4, 4, 5, 6, 8], S=[0, 2]. -/
def code_3064 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3065: ((6,2,2)), m=11, a=[1, 4, 4, 5, 6, 9], S=[0, 3]. -/
def code_3065 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3066: ((6,2,2)), m=11, a=[1, 4, 4, 5, 6, 9], S=[0, 8]. -/
def code_3066 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3067: ((6,2,2)), m=11, a=[1, 4, 4, 5, 7, 8], S=[0, 2]. -/
def code_3067 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3068: ((6,2,2)), m=11, a=[1, 4, 4, 5, 7, 9], S=[0, 3]. -/
def code_3068 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3069: ((6,2,2)), m=11, a=[1, 4, 4, 5, 8, 8], S=[0, 9]. -/
def code_3069 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3070: ((6,2,2)), m=11, a=[1, 4, 4, 5, 8, 10], S=[0, 2]. -/
def code_3070 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3071: ((6,2,2)), m=11, a=[1, 4, 4, 5, 8, 10], S=[0, 9]. -/
def code_3071 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3072: ((6,2,2)), m=11, a=[1, 4, 4, 5, 9, 10], S=[0, 3]. -/
def code_3072 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3073: ((6,2,2)), m=11, a=[1, 4, 4, 5, 9, 10], S=[0, 8]. -/
def code_3073 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3074: ((6,2,2)), m=11, a=[1, 4, 4, 5, 10, 10], S=[0, 3]. -/
def code_3074 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3075: ((6,2,2)), m=11, a=[1, 4, 4, 5, 10, 10], S=[0, 9]. -/
def code_3075 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3076: ((6,2,2)), m=11, a=[1, 4, 4, 6, 6, 6], S=[0, 8]. -/
def code_3076 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3077: ((6,2,2)), m=11, a=[1, 4, 4, 6, 6, 7], S=[0, 9]. -/
def code_3077 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3078: ((6,2,2)), m=11, a=[1, 4, 4, 6, 6, 8], S=[0, 9]. -/
def code_3078 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3079: ((6,2,2)), m=11, a=[1, 4, 4, 6, 7, 8], S=[0, 2]. -/
def code_3079 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3080: ((6,2,2)), m=11, a=[1, 4, 4, 6, 7, 9], S=[0, 3]. -/
def code_3080 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3081: ((6,2,2)), m=11, a=[1, 4, 4, 6, 8, 10], S=[0, 2]. -/
def code_3081 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3082: ((6,2,2)), m=11, a=[1, 4, 4, 6, 8, 10], S=[0, 9]. -/
def code_3082 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3083: ((6,2,2)), m=11, a=[1, 4, 4, 6, 9, 9], S=[0, 3]. -/
def code_3083 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3084: ((6,2,2)), m=11, a=[1, 4, 4, 6, 9, 9], S=[0, 8]. -/
def code_3084 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3085: ((6,2,2)), m=11, a=[1, 4, 4, 6, 9, 10], S=[0, 3]. -/
def code_3085 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3086: ((6,2,2)), m=11, a=[1, 4, 4, 7, 8, 9], S=[0, 5]. -/
def code_3086 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3087: ((6,2,2)), m=11, a=[1, 4, 4, 7, 8, 9], S=[0, 6]. -/
def code_3087 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3088: ((6,2,2)), m=11, a=[1, 4, 4, 8, 8, 8], S=[0, 2]. -/
def code_3088 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3089: ((6,2,2)), m=11, a=[1, 4, 4, 8, 8, 8], S=[0, 5]. -/
def code_3089 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3090: ((6,2,2)), m=11, a=[1, 4, 4, 8, 8, 8], S=[0, 6]. -/
def code_3090 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3091: ((6,2,2)), m=11, a=[1, 4, 4, 8, 8, 8], S=[0, 9]. -/
def code_3091 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3092: ((6,2,2)), m=11, a=[1, 4, 4, 8, 8, 9], S=[0, 6]. -/
def code_3092 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3093: ((6,2,2)), m=11, a=[1, 4, 4, 8, 9, 9], S=[0, 5]. -/
def code_3093 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3094: ((6,2,2)), m=11, a=[1, 4, 4, 8, 9, 10], S=[0, 6]. -/
def code_3094 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3095: ((6,2,2)), m=11, a=[1, 4, 4, 8, 10, 10], S=[0, 6]. -/
def code_3095 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3096: ((6,2,2)), m=11, a=[1, 4, 4, 9, 9, 10], S=[0, 8]. -/
def code_3096 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3097: ((6,2,2)), m=11, a=[1, 4, 5, 5, 5, 7], S=[0, 8]. -/
def code_3097 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3098: ((6,2,2)), m=11, a=[1, 4, 5, 5, 6, 7], S=[0, 3]. -/
def code_3098 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3099: ((6,2,2)), m=11, a=[1, 4, 5, 5, 6, 8], S=[0, 9]. -/
def code_3099 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3100: ((6,2,2)), m=11, a=[1, 4, 5, 5, 7, 8], S=[0, 9]. -/
def code_3100 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3101: ((6,2,2)), m=11, a=[1, 4, 5, 5, 7, 9], S=[0, 8]. -/
def code_3101 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3102: ((6,2,2)), m=11, a=[1, 4, 5, 5, 7, 10], S=[0, 2]. -/
def code_3102 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3103: ((6,2,2)), m=11, a=[1, 4, 5, 5, 7, 10], S=[0, 8]. -/
def code_3103 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3104: ((6,2,2)), m=11, a=[1, 4, 5, 5, 8, 10], S=[0, 2]. -/
def code_3104 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3105: ((6,2,2)), m=11, a=[1, 4, 5, 5, 8, 10], S=[0, 9]. -/
def code_3105 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3106: ((6,2,2)), m=11, a=[1, 4, 5, 5, 9, 9], S=[0, 3]. -/
def code_3106 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3107: ((6,2,2)), m=11, a=[1, 4, 5, 5, 9, 10], S=[0, 8]. -/
def code_3107 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3108: ((6,2,2)), m=11, a=[1, 4, 5, 6, 7, 8], S=[0, 2]. -/
def code_3108 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3109: ((6,2,2)), m=11, a=[1, 4, 5, 6, 7, 9], S=[0, 3]. -/
def code_3109 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3110: ((6,2,2)), m=11, a=[1, 4, 5, 6, 7, 9], S=[0, 8]. -/
def code_3110 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3111: ((6,2,2)), m=11, a=[1, 4, 5, 6, 8, 8], S=[0, 9]. -/
def code_3111 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3112: ((6,2,2)), m=11, a=[1, 4, 5, 6, 8, 10], S=[0, 9]. -/
def code_3112 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3113: ((6,2,2)), m=11, a=[1, 4, 5, 6, 9, 9], S=[0, 8]. -/
def code_3113 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3114: ((6,2,2)), m=11, a=[1, 4, 5, 7, 8, 8], S=[0, 2]. -/
def code_3114 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3115: ((6,2,2)), m=11, a=[1, 4, 5, 7, 8, 8], S=[0, 9]. -/
def code_3115 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3116: ((6,2,2)), m=11, a=[1, 4, 5, 7, 9, 9], S=[0, 3]. -/
def code_3116 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3117: ((6,2,2)), m=11, a=[1, 4, 5, 7, 9, 9], S=[0, 8]. -/
def code_3117 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3118: ((6,2,2)), m=11, a=[1, 4, 5, 7, 9, 10], S=[0, 8]. -/
def code_3118 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3119: ((6,2,2)), m=11, a=[1, 4, 5, 8, 8, 8], S=[0, 2]. -/
def code_3119 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3120: ((6,2,2)), m=11, a=[1, 4, 5, 8, 8, 10], S=[0, 9]. -/
def code_3120 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3121: ((6,2,2)), m=11, a=[1, 4, 5, 8, 10, 10], S=[0, 9]. -/
def code_3121 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3122: ((6,2,2)), m=11, a=[1, 4, 5, 9, 9, 10], S=[0, 8]. -/
def code_3122 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3123: ((6,2,2)), m=11, a=[1, 4, 6, 6, 6, 9], S=[0, 8]. -/
def code_3123 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3124: ((6,2,2)), m=11, a=[1, 4, 6, 6, 7, 8], S=[0, 9]. -/
def code_3124 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3125: ((6,2,2)), m=11, a=[1, 4, 6, 6, 7, 9], S=[0, 3]. -/
def code_3125 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3126: ((6,2,2)), m=11, a=[1, 4, 6, 6, 7, 9], S=[0, 8]. -/
def code_3126 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3127: ((6,2,2)), m=11, a=[1, 4, 6, 6, 7, 10], S=[0, 3]. -/
def code_3127 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3128: ((6,2,2)), m=11, a=[1, 4, 6, 6, 7, 10], S=[0, 9]. -/
def code_3128 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3129: ((6,2,2)), m=11, a=[1, 4, 6, 6, 8, 8], S=[0, 2]. -/
def code_3129 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3130: ((6,2,2)), m=11, a=[1, 4, 6, 6, 8, 8], S=[0, 9]. -/
def code_3130 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3131: ((6,2,2)), m=11, a=[1, 4, 6, 6, 8, 10], S=[0, 9]. -/
def code_3131 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3132: ((6,2,2)), m=11, a=[1, 4, 6, 6, 9, 9], S=[0, 8]. -/
def code_3132 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3133: ((6,2,2)), m=11, a=[1, 4, 6, 6, 10, 10], S=[0, 2]. -/
def code_3133 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3134: ((6,2,2)), m=11, a=[1, 4, 6, 7, 8, 8], S=[0, 2]. -/
def code_3134 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3135: ((6,2,2)), m=11, a=[1, 4, 6, 7, 8, 10], S=[0, 2]. -/
def code_3135 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3136: ((6,2,2)), m=11, a=[1, 4, 6, 7, 8, 10], S=[0, 9]. -/
def code_3136 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3137: ((6,2,2)), m=11, a=[1, 4, 6, 7, 9, 9], S=[0, 8]. -/
def code_3137 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3138: ((6,2,2)), m=11, a=[1, 4, 6, 7, 9, 10], S=[0, 3]. -/
def code_3138 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3139: ((6,2,2)), m=11, a=[1, 4, 6, 7, 10, 10], S=[0, 2]. -/
def code_3139 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3140: ((6,2,2)), m=11, a=[1, 4, 6, 7, 10, 10], S=[0, 3]. -/
def code_3140 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3141: ((6,2,2)), m=11, a=[1, 4, 6, 7, 10, 10], S=[0, 8]. -/
def code_3141 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3142: ((6,2,2)), m=11, a=[1, 4, 6, 8, 8, 10], S=[0, 2]. -/
def code_3142 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3143: ((6,2,2)), m=11, a=[1, 4, 6, 8, 8, 10], S=[0, 9]. -/
def code_3143 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3144: ((6,2,2)), m=11, a=[1, 4, 6, 8, 10, 10], S=[0, 2]. -/
def code_3144 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3145: ((6,2,2)), m=11, a=[1, 4, 6, 9, 9, 9], S=[0, 8]. -/
def code_3145 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3146: ((6,2,2)), m=11, a=[1, 4, 6, 9, 10, 10], S=[0, 3]. -/
def code_3146 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3147: ((6,2,2)), m=11, a=[1, 4, 7, 7, 8, 10], S=[0, 2]. -/
def code_3147 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3148: ((6,2,2)), m=11, a=[1, 4, 7, 7, 9, 9], S=[0, 5]. -/
def code_3148 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3149: ((6,2,2)), m=11, a=[1, 4, 7, 7, 9, 10], S=[0, 3]. -/
def code_3149 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3150: ((6,2,2)), m=11, a=[1, 4, 7, 8, 8, 9], S=[0, 5]. -/
def code_3150 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3151: ((6,2,2)), m=11, a=[1, 4, 7, 8, 8, 9], S=[0, 6]. -/
def code_3151 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3152: ((6,2,2)), m=11, a=[1, 4, 7, 8, 9, 10], S=[0, 5]. -/
def code_3152 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3153: ((6,2,2)), m=11, a=[1, 4, 7, 8, 10, 10], S=[0, 2]. -/
def code_3153 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3154: ((6,2,2)), m=11, a=[1, 4, 7, 8, 10, 10], S=[0, 5]. -/
def code_3154 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3155: ((6,2,2)), m=11, a=[1, 4, 7, 9, 9, 10], S=[0, 3]. -/
def code_3155 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3156: ((6,2,2)), m=11, a=[1, 4, 7, 9, 10, 10], S=[0, 3]. -/
def code_3156 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3157: ((6,2,2)), m=11, a=[1, 4, 7, 9, 10, 10], S=[0, 5]. -/
def code_3157 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3158: ((6,2,2)), m=11, a=[1, 4, 8, 8, 8, 9], S=[0, 6]. -/
def code_3158 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3159: ((6,2,2)), m=11, a=[1, 4, 8, 8, 9, 9], S=[0, 5]. -/
def code_3159 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3160: ((6,2,2)), m=11, a=[1, 4, 8, 8, 9, 10], S=[0, 5]. -/
def code_3160 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3161: ((6,2,2)), m=11, a=[1, 4, 8, 9, 9, 10], S=[0, 5]. -/
def code_3161 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3162: ((6,2,2)), m=11, a=[1, 4, 8, 9, 10, 10], S=[0, 5]. -/
def code_3162 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3163: ((6,2,2)), m=11, a=[1, 4, 9, 9, 10, 10], S=[0, 5]. -/
def code_3163 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3164: ((6,2,2)), m=11, a=[1, 5, 5, 5, 7, 9], S=[0, 8]. -/
def code_3164 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3165: ((6,2,2)), m=11, a=[1, 5, 5, 5, 8, 8], S=[0, 9]. -/
def code_3165 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3166: ((6,2,2)), m=11, a=[1, 5, 5, 5, 8, 10], S=[0, 9]. -/
def code_3166 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3167: ((6,2,2)), m=11, a=[1, 5, 5, 5, 9, 9], S=[0, 4]. -/
def code_3167 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3168: ((6,2,2)), m=11, a=[1, 5, 5, 5, 9, 9], S=[0, 8]. -/
def code_3168 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3169: ((6,2,2)), m=11, a=[1, 5, 5, 6, 8, 8], S=[0, 4]. -/
def code_3169 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3170: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 7], S=[0, 2]. -/
def code_3170 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3171: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 7], S=[0, 8]. -/
def code_3171 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3172: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 8], S=[0, 2]. -/
def code_3172 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3173: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 8], S=[0, 9]. -/
def code_3173 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3174: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 9], S=[0, 3]. -/
def code_3174 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3175: ((6,2,2)), m=11, a=[1, 5, 5, 7, 7, 9], S=[0, 8]. -/
def code_3175 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3176: ((6,2,2)), m=11, a=[1, 5, 5, 7, 8, 8], S=[0, 2]. -/
def code_3176 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3177: ((6,2,2)), m=11, a=[1, 5, 5, 7, 9, 9], S=[0, 8]. -/
def code_3177 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]

/-- Catalogue code #3178: ((6,2,2)), m=11, a=[1, 5, 5, 7, 9, 10], S=[0, 8]. -/
def code_3178 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3179: ((6,2,2)), m=11, a=[1, 5, 5, 7, 10, 10], S=[0, 8]. -/
def code_3179 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3180: ((6,2,2)), m=11, a=[1, 5, 5, 8, 8, 9], S=[0, 7]. -/
def code_3180 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3181: ((6,2,2)), m=11, a=[1, 5, 5, 8, 8, 10], S=[0, 9]. -/
def code_3181 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3182: ((6,2,2)), m=11, a=[1, 5, 5, 8, 9, 9], S=[0, 7]. -/
def code_3182 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3183: ((6,2,2)), m=11, a=[1, 5, 5, 8, 9, 10], S=[0, 7]. -/
def code_3183 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3184: ((6,2,2)), m=11, a=[1, 5, 5, 8, 10, 10], S=[0, 9]. -/
def code_3184 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3185: ((6,2,2)), m=11, a=[1, 5, 5, 9, 9, 9], S=[0, 4]. -/
def code_3185 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3186: ((6,2,2)), m=11, a=[1, 5, 5, 9, 9, 9], S=[0, 8]. -/
def code_3186 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3187: ((6,2,2)), m=11, a=[1, 5, 5, 9, 9, 10], S=[0, 4]. -/
def code_3187 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3188: ((6,2,2)), m=11, a=[1, 5, 5, 9, 9, 10], S=[0, 7]. -/
def code_3188 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3189: ((6,2,2)), m=11, a=[1, 5, 5, 9, 9, 10], S=[0, 8]. -/
def code_3189 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3190: ((6,2,2)), m=11, a=[1, 5, 6, 6, 7, 8], S=[0, 2]. -/
def code_3190 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3191: ((6,2,2)), m=11, a=[1, 5, 6, 6, 7, 8], S=[0, 9]. -/
def code_3191 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3192: ((6,2,2)), m=11, a=[1, 5, 6, 6, 7, 9], S=[0, 3]. -/
def code_3192 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3193: ((6,2,2)), m=11, a=[1, 5, 6, 6, 8, 9], S=[0, 4]. -/
def code_3193 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3194: ((6,2,2)), m=11, a=[1, 5, 6, 7, 7, 8], S=[0, 2]. -/
def code_3194 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3195: ((6,2,2)), m=11, a=[1, 5, 6, 7, 7, 9], S=[0, 3]. -/
def code_3195 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3196: ((6,2,2)), m=11, a=[1, 5, 6, 7, 8, 10], S=[0, 2]. -/
def code_3196 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3197: ((6,2,2)), m=11, a=[1, 5, 6, 7, 9, 9], S=[0, 8]. -/
def code_3197 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3198: ((6,2,2)), m=11, a=[1, 5, 6, 7, 9, 10], S=[0, 8]. -/
def code_3198 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3199: ((6,2,2)), m=11, a=[1, 5, 6, 7, 10, 10], S=[0, 3]. -/
def code_3199 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3200: ((6,2,2)), m=11, a=[1, 5, 6, 8, 8, 8], S=[0, 7]. -/
def code_3200 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3201: ((6,2,2)), m=11, a=[1, 5, 6, 8, 8, 10], S=[0, 4]. -/
def code_3201 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3202: ((6,2,2)), m=11, a=[1, 5, 6, 8, 8, 10], S=[0, 9]. -/
def code_3202 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3203: ((6,2,2)), m=11, a=[1, 5, 6, 8, 9, 9], S=[0, 4]. -/
def code_3203 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3204: ((6,2,2)), m=11, a=[1, 5, 6, 8, 9, 10], S=[0, 4]. -/
def code_3204 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3205: ((6,2,2)), m=11, a=[1, 5, 6, 8, 10, 10], S=[0, 4]. -/
def code_3205 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3206: ((6,2,2)), m=11, a=[1, 5, 6, 9, 9, 9], S=[0, 7]. -/
def code_3206 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3207: ((6,2,2)), m=11, a=[1, 5, 6, 9, 9, 10], S=[0, 4]. -/
def code_3207 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3208: ((6,2,2)), m=11, a=[1, 5, 7, 7, 7, 9], S=[0, 8]. -/
def code_3208 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3209: ((6,2,2)), m=11, a=[1, 5, 7, 7, 7, 10], S=[0, 2]. -/
def code_3209 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3210: ((6,2,2)), m=11, a=[1, 5, 7, 7, 8, 8], S=[0, 2]. -/
def code_3210 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3211: ((6,2,2)), m=11, a=[1, 5, 7, 7, 8, 10], S=[0, 2]. -/
def code_3211 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3212: ((6,2,2)), m=11, a=[1, 5, 7, 7, 9, 9], S=[0, 8]. -/
def code_3212 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3213: ((6,2,2)), m=11, a=[1, 5, 7, 7, 9, 10], S=[0, 3]. -/
def code_3213 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3214: ((6,2,2)), m=11, a=[1, 5, 7, 7, 9, 10], S=[0, 8]. -/
def code_3214 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3215: ((6,2,2)), m=11, a=[1, 5, 7, 8, 8, 10], S=[0, 2]. -/
def code_3215 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3216: ((6,2,2)), m=11, a=[1, 5, 7, 8, 8, 10], S=[0, 9]. -/
def code_3216 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3217: ((6,2,2)), m=11, a=[1, 5, 8, 8, 8, 9], S=[0, 7]. -/
def code_3217 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3218: ((6,2,2)), m=11, a=[1, 5, 8, 8, 9, 10], S=[0, 4]. -/
def code_3218 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3219: ((6,2,2)), m=11, a=[1, 5, 8, 8, 10, 10], S=[0, 4]. -/
def code_3219 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3220: ((6,2,2)), m=11, a=[1, 5, 8, 9, 9, 10], S=[0, 4]. -/
def code_3220 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3221: ((6,2,2)), m=11, a=[1, 5, 9, 9, 9, 10], S=[0, 4]. -/
def code_3221 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3222: ((6,2,2)), m=11, a=[1, 6, 6, 6, 7, 7], S=[0, 3]. -/
def code_3222 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3223: ((6,2,2)), m=11, a=[1, 6, 6, 6, 7, 7], S=[0, 8]. -/
def code_3223 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3224: ((6,2,2)), m=11, a=[1, 6, 6, 6, 9, 9], S=[0, 7]. -/
def code_3224 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3225: ((6,2,2)), m=11, a=[1, 6, 6, 6, 9, 9], S=[0, 8]. -/
def code_3225 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3226: ((6,2,2)), m=11, a=[1, 6, 6, 6, 9, 10], S=[0, 8]. -/
def code_3226 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3227: ((6,2,2)), m=11, a=[1, 6, 6, 7, 7, 7], S=[0, 9]. -/
def code_3227 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3228: ((6,2,2)), m=11, a=[1, 6, 6, 7, 7, 8], S=[0, 9]. -/
def code_3228 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3229: ((6,2,2)), m=11, a=[1, 6, 6, 7, 8, 8], S=[0, 2]. -/
def code_3229 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3230: ((6,2,2)), m=11, a=[1, 6, 6, 7, 8, 10], S=[0, 2]. -/
def code_3230 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3231: ((6,2,2)), m=11, a=[1, 6, 6, 7, 8, 10], S=[0, 9]. -/
def code_3231 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3232: ((6,2,2)), m=11, a=[1, 6, 6, 7, 9, 9], S=[0, 8]. -/
def code_3232 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3233: ((6,2,2)), m=11, a=[1, 6, 6, 7, 9, 10], S=[0, 3]. -/
def code_3233 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3234: ((6,2,2)), m=11, a=[1, 6, 6, 7, 10, 10], S=[0, 9]. -/
def code_3234 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3235: ((6,2,2)), m=11, a=[1, 6, 6, 8, 8, 9], S=[0, 7]. -/
def code_3235 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3236: ((6,2,2)), m=11, a=[1, 6, 6, 8, 8, 10], S=[0, 2]. -/
def code_3236 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3237: ((6,2,2)), m=11, a=[1, 6, 6, 8, 8, 10], S=[0, 7]. -/
def code_3237 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3238: ((6,2,2)), m=11, a=[1, 6, 6, 8, 9, 9], S=[0, 7]. -/
def code_3238 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3239: ((6,2,2)), m=11, a=[1, 6, 6, 9, 9, 9], S=[0, 8]. -/
def code_3239 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3240: ((6,2,2)), m=11, a=[1, 6, 6, 9, 9, 10], S=[0, 7]. -/
def code_3240 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3241: ((6,2,2)), m=11, a=[1, 6, 6, 9, 10, 10], S=[0, 7]. -/
def code_3241 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3242: ((6,2,2)), m=11, a=[1, 6, 7, 7, 7, 8], S=[0, 9]. -/
def code_3242 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3243: ((6,2,2)), m=11, a=[1, 6, 7, 7, 8, 8], S=[0, 2]. -/
def code_3243 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3244: ((6,2,2)), m=11, a=[1, 6, 7, 7, 8, 10], S=[0, 9]. -/
def code_3244 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3245: ((6,2,2)), m=11, a=[1, 6, 7, 7, 9, 9], S=[0, 3]. -/
def code_3245 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3246: ((6,2,2)), m=11, a=[1, 6, 7, 7, 9, 10], S=[0, 8]. -/
def code_3246 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3247: ((6,2,2)), m=11, a=[1, 6, 7, 8, 8, 10], S=[0, 2]. -/
def code_3247 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3248: ((6,2,2)), m=11, a=[1, 6, 7, 8, 8, 10], S=[0, 9]. -/
def code_3248 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3249: ((6,2,2)), m=11, a=[1, 6, 7, 8, 10, 10], S=[0, 2]. -/
def code_3249 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3250: ((6,2,2)), m=11, a=[1, 6, 7, 9, 10, 10], S=[0, 3]. -/
def code_3250 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3251: ((6,2,2)), m=11, a=[1, 6, 8, 8, 9, 9], S=[0, 4]. -/
def code_3251 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3252: ((6,2,2)), m=11, a=[1, 6, 8, 8, 9, 9], S=[0, 7]. -/
def code_3252 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3253: ((6,2,2)), m=11, a=[1, 6, 8, 8, 9, 10], S=[0, 7]. -/
def code_3253 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3254: ((6,2,2)), m=11, a=[1, 6, 8, 8, 10, 10], S=[0, 4]. -/
def code_3254 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3255: ((6,2,2)), m=11, a=[1, 6, 8, 9, 9, 10], S=[0, 4]. -/
def code_3255 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3256: ((6,2,2)), m=11, a=[1, 6, 8, 9, 9, 10], S=[0, 7]. -/
def code_3256 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3257: ((6,2,2)), m=11, a=[1, 6, 8, 9, 10, 10], S=[0, 4]. -/
def code_3257 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3258: ((6,2,2)), m=11, a=[1, 6, 8, 9, 10, 10], S=[0, 7]. -/
def code_3258 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3259: ((6,2,2)), m=11, a=[1, 6, 9, 9, 10, 10], S=[0, 7]. -/
def code_3259 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3260: ((6,2,2)), m=11, a=[1, 7, 7, 7, 8, 10], S=[0, 9]. -/
def code_3260 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3261: ((6,2,2)), m=11, a=[1, 7, 7, 7, 9, 9], S=[0, 6]. -/
def code_3261 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3262: ((6,2,2)), m=11, a=[1, 7, 7, 7, 9, 9], S=[0, 8]. -/
def code_3262 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3263: ((6,2,2)), m=11, a=[1, 7, 7, 7, 9, 10], S=[0, 6]. -/
def code_3263 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3264: ((6,2,2)), m=11, a=[1, 7, 7, 7, 10, 10], S=[0, 8]. -/
def code_3264 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3265: ((6,2,2)), m=11, a=[1, 7, 7, 8, 8, 9], S=[0, 5]. -/
def code_3265 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3266: ((6,2,2)), m=11, a=[1, 7, 7, 8, 8, 9], S=[0, 6]. -/
def code_3266 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3267: ((6,2,2)), m=11, a=[1, 7, 7, 8, 8, 10], S=[0, 2]. -/
def code_3267 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3268: ((6,2,2)), m=11, a=[1, 7, 7, 8, 8, 10], S=[0, 6]. -/
def code_3268 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3269: ((6,2,2)), m=11, a=[1, 7, 7, 8, 9, 9], S=[0, 5]. -/
def code_3269 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3270: ((6,2,2)), m=11, a=[1, 7, 7, 8, 9, 10], S=[0, 6]. -/
def code_3270 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3271: ((6,2,2)), m=11, a=[1, 7, 7, 9, 9, 9], S=[0, 8]. -/
def code_3271 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3272: ((6,2,2)), m=11, a=[1, 7, 7, 9, 9, 10], S=[0, 3]. -/
def code_3272 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3273: ((6,2,2)), m=11, a=[1, 7, 7, 9, 9, 10], S=[0, 6]. -/
def code_3273 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3274: ((6,2,2)), m=11, a=[1, 7, 7, 9, 9, 10], S=[0, 8]. -/
def code_3274 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3275: ((6,2,2)), m=11, a=[1, 7, 7, 10, 10, 10], S=[0, 8]. -/
def code_3275 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3276: ((6,2,2)), m=11, a=[1, 7, 8, 8, 9, 9], S=[0, 5]. -/
def code_3276 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3277: ((6,2,2)), m=11, a=[1, 7, 8, 8, 9, 10], S=[0, 5]. -/
def code_3277 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3278: ((6,2,2)), m=11, a=[1, 7, 8, 8, 9, 10], S=[0, 6]. -/
def code_3278 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3279: ((6,2,2)), m=11, a=[1, 7, 8, 8, 10, 10], S=[0, 5]. -/
def code_3279 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3280: ((6,2,2)), m=11, a=[1, 7, 8, 8, 10, 10], S=[0, 6]. -/
def code_3280 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3281: ((6,2,2)), m=11, a=[1, 7, 8, 9, 9, 10], S=[0, 5]. -/
def code_3281 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3282: ((6,2,2)), m=11, a=[1, 7, 8, 9, 9, 10], S=[0, 6]. -/
def code_3282 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3283: ((6,2,2)), m=11, a=[1, 7, 8, 9, 10, 10], S=[0, 5]. -/
def code_3283 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3284: ((6,2,2)), m=11, a=[1, 7, 9, 9, 9, 10], S=[0, 6]. -/
def code_3284 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3285: ((6,2,2)), m=11, a=[1, 7, 9, 9, 9, 10], S=[0, 8]. -/
def code_3285 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3286: ((6,2,2)), m=11, a=[1, 8, 8, 8, 10, 10], S=[0, 6]. -/
def code_3286 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3287: ((6,2,2)), m=11, a=[1, 8, 8, 8, 10, 10], S=[0, 9]. -/
def code_3287 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3288: ((6,2,2)), m=11, a=[1, 8, 8, 9, 9, 9], S=[0, 6]. -/
def code_3288 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3289: ((6,2,2)), m=11, a=[1, 8, 8, 9, 9, 10], S=[0, 5]. -/
def code_3289 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3290: ((6,2,2)), m=11, a=[1, 8, 8, 9, 9, 10], S=[0, 7]. -/
def code_3290 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3291: ((6,2,2)), m=11, a=[2, 2, 2, 3, 3, 4], S=[0, 6]. -/
def code_3291 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3292: ((6,2,2)), m=11, a=[2, 2, 2, 3, 3, 4], S=[0, 10]. -/
def code_3292 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3293: ((6,2,2)), m=11, a=[2, 2, 2, 3, 3, 10], S=[0, 6]. -/
def code_3293 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3294: ((6,2,2)), m=11, a=[2, 2, 2, 3, 4, 5], S=[0, 10]. -/
def code_3294 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3295: ((6,2,2)), m=11, a=[2, 2, 2, 3, 4, 7], S=[0, 10]. -/
def code_3295 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3296: ((6,2,2)), m=11, a=[2, 2, 2, 3, 5, 6], S=[0, 10]. -/
def code_3296 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3297: ((6,2,2)), m=11, a=[2, 2, 2, 5, 5, 6], S=[0, 1]. -/
def code_3297 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3298: ((6,2,2)), m=11, a=[2, 2, 2, 5, 5, 8], S=[0, 1]. -/
def code_3298 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3299: ((6,2,2)), m=11, a=[2, 2, 2, 5, 5, 10], S=[0, 3]. -/
def code_3299 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3300: ((6,2,2)), m=11, a=[2, 2, 2, 5, 6, 7], S=[0, 1]. -/
def code_3300 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3301: ((6,2,2)), m=11, a=[2, 2, 2, 5, 6, 10], S=[0, 4]. -/
def code_3301 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3302: ((6,2,2)), m=11, a=[2, 2, 2, 5, 7, 8], S=[0, 1]. -/
def code_3302 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3303: ((6,2,2)), m=11, a=[2, 2, 2, 5, 7, 10], S=[0, 3]. -/
def code_3303 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3304: ((6,2,2)), m=11, a=[2, 2, 2, 5, 8, 10], S=[0, 4]. -/
def code_3304 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3305: ((6,2,2)), m=11, a=[2, 2, 2, 5, 10, 10], S=[0, 3]. -/
def code_3305 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3306: ((6,2,2)), m=11, a=[2, 2, 2, 5, 10, 10], S=[0, 4]. -/
def code_3306 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3307: ((6,2,2)), m=11, a=[2, 2, 2, 7, 8, 8], S=[0, 1]. -/
def code_3307 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3308: ((6,2,2)), m=11, a=[2, 2, 2, 7, 8, 8], S=[0, 6]. -/
def code_3308 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3309: ((6,2,2)), m=11, a=[2, 2, 2, 7, 8, 10], S=[0, 6]. -/
def code_3309 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3310: ((6,2,2)), m=11, a=[2, 2, 3, 3, 3, 4], S=[0, 10]. -/
def code_3310 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3311: ((6,2,2)), m=11, a=[2, 2, 3, 3, 3, 6], S=[0, 4]. -/
def code_3311 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3312: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 4], S=[0, 6]. -/
def code_3312 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3313: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 4], S=[0, 10]. -/
def code_3313 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3314: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 5], S=[0, 10]. -/
def code_3314 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3315: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 6], S=[0, 10]. -/
def code_3315 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3316: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 7], S=[0, 6]. -/
def code_3316 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3317: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 8], S=[0, 1]. -/
def code_3317 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3318: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 8], S=[0, 10]. -/
def code_3318 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3319: ((6,2,2)), m=11, a=[2, 2, 3, 3, 4, 10], S=[0, 6]. -/
def code_3319 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3320: ((6,2,2)), m=11, a=[2, 2, 3, 3, 5, 10], S=[0, 4]. -/
def code_3320 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3321: ((6,2,2)), m=11, a=[2, 2, 3, 3, 5, 10], S=[0, 7]. -/
def code_3321 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3322: ((6,2,2)), m=11, a=[2, 2, 3, 3, 6, 7], S=[0, 10]. -/
def code_3322 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3323: ((6,2,2)), m=11, a=[2, 2, 3, 3, 6, 9], S=[0, 4]. -/
def code_3323 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3324: ((6,2,2)), m=11, a=[2, 2, 3, 3, 6, 9], S=[0, 10]. -/
def code_3324 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3325: ((6,2,2)), m=11, a=[2, 2, 3, 3, 7, 8], S=[0, 10]. -/
def code_3325 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3326: ((6,2,2)), m=11, a=[2, 2, 3, 3, 7, 10], S=[0, 6]. -/
def code_3326 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3327: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 4], S=[0, 5]. -/
def code_3327 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3328: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 5], S=[0, 10]. -/
def code_3328 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3329: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 7], S=[0, 1]. -/
def code_3329 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3330: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 8], S=[0, 5]. -/
def code_3330 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3331: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 9], S=[0, 1]. -/
def code_3331 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3332: ((6,2,2)), m=11, a=[2, 2, 3, 4, 4, 10], S=[0, 6]. -/
def code_3332 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3333: ((6,2,2)), m=11, a=[2, 2, 3, 4, 5, 6], S=[0, 1]. -/
def code_3333 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3334: ((6,2,2)), m=11, a=[2, 2, 3, 4, 5, 6], S=[0, 10]. -/
def code_3334 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3335: ((6,2,2)), m=11, a=[2, 2, 3, 4, 5, 8], S=[0, 1]. -/
def code_3335 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3336: ((6,2,2)), m=11, a=[2, 2, 3, 4, 6, 7], S=[0, 1]. -/
def code_3336 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3337: ((6,2,2)), m=11, a=[2, 2, 3, 4, 6, 8], S=[0, 1]. -/
def code_3337 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3338: ((6,2,2)), m=11, a=[2, 2, 3, 4, 6, 9], S=[0, 1]. -/
def code_3338 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3339: ((6,2,2)), m=11, a=[2, 2, 3, 4, 7, 7], S=[0, 6]. -/
def code_3339 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3340: ((6,2,2)), m=11, a=[2, 2, 3, 4, 7, 8], S=[0, 1]. -/
def code_3340 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3341: ((6,2,2)), m=11, a=[2, 2, 3, 4, 7, 8], S=[0, 5]. -/
def code_3341 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3342: ((6,2,2)), m=11, a=[2, 2, 3, 4, 8, 8], S=[0, 1]. -/
def code_3342 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3343: ((6,2,2)), m=11, a=[2, 2, 3, 4, 8, 9], S=[0, 1]. -/
def code_3343 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3344: ((6,2,2)), m=11, a=[2, 2, 3, 4, 8, 9], S=[0, 5]. -/
def code_3344 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3345: ((6,2,2)), m=11, a=[2, 2, 3, 4, 8, 10], S=[0, 5]. -/
def code_3345 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3346: ((6,2,2)), m=11, a=[2, 2, 3, 4, 8, 10], S=[0, 6]. -/
def code_3346 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3347: ((6,2,2)), m=11, a=[2, 2, 3, 4, 9, 10], S=[0, 5]. -/
def code_3347 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3348: ((6,2,2)), m=11, a=[2, 2, 3, 4, 10, 10], S=[0, 6]. -/
def code_3348 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3349: ((6,2,2)), m=11, a=[2, 2, 3, 5, 5, 8], S=[0, 4]. -/
def code_3349 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3350: ((6,2,2)), m=11, a=[2, 2, 3, 5, 5, 8], S=[0, 10]. -/
def code_3350 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3351: ((6,2,2)), m=11, a=[2, 2, 3, 5, 5, 10], S=[0, 4]. -/
def code_3351 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3352: ((6,2,2)), m=11, a=[2, 2, 3, 5, 6, 7], S=[0, 10]. -/
def code_3352 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3353: ((6,2,2)), m=11, a=[2, 2, 3, 5, 6, 10], S=[0, 7]. -/
def code_3353 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3354: ((6,2,2)), m=11, a=[2, 2, 3, 5, 7, 8], S=[0, 10]. -/
def code_3354 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3355: ((6,2,2)), m=11, a=[2, 2, 3, 5, 8, 10], S=[0, 4]. -/
def code_3355 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3356: ((6,2,2)), m=11, a=[2, 2, 3, 5, 8, 10], S=[0, 7]. -/
def code_3356 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3357: ((6,2,2)), m=11, a=[2, 2, 3, 5, 10, 10], S=[0, 4]. -/
def code_3357 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3358: ((6,2,2)), m=11, a=[2, 2, 3, 5, 10, 10], S=[0, 7]. -/
def code_3358 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3359: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 6], S=[0, 4]. -/
def code_3359 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3360: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 6], S=[0, 7]. -/
def code_3360 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3361: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 6], S=[0, 10]. -/
def code_3361 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3362: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 7], S=[0, 1]. -/
def code_3362 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3363: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 7], S=[0, 10]. -/
def code_3363 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3364: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 8], S=[0, 1]. -/
def code_3364 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3365: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 8], S=[0, 4]. -/
def code_3365 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3366: ((6,2,2)), m=11, a=[2, 2, 3, 6, 6, 10], S=[0, 4]. -/
def code_3366 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3367: ((6,2,2)), m=11, a=[2, 2, 3, 6, 7, 7], S=[0, 10]. -/
def code_3367 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3368: ((6,2,2)), m=11, a=[2, 2, 3, 6, 7, 8], S=[0, 1]. -/
def code_3368 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3369: ((6,2,2)), m=11, a=[2, 2, 3, 6, 7, 9], S=[0, 10]. -/
def code_3369 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3370: ((6,2,2)), m=11, a=[2, 2, 3, 6, 8, 9], S=[0, 1]. -/
def code_3370 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3371: ((6,2,2)), m=11, a=[2, 2, 3, 6, 8, 10], S=[0, 4]. -/
def code_3371 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3372: ((6,2,2)), m=11, a=[2, 2, 3, 6, 8, 10], S=[0, 7]. -/
def code_3372 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3373: ((6,2,2)), m=11, a=[2, 2, 3, 6, 9, 10], S=[0, 7]. -/
def code_3373 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3374: ((6,2,2)), m=11, a=[2, 2, 3, 6, 10, 10], S=[0, 4]. -/
def code_3374 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3375: ((6,2,2)), m=11, a=[2, 2, 3, 6, 10, 10], S=[0, 7]. -/
def code_3375 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3376: ((6,2,2)), m=11, a=[2, 2, 3, 7, 7, 8], S=[0, 6]. -/
def code_3376 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3377: ((6,2,2)), m=11, a=[2, 2, 3, 7, 7, 8], S=[0, 10]. -/
def code_3377 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3378: ((6,2,2)), m=11, a=[2, 2, 3, 7, 7, 10], S=[0, 6]. -/
def code_3378 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3379: ((6,2,2)), m=11, a=[2, 2, 3, 7, 8, 8], S=[0, 1]. -/
def code_3379 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3380: ((6,2,2)), m=11, a=[2, 2, 3, 7, 8, 10], S=[0, 5]. -/
def code_3380 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3381: ((6,2,2)), m=11, a=[2, 2, 3, 7, 8, 10], S=[0, 6]. -/
def code_3381 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3382: ((6,2,2)), m=11, a=[2, 2, 3, 7, 10, 10], S=[0, 6]. -/
def code_3382 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3383: ((6,2,2)), m=11, a=[2, 2, 3, 8, 8, 10], S=[0, 4]. -/
def code_3383 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3384: ((6,2,2)), m=11, a=[2, 2, 3, 8, 9, 10], S=[0, 5]. -/
def code_3384 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3385: ((6,2,2)), m=11, a=[2, 2, 3, 8, 9, 10], S=[0, 6]. -/
def code_3385 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3386: ((6,2,2)), m=11, a=[2, 2, 3, 8, 9, 10], S=[0, 7]. -/
def code_3386 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3387: ((6,2,2)), m=11, a=[2, 2, 3, 8, 10, 10], S=[0, 6]. -/
def code_3387 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3388: ((6,2,2)), m=11, a=[2, 2, 3, 8, 10, 10], S=[0, 7]. -/
def code_3388 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3389: ((6,2,2)), m=11, a=[2, 2, 3, 9, 10, 10], S=[0, 7]. -/
def code_3389 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3390: ((6,2,2)), m=11, a=[2, 2, 4, 4, 5, 10], S=[0, 8]. -/
def code_3390 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3391: ((6,2,2)), m=11, a=[2, 2, 4, 4, 7, 10], S=[0, 6]. -/
def code_3391 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3392: ((6,2,2)), m=11, a=[2, 2, 4, 4, 7, 10], S=[0, 8]. -/
def code_3392 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3393: ((6,2,2)), m=11, a=[2, 2, 4, 4, 9, 10], S=[0, 8]. -/
def code_3393 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3394: ((6,2,2)), m=11, a=[2, 2, 4, 5, 5, 6], S=[0, 3]. -/
def code_3394 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3395: ((6,2,2)), m=11, a=[2, 2, 4, 5, 5, 6], S=[0, 10]. -/
def code_3395 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3396: ((6,2,2)), m=11, a=[2, 2, 4, 5, 5, 8], S=[0, 1]. -/
def code_3396 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3397: ((6,2,2)), m=11, a=[2, 2, 4, 5, 5, 8], S=[0, 10]. -/
def code_3397 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3398: ((6,2,2)), m=11, a=[2, 2, 4, 5, 5, 10], S=[0, 3]. -/
def code_3398 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3399: ((6,2,2)), m=11, a=[2, 2, 4, 5, 6, 7], S=[0, 1]. -/
def code_3399 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3400: ((6,2,2)), m=11, a=[2, 2, 4, 5, 6, 7], S=[0, 3]. -/
def code_3400 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3401: ((6,2,2)), m=11, a=[2, 2, 4, 5, 6, 8], S=[0, 1]. -/
def code_3401 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3402: ((6,2,2)), m=11, a=[2, 2, 4, 5, 6, 8], S=[0, 10]. -/
def code_3402 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3403: ((6,2,2)), m=11, a=[2, 2, 4, 5, 6, 10], S=[0, 3]. -/
def code_3403 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3404: ((6,2,2)), m=11, a=[2, 2, 4, 5, 7, 8], S=[0, 1]. -/
def code_3404 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3405: ((6,2,2)), m=11, a=[2, 2, 4, 5, 7, 10], S=[0, 3]. -/
def code_3405 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3406: ((6,2,2)), m=11, a=[2, 2, 4, 5, 8, 8], S=[0, 1]. -/
def code_3406 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3407: ((6,2,2)), m=11, a=[2, 2, 4, 5, 10, 10], S=[0, 3]. -/
def code_3407 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3408: ((6,2,2)), m=11, a=[2, 2, 4, 5, 10, 10], S=[0, 8]. -/
def code_3408 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3409: ((6,2,2)), m=11, a=[2, 2, 4, 6, 7, 8], S=[0, 1]. -/
def code_3409 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3410: ((6,2,2)), m=11, a=[2, 2, 4, 6, 7, 10], S=[0, 3]. -/
def code_3410 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3411: ((6,2,2)), m=11, a=[2, 2, 4, 6, 7, 10], S=[0, 8]. -/
def code_3411 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3412: ((6,2,2)), m=11, a=[2, 2, 4, 6, 9, 10], S=[0, 3]. -/
def code_3412 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3413: ((6,2,2)), m=11, a=[2, 2, 4, 6, 9, 10], S=[0, 8]. -/
def code_3413 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3414: ((6,2,2)), m=11, a=[2, 2, 4, 7, 8, 8], S=[0, 1]. -/
def code_3414 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3415: ((6,2,2)), m=11, a=[2, 2, 4, 7, 8, 8], S=[0, 6]. -/
def code_3415 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3416: ((6,2,2)), m=11, a=[2, 2, 4, 7, 8, 10], S=[0, 5]. -/
def code_3416 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3417: ((6,2,2)), m=11, a=[2, 2, 4, 7, 8, 10], S=[0, 6]. -/
def code_3417 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3418: ((6,2,2)), m=11, a=[2, 2, 4, 7, 10, 10], S=[0, 6]. -/
def code_3418 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3419: ((6,2,2)), m=11, a=[2, 2, 4, 7, 10, 10], S=[0, 8]. -/
def code_3419 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3420: ((6,2,2)), m=11, a=[2, 2, 4, 8, 9, 10], S=[0, 5]. -/
def code_3420 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3421: ((6,2,2)), m=11, a=[2, 2, 4, 9, 10, 10], S=[0, 8]. -/
def code_3421 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3422: ((6,2,2)), m=11, a=[2, 2, 5, 5, 5, 8], S=[0, 1]. -/
def code_3422 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3423: ((6,2,2)), m=11, a=[2, 2, 5, 5, 5, 8], S=[0, 4]. -/
def code_3423 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3424: ((6,2,2)), m=11, a=[2, 2, 5, 5, 5, 10], S=[0, 3]. -/
def code_3424 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #3425: ((6,2,2)), m=11, a=[2, 2, 5, 5, 5, 10], S=[0, 4]. -/
def code_3425 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3426: ((6,2,2)), m=11, a=[2, 2, 5, 5, 6, 8], S=[0, 7]. -/
def code_3426 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3427: ((6,2,2)), m=11, a=[2, 2, 5, 5, 6, 8], S=[0, 10]. -/
def code_3427 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3428: ((6,2,2)), m=11, a=[2, 2, 5, 5, 7, 8], S=[0, 1]. -/
def code_3428 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3429: ((6,2,2)), m=11, a=[2, 2, 5, 5, 7, 8], S=[0, 10]. -/
def code_3429 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3430: ((6,2,2)), m=11, a=[2, 2, 5, 5, 7, 10], S=[0, 3]. -/
def code_3430 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3431: ((6,2,2)), m=11, a=[2, 2, 5, 5, 8, 8], S=[0, 1]. -/
def code_3431 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3432: ((6,2,2)), m=11, a=[2, 2, 5, 5, 8, 8], S=[0, 7]. -/
def code_3432 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3433: ((6,2,2)), m=11, a=[2, 2, 5, 5, 8, 9], S=[0, 10]. -/
def code_3433 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3434: ((6,2,2)), m=11, a=[2, 2, 5, 5, 8, 10], S=[0, 4]. -/
def code_3434 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3435: ((6,2,2)), m=11, a=[2, 2, 5, 5, 8, 10], S=[0, 7]. -/
def code_3435 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3436: ((6,2,2)), m=11, a=[2, 2, 5, 5, 9, 10], S=[0, 3]. -/
def code_3436 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3437: ((6,2,2)), m=11, a=[2, 2, 5, 5, 10, 10], S=[0, 3]. -/
def code_3437 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3438: ((6,2,2)), m=11, a=[2, 2, 5, 5, 10, 10], S=[0, 4]. -/
def code_3438 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3439: ((6,2,2)), m=11, a=[2, 2, 5, 6, 7, 7], S=[0, 8]. -/
def code_3439 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3440: ((6,2,2)), m=11, a=[2, 2, 5, 6, 7, 7], S=[0, 10]. -/
def code_3440 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3441: ((6,2,2)), m=11, a=[2, 2, 5, 6, 7, 8], S=[0, 1]. -/
def code_3441 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3442: ((6,2,2)), m=11, a=[2, 2, 5, 6, 7, 9], S=[0, 10]. -/
def code_3442 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3443: ((6,2,2)), m=11, a=[2, 2, 5, 6, 7, 10], S=[0, 3]. -/
def code_3443 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3444: ((6,2,2)), m=11, a=[2, 2, 5, 6, 8, 10], S=[0, 4]. -/
def code_3444 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3445: ((6,2,2)), m=11, a=[2, 2, 5, 6, 8, 10], S=[0, 7]. -/
def code_3445 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3446: ((6,2,2)), m=11, a=[2, 2, 5, 6, 10, 10], S=[0, 4]. -/
def code_3446 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3447: ((6,2,2)), m=11, a=[2, 2, 5, 7, 7, 8], S=[0, 10]. -/
def code_3447 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3448: ((6,2,2)), m=11, a=[2, 2, 5, 7, 7, 10], S=[0, 3]. -/
def code_3448 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3449: ((6,2,2)), m=11, a=[2, 2, 5, 7, 7, 10], S=[0, 8]. -/
def code_3449 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3450: ((6,2,2)), m=11, a=[2, 2, 5, 7, 8, 8], S=[0, 1]. -/
def code_3450 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3451: ((6,2,2)), m=11, a=[2, 2, 5, 8, 8, 8], S=[0, 4]. -/
def code_3451 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3452: ((6,2,2)), m=11, a=[2, 2, 5, 8, 8, 8], S=[0, 7]. -/
def code_3452 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3453: ((6,2,2)), m=11, a=[2, 2, 5, 8, 8, 10], S=[0, 4]. -/
def code_3453 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3454: ((6,2,2)), m=11, a=[2, 2, 5, 8, 8, 10], S=[0, 7]. -/
def code_3454 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3455: ((6,2,2)), m=11, a=[2, 2, 6, 6, 7, 8], S=[0, 1]. -/
def code_3455 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3456: ((6,2,2)), m=11, a=[2, 2, 6, 6, 7, 8], S=[0, 10]. -/
def code_3456 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3457: ((6,2,2)), m=11, a=[2, 2, 6, 6, 7, 10], S=[0, 3]. -/
def code_3457 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3458: ((6,2,2)), m=11, a=[2, 2, 6, 6, 7, 10], S=[0, 8]. -/
def code_3458 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3459: ((6,2,2)), m=11, a=[2, 2, 6, 6, 9, 10], S=[0, 3]. -/
def code_3459 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3460: ((6,2,2)), m=11, a=[2, 2, 6, 7, 8, 8], S=[0, 1]. -/
def code_3460 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3461: ((6,2,2)), m=11, a=[2, 2, 6, 7, 8, 8], S=[0, 10]. -/
def code_3461 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3462: ((6,2,2)), m=11, a=[2, 2, 6, 7, 10, 10], S=[0, 8]. -/
def code_3462 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3463: ((6,2,2)), m=11, a=[2, 2, 6, 8, 9, 10], S=[0, 7]. -/
def code_3463 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3464: ((6,2,2)), m=11, a=[2, 2, 7, 7, 7, 8], S=[0, 1]. -/
def code_3464 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3465: ((6,2,2)), m=11, a=[2, 2, 7, 7, 7, 8], S=[0, 10]. -/
def code_3465 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3466: ((6,2,2)), m=11, a=[2, 2, 7, 7, 7, 10], S=[0, 3]. -/
def code_3466 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3467: ((6,2,2)), m=11, a=[2, 2, 7, 7, 8, 8], S=[0, 5]. -/
def code_3467 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3468: ((6,2,2)), m=11, a=[2, 2, 7, 7, 8, 9], S=[0, 1]. -/
def code_3468 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3469: ((6,2,2)), m=11, a=[2, 2, 7, 7, 8, 10], S=[0, 6]. -/
def code_3469 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3470: ((6,2,2)), m=11, a=[2, 2, 7, 7, 9, 10], S=[0, 3]. -/
def code_3470 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3471: ((6,2,2)), m=11, a=[2, 2, 7, 8, 8, 8], S=[0, 1]. -/
def code_3471 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3472: ((6,2,2)), m=11, a=[2, 2, 7, 8, 8, 8], S=[0, 6]. -/
def code_3472 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3473: ((6,2,2)), m=11, a=[2, 2, 7, 8, 8, 10], S=[0, 5]. -/
def code_3473 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3474: ((6,2,2)), m=11, a=[2, 2, 7, 8, 8, 10], S=[0, 6]. -/
def code_3474 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #3475: ((6,2,2)), m=11, a=[2, 2, 8, 9, 10, 10], S=[0, 4]. -/
def code_3475 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3476: ((6,2,2)), m=11, a=[2, 3, 3, 3, 4, 4], S=[0, 6]. -/
def code_3476 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3477: ((6,2,2)), m=11, a=[2, 3, 3, 3, 4, 4], S=[0, 10]. -/
def code_3477 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3478: ((6,2,2)), m=11, a=[2, 3, 3, 3, 4, 5], S=[0, 10]. -/
def code_3478 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3479: ((6,2,2)), m=11, a=[2, 3, 3, 3, 4, 9], S=[0, 1]. -/
def code_3479 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3480: ((6,2,2)), m=11, a=[2, 3, 3, 3, 4, 9], S=[0, 6]. -/
def code_3480 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3481: ((6,2,2)), m=11, a=[2, 3, 3, 3, 6, 7], S=[0, 1]. -/
def code_3481 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3482: ((6,2,2)), m=11, a=[2, 3, 3, 3, 6, 10], S=[0, 4]. -/
def code_3482 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3483: ((6,2,2)), m=11, a=[2, 3, 3, 3, 7, 10], S=[0, 5]. -/
def code_3483 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #3484: ((6,2,2)), m=11, a=[2, 3, 3, 3, 9, 10], S=[0, 4]. -/
def code_3484 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #3485: ((6,2,2)), m=11, a=[2, 3, 3, 3, 10, 10], S=[0, 4]. -/
def code_3485 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3486: ((6,2,2)), m=11, a=[2, 3, 3, 4, 4, 6], S=[0, 1]. -/
def code_3486 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3487: ((6,2,2)), m=11, a=[2, 3, 3, 4, 4, 6], S=[0, 10]. -/
def code_3487 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3488: ((6,2,2)), m=11, a=[2, 3, 3, 4, 4, 9], S=[0, 6]. -/
def code_3488 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3489: ((6,2,2)), m=11, a=[2, 3, 3, 4, 4, 10], S=[0, 5]. -/
def code_3489 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3490: ((6,2,2)), m=11, a=[2, 3, 3, 4, 4, 10], S=[0, 6]. -/
def code_3490 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3491: ((6,2,2)), m=11, a=[2, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_3491 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #3492: ((6,2,2)), m=11, a=[2, 3, 3, 4, 5, 5], S=[0, 10]. -/
def code_3492 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3493: ((6,2,2)), m=11, a=[2, 3, 3, 4, 5, 6], S=[0, 10]. -/
def code_3493 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #3494: ((6,2,2)), m=11, a=[2, 3, 3, 4, 5, 7], S=[0, 1]. -/
def code_3494 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3495: ((6,2,2)), m=11, a=[2, 3, 3, 4, 5, 9], S=[0, 10]. -/
def code_3495 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #3496: ((6,2,2)), m=11, a=[2, 3, 3, 4, 6, 6], S=[0, 1]. -/
def code_3496 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3497: ((6,2,2)), m=11, a=[2, 3, 3, 4, 6, 9], S=[0, 10]. -/
def code_3497 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #3498: ((6,2,2)), m=11, a=[2, 3, 3, 4, 7, 9], S=[0, 5]. -/
def code_3498 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #3499: ((6,2,2)), m=11, a=[2, 3, 3, 4, 7, 10], S=[0, 5]. -/
def code_3499 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
def checks : List Bool :=
  [decide code_3000.OK,
   decide code_3001.OK,
   decide code_3002.OK,
   decide code_3003.OK,
   decide code_3004.OK,
   decide code_3005.OK,
   decide code_3006.OK,
   decide code_3007.OK,
   decide code_3008.OK,
   decide code_3009.OK,
   decide code_3010.OK,
   decide code_3011.OK,
   decide code_3012.OK,
   decide code_3013.OK,
   decide code_3014.OK,
   decide code_3015.OK,
   decide code_3016.OK,
   decide code_3017.OK,
   decide code_3018.OK,
   decide code_3019.OK,
   decide code_3020.OK,
   decide code_3021.OK,
   decide code_3022.OK,
   decide code_3023.OK,
   decide code_3024.OK,
   decide code_3025.OK,
   decide code_3026.OK,
   decide code_3027.OK,
   decide code_3028.OK,
   decide code_3029.OK,
   decide code_3030.OK,
   decide code_3031.OK,
   decide code_3032.OK,
   decide code_3033.OK,
   decide code_3034.OK,
   decide code_3035.OK,
   decide code_3036.OK,
   decide code_3037.OK,
   decide code_3038.OK,
   decide code_3039.OK,
   decide code_3040.OK,
   decide code_3041.OK,
   decide code_3042.OK,
   decide code_3043.OK,
   decide code_3044.OK,
   decide code_3045.OK,
   decide code_3046.OK,
   decide code_3047.OK,
   decide code_3048.OK,
   decide code_3049.OK,
   decide code_3050.OK,
   decide code_3051.OK,
   decide code_3052.OK,
   decide code_3053.OK,
   decide code_3054.OK,
   decide code_3055.OK,
   decide code_3056.OK,
   decide code_3057.OK,
   decide code_3058.OK,
   decide code_3059.OK,
   decide code_3060.OK,
   decide code_3061.OK,
   decide code_3062.OK,
   decide code_3063.OK,
   decide code_3064.OK,
   decide code_3065.OK,
   decide code_3066.OK,
   decide code_3067.OK,
   decide code_3068.OK,
   decide code_3069.OK,
   decide code_3070.OK,
   decide code_3071.OK,
   decide code_3072.OK,
   decide code_3073.OK,
   decide code_3074.OK,
   decide code_3075.OK,
   decide code_3076.OK,
   decide code_3077.OK,
   decide code_3078.OK,
   decide code_3079.OK,
   decide code_3080.OK,
   decide code_3081.OK,
   decide code_3082.OK,
   decide code_3083.OK,
   decide code_3084.OK,
   decide code_3085.OK,
   decide code_3086.OK,
   decide code_3087.OK,
   decide code_3088.OK,
   decide code_3089.OK,
   decide code_3090.OK,
   decide code_3091.OK,
   decide code_3092.OK,
   decide code_3093.OK,
   decide code_3094.OK,
   decide code_3095.OK,
   decide code_3096.OK,
   decide code_3097.OK,
   decide code_3098.OK,
   decide code_3099.OK,
   decide code_3100.OK,
   decide code_3101.OK,
   decide code_3102.OK,
   decide code_3103.OK,
   decide code_3104.OK,
   decide code_3105.OK,
   decide code_3106.OK,
   decide code_3107.OK,
   decide code_3108.OK,
   decide code_3109.OK,
   decide code_3110.OK,
   decide code_3111.OK,
   decide code_3112.OK,
   decide code_3113.OK,
   decide code_3114.OK,
   decide code_3115.OK,
   decide code_3116.OK,
   decide code_3117.OK,
   decide code_3118.OK,
   decide code_3119.OK,
   decide code_3120.OK,
   decide code_3121.OK,
   decide code_3122.OK,
   decide code_3123.OK,
   decide code_3124.OK,
   decide code_3125.OK,
   decide code_3126.OK,
   decide code_3127.OK,
   decide code_3128.OK,
   decide code_3129.OK,
   decide code_3130.OK,
   decide code_3131.OK,
   decide code_3132.OK,
   decide code_3133.OK,
   decide code_3134.OK,
   decide code_3135.OK,
   decide code_3136.OK,
   decide code_3137.OK,
   decide code_3138.OK,
   decide code_3139.OK,
   decide code_3140.OK,
   decide code_3141.OK,
   decide code_3142.OK,
   decide code_3143.OK,
   decide code_3144.OK,
   decide code_3145.OK,
   decide code_3146.OK,
   decide code_3147.OK,
   decide code_3148.OK,
   decide code_3149.OK,
   decide code_3150.OK,
   decide code_3151.OK,
   decide code_3152.OK,
   decide code_3153.OK,
   decide code_3154.OK,
   decide code_3155.OK,
   decide code_3156.OK,
   decide code_3157.OK,
   decide code_3158.OK,
   decide code_3159.OK,
   decide code_3160.OK,
   decide code_3161.OK,
   decide code_3162.OK,
   decide code_3163.OK,
   decide code_3164.OK,
   decide code_3165.OK,
   decide code_3166.OK,
   decide code_3167.OK,
   decide code_3168.OK,
   decide code_3169.OK,
   decide code_3170.OK,
   decide code_3171.OK,
   decide code_3172.OK,
   decide code_3173.OK,
   decide code_3174.OK,
   decide code_3175.OK,
   decide code_3176.OK,
   decide code_3177.OK,
   decide code_3178.OK,
   decide code_3179.OK,
   decide code_3180.OK,
   decide code_3181.OK,
   decide code_3182.OK,
   decide code_3183.OK,
   decide code_3184.OK,
   decide code_3185.OK,
   decide code_3186.OK,
   decide code_3187.OK,
   decide code_3188.OK,
   decide code_3189.OK,
   decide code_3190.OK,
   decide code_3191.OK,
   decide code_3192.OK,
   decide code_3193.OK,
   decide code_3194.OK,
   decide code_3195.OK,
   decide code_3196.OK,
   decide code_3197.OK,
   decide code_3198.OK,
   decide code_3199.OK,
   decide code_3200.OK,
   decide code_3201.OK,
   decide code_3202.OK,
   decide code_3203.OK,
   decide code_3204.OK,
   decide code_3205.OK,
   decide code_3206.OK,
   decide code_3207.OK,
   decide code_3208.OK,
   decide code_3209.OK,
   decide code_3210.OK,
   decide code_3211.OK,
   decide code_3212.OK,
   decide code_3213.OK,
   decide code_3214.OK,
   decide code_3215.OK,
   decide code_3216.OK,
   decide code_3217.OK,
   decide code_3218.OK,
   decide code_3219.OK,
   decide code_3220.OK,
   decide code_3221.OK,
   decide code_3222.OK,
   decide code_3223.OK,
   decide code_3224.OK,
   decide code_3225.OK,
   decide code_3226.OK,
   decide code_3227.OK,
   decide code_3228.OK,
   decide code_3229.OK,
   decide code_3230.OK,
   decide code_3231.OK,
   decide code_3232.OK,
   decide code_3233.OK,
   decide code_3234.OK,
   decide code_3235.OK,
   decide code_3236.OK,
   decide code_3237.OK,
   decide code_3238.OK,
   decide code_3239.OK,
   decide code_3240.OK,
   decide code_3241.OK,
   decide code_3242.OK,
   decide code_3243.OK,
   decide code_3244.OK,
   decide code_3245.OK,
   decide code_3246.OK,
   decide code_3247.OK,
   decide code_3248.OK,
   decide code_3249.OK,
   decide code_3250.OK,
   decide code_3251.OK,
   decide code_3252.OK,
   decide code_3253.OK,
   decide code_3254.OK,
   decide code_3255.OK,
   decide code_3256.OK,
   decide code_3257.OK,
   decide code_3258.OK,
   decide code_3259.OK,
   decide code_3260.OK,
   decide code_3261.OK,
   decide code_3262.OK,
   decide code_3263.OK,
   decide code_3264.OK,
   decide code_3265.OK,
   decide code_3266.OK,
   decide code_3267.OK,
   decide code_3268.OK,
   decide code_3269.OK,
   decide code_3270.OK,
   decide code_3271.OK,
   decide code_3272.OK,
   decide code_3273.OK,
   decide code_3274.OK,
   decide code_3275.OK,
   decide code_3276.OK,
   decide code_3277.OK,
   decide code_3278.OK,
   decide code_3279.OK,
   decide code_3280.OK,
   decide code_3281.OK,
   decide code_3282.OK,
   decide code_3283.OK,
   decide code_3284.OK,
   decide code_3285.OK,
   decide code_3286.OK,
   decide code_3287.OK,
   decide code_3288.OK,
   decide code_3289.OK,
   decide code_3290.OK,
   decide code_3291.OK,
   decide code_3292.OK,
   decide code_3293.OK,
   decide code_3294.OK,
   decide code_3295.OK,
   decide code_3296.OK,
   decide code_3297.OK,
   decide code_3298.OK,
   decide code_3299.OK,
   decide code_3300.OK,
   decide code_3301.OK,
   decide code_3302.OK,
   decide code_3303.OK,
   decide code_3304.OK,
   decide code_3305.OK,
   decide code_3306.OK,
   decide code_3307.OK,
   decide code_3308.OK,
   decide code_3309.OK,
   decide code_3310.OK,
   decide code_3311.OK,
   decide code_3312.OK,
   decide code_3313.OK,
   decide code_3314.OK,
   decide code_3315.OK,
   decide code_3316.OK,
   decide code_3317.OK,
   decide code_3318.OK,
   decide code_3319.OK,
   decide code_3320.OK,
   decide code_3321.OK,
   decide code_3322.OK,
   decide code_3323.OK,
   decide code_3324.OK,
   decide code_3325.OK,
   decide code_3326.OK,
   decide code_3327.OK,
   decide code_3328.OK,
   decide code_3329.OK,
   decide code_3330.OK,
   decide code_3331.OK,
   decide code_3332.OK,
   decide code_3333.OK,
   decide code_3334.OK,
   decide code_3335.OK,
   decide code_3336.OK,
   decide code_3337.OK,
   decide code_3338.OK,
   decide code_3339.OK,
   decide code_3340.OK,
   decide code_3341.OK,
   decide code_3342.OK,
   decide code_3343.OK,
   decide code_3344.OK,
   decide code_3345.OK,
   decide code_3346.OK,
   decide code_3347.OK,
   decide code_3348.OK,
   decide code_3349.OK,
   decide code_3350.OK,
   decide code_3351.OK,
   decide code_3352.OK,
   decide code_3353.OK,
   decide code_3354.OK,
   decide code_3355.OK,
   decide code_3356.OK,
   decide code_3357.OK,
   decide code_3358.OK,
   decide code_3359.OK,
   decide code_3360.OK,
   decide code_3361.OK,
   decide code_3362.OK,
   decide code_3363.OK,
   decide code_3364.OK,
   decide code_3365.OK,
   decide code_3366.OK,
   decide code_3367.OK,
   decide code_3368.OK,
   decide code_3369.OK,
   decide code_3370.OK,
   decide code_3371.OK,
   decide code_3372.OK,
   decide code_3373.OK,
   decide code_3374.OK,
   decide code_3375.OK,
   decide code_3376.OK,
   decide code_3377.OK,
   decide code_3378.OK,
   decide code_3379.OK,
   decide code_3380.OK,
   decide code_3381.OK,
   decide code_3382.OK,
   decide code_3383.OK,
   decide code_3384.OK,
   decide code_3385.OK,
   decide code_3386.OK,
   decide code_3387.OK,
   decide code_3388.OK,
   decide code_3389.OK,
   decide code_3390.OK,
   decide code_3391.OK,
   decide code_3392.OK,
   decide code_3393.OK,
   decide code_3394.OK,
   decide code_3395.OK,
   decide code_3396.OK,
   decide code_3397.OK,
   decide code_3398.OK,
   decide code_3399.OK,
   decide code_3400.OK,
   decide code_3401.OK,
   decide code_3402.OK,
   decide code_3403.OK,
   decide code_3404.OK,
   decide code_3405.OK,
   decide code_3406.OK,
   decide code_3407.OK,
   decide code_3408.OK,
   decide code_3409.OK,
   decide code_3410.OK,
   decide code_3411.OK,
   decide code_3412.OK,
   decide code_3413.OK,
   decide code_3414.OK,
   decide code_3415.OK,
   decide code_3416.OK,
   decide code_3417.OK,
   decide code_3418.OK,
   decide code_3419.OK,
   decide code_3420.OK,
   decide code_3421.OK,
   decide code_3422.OK,
   decide code_3423.OK,
   decide code_3424.OK,
   decide code_3425.OK,
   decide code_3426.OK,
   decide code_3427.OK,
   decide code_3428.OK,
   decide code_3429.OK,
   decide code_3430.OK,
   decide code_3431.OK,
   decide code_3432.OK,
   decide code_3433.OK,
   decide code_3434.OK,
   decide code_3435.OK,
   decide code_3436.OK,
   decide code_3437.OK,
   decide code_3438.OK,
   decide code_3439.OK,
   decide code_3440.OK,
   decide code_3441.OK,
   decide code_3442.OK,
   decide code_3443.OK,
   decide code_3444.OK,
   decide code_3445.OK,
   decide code_3446.OK,
   decide code_3447.OK,
   decide code_3448.OK,
   decide code_3449.OK,
   decide code_3450.OK,
   decide code_3451.OK,
   decide code_3452.OK,
   decide code_3453.OK,
   decide code_3454.OK,
   decide code_3455.OK,
   decide code_3456.OK,
   decide code_3457.OK,
   decide code_3458.OK,
   decide code_3459.OK,
   decide code_3460.OK,
   decide code_3461.OK,
   decide code_3462.OK,
   decide code_3463.OK,
   decide code_3464.OK,
   decide code_3465.OK,
   decide code_3466.OK,
   decide code_3467.OK,
   decide code_3468.OK,
   decide code_3469.OK,
   decide code_3470.OK,
   decide code_3471.OK,
   decide code_3472.OK,
   decide code_3473.OK,
   decide code_3474.OK,
   decide code_3475.OK,
   decide code_3476.OK,
   decide code_3477.OK,
   decide code_3478.OK,
   decide code_3479.OK,
   decide code_3480.OK,
   decide code_3481.OK,
   decide code_3482.OK,
   decide code_3483.OK,
   decide code_3484.OK,
   decide code_3485.OK,
   decide code_3486.OK,
   decide code_3487.OK,
   decide code_3488.OK,
   decide code_3489.OK,
   decide code_3490.OK,
   decide code_3491.OK,
   decide code_3492.OK,
   decide code_3493.OK,
   decide code_3494.OK,
   decide code_3495.OK,
   decide code_3496.OK,
   decide code_3497.OK,
   decide code_3498.OK,
   decide code_3499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk006
