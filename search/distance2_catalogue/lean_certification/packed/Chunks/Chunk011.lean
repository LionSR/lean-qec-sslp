import SS

namespace Catalogue.Chunk011

open SS SS.Verify

/-- Catalogue code #5500: ((6,2,2)), m=13, a=[1, 1, 4, 6, 9, 9], S=[0, 11]. -/
def code_5500 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5501: ((6,2,2)), m=13, a=[1, 1, 4, 6, 9, 11], S=[0, 8]. -/
def code_5501 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5502: ((6,2,2)), m=13, a=[1, 1, 4, 6, 10, 10], S=[0, 11]. -/
def code_5502 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5503: ((6,2,2)), m=13, a=[1, 1, 4, 7, 7, 9], S=[0, 5]. -/
def code_5503 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5504: ((6,2,2)), m=13, a=[1, 1, 4, 7, 7, 10], S=[0, 2]. -/
def code_5504 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5505: ((6,2,2)), m=13, a=[1, 1, 4, 7, 7, 11], S=[0, 3]. -/
def code_5505 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5506: ((6,2,2)), m=13, a=[1, 1, 4, 7, 7, 12], S=[0, 3]. -/
def code_5506 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5507: ((6,2,2)), m=13, a=[1, 1, 4, 7, 8, 9], S=[0, 2]. -/
def code_5507 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5508: ((6,2,2)), m=13, a=[1, 1, 4, 7, 8, 10], S=[0, 2]. -/
def code_5508 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5509: ((6,2,2)), m=13, a=[1, 1, 4, 7, 8, 11], S=[0, 3]. -/
def code_5509 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5510: ((6,2,2)), m=13, a=[1, 1, 4, 7, 9, 9], S=[0, 11]. -/
def code_5510 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5511: ((6,2,2)), m=13, a=[1, 1, 4, 7, 9, 10], S=[0, 8]. -/
def code_5511 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5512: ((6,2,2)), m=13, a=[1, 1, 4, 7, 9, 10], S=[0, 11]. -/
def code_5512 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5513: ((6,2,2)), m=13, a=[1, 1, 4, 7, 9, 11], S=[0, 5]. -/
def code_5513 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5514: ((6,2,2)), m=13, a=[1, 1, 4, 7, 10, 10], S=[0, 2]. -/
def code_5514 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5515: ((6,2,2)), m=13, a=[1, 1, 4, 7, 11, 11], S=[0, 3]. -/
def code_5515 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5516: ((6,2,2)), m=13, a=[1, 1, 4, 7, 11, 11], S=[0, 5]. -/
def code_5516 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5517: ((6,2,2)), m=13, a=[1, 1, 4, 8, 8, 8], S=[0, 2]. -/
def code_5517 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5518: ((6,2,2)), m=13, a=[1, 1, 4, 8, 9, 11], S=[0, 6]. -/
def code_5518 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5519: ((6,2,2)), m=13, a=[1, 1, 4, 8, 10, 11], S=[0, 6]. -/
def code_5519 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5520: ((6,2,2)), m=13, a=[1, 1, 4, 8, 11, 11], S=[0, 6]. -/
def code_5520 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5521: ((6,2,2)), m=13, a=[1, 1, 4, 9, 11, 11], S=[0, 5]. -/
def code_5521 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5522: ((6,2,2)), m=13, a=[1, 1, 4, 9, 11, 11], S=[0, 6]. -/
def code_5522 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5523: ((6,2,2)), m=13, a=[1, 1, 4, 10, 10, 11], S=[0, 6]. -/
def code_5523 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5524: ((6,2,2)), m=13, a=[1, 1, 4, 10, 10, 12], S=[0, 6]. -/
def code_5524 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5525: ((6,2,2)), m=13, a=[1, 1, 4, 10, 11, 11], S=[0, 6]. -/
def code_5525 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5526: ((6,2,2)), m=13, a=[1, 1, 5, 5, 5, 9], S=[0, 2]. -/
def code_5526 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5527: ((6,2,2)), m=13, a=[1, 1, 5, 5, 5, 9], S=[0, 11]. -/
def code_5527 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5528: ((6,2,2)), m=13, a=[1, 1, 5, 5, 5, 10], S=[0, 2]. -/
def code_5528 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5529: ((6,2,2)), m=13, a=[1, 1, 5, 5, 5, 11], S=[0, 3]. -/
def code_5529 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5530: ((6,2,2)), m=13, a=[1, 1, 5, 5, 5, 11], S=[0, 4]. -/
def code_5530 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #5531: ((6,2,2)), m=13, a=[1, 1, 5, 5, 6, 9], S=[0, 3]. -/
def code_5531 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5532: ((6,2,2)), m=13, a=[1, 1, 5, 5, 6, 9], S=[0, 11]. -/
def code_5532 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5533: ((6,2,2)), m=13, a=[1, 1, 5, 5, 6, 10], S=[0, 4]. -/
def code_5533 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5534: ((6,2,2)), m=13, a=[1, 1, 5, 5, 6, 10], S=[0, 11]. -/
def code_5534 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5535: ((6,2,2)), m=13, a=[1, 1, 5, 5, 9, 10], S=[0, 7]. -/
def code_5535 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5536: ((6,2,2)), m=13, a=[1, 1, 5, 5, 9, 10], S=[0, 11]. -/
def code_5536 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5537: ((6,2,2)), m=13, a=[1, 1, 5, 5, 10, 10], S=[0, 7]. -/
def code_5537 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5538: ((6,2,2)), m=13, a=[1, 1, 5, 6, 7, 11], S=[0, 9]. -/
def code_5538 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5539: ((6,2,2)), m=13, a=[1, 1, 5, 6, 8, 10], S=[0, 2]. -/
def code_5539 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5540: ((6,2,2)), m=13, a=[1, 1, 5, 6, 8, 11], S=[0, 3]. -/
def code_5540 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5541: ((6,2,2)), m=13, a=[1, 1, 5, 6, 8, 11], S=[0, 9]. -/
def code_5541 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5542: ((6,2,2)), m=13, a=[1, 1, 5, 6, 8, 11], S=[0, 10]. -/
def code_5542 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5543: ((6,2,2)), m=13, a=[1, 1, 5, 6, 8, 12], S=[0, 10]. -/
def code_5543 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5544: ((6,2,2)), m=13, a=[1, 1, 5, 6, 9, 9], S=[0, 2]. -/
def code_5544 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5545: ((6,2,2)), m=13, a=[1, 1, 5, 6, 9, 10], S=[0, 2]. -/
def code_5545 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5546: ((6,2,2)), m=13, a=[1, 1, 5, 6, 9, 10], S=[0, 11]. -/
def code_5546 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5547: ((6,2,2)), m=13, a=[1, 1, 5, 6, 9, 11], S=[0, 10]. -/
def code_5547 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5548: ((6,2,2)), m=13, a=[1, 1, 5, 6, 10, 10], S=[0, 2]. -/
def code_5548 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5549: ((6,2,2)), m=13, a=[1, 1, 5, 6, 10, 10], S=[0, 11]. -/
def code_5549 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5550: ((6,2,2)), m=13, a=[1, 1, 5, 6, 10, 11], S=[0, 4]. -/
def code_5550 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5551: ((6,2,2)), m=13, a=[1, 1, 5, 7, 7, 10], S=[0, 2]. -/
def code_5551 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5552: ((6,2,2)), m=13, a=[1, 1, 5, 7, 7, 11], S=[0, 3]. -/
def code_5552 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5553: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 9], S=[0, 2]. -/
def code_5553 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5554: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 9], S=[0, 3]. -/
def code_5554 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5555: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 10], S=[0, 2]. -/
def code_5555 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5556: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 10], S=[0, 4]. -/
def code_5556 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5557: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 11], S=[0, 3]. -/
def code_5557 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5558: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 11], S=[0, 4]. -/
def code_5558 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5559: ((6,2,2)), m=13, a=[1, 1, 5, 7, 8, 11], S=[0, 10]. -/
def code_5559 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5560: ((6,2,2)), m=13, a=[1, 1, 5, 7, 9, 10], S=[0, 11]. -/
def code_5560 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5561: ((6,2,2)), m=13, a=[1, 1, 5, 7, 9, 11], S=[0, 3]. -/
def code_5561 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5562: ((6,2,2)), m=13, a=[1, 1, 5, 7, 10, 10], S=[0, 2]. -/
def code_5562 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5563: ((6,2,2)), m=13, a=[1, 1, 5, 7, 10, 11], S=[0, 4]. -/
def code_5563 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5564: ((6,2,2)), m=13, a=[1, 1, 5, 8, 9, 10], S=[0, 2]. -/
def code_5564 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5565: ((6,2,2)), m=13, a=[1, 1, 5, 8, 9, 10], S=[0, 6]. -/
def code_5565 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5566: ((6,2,2)), m=13, a=[1, 1, 5, 8, 9, 11], S=[0, 3]. -/
def code_5566 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5567: ((6,2,2)), m=13, a=[1, 1, 5, 8, 9, 11], S=[0, 6]. -/
def code_5567 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5568: ((6,2,2)), m=13, a=[1, 1, 5, 8, 10, 10], S=[0, 2]. -/
def code_5568 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5569: ((6,2,2)), m=13, a=[1, 1, 5, 8, 10, 11], S=[0, 4]. -/
def code_5569 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #5570: ((6,2,2)), m=13, a=[1, 1, 5, 8, 10, 11], S=[0, 6]. -/
def code_5570 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5571: ((6,2,2)), m=13, a=[1, 1, 5, 9, 9, 10], S=[0, 2]. -/
def code_5571 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5572: ((6,2,2)), m=13, a=[1, 1, 5, 9, 10, 11], S=[0, 6]. -/
def code_5572 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5573: ((6,2,2)), m=13, a=[1, 1, 5, 10, 10, 11], S=[0, 6]. -/
def code_5573 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5574: ((6,2,2)), m=13, a=[1, 1, 5, 11, 11, 11], S=[0, 7]. -/
def code_5574 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5575: ((6,2,2)), m=13, a=[1, 1, 6, 6, 8, 11], S=[0, 10]. -/
def code_5575 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5576: ((6,2,2)), m=13, a=[1, 1, 6, 6, 9, 9], S=[0, 2]. -/
def code_5576 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5577: ((6,2,2)), m=13, a=[1, 1, 6, 6, 9, 9], S=[0, 8]. -/
def code_5577 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5578: ((6,2,2)), m=13, a=[1, 1, 6, 6, 9, 11], S=[0, 10]. -/
def code_5578 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5579: ((6,2,2)), m=13, a=[1, 1, 6, 7, 8, 11], S=[0, 4]. -/
def code_5579 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5580: ((6,2,2)), m=13, a=[1, 1, 6, 7, 9, 9], S=[0, 5]. -/
def code_5580 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5581: ((6,2,2)), m=13, a=[1, 1, 6, 7, 9, 9], S=[0, 11]. -/
def code_5581 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5582: ((6,2,2)), m=13, a=[1, 1, 6, 7, 9, 11], S=[0, 5]. -/
def code_5582 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5583: ((6,2,2)), m=13, a=[1, 1, 6, 8, 8, 10], S=[0, 11]. -/
def code_5583 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5584: ((6,2,2)), m=13, a=[1, 1, 6, 8, 9, 9], S=[0, 11]. -/
def code_5584 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5585: ((6,2,2)), m=13, a=[1, 1, 6, 8, 10, 10], S=[0, 2]. -/
def code_5585 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5586: ((6,2,2)), m=13, a=[1, 1, 6, 9, 9, 9], S=[0, 2]. -/
def code_5586 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5587: ((6,2,2)), m=13, a=[1, 1, 6, 9, 9, 10], S=[0, 2]. -/
def code_5587 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5588: ((6,2,2)), m=13, a=[1, 1, 6, 9, 9, 10], S=[0, 8]. -/
def code_5588 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5589: ((6,2,2)), m=13, a=[1, 1, 6, 9, 9, 11], S=[0, 5]. -/
def code_5589 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5590: ((6,2,2)), m=13, a=[1, 1, 6, 9, 9, 11], S=[0, 8]. -/
def code_5590 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5591: ((6,2,2)), m=13, a=[1, 1, 6, 9, 10, 11], S=[0, 8]. -/
def code_5591 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5592: ((6,2,2)), m=13, a=[1, 1, 6, 10, 10, 11], S=[0, 5]. -/
def code_5592 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5593: ((6,2,2)), m=13, a=[1, 1, 7, 7, 8, 10], S=[0, 11]. -/
def code_5593 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5594: ((6,2,2)), m=13, a=[1, 1, 7, 7, 9, 10], S=[0, 11]. -/
def code_5594 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5595: ((6,2,2)), m=13, a=[1, 1, 7, 7, 10, 10], S=[0, 2]. -/
def code_5595 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5596: ((6,2,2)), m=13, a=[1, 1, 7, 7, 10, 10], S=[0, 8]. -/
def code_5596 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5597: ((6,2,2)), m=13, a=[1, 1, 7, 7, 10, 11], S=[0, 8]. -/
def code_5597 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5598: ((6,2,2)), m=13, a=[1, 1, 7, 7, 10, 11], S=[0, 9]. -/
def code_5598 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5599: ((6,2,2)), m=13, a=[1, 1, 7, 7, 11, 11], S=[0, 3]. -/
def code_5599 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5600: ((6,2,2)), m=13, a=[1, 1, 7, 7, 11, 11], S=[0, 9]. -/
def code_5600 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5601: ((6,2,2)), m=13, a=[1, 1, 7, 8, 8, 9], S=[0, 10]. -/
def code_5601 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5602: ((6,2,2)), m=13, a=[1, 1, 7, 8, 8, 9], S=[0, 11]. -/
def code_5602 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5603: ((6,2,2)), m=13, a=[1, 1, 7, 8, 9, 9], S=[0, 11]. -/
def code_5603 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5604: ((6,2,2)), m=13, a=[1, 1, 7, 8, 9, 10], S=[0, 2]. -/
def code_5604 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5605: ((6,2,2)), m=13, a=[1, 1, 7, 8, 9, 11], S=[0, 3]. -/
def code_5605 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5606: ((6,2,2)), m=13, a=[1, 1, 7, 8, 10, 10], S=[0, 2]. -/
def code_5606 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5607: ((6,2,2)), m=13, a=[1, 1, 7, 8, 10, 11], S=[0, 4]. -/
def code_5607 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5608: ((6,2,2)), m=13, a=[1, 1, 7, 8, 11, 11], S=[0, 4]. -/
def code_5608 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5609: ((6,2,2)), m=13, a=[1, 1, 7, 9, 9, 11], S=[0, 5]. -/
def code_5609 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5610: ((6,2,2)), m=13, a=[1, 1, 7, 9, 10, 11], S=[0, 5]. -/
def code_5610 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5611: ((6,2,2)), m=13, a=[1, 1, 7, 9, 11, 11], S=[0, 5]. -/
def code_5611 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5612: ((6,2,2)), m=13, a=[1, 1, 7, 10, 10, 11], S=[0, 8]. -/
def code_5612 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5613: ((6,2,2)), m=13, a=[1, 1, 7, 10, 11, 11], S=[0, 9]. -/
def code_5613 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5614: ((6,2,2)), m=13, a=[1, 1, 8, 8, 8, 9], S=[0, 11]. -/
def code_5614 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5615: ((6,2,2)), m=13, a=[1, 1, 8, 8, 8, 12], S=[0, 2]. -/
def code_5615 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5616: ((6,2,2)), m=13, a=[1, 1, 8, 8, 8, 12], S=[0, 10]. -/
def code_5616 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5617: ((6,2,2)), m=13, a=[1, 1, 8, 8, 9, 11], S=[0, 10]. -/
def code_5617 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5618: ((6,2,2)), m=13, a=[1, 1, 8, 8, 11, 11], S=[0, 9]. -/
def code_5618 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5619: ((6,2,2)), m=13, a=[1, 1, 8, 8, 11, 11], S=[0, 10]. -/
def code_5619 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5620: ((6,2,2)), m=13, a=[1, 1, 8, 8, 11, 12], S=[0, 10]. -/
def code_5620 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5621: ((6,2,2)), m=13, a=[1, 1, 8, 9, 9, 11], S=[0, 6]. -/
def code_5621 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5622: ((6,2,2)), m=13, a=[1, 1, 8, 9, 11, 11], S=[0, 6]. -/
def code_5622 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5623: ((6,2,2)), m=13, a=[1, 1, 8, 9, 11, 11], S=[0, 10]. -/
def code_5623 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5624: ((6,2,2)), m=13, a=[1, 1, 8, 10, 10, 11], S=[0, 6]. -/
def code_5624 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5625: ((6,2,2)), m=13, a=[1, 1, 9, 9, 9, 10], S=[0, 2]. -/
def code_5625 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5626: ((6,2,2)), m=13, a=[1, 1, 9, 9, 9, 11], S=[0, 7]. -/
def code_5626 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5627: ((6,2,2)), m=13, a=[1, 1, 9, 9, 10, 11], S=[0, 8]. -/
def code_5627 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5628: ((6,2,2)), m=13, a=[1, 2, 2, 2, 3, 3], S=[0, 6]. -/
def code_5628 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5629: ((6,2,2)), m=13, a=[1, 2, 2, 2, 3, 3], S=[0, 7]. -/
def code_5629 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5630: ((6,2,2)), m=13, a=[1, 2, 2, 2, 6, 6], S=[0, 3]. -/
def code_5630 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5631: ((6,2,2)), m=13, a=[1, 2, 2, 2, 8, 12], S=[0, 7]. -/
def code_5631 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5632: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 4], S=[0, 7]. -/
def code_5632 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5633: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 4], S=[0, 8]. -/
def code_5633 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5634: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 5], S=[0, 7]. -/
def code_5634 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5635: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 5], S=[0, 9]. -/
def code_5635 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5636: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 6], S=[0, 8]. -/
def code_5636 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5637: ((6,2,2)), m=13, a=[1, 2, 2, 3, 3, 6], S=[0, 9]. -/
def code_5637 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5638: ((6,2,2)), m=13, a=[1, 2, 2, 3, 4, 4], S=[0, 8]. -/
def code_5638 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5639: ((6,2,2)), m=13, a=[1, 2, 2, 3, 4, 5], S=[0, 7]. -/
def code_5639 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5640: ((6,2,2)), m=13, a=[1, 2, 2, 3, 4, 6], S=[0, 8]. -/
def code_5640 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5641: ((6,2,2)), m=13, a=[1, 2, 2, 3, 5, 5], S=[0, 9]. -/
def code_5641 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5642: ((6,2,2)), m=13, a=[1, 2, 2, 3, 5, 6], S=[0, 9]. -/
def code_5642 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5643: ((6,2,2)), m=13, a=[1, 2, 2, 3, 5, 9], S=[0, 6]. -/
def code_5643 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5644: ((6,2,2)), m=13, a=[1, 2, 2, 3, 5, 10], S=[0, 4]. -/
def code_5644 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5645: ((6,2,2)), m=13, a=[1, 2, 2, 3, 5, 10], S=[0, 6]. -/
def code_5645 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5646: ((6,2,2)), m=13, a=[1, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_5646 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5647: ((6,2,2)), m=13, a=[1, 2, 2, 3, 6, 7], S=[0, 9]. -/
def code_5647 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5648: ((6,2,2)), m=13, a=[1, 2, 2, 3, 6, 8], S=[0, 4]. -/
def code_5648 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5649: ((6,2,2)), m=13, a=[1, 2, 2, 3, 6, 9], S=[0, 5]. -/
def code_5649 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5650: ((6,2,2)), m=13, a=[1, 2, 2, 3, 6, 10], S=[0, 4]. -/
def code_5650 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5651: ((6,2,2)), m=13, a=[1, 2, 2, 3, 7, 7], S=[0, 4]. -/
def code_5651 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5652: ((6,2,2)), m=13, a=[1, 2, 2, 3, 7, 8], S=[0, 4]. -/
def code_5652 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5653: ((6,2,2)), m=13, a=[1, 2, 2, 3, 7, 9], S=[0, 8]. -/
def code_5653 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5654: ((6,2,2)), m=13, a=[1, 2, 2, 3, 7, 10], S=[0, 4]. -/
def code_5654 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5655: ((6,2,2)), m=13, a=[1, 2, 2, 3, 7, 10], S=[0, 8]. -/
def code_5655 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5656: ((6,2,2)), m=13, a=[1, 2, 2, 3, 8, 8], S=[0, 4]. -/
def code_5656 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5657: ((6,2,2)), m=13, a=[1, 2, 2, 3, 8, 9], S=[0, 6]. -/
def code_5657 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5658: ((6,2,2)), m=13, a=[1, 2, 2, 3, 9, 9], S=[0, 5]. -/
def code_5658 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5659: ((6,2,2)), m=13, a=[1, 2, 2, 3, 9, 10], S=[0, 6]. -/
def code_5659 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5660: ((6,2,2)), m=13, a=[1, 2, 2, 3, 9, 10], S=[0, 7]. -/
def code_5660 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5661: ((6,2,2)), m=13, a=[1, 2, 2, 3, 9, 10], S=[0, 8]. -/
def code_5661 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5662: ((6,2,2)), m=13, a=[1, 2, 2, 3, 9, 12], S=[0, 8]. -/
def code_5662 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5663: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 5], S=[0, 6]. -/
def code_5663 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5664: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 5], S=[0, 10]. -/
def code_5664 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5665: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 6], S=[0, 5]. -/
def code_5665 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5666: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 7], S=[0, 8]. -/
def code_5666 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5667: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 10], S=[0, 5]. -/
def code_5667 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5668: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 12], S=[0, 5]. -/
def code_5668 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5669: ((6,2,2)), m=13, a=[1, 2, 2, 4, 4, 12], S=[0, 7]. -/
def code_5669 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5670: ((6,2,2)), m=13, a=[1, 2, 2, 4, 5, 5], S=[0, 10]. -/
def code_5670 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5671: ((6,2,2)), m=13, a=[1, 2, 2, 4, 5, 6], S=[0, 10]. -/
def code_5671 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5672: ((6,2,2)), m=13, a=[1, 2, 2, 4, 5, 7], S=[0, 3]. -/
def code_5672 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5673: ((6,2,2)), m=13, a=[1, 2, 2, 4, 5, 8], S=[0, 3]. -/
def code_5673 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5674: ((6,2,2)), m=13, a=[1, 2, 2, 4, 5, 8], S=[0, 10]. -/
def code_5674 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5675: ((6,2,2)), m=13, a=[1, 2, 2, 4, 6, 7], S=[0, 10]. -/
def code_5675 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5676: ((6,2,2)), m=13, a=[1, 2, 2, 4, 6, 12], S=[0, 5]. -/
def code_5676 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5677: ((6,2,2)), m=13, a=[1, 2, 2, 4, 7, 8], S=[0, 3]. -/
def code_5677 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5678: ((6,2,2)), m=13, a=[1, 2, 2, 4, 7, 10], S=[0, 5]. -/
def code_5678 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5679: ((6,2,2)), m=13, a=[1, 2, 2, 4, 7, 10], S=[0, 8]. -/
def code_5679 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5680: ((6,2,2)), m=13, a=[1, 2, 2, 4, 8, 8], S=[0, 3]. -/
def code_5680 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5681: ((6,2,2)), m=13, a=[1, 2, 2, 4, 8, 10], S=[0, 7]. -/
def code_5681 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5682: ((6,2,2)), m=13, a=[1, 2, 2, 4, 8, 12], S=[0, 7]. -/
def code_5682 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5683: ((6,2,2)), m=13, a=[1, 2, 2, 5, 5, 8], S=[0, 9]. -/
def code_5683 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5684: ((6,2,2)), m=13, a=[1, 2, 2, 5, 5, 9], S=[0, 10]. -/
def code_5684 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5685: ((6,2,2)), m=13, a=[1, 2, 2, 5, 5, 12], S=[0, 9]. -/
def code_5685 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5686: ((6,2,2)), m=13, a=[1, 2, 2, 5, 5, 12], S=[0, 10]. -/
def code_5686 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5687: ((6,2,2)), m=13, a=[1, 2, 2, 5, 7, 8], S=[0, 3]. -/
def code_5687 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5688: ((6,2,2)), m=13, a=[1, 2, 2, 5, 7, 8], S=[0, 9]. -/
def code_5688 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5689: ((6,2,2)), m=13, a=[1, 2, 2, 5, 7, 9], S=[0, 3]. -/
def code_5689 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5690: ((6,2,2)), m=13, a=[1, 2, 2, 5, 7, 10], S=[0, 4]. -/
def code_5690 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5691: ((6,2,2)), m=13, a=[1, 2, 2, 5, 7, 10], S=[0, 9]. -/
def code_5691 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5692: ((6,2,2)), m=13, a=[1, 2, 2, 5, 8, 9], S=[0, 10]. -/
def code_5692 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5693: ((6,2,2)), m=13, a=[1, 2, 2, 5, 8, 10], S=[0, 9]. -/
def code_5693 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5694: ((6,2,2)), m=13, a=[1, 2, 2, 5, 8, 12], S=[0, 9]. -/
def code_5694 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5695: ((6,2,2)), m=13, a=[1, 2, 2, 5, 9, 9], S=[0, 10]. -/
def code_5695 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5696: ((6,2,2)), m=13, a=[1, 2, 2, 5, 9, 10], S=[0, 6]. -/
def code_5696 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5697: ((6,2,2)), m=13, a=[1, 2, 2, 5, 9, 12], S=[0, 10]. -/
def code_5697 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5698: ((6,2,2)), m=13, a=[1, 2, 2, 6, 6, 8], S=[0, 9]. -/
def code_5698 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5699: ((6,2,2)), m=13, a=[1, 2, 2, 6, 6, 9], S=[0, 3]. -/
def code_5699 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5700: ((6,2,2)), m=13, a=[1, 2, 2, 6, 6, 10], S=[0, 4]. -/
def code_5700 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5701: ((6,2,2)), m=13, a=[1, 2, 2, 6, 6, 10], S=[0, 9]. -/
def code_5701 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5702: ((6,2,2)), m=13, a=[1, 2, 2, 6, 8, 8], S=[0, 4]. -/
def code_5702 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5703: ((6,2,2)), m=13, a=[1, 2, 2, 6, 8, 8], S=[0, 10]. -/
def code_5703 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5704: ((6,2,2)), m=13, a=[1, 2, 2, 6, 8, 9], S=[0, 10]. -/
def code_5704 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5705: ((6,2,2)), m=13, a=[1, 2, 2, 6, 8, 10], S=[0, 9]. -/
def code_5705 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5706: ((6,2,2)), m=13, a=[1, 2, 2, 6, 8, 12], S=[0, 9]. -/
def code_5706 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5707: ((6,2,2)), m=13, a=[1, 2, 2, 7, 7, 9], S=[0, 3]. -/
def code_5707 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5708: ((6,2,2)), m=13, a=[1, 2, 2, 7, 7, 10], S=[0, 4]. -/
def code_5708 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5709: ((6,2,2)), m=13, a=[1, 2, 2, 7, 8, 10], S=[0, 9]. -/
def code_5709 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5710: ((6,2,2)), m=13, a=[1, 2, 2, 7, 9, 9], S=[0, 5]. -/
def code_5710 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5711: ((6,2,2)), m=13, a=[1, 2, 2, 7, 9, 10], S=[0, 8]. -/
def code_5711 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5712: ((6,2,2)), m=13, a=[1, 2, 2, 8, 8, 8], S=[0, 4]. -/
def code_5712 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5713: ((6,2,2)), m=13, a=[1, 2, 2, 8, 8, 9], S=[0, 3]. -/
def code_5713 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5714: ((6,2,2)), m=13, a=[1, 2, 2, 8, 8, 9], S=[0, 10]. -/
def code_5714 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5715: ((6,2,2)), m=13, a=[1, 2, 2, 8, 8, 10], S=[0, 9]. -/
def code_5715 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5716: ((6,2,2)), m=13, a=[1, 2, 2, 8, 8, 12], S=[0, 3]. -/
def code_5716 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5717: ((6,2,2)), m=13, a=[1, 2, 2, 8, 9, 9], S=[0, 6]. -/
def code_5717 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5718: ((6,2,2)), m=13, a=[1, 2, 2, 8, 9, 9], S=[0, 10]. -/
def code_5718 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5719: ((6,2,2)), m=13, a=[1, 2, 2, 9, 10, 12], S=[0, 5]. -/
def code_5719 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5720: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 5], S=[0, 6]. -/
def code_5720 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5721: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 5], S=[0, 7]. -/
def code_5721 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5722: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 6], S=[0, 8]. -/
def code_5722 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5723: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 7], S=[0, 5]. -/
def code_5723 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5724: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 11], S=[0, 5]. -/
def code_5724 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5725: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 11], S=[0, 6]. -/
def code_5725 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5726: ((6,2,2)), m=13, a=[1, 2, 3, 3, 4, 12], S=[0, 7]. -/
def code_5726 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5727: ((6,2,2)), m=13, a=[1, 2, 3, 3, 5, 6], S=[0, 9]. -/
def code_5727 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5728: ((6,2,2)), m=13, a=[1, 2, 3, 3, 5, 7], S=[0, 4]. -/
def code_5728 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5729: ((6,2,2)), m=13, a=[1, 2, 3, 3, 5, 9], S=[0, 6]. -/
def code_5729 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5730: ((6,2,2)), m=13, a=[1, 2, 3, 3, 5, 12], S=[0, 6]. -/
def code_5730 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5731: ((6,2,2)), m=13, a=[1, 2, 3, 3, 5, 12], S=[0, 7]. -/
def code_5731 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5732: ((6,2,2)), m=13, a=[1, 2, 3, 3, 6, 7], S=[0, 8]. -/
def code_5732 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5733: ((6,2,2)), m=13, a=[1, 2, 3, 3, 6, 12], S=[0, 8]. -/
def code_5733 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5734: ((6,2,2)), m=13, a=[1, 2, 3, 3, 7, 8], S=[0, 9]. -/
def code_5734 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5735: ((6,2,2)), m=13, a=[1, 2, 3, 3, 7, 9], S=[0, 8]. -/
def code_5735 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5736: ((6,2,2)), m=13, a=[1, 2, 3, 3, 7, 11], S=[0, 5]. -/
def code_5736 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5737: ((6,2,2)), m=13, a=[1, 2, 3, 3, 7, 11], S=[0, 9]. -/
def code_5737 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5738: ((6,2,2)), m=13, a=[1, 2, 3, 3, 7, 12], S=[0, 8]. -/
def code_5738 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5739: ((6,2,2)), m=13, a=[1, 2, 3, 3, 8, 11], S=[0, 6]. -/
def code_5739 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5740: ((6,2,2)), m=13, a=[1, 2, 3, 3, 8, 11], S=[0, 9]. -/
def code_5740 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5741: ((6,2,2)), m=13, a=[1, 2, 3, 3, 8, 12], S=[0, 7]. -/
def code_5741 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5742: ((6,2,2)), m=13, a=[1, 2, 3, 3, 9, 9], S=[0, 6]. -/
def code_5742 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5743: ((6,2,2)), m=13, a=[1, 2, 3, 3, 9, 9], S=[0, 8]. -/
def code_5743 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5744: ((6,2,2)), m=13, a=[1, 2, 3, 4, 4, 6], S=[0, 8]. -/
def code_5744 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5745: ((6,2,2)), m=13, a=[1, 2, 3, 4, 4, 7], S=[0, 5]. -/
def code_5745 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5746: ((6,2,2)), m=13, a=[1, 2, 3, 4, 4, 8], S=[0, 6]. -/
def code_5746 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5747: ((6,2,2)), m=13, a=[1, 2, 3, 4, 4, 10], S=[0, 5]. -/
def code_5747 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5748: ((6,2,2)), m=13, a=[1, 2, 3, 4, 4, 10], S=[0, 6]. -/
def code_5748 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5749: ((6,2,2)), m=13, a=[1, 2, 3, 4, 5, 5], S=[0, 6]. -/
def code_5749 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5750: ((6,2,2)), m=13, a=[1, 2, 3, 4, 5, 11], S=[0, 6]. -/
def code_5750 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5751: ((6,2,2)), m=13, a=[1, 2, 3, 4, 5, 11], S=[0, 7]. -/
def code_5751 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5752: ((6,2,2)), m=13, a=[1, 2, 3, 4, 5, 12], S=[0, 6]. -/
def code_5752 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5753: ((6,2,2)), m=13, a=[1, 2, 3, 4, 6, 6], S=[0, 5]. -/
def code_5753 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5754: ((6,2,2)), m=13, a=[1, 2, 3, 4, 6, 7], S=[0, 5]. -/
def code_5754 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5755: ((6,2,2)), m=13, a=[1, 2, 3, 4, 6, 9], S=[0, 5]. -/
def code_5755 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5756: ((6,2,2)), m=13, a=[1, 2, 3, 4, 7, 10], S=[0, 5]. -/
def code_5756 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5757: ((6,2,2)), m=13, a=[1, 2, 3, 4, 7, 11], S=[0, 5]. -/
def code_5757 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5758: ((6,2,2)), m=13, a=[1, 2, 3, 4, 7, 12], S=[0, 8]. -/
def code_5758 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5759: ((6,2,2)), m=13, a=[1, 2, 3, 4, 8, 8], S=[0, 6]. -/
def code_5759 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5760: ((6,2,2)), m=13, a=[1, 2, 3, 4, 8, 9], S=[0, 7]. -/
def code_5760 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5761: ((6,2,2)), m=13, a=[1, 2, 3, 4, 8, 10], S=[0, 6]. -/
def code_5761 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5762: ((6,2,2)), m=13, a=[1, 2, 3, 4, 8, 11], S=[0, 6]. -/
def code_5762 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5763: ((6,2,2)), m=13, a=[1, 2, 3, 4, 8, 12], S=[0, 7]. -/
def code_5763 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5764: ((6,2,2)), m=13, a=[1, 2, 3, 5, 5, 7], S=[0, 9]. -/
def code_5764 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5765: ((6,2,2)), m=13, a=[1, 2, 3, 5, 5, 9], S=[0, 6]. -/
def code_5765 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5766: ((6,2,2)), m=13, a=[1, 2, 3, 5, 5, 12], S=[0, 6]. -/
def code_5766 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5767: ((6,2,2)), m=13, a=[1, 2, 3, 5, 5, 12], S=[0, 9]. -/
def code_5767 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5768: ((6,2,2)), m=13, a=[1, 2, 3, 5, 6, 7], S=[0, 9]. -/
def code_5768 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5769: ((6,2,2)), m=13, a=[1, 2, 3, 5, 6, 11], S=[0, 9]. -/
def code_5769 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5770: ((6,2,2)), m=13, a=[1, 2, 3, 5, 7, 10], S=[0, 4]. -/
def code_5770 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5771: ((6,2,2)), m=13, a=[1, 2, 3, 5, 7, 11], S=[0, 9]. -/
def code_5771 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5772: ((6,2,2)), m=13, a=[1, 2, 3, 5, 7, 12], S=[0, 9]. -/
def code_5772 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5773: ((6,2,2)), m=13, a=[1, 2, 3, 5, 9, 9], S=[0, 6]. -/
def code_5773 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5774: ((6,2,2)), m=13, a=[1, 2, 3, 5, 9, 10], S=[0, 6]. -/
def code_5774 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5775: ((6,2,2)), m=13, a=[1, 2, 3, 6, 6, 8], S=[0, 4]. -/
def code_5775 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5776: ((6,2,2)), m=13, a=[1, 2, 3, 6, 6, 9], S=[0, 5]. -/
def code_5776 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5777: ((6,2,2)), m=13, a=[1, 2, 3, 6, 6, 10], S=[0, 4]. -/
def code_5777 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5778: ((6,2,2)), m=13, a=[1, 2, 3, 6, 6, 11], S=[0, 4]. -/
def code_5778 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5779: ((6,2,2)), m=13, a=[1, 2, 3, 6, 7, 11], S=[0, 9]. -/
def code_5779 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5780: ((6,2,2)), m=13, a=[1, 2, 3, 6, 7, 12], S=[0, 8]. -/
def code_5780 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5781: ((6,2,2)), m=13, a=[1, 2, 3, 6, 8, 8], S=[0, 4]. -/
def code_5781 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5782: ((6,2,2)), m=13, a=[1, 2, 3, 6, 9, 9], S=[0, 5]. -/
def code_5782 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5783: ((6,2,2)), m=13, a=[1, 2, 3, 7, 7, 8], S=[0, 4]. -/
def code_5783 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5784: ((6,2,2)), m=13, a=[1, 2, 3, 7, 7, 9], S=[0, 8]. -/
def code_5784 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5785: ((6,2,2)), m=13, a=[1, 2, 3, 7, 7, 10], S=[0, 5]. -/
def code_5785 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5786: ((6,2,2)), m=13, a=[1, 2, 3, 7, 7, 11], S=[0, 4]. -/
def code_5786 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5787: ((6,2,2)), m=13, a=[1, 2, 3, 7, 7, 12], S=[0, 4]. -/
def code_5787 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5788: ((6,2,2)), m=13, a=[1, 2, 3, 7, 8, 8], S=[0, 4]. -/
def code_5788 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5789: ((6,2,2)), m=13, a=[1, 2, 3, 7, 8, 10], S=[0, 9]. -/
def code_5789 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5790: ((6,2,2)), m=13, a=[1, 2, 3, 7, 8, 11], S=[0, 9]. -/
def code_5790 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5791: ((6,2,2)), m=13, a=[1, 2, 3, 7, 9, 9], S=[0, 8]. -/
def code_5791 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5792: ((6,2,2)), m=13, a=[1, 2, 3, 7, 9, 10], S=[0, 8]. -/
def code_5792 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5793: ((6,2,2)), m=13, a=[1, 2, 3, 7, 11, 12], S=[0, 4]. -/
def code_5793 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5794: ((6,2,2)), m=13, a=[1, 2, 3, 8, 8, 9], S=[0, 6]. -/
def code_5794 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5795: ((6,2,2)), m=13, a=[1, 2, 3, 8, 9, 10], S=[0, 6]. -/
def code_5795 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5796: ((6,2,2)), m=13, a=[1, 2, 3, 8, 9, 12], S=[0, 6]. -/
def code_5796 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5797: ((6,2,2)), m=13, a=[1, 2, 3, 8, 10, 12], S=[0, 6]. -/
def code_5797 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5798: ((6,2,2)), m=13, a=[1, 2, 3, 9, 10, 12], S=[0, 6]. -/
def code_5798 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5799: ((6,2,2)), m=13, a=[1, 2, 3, 9, 11, 12], S=[0, 6]. -/
def code_5799 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5800: ((6,2,2)), m=13, a=[1, 2, 3, 10, 11, 11], S=[0, 6]. -/
def code_5800 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5801: ((6,2,2)), m=13, a=[1, 2, 4, 4, 4, 12], S=[0, 7]. -/
def code_5801 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5802: ((6,2,2)), m=13, a=[1, 2, 4, 4, 5, 5], S=[0, 10]. -/
def code_5802 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5803: ((6,2,2)), m=13, a=[1, 2, 4, 4, 5, 6], S=[0, 3]. -/
def code_5803 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5804: ((6,2,2)), m=13, a=[1, 2, 4, 4, 5, 7], S=[0, 3]. -/
def code_5804 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5805: ((6,2,2)), m=13, a=[1, 2, 4, 4, 5, 10], S=[0, 6]. -/
def code_5805 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5806: ((6,2,2)), m=13, a=[1, 2, 4, 4, 5, 10], S=[0, 7]. -/
def code_5806 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5807: ((6,2,2)), m=13, a=[1, 2, 4, 4, 6, 7], S=[0, 3]. -/
def code_5807 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5808: ((6,2,2)), m=13, a=[1, 2, 4, 4, 6, 7], S=[0, 8]. -/
def code_5808 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5809: ((6,2,2)), m=13, a=[1, 2, 4, 4, 6, 10], S=[0, 8]. -/
def code_5809 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5810: ((6,2,2)), m=13, a=[1, 2, 4, 4, 6, 12], S=[0, 5]. -/
def code_5810 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5811: ((6,2,2)), m=13, a=[1, 2, 4, 4, 7, 8], S=[0, 3]. -/
def code_5811 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5812: ((6,2,2)), m=13, a=[1, 2, 4, 4, 7, 8], S=[0, 10]. -/
def code_5812 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5813: ((6,2,2)), m=13, a=[1, 2, 4, 4, 7, 10], S=[0, 5]. -/
def code_5813 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5814: ((6,2,2)), m=13, a=[1, 2, 4, 4, 7, 10], S=[0, 8]. -/
def code_5814 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5815: ((6,2,2)), m=13, a=[1, 2, 4, 4, 8, 8], S=[0, 3]. -/
def code_5815 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5816: ((6,2,2)), m=13, a=[1, 2, 4, 4, 8, 10], S=[0, 6]. -/
def code_5816 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5817: ((6,2,2)), m=13, a=[1, 2, 4, 4, 8, 12], S=[0, 7]. -/
def code_5817 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5818: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 6], S=[0, 3]. -/
def code_5818 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5819: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 7], S=[0, 10]. -/
def code_5819 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5820: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 10], S=[0, 7]. -/
def code_5820 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5821: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 11], S=[0, 3]. -/
def code_5821 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5822: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 12], S=[0, 6]. -/
def code_5822 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5823: ((6,2,2)), m=13, a=[1, 2, 4, 5, 5, 12], S=[0, 10]. -/
def code_5823 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5824: ((6,2,2)), m=13, a=[1, 2, 4, 5, 6, 6], S=[0, 3]. -/
def code_5824 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5825: ((6,2,2)), m=13, a=[1, 2, 4, 5, 6, 7], S=[0, 3]. -/
def code_5825 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5826: ((6,2,2)), m=13, a=[1, 2, 4, 5, 7, 8], S=[0, 3]. -/
def code_5826 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5827: ((6,2,2)), m=13, a=[1, 2, 4, 5, 7, 12], S=[0, 10]. -/
def code_5827 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5828: ((6,2,2)), m=13, a=[1, 2, 4, 5, 9, 11], S=[0, 7]. -/
def code_5828 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5829: ((6,2,2)), m=13, a=[1, 2, 4, 5, 10, 10], S=[0, 7]. -/
def code_5829 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5830: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 8], S=[0, 10]. -/
def code_5830 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5831: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 9], S=[0, 5]. -/
def code_5831 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5832: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 9], S=[0, 10]. -/
def code_5832 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5833: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 10], S=[0, 8]. -/
def code_5833 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5834: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 11], S=[0, 3]. -/
def code_5834 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5835: ((6,2,2)), m=13, a=[1, 2, 4, 6, 6, 12], S=[0, 3]. -/
def code_5835 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5836: ((6,2,2)), m=13, a=[1, 2, 4, 6, 7, 8], S=[0, 10]. -/
def code_5836 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5837: ((6,2,2)), m=13, a=[1, 2, 4, 6, 7, 10], S=[0, 8]. -/
def code_5837 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5838: ((6,2,2)), m=13, a=[1, 2, 4, 6, 8, 8], S=[0, 10]. -/
def code_5838 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5839: ((6,2,2)), m=13, a=[1, 2, 4, 6, 8, 9], S=[0, 10]. -/
def code_5839 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5840: ((6,2,2)), m=13, a=[1, 2, 4, 6, 8, 11], S=[0, 3]. -/
def code_5840 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5841: ((6,2,2)), m=13, a=[1, 2, 4, 6, 8, 12], S=[0, 10]. -/
def code_5841 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5842: ((6,2,2)), m=13, a=[1, 2, 4, 6, 9, 10], S=[0, 5]. -/
def code_5842 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5843: ((6,2,2)), m=13, a=[1, 2, 4, 6, 9, 11], S=[0, 8]. -/
def code_5843 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5844: ((6,2,2)), m=13, a=[1, 2, 4, 6, 9, 12], S=[0, 5]. -/
def code_5844 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5845: ((6,2,2)), m=13, a=[1, 2, 4, 6, 10, 10], S=[0, 5]. -/
def code_5845 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5846: ((6,2,2)), m=13, a=[1, 2, 4, 6, 10, 11], S=[0, 5]. -/
def code_5846 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5847: ((6,2,2)), m=13, a=[1, 2, 4, 6, 10, 12], S=[0, 5]. -/
def code_5847 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5848: ((6,2,2)), m=13, a=[1, 2, 4, 6, 11, 12], S=[0, 3]. -/
def code_5848 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5849: ((6,2,2)), m=13, a=[1, 2, 4, 7, 7, 9], S=[0, 5]. -/
def code_5849 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5850: ((6,2,2)), m=13, a=[1, 2, 4, 7, 7, 11], S=[0, 3]. -/
def code_5850 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5851: ((6,2,2)), m=13, a=[1, 2, 4, 7, 8, 8], S=[0, 3]. -/
def code_5851 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5852: ((6,2,2)), m=13, a=[1, 2, 4, 7, 8, 8], S=[0, 10]. -/
def code_5852 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5853: ((6,2,2)), m=13, a=[1, 2, 4, 7, 8, 12], S=[0, 3]. -/
def code_5853 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5854: ((6,2,2)), m=13, a=[1, 2, 4, 7, 9, 10], S=[0, 8]. -/
def code_5854 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5855: ((6,2,2)), m=13, a=[1, 2, 4, 7, 10, 12], S=[0, 5]. -/
def code_5855 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5856: ((6,2,2)), m=13, a=[1, 2, 4, 8, 8, 10], S=[0, 6]. -/
def code_5856 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5857: ((6,2,2)), m=13, a=[1, 2, 4, 8, 8, 12], S=[0, 3]. -/
def code_5857 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5858: ((6,2,2)), m=13, a=[1, 2, 4, 8, 8, 12], S=[0, 6]. -/
def code_5858 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5859: ((6,2,2)), m=13, a=[1, 2, 4, 8, 10, 10], S=[0, 7]. -/
def code_5859 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5860: ((6,2,2)), m=13, a=[1, 2, 4, 8, 10, 11], S=[0, 7]. -/
def code_5860 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5861: ((6,2,2)), m=13, a=[1, 2, 4, 8, 10, 12], S=[0, 6]. -/
def code_5861 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5862: ((6,2,2)), m=13, a=[1, 2, 4, 9, 10, 12], S=[0, 5]. -/
def code_5862 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5863: ((6,2,2)), m=13, a=[1, 2, 4, 10, 10, 11], S=[0, 5]. -/
def code_5863 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5864: ((6,2,2)), m=13, a=[1, 2, 4, 10, 10, 11], S=[0, 6]. -/
def code_5864 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5865: ((6,2,2)), m=13, a=[1, 2, 4, 10, 10, 11], S=[0, 7]. -/
def code_5865 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5866: ((6,2,2)), m=13, a=[1, 2, 4, 10, 11, 12], S=[0, 7]. -/
def code_5866 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5867: ((6,2,2)), m=13, a=[1, 2, 5, 5, 5, 11], S=[0, 4]. -/
def code_5867 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5868: ((6,2,2)), m=13, a=[1, 2, 5, 5, 5, 12], S=[0, 3]. -/
def code_5868 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5869: ((6,2,2)), m=13, a=[1, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_5869 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5870: ((6,2,2)), m=13, a=[1, 2, 5, 5, 6, 9], S=[0, 3]. -/
def code_5870 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5871: ((6,2,2)), m=13, a=[1, 2, 5, 5, 6, 10], S=[0, 4]. -/
def code_5871 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5872: ((6,2,2)), m=13, a=[1, 2, 5, 5, 7, 7], S=[0, 10]. -/
def code_5872 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5873: ((6,2,2)), m=13, a=[1, 2, 5, 5, 7, 9], S=[0, 10]. -/
def code_5873 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5874: ((6,2,2)), m=13, a=[1, 2, 5, 5, 7, 12], S=[0, 3]. -/
def code_5874 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5875: ((6,2,2)), m=13, a=[1, 2, 5, 5, 7, 12], S=[0, 9]. -/
def code_5875 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #5876: ((6,2,2)), m=13, a=[1, 2, 5, 5, 7, 12], S=[0, 10]. -/
def code_5876 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5877: ((6,2,2)), m=13, a=[1, 2, 5, 5, 8, 12], S=[0, 9]. -/
def code_5877 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5878: ((6,2,2)), m=13, a=[1, 2, 5, 5, 9, 9], S=[0, 3]. -/
def code_5878 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5879: ((6,2,2)), m=13, a=[1, 2, 5, 5, 9, 10], S=[0, 7]. -/
def code_5879 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5880: ((6,2,2)), m=13, a=[1, 2, 5, 5, 9, 11], S=[0, 3]. -/
def code_5880 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5881: ((6,2,2)), m=13, a=[1, 2, 5, 5, 9, 12], S=[0, 10]. -/
def code_5881 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5882: ((6,2,2)), m=13, a=[1, 2, 5, 5, 10, 11], S=[0, 4]. -/
def code_5882 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5883: ((6,2,2)), m=13, a=[1, 2, 5, 5, 12, 12], S=[0, 3]. -/
def code_5883 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5884: ((6,2,2)), m=13, a=[1, 2, 5, 6, 6, 12], S=[0, 3]. -/
def code_5884 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5885: ((6,2,2)), m=13, a=[1, 2, 5, 6, 7, 10], S=[0, 9]. -/
def code_5885 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5886: ((6,2,2)), m=13, a=[1, 2, 5, 6, 7, 11], S=[0, 9]. -/
def code_5886 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5887: ((6,2,2)), m=13, a=[1, 2, 5, 6, 7, 12], S=[0, 10]. -/
def code_5887 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5888: ((6,2,2)), m=13, a=[1, 2, 5, 6, 8, 9], S=[0, 3]. -/
def code_5888 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5889: ((6,2,2)), m=13, a=[1, 2, 5, 6, 8, 10], S=[0, 4]. -/
def code_5889 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5890: ((6,2,2)), m=13, a=[1, 2, 5, 6, 8, 11], S=[0, 3]. -/
def code_5890 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5891: ((6,2,2)), m=13, a=[1, 2, 5, 6, 8, 11], S=[0, 4]. -/
def code_5891 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5892: ((6,2,2)), m=13, a=[1, 2, 5, 6, 9, 9], S=[0, 3]. -/
def code_5892 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5893: ((6,2,2)), m=13, a=[1, 2, 5, 6, 9, 11], S=[0, 3]. -/
def code_5893 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5894: ((6,2,2)), m=13, a=[1, 2, 5, 6, 10, 10], S=[0, 4]. -/
def code_5894 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5895: ((6,2,2)), m=13, a=[1, 2, 5, 6, 10, 11], S=[0, 4]. -/
def code_5895 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5896: ((6,2,2)), m=13, a=[1, 2, 5, 7, 7, 9], S=[0, 10]. -/
def code_5896 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5897: ((6,2,2)), m=13, a=[1, 2, 5, 7, 7, 10], S=[0, 4]. -/
def code_5897 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5898: ((6,2,2)), m=13, a=[1, 2, 5, 7, 7, 11], S=[0, 4]. -/
def code_5898 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5899: ((6,2,2)), m=13, a=[1, 2, 5, 7, 7, 12], S=[0, 4]. -/
def code_5899 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5900: ((6,2,2)), m=13, a=[1, 2, 5, 7, 8, 10], S=[0, 9]. -/
def code_5900 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5901: ((6,2,2)), m=13, a=[1, 2, 5, 7, 10, 11], S=[0, 4]. -/
def code_5901 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5902: ((6,2,2)), m=13, a=[1, 2, 5, 8, 9, 9], S=[0, 10]. -/
def code_5902 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5903: ((6,2,2)), m=13, a=[1, 2, 5, 8, 9, 11], S=[0, 3]. -/
def code_5903 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5904: ((6,2,2)), m=13, a=[1, 2, 5, 8, 10, 11], S=[0, 4]. -/
def code_5904 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5905: ((6,2,2)), m=13, a=[1, 2, 5, 9, 9, 10], S=[0, 7]. -/
def code_5905 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5906: ((6,2,2)), m=13, a=[1, 2, 5, 9, 9, 11], S=[0, 3]. -/
def code_5906 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5907: ((6,2,2)), m=13, a=[1, 2, 5, 9, 9, 12], S=[0, 6]. -/
def code_5907 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5908: ((6,2,2)), m=13, a=[1, 2, 5, 9, 10, 10], S=[0, 7]. -/
def code_5908 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5909: ((6,2,2)), m=13, a=[1, 2, 5, 9, 10, 11], S=[0, 6]. -/
def code_5909 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5910: ((6,2,2)), m=13, a=[1, 2, 5, 10, 10, 12], S=[0, 7]. -/
def code_5910 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5911: ((6,2,2)), m=13, a=[1, 2, 6, 6, 8, 9], S=[0, 10]. -/
def code_5911 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5912: ((6,2,2)), m=13, a=[1, 2, 6, 6, 8, 10], S=[0, 9]. -/
def code_5912 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5913: ((6,2,2)), m=13, a=[1, 2, 6, 6, 9, 9], S=[0, 8]. -/
def code_5913 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5914: ((6,2,2)), m=13, a=[1, 2, 6, 6, 9, 11], S=[0, 10]. -/
def code_5914 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5915: ((6,2,2)), m=13, a=[1, 2, 6, 6, 10, 10], S=[0, 8]. -/
def code_5915 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5916: ((6,2,2)), m=13, a=[1, 2, 6, 6, 10, 11], S=[0, 9]. -/
def code_5916 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5917: ((6,2,2)), m=13, a=[1, 2, 6, 6, 10, 12], S=[0, 8]. -/
def code_5917 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5918: ((6,2,2)), m=13, a=[1, 2, 6, 6, 10, 12], S=[0, 9]. -/
def code_5918 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5919: ((6,2,2)), m=13, a=[1, 2, 6, 6, 11, 12], S=[0, 3]. -/
def code_5919 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5920: ((6,2,2)), m=13, a=[1, 2, 6, 6, 11, 12], S=[0, 9]. -/
def code_5920 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5921: ((6,2,2)), m=13, a=[1, 2, 6, 7, 8, 8], S=[0, 10]. -/
def code_5921 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5922: ((6,2,2)), m=13, a=[1, 2, 6, 7, 8, 10], S=[0, 4]. -/
def code_5922 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5923: ((6,2,2)), m=13, a=[1, 2, 6, 7, 9, 9], S=[0, 3]. -/
def code_5923 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5924: ((6,2,2)), m=13, a=[1, 2, 6, 7, 9, 9], S=[0, 5]. -/
def code_5924 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5925: ((6,2,2)), m=13, a=[1, 2, 6, 7, 9, 10], S=[0, 5]. -/
def code_5925 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5926: ((6,2,2)), m=13, a=[1, 2, 6, 8, 8, 9], S=[0, 10]. -/
def code_5926 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5927: ((6,2,2)), m=13, a=[1, 2, 6, 8, 9, 9], S=[0, 3]. -/
def code_5927 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5928: ((6,2,2)), m=13, a=[1, 2, 6, 8, 9, 11], S=[0, 3]. -/
def code_5928 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5929: ((6,2,2)), m=13, a=[1, 2, 6, 8, 10, 10], S=[0, 9]. -/
def code_5929 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5930: ((6,2,2)), m=13, a=[1, 2, 6, 8, 10, 11], S=[0, 4]. -/
def code_5930 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5931: ((6,2,2)), m=13, a=[1, 2, 6, 8, 10, 11], S=[0, 9]. -/
def code_5931 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5932: ((6,2,2)), m=13, a=[1, 2, 6, 8, 10, 12], S=[0, 4]. -/
def code_5932 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5933: ((6,2,2)), m=13, a=[1, 2, 6, 9, 9, 10], S=[0, 5]. -/
def code_5933 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5934: ((6,2,2)), m=13, a=[1, 2, 6, 9, 9, 10], S=[0, 8]. -/
def code_5934 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5935: ((6,2,2)), m=13, a=[1, 2, 6, 9, 10, 10], S=[0, 8]. -/
def code_5935 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5936: ((6,2,2)), m=13, a=[1, 2, 6, 9, 10, 11], S=[0, 5]. -/
def code_5936 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5937: ((6,2,2)), m=13, a=[1, 2, 6, 9, 10, 12], S=[0, 5]. -/
def code_5937 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5938: ((6,2,2)), m=13, a=[1, 2, 6, 10, 10, 11], S=[0, 5]. -/
def code_5938 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5939: ((6,2,2)), m=13, a=[1, 2, 6, 10, 10, 11], S=[0, 9]. -/
def code_5939 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5940: ((6,2,2)), m=13, a=[1, 2, 6, 10, 10, 12], S=[0, 8]. -/
def code_5940 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #5941: ((6,2,2)), m=13, a=[1, 2, 6, 10, 11, 12], S=[0, 9]. -/
def code_5941 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5942: ((6,2,2)), m=13, a=[1, 2, 7, 7, 8, 8], S=[0, 3]. -/
def code_5942 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5943: ((6,2,2)), m=13, a=[1, 2, 7, 7, 8, 9], S=[0, 3]. -/
def code_5943 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5944: ((6,2,2)), m=13, a=[1, 2, 7, 7, 9, 10], S=[0, 5]. -/
def code_5944 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5945: ((6,2,2)), m=13, a=[1, 2, 7, 7, 9, 11], S=[0, 10]. -/
def code_5945 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5946: ((6,2,2)), m=13, a=[1, 2, 7, 7, 9, 12], S=[0, 8]. -/
def code_5946 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5947: ((6,2,2)), m=13, a=[1, 2, 7, 7, 9, 12], S=[0, 10]. -/
def code_5947 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5948: ((6,2,2)), m=13, a=[1, 2, 7, 7, 10, 10], S=[0, 9]. -/
def code_5948 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5949: ((6,2,2)), m=13, a=[1, 2, 7, 7, 10, 11], S=[0, 4]. -/
def code_5949 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5950: ((6,2,2)), m=13, a=[1, 2, 7, 7, 10, 11], S=[0, 9]. -/
def code_5950 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5951: ((6,2,2)), m=13, a=[1, 2, 7, 7, 11, 11], S=[0, 3]. -/
def code_5951 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5952: ((6,2,2)), m=13, a=[1, 2, 7, 7, 11, 12], S=[0, 4]. -/
def code_5952 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5953: ((6,2,2)), m=13, a=[1, 2, 7, 7, 11, 12], S=[0, 10]. -/
def code_5953 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5954: ((6,2,2)), m=13, a=[1, 2, 7, 8, 8, 9], S=[0, 3]. -/
def code_5954 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5955: ((6,2,2)), m=13, a=[1, 2, 7, 8, 8, 9], S=[0, 10]. -/
def code_5955 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5956: ((6,2,2)), m=13, a=[1, 2, 7, 8, 8, 10], S=[0, 9]. -/
def code_5956 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5957: ((6,2,2)), m=13, a=[1, 2, 7, 8, 8, 12], S=[0, 3]. -/
def code_5957 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5958: ((6,2,2)), m=13, a=[1, 2, 7, 8, 8, 12], S=[0, 9]. -/
def code_5958 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #5959: ((6,2,2)), m=13, a=[1, 2, 7, 8, 9, 9], S=[0, 3]. -/
def code_5959 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5960: ((6,2,2)), m=13, a=[1, 2, 7, 8, 9, 12], S=[0, 3]. -/
def code_5960 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5961: ((6,2,2)), m=13, a=[1, 2, 7, 8, 9, 12], S=[0, 10]. -/
def code_5961 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5962: ((6,2,2)), m=13, a=[1, 2, 7, 8, 10, 12], S=[0, 9]. -/
def code_5962 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5963: ((6,2,2)), m=13, a=[1, 2, 7, 9, 9, 10], S=[0, 5]. -/
def code_5963 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5964: ((6,2,2)), m=13, a=[1, 2, 7, 9, 9, 12], S=[0, 8]. -/
def code_5964 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5965: ((6,2,2)), m=13, a=[1, 2, 7, 9, 11, 12], S=[0, 10]. -/
def code_5965 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5966: ((6,2,2)), m=13, a=[1, 2, 7, 10, 10, 11], S=[0, 9]. -/
def code_5966 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5967: ((6,2,2)), m=13, a=[1, 2, 7, 10, 10, 12], S=[0, 8]. -/
def code_5967 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5968: ((6,2,2)), m=13, a=[1, 2, 8, 8, 9, 10], S=[0, 6]. -/
def code_5968 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5969: ((6,2,2)), m=13, a=[1, 2, 8, 8, 10, 12], S=[0, 6]. -/
def code_5969 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5970: ((6,2,2)), m=13, a=[1, 2, 8, 8, 10, 12], S=[0, 9]. -/
def code_5970 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5971: ((6,2,2)), m=13, a=[1, 2, 8, 9, 9, 10], S=[0, 6]. -/
def code_5971 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5972: ((6,2,2)), m=13, a=[1, 2, 8, 9, 9, 10], S=[0, 7]. -/
def code_5972 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5973: ((6,2,2)), m=13, a=[1, 2, 8, 9, 10, 12], S=[0, 6]. -/
def code_5973 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5974: ((6,2,2)), m=13, a=[1, 2, 8, 10, 10, 11], S=[0, 7]. -/
def code_5974 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5975: ((6,2,2)), m=13, a=[1, 2, 8, 10, 10, 11], S=[0, 9]. -/
def code_5975 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5976: ((6,2,2)), m=13, a=[1, 2, 9, 9, 10, 10], S=[0, 7]. -/
def code_5976 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5977: ((6,2,2)), m=13, a=[1, 2, 9, 9, 10, 10], S=[0, 8]. -/
def code_5977 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5978: ((6,2,2)), m=13, a=[1, 2, 9, 9, 10, 11], S=[0, 8]. -/
def code_5978 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5979: ((6,2,2)), m=13, a=[1, 3, 3, 3, 4, 9], S=[0, 5]. -/
def code_5979 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5980: ((6,2,2)), m=13, a=[1, 3, 3, 3, 8, 8], S=[0, 4]. -/
def code_5980 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5981: ((6,2,2)), m=13, a=[1, 3, 3, 4, 5, 6], S=[0, 11]. -/
def code_5981 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5982: ((6,2,2)), m=13, a=[1, 3, 3, 4, 5, 7], S=[0, 11]. -/
def code_5982 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5983: ((6,2,2)), m=13, a=[1, 3, 3, 4, 6, 6], S=[0, 5]. -/
def code_5983 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5984: ((6,2,2)), m=13, a=[1, 3, 3, 4, 6, 8], S=[0, 11]. -/
def code_5984 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5985: ((6,2,2)), m=13, a=[1, 3, 3, 4, 6, 12], S=[0, 11]. -/
def code_5985 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #5986: ((6,2,2)), m=13, a=[1, 3, 3, 4, 7, 8], S=[0, 2]. -/
def code_5986 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5987: ((6,2,2)), m=13, a=[1, 3, 3, 4, 7, 11], S=[0, 5]. -/
def code_5987 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5988: ((6,2,2)), m=13, a=[1, 3, 3, 4, 8, 8], S=[0, 7]. -/
def code_5988 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5989: ((6,2,2)), m=13, a=[1, 3, 3, 4, 8, 11], S=[0, 6]. -/
def code_5989 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5990: ((6,2,2)), m=13, a=[1, 3, 3, 4, 8, 12], S=[0, 7]. -/
def code_5990 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #5991: ((6,2,2)), m=13, a=[1, 3, 3, 4, 8, 12], S=[0, 11]. -/
def code_5991 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5992: ((6,2,2)), m=13, a=[1, 3, 3, 5, 5, 6], S=[0, 4]. -/
def code_5992 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5993: ((6,2,2)), m=13, a=[1, 3, 3, 5, 5, 6], S=[0, 11]. -/
def code_5993 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #5994: ((6,2,2)), m=13, a=[1, 3, 3, 5, 5, 7], S=[0, 4]. -/
def code_5994 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #5995: ((6,2,2)), m=13, a=[1, 3, 3, 5, 5, 9], S=[0, 6]. -/
def code_5995 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #5996: ((6,2,2)), m=13, a=[1, 3, 3, 5, 5, 9], S=[0, 7]. -/
def code_5996 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #5997: ((6,2,2)), m=13, a=[1, 3, 3, 5, 6, 7], S=[0, 4]. -/
def code_5997 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #5998: ((6,2,2)), m=13, a=[1, 3, 3, 5, 6, 7], S=[0, 11]. -/
def code_5998 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #5999: ((6,2,2)), m=13, a=[1, 3, 3, 5, 6, 9], S=[0, 2]. -/
def code_5999 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]
def checks : List Bool :=
  [decide code_5500.OK,
   decide code_5501.OK,
   decide code_5502.OK,
   decide code_5503.OK,
   decide code_5504.OK,
   decide code_5505.OK,
   decide code_5506.OK,
   decide code_5507.OK,
   decide code_5508.OK,
   decide code_5509.OK,
   decide code_5510.OK,
   decide code_5511.OK,
   decide code_5512.OK,
   decide code_5513.OK,
   decide code_5514.OK,
   decide code_5515.OK,
   decide code_5516.OK,
   decide code_5517.OK,
   decide code_5518.OK,
   decide code_5519.OK,
   decide code_5520.OK,
   decide code_5521.OK,
   decide code_5522.OK,
   decide code_5523.OK,
   decide code_5524.OK,
   decide code_5525.OK,
   decide code_5526.OK,
   decide code_5527.OK,
   decide code_5528.OK,
   decide code_5529.OK,
   decide code_5530.OK,
   decide code_5531.OK,
   decide code_5532.OK,
   decide code_5533.OK,
   decide code_5534.OK,
   decide code_5535.OK,
   decide code_5536.OK,
   decide code_5537.OK,
   decide code_5538.OK,
   decide code_5539.OK,
   decide code_5540.OK,
   decide code_5541.OK,
   decide code_5542.OK,
   decide code_5543.OK,
   decide code_5544.OK,
   decide code_5545.OK,
   decide code_5546.OK,
   decide code_5547.OK,
   decide code_5548.OK,
   decide code_5549.OK,
   decide code_5550.OK,
   decide code_5551.OK,
   decide code_5552.OK,
   decide code_5553.OK,
   decide code_5554.OK,
   decide code_5555.OK,
   decide code_5556.OK,
   decide code_5557.OK,
   decide code_5558.OK,
   decide code_5559.OK,
   decide code_5560.OK,
   decide code_5561.OK,
   decide code_5562.OK,
   decide code_5563.OK,
   decide code_5564.OK,
   decide code_5565.OK,
   decide code_5566.OK,
   decide code_5567.OK,
   decide code_5568.OK,
   decide code_5569.OK,
   decide code_5570.OK,
   decide code_5571.OK,
   decide code_5572.OK,
   decide code_5573.OK,
   decide code_5574.OK,
   decide code_5575.OK,
   decide code_5576.OK,
   decide code_5577.OK,
   decide code_5578.OK,
   decide code_5579.OK,
   decide code_5580.OK,
   decide code_5581.OK,
   decide code_5582.OK,
   decide code_5583.OK,
   decide code_5584.OK,
   decide code_5585.OK,
   decide code_5586.OK,
   decide code_5587.OK,
   decide code_5588.OK,
   decide code_5589.OK,
   decide code_5590.OK,
   decide code_5591.OK,
   decide code_5592.OK,
   decide code_5593.OK,
   decide code_5594.OK,
   decide code_5595.OK,
   decide code_5596.OK,
   decide code_5597.OK,
   decide code_5598.OK,
   decide code_5599.OK,
   decide code_5600.OK,
   decide code_5601.OK,
   decide code_5602.OK,
   decide code_5603.OK,
   decide code_5604.OK,
   decide code_5605.OK,
   decide code_5606.OK,
   decide code_5607.OK,
   decide code_5608.OK,
   decide code_5609.OK,
   decide code_5610.OK,
   decide code_5611.OK,
   decide code_5612.OK,
   decide code_5613.OK,
   decide code_5614.OK,
   decide code_5615.OK,
   decide code_5616.OK,
   decide code_5617.OK,
   decide code_5618.OK,
   decide code_5619.OK,
   decide code_5620.OK,
   decide code_5621.OK,
   decide code_5622.OK,
   decide code_5623.OK,
   decide code_5624.OK,
   decide code_5625.OK,
   decide code_5626.OK,
   decide code_5627.OK,
   decide code_5628.OK,
   decide code_5629.OK,
   decide code_5630.OK,
   decide code_5631.OK,
   decide code_5632.OK,
   decide code_5633.OK,
   decide code_5634.OK,
   decide code_5635.OK,
   decide code_5636.OK,
   decide code_5637.OK,
   decide code_5638.OK,
   decide code_5639.OK,
   decide code_5640.OK,
   decide code_5641.OK,
   decide code_5642.OK,
   decide code_5643.OK,
   decide code_5644.OK,
   decide code_5645.OK,
   decide code_5646.OK,
   decide code_5647.OK,
   decide code_5648.OK,
   decide code_5649.OK,
   decide code_5650.OK,
   decide code_5651.OK,
   decide code_5652.OK,
   decide code_5653.OK,
   decide code_5654.OK,
   decide code_5655.OK,
   decide code_5656.OK,
   decide code_5657.OK,
   decide code_5658.OK,
   decide code_5659.OK,
   decide code_5660.OK,
   decide code_5661.OK,
   decide code_5662.OK,
   decide code_5663.OK,
   decide code_5664.OK,
   decide code_5665.OK,
   decide code_5666.OK,
   decide code_5667.OK,
   decide code_5668.OK,
   decide code_5669.OK,
   decide code_5670.OK,
   decide code_5671.OK,
   decide code_5672.OK,
   decide code_5673.OK,
   decide code_5674.OK,
   decide code_5675.OK,
   decide code_5676.OK,
   decide code_5677.OK,
   decide code_5678.OK,
   decide code_5679.OK,
   decide code_5680.OK,
   decide code_5681.OK,
   decide code_5682.OK,
   decide code_5683.OK,
   decide code_5684.OK,
   decide code_5685.OK,
   decide code_5686.OK,
   decide code_5687.OK,
   decide code_5688.OK,
   decide code_5689.OK,
   decide code_5690.OK,
   decide code_5691.OK,
   decide code_5692.OK,
   decide code_5693.OK,
   decide code_5694.OK,
   decide code_5695.OK,
   decide code_5696.OK,
   decide code_5697.OK,
   decide code_5698.OK,
   decide code_5699.OK,
   decide code_5700.OK,
   decide code_5701.OK,
   decide code_5702.OK,
   decide code_5703.OK,
   decide code_5704.OK,
   decide code_5705.OK,
   decide code_5706.OK,
   decide code_5707.OK,
   decide code_5708.OK,
   decide code_5709.OK,
   decide code_5710.OK,
   decide code_5711.OK,
   decide code_5712.OK,
   decide code_5713.OK,
   decide code_5714.OK,
   decide code_5715.OK,
   decide code_5716.OK,
   decide code_5717.OK,
   decide code_5718.OK,
   decide code_5719.OK,
   decide code_5720.OK,
   decide code_5721.OK,
   decide code_5722.OK,
   decide code_5723.OK,
   decide code_5724.OK,
   decide code_5725.OK,
   decide code_5726.OK,
   decide code_5727.OK,
   decide code_5728.OK,
   decide code_5729.OK,
   decide code_5730.OK,
   decide code_5731.OK,
   decide code_5732.OK,
   decide code_5733.OK,
   decide code_5734.OK,
   decide code_5735.OK,
   decide code_5736.OK,
   decide code_5737.OK,
   decide code_5738.OK,
   decide code_5739.OK,
   decide code_5740.OK,
   decide code_5741.OK,
   decide code_5742.OK,
   decide code_5743.OK,
   decide code_5744.OK,
   decide code_5745.OK,
   decide code_5746.OK,
   decide code_5747.OK,
   decide code_5748.OK,
   decide code_5749.OK,
   decide code_5750.OK,
   decide code_5751.OK,
   decide code_5752.OK,
   decide code_5753.OK,
   decide code_5754.OK,
   decide code_5755.OK,
   decide code_5756.OK,
   decide code_5757.OK,
   decide code_5758.OK,
   decide code_5759.OK,
   decide code_5760.OK,
   decide code_5761.OK,
   decide code_5762.OK,
   decide code_5763.OK,
   decide code_5764.OK,
   decide code_5765.OK,
   decide code_5766.OK,
   decide code_5767.OK,
   decide code_5768.OK,
   decide code_5769.OK,
   decide code_5770.OK,
   decide code_5771.OK,
   decide code_5772.OK,
   decide code_5773.OK,
   decide code_5774.OK,
   decide code_5775.OK,
   decide code_5776.OK,
   decide code_5777.OK,
   decide code_5778.OK,
   decide code_5779.OK,
   decide code_5780.OK,
   decide code_5781.OK,
   decide code_5782.OK,
   decide code_5783.OK,
   decide code_5784.OK,
   decide code_5785.OK,
   decide code_5786.OK,
   decide code_5787.OK,
   decide code_5788.OK,
   decide code_5789.OK,
   decide code_5790.OK,
   decide code_5791.OK,
   decide code_5792.OK,
   decide code_5793.OK,
   decide code_5794.OK,
   decide code_5795.OK,
   decide code_5796.OK,
   decide code_5797.OK,
   decide code_5798.OK,
   decide code_5799.OK,
   decide code_5800.OK,
   decide code_5801.OK,
   decide code_5802.OK,
   decide code_5803.OK,
   decide code_5804.OK,
   decide code_5805.OK,
   decide code_5806.OK,
   decide code_5807.OK,
   decide code_5808.OK,
   decide code_5809.OK,
   decide code_5810.OK,
   decide code_5811.OK,
   decide code_5812.OK,
   decide code_5813.OK,
   decide code_5814.OK,
   decide code_5815.OK,
   decide code_5816.OK,
   decide code_5817.OK,
   decide code_5818.OK,
   decide code_5819.OK,
   decide code_5820.OK,
   decide code_5821.OK,
   decide code_5822.OK,
   decide code_5823.OK,
   decide code_5824.OK,
   decide code_5825.OK,
   decide code_5826.OK,
   decide code_5827.OK,
   decide code_5828.OK,
   decide code_5829.OK,
   decide code_5830.OK,
   decide code_5831.OK,
   decide code_5832.OK,
   decide code_5833.OK,
   decide code_5834.OK,
   decide code_5835.OK,
   decide code_5836.OK,
   decide code_5837.OK,
   decide code_5838.OK,
   decide code_5839.OK,
   decide code_5840.OK,
   decide code_5841.OK,
   decide code_5842.OK,
   decide code_5843.OK,
   decide code_5844.OK,
   decide code_5845.OK,
   decide code_5846.OK,
   decide code_5847.OK,
   decide code_5848.OK,
   decide code_5849.OK,
   decide code_5850.OK,
   decide code_5851.OK,
   decide code_5852.OK,
   decide code_5853.OK,
   decide code_5854.OK,
   decide code_5855.OK,
   decide code_5856.OK,
   decide code_5857.OK,
   decide code_5858.OK,
   decide code_5859.OK,
   decide code_5860.OK,
   decide code_5861.OK,
   decide code_5862.OK,
   decide code_5863.OK,
   decide code_5864.OK,
   decide code_5865.OK,
   decide code_5866.OK,
   decide code_5867.OK,
   decide code_5868.OK,
   decide code_5869.OK,
   decide code_5870.OK,
   decide code_5871.OK,
   decide code_5872.OK,
   decide code_5873.OK,
   decide code_5874.OK,
   decide code_5875.OK,
   decide code_5876.OK,
   decide code_5877.OK,
   decide code_5878.OK,
   decide code_5879.OK,
   decide code_5880.OK,
   decide code_5881.OK,
   decide code_5882.OK,
   decide code_5883.OK,
   decide code_5884.OK,
   decide code_5885.OK,
   decide code_5886.OK,
   decide code_5887.OK,
   decide code_5888.OK,
   decide code_5889.OK,
   decide code_5890.OK,
   decide code_5891.OK,
   decide code_5892.OK,
   decide code_5893.OK,
   decide code_5894.OK,
   decide code_5895.OK,
   decide code_5896.OK,
   decide code_5897.OK,
   decide code_5898.OK,
   decide code_5899.OK,
   decide code_5900.OK,
   decide code_5901.OK,
   decide code_5902.OK,
   decide code_5903.OK,
   decide code_5904.OK,
   decide code_5905.OK,
   decide code_5906.OK,
   decide code_5907.OK,
   decide code_5908.OK,
   decide code_5909.OK,
   decide code_5910.OK,
   decide code_5911.OK,
   decide code_5912.OK,
   decide code_5913.OK,
   decide code_5914.OK,
   decide code_5915.OK,
   decide code_5916.OK,
   decide code_5917.OK,
   decide code_5918.OK,
   decide code_5919.OK,
   decide code_5920.OK,
   decide code_5921.OK,
   decide code_5922.OK,
   decide code_5923.OK,
   decide code_5924.OK,
   decide code_5925.OK,
   decide code_5926.OK,
   decide code_5927.OK,
   decide code_5928.OK,
   decide code_5929.OK,
   decide code_5930.OK,
   decide code_5931.OK,
   decide code_5932.OK,
   decide code_5933.OK,
   decide code_5934.OK,
   decide code_5935.OK,
   decide code_5936.OK,
   decide code_5937.OK,
   decide code_5938.OK,
   decide code_5939.OK,
   decide code_5940.OK,
   decide code_5941.OK,
   decide code_5942.OK,
   decide code_5943.OK,
   decide code_5944.OK,
   decide code_5945.OK,
   decide code_5946.OK,
   decide code_5947.OK,
   decide code_5948.OK,
   decide code_5949.OK,
   decide code_5950.OK,
   decide code_5951.OK,
   decide code_5952.OK,
   decide code_5953.OK,
   decide code_5954.OK,
   decide code_5955.OK,
   decide code_5956.OK,
   decide code_5957.OK,
   decide code_5958.OK,
   decide code_5959.OK,
   decide code_5960.OK,
   decide code_5961.OK,
   decide code_5962.OK,
   decide code_5963.OK,
   decide code_5964.OK,
   decide code_5965.OK,
   decide code_5966.OK,
   decide code_5967.OK,
   decide code_5968.OK,
   decide code_5969.OK,
   decide code_5970.OK,
   decide code_5971.OK,
   decide code_5972.OK,
   decide code_5973.OK,
   decide code_5974.OK,
   decide code_5975.OK,
   decide code_5976.OK,
   decide code_5977.OK,
   decide code_5978.OK,
   decide code_5979.OK,
   decide code_5980.OK,
   decide code_5981.OK,
   decide code_5982.OK,
   decide code_5983.OK,
   decide code_5984.OK,
   decide code_5985.OK,
   decide code_5986.OK,
   decide code_5987.OK,
   decide code_5988.OK,
   decide code_5989.OK,
   decide code_5990.OK,
   decide code_5991.OK,
   decide code_5992.OK,
   decide code_5993.OK,
   decide code_5994.OK,
   decide code_5995.OK,
   decide code_5996.OK,
   decide code_5997.OK,
   decide code_5998.OK,
   decide code_5999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk011
