import SS

namespace Catalogue.Chunk005

open SS SS.Verify

/-- Catalogue code #2500: ((6,2,2)), m=11, a=[1, 1, 4, 7, 7, 9], S=[0, 5]. -/
def code_2500 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2501: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 8], S=[0, 2]. -/
def code_2501 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2502: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 8], S=[0, 5]. -/
def code_2502 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2503: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 9], S=[0, 5]. -/
def code_2503 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2504: ((6,2,2)), m=11, a=[1, 1, 4, 7, 9, 9], S=[0, 3]. -/
def code_2504 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2505: ((6,2,2)), m=11, a=[1, 1, 4, 7, 9, 9], S=[0, 5]. -/
def code_2505 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2506: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 8], S=[0, 2]. -/
def code_2506 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2507: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 8], S=[0, 6]. -/
def code_2507 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2508: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 9], S=[0, 5]. -/
def code_2508 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2509: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 9], S=[0, 6]. -/
def code_2509 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2510: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 10], S=[0, 5]. -/
def code_2510 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2511: ((6,2,2)), m=11, a=[1, 1, 4, 8, 9, 9], S=[0, 5]. -/
def code_2511 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2512: ((6,2,2)), m=11, a=[1, 1, 4, 9, 9, 9], S=[0, 5]. -/
def code_2512 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2513: ((6,2,2)), m=11, a=[1, 1, 4, 9, 9, 10], S=[0, 6]. -/
def code_2513 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2514: ((6,2,2)), m=11, a=[1, 1, 5, 5, 6, 9], S=[0, 8]. -/
def code_2514 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2515: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 8], S=[0, 2]. -/
def code_2515 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2516: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 8], S=[0, 9]. -/
def code_2516 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2517: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 9], S=[0, 3]. -/
def code_2517 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2518: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 10], S=[0, 9]. -/
def code_2518 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2519: ((6,2,2)), m=11, a=[1, 1, 5, 5, 8, 8], S=[0, 2]. -/
def code_2519 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2520: ((6,2,2)), m=11, a=[1, 1, 5, 5, 8, 8], S=[0, 7]. -/
def code_2520 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2521: ((6,2,2)), m=11, a=[1, 1, 5, 5, 9, 9], S=[0, 7]. -/
def code_2521 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2522: ((6,2,2)), m=11, a=[1, 1, 5, 5, 9, 10], S=[0, 7]. -/
def code_2522 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2523: ((6,2,2)), m=11, a=[1, 1, 5, 6, 6, 8], S=[0, 2]. -/
def code_2523 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2524: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 7], S=[0, 2]. -/
def code_2524 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2525: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 7], S=[0, 3]. -/
def code_2525 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2526: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 8], S=[0, 2]. -/
def code_2526 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2527: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 8], S=[0, 9]. -/
def code_2527 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2528: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 9], S=[0, 3]. -/
def code_2528 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2529: ((6,2,2)), m=11, a=[1, 1, 5, 6, 8, 8], S=[0, 2]. -/
def code_2529 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2530: ((6,2,2)), m=11, a=[1, 1, 5, 6, 8, 9], S=[0, 4]. -/
def code_2530 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2531: ((6,2,2)), m=11, a=[1, 1, 5, 6, 9, 9], S=[0, 7]. -/
def code_2531 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2532: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 8], S=[0, 2]. -/
def code_2532 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2533: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 8], S=[0, 9]. -/
def code_2533 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2534: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 9], S=[0, 3]. -/
def code_2534 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2535: ((6,2,2)), m=11, a=[1, 1, 5, 7, 8, 8], S=[0, 2]. -/
def code_2535 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2536: ((6,2,2)), m=11, a=[1, 1, 5, 7, 9, 9], S=[0, 3]. -/
def code_2536 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2537: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 8], S=[0, 2]. -/
def code_2537 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2538: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 8], S=[0, 7]. -/
def code_2538 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2539: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 9], S=[0, 7]. -/
def code_2539 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2540: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 10], S=[0, 4]. -/
def code_2540 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2541: ((6,2,2)), m=11, a=[1, 1, 5, 8, 9, 9], S=[0, 4]. -/
def code_2541 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2542: ((6,2,2)), m=11, a=[1, 1, 5, 8, 9, 9], S=[0, 7]. -/
def code_2542 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2543: ((6,2,2)), m=11, a=[1, 1, 5, 9, 9, 9], S=[0, 7]. -/
def code_2543 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2544: ((6,2,2)), m=11, a=[1, 1, 5, 9, 9, 10], S=[0, 7]. -/
def code_2544 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2545: ((6,2,2)), m=11, a=[1, 1, 6, 6, 6, 8], S=[0, 9]. -/
def code_2545 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2546: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 7], S=[0, 8]. -/
def code_2546 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2547: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 7], S=[0, 9]. -/
def code_2547 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2548: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 8], S=[0, 9]. -/
def code_2548 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2549: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 2]. -/
def code_2549 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2550: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 7]. -/
def code_2550 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2551: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 9]. -/
def code_2551 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2552: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 9], S=[0, 7]. -/
def code_2552 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2553: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 10], S=[0, 2]. -/
def code_2553 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2554: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 10], S=[0, 7]. -/
def code_2554 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2555: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 9], S=[0, 7]. -/
def code_2555 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2556: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 9], S=[0, 8]. -/
def code_2556 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2557: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 10], S=[0, 3]. -/
def code_2557 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2558: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 7], S=[0, 9]. -/
def code_2558 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2559: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 8], S=[0, 2]. -/
def code_2559 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2560: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 8], S=[0, 9]. -/
def code_2560 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2561: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 9], S=[0, 3]. -/
def code_2561 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2562: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 9], S=[0, 8]. -/
def code_2562 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2563: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 10], S=[0, 2]. -/
def code_2563 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2564: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 10], S=[0, 8]. -/
def code_2564 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2565: ((6,2,2)), m=11, a=[1, 1, 6, 7, 8, 8], S=[0, 2]. -/
def code_2565 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2566: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 9], S=[0, 3]. -/
def code_2566 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2567: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 9], S=[0, 8]. -/
def code_2567 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2568: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 10], S=[0, 8]. -/
def code_2568 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2569: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 9], S=[0, 4]. -/
def code_2569 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2570: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 9], S=[0, 7]. -/
def code_2570 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2571: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 10], S=[0, 7]. -/
def code_2571 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2572: ((6,2,2)), m=11, a=[1, 1, 6, 8, 9, 9], S=[0, 4]. -/
def code_2572 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2573: ((6,2,2)), m=11, a=[1, 1, 6, 8, 9, 9], S=[0, 7]. -/
def code_2573 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2574: ((6,2,2)), m=11, a=[1, 1, 6, 9, 9, 9], S=[0, 7]. -/
def code_2574 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2575: ((6,2,2)), m=11, a=[1, 1, 6, 9, 9, 9], S=[0, 8]. -/
def code_2575 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2576: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 9], S=[0, 5]. -/
def code_2576 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2577: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 9], S=[0, 8]. -/
def code_2577 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2578: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 10], S=[0, 2]. -/
def code_2578 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2579: ((6,2,2)), m=11, a=[1, 1, 7, 7, 8, 9], S=[0, 5]. -/
def code_2579 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2580: ((6,2,2)), m=11, a=[1, 1, 7, 7, 8, 9], S=[0, 6]. -/
def code_2580 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2581: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 3]. -/
def code_2581 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2582: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 5]. -/
def code_2582 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2583: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 8]. -/
def code_2583 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2584: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 10], S=[0, 5]. -/
def code_2584 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2585: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 10], S=[0, 8]. -/
def code_2585 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2586: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 8], S=[0, 2]. -/
def code_2586 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2587: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 8], S=[0, 9]. -/
def code_2587 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2588: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 9], S=[0, 5]. -/
def code_2588 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2589: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 9], S=[0, 6]. -/
def code_2589 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2590: ((6,2,2)), m=11, a=[1, 1, 7, 8, 9, 9], S=[0, 5]. -/
def code_2590 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2591: ((6,2,2)), m=11, a=[1, 1, 8, 8, 8, 9], S=[0, 6]. -/
def code_2591 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2592: ((6,2,2)), m=11, a=[1, 1, 8, 8, 8, 9], S=[0, 7]. -/
def code_2592 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11)]

/-- Catalogue code #2593: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 3], S=[0, 6]. -/
def code_2593 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2594: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 3], S=[0, 7]. -/
def code_2594 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2595: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 4], S=[0, 6]. -/
def code_2595 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2596: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 5], S=[0, 7]. -/
def code_2596 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2597: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 4], S=[0, 3]. -/
def code_2597 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2598: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 5], S=[0, 8]. -/
def code_2598 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2599: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 6], S=[0, 3]. -/
def code_2599 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2600: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 7], S=[0, 8]. -/
def code_2600 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2601: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 8], S=[0, 5]. -/
def code_2601 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2602: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 10], S=[0, 3]. -/
def code_2602 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2603: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 10], S=[0, 5]. -/
def code_2603 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2604: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 5], S=[0, 3]. -/
def code_2604 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2605: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 5], S=[0, 7]. -/
def code_2605 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2606: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 6], S=[0, 8]. -/
def code_2606 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2607: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 6], S=[0, 7]. -/
def code_2607 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2608: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 8], S=[0, 7]. -/
def code_2608 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2609: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 10], S=[0, 7]. -/
def code_2609 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2610: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 5]. -/
def code_2610 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2611: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 6]. -/
def code_2611 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2612: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 7]. -/
def code_2612 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2613: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 10], S=[0, 7]. -/
def code_2613 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2614: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 3], S=[0, 7]. -/
def code_2614 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2615: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 4], S=[0, 5]. -/
def code_2615 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2616: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 4], S=[0, 6]. -/
def code_2616 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2617: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 5], S=[0, 4]. -/
def code_2617 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2618: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 5], S=[0, 7]. -/
def code_2618 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2619: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 6], S=[0, 4]. -/
def code_2619 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2620: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 6], S=[0, 7]. -/
def code_2620 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2621: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 7], S=[0, 5]. -/
def code_2621 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2622: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 7], S=[0, 6]. -/
def code_2622 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2623: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 8], S=[0, 4]. -/
def code_2623 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2624: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 9], S=[0, 4]. -/
def code_2624 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2625: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 9], S=[0, 5]. -/
def code_2625 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2626: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 10], S=[0, 4]. -/
def code_2626 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2627: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 10], S=[0, 6]. -/
def code_2627 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2628: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 7], S=[0, 5]. -/
def code_2628 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2629: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 8], S=[0, 5]. -/
def code_2629 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2630: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 10], S=[0, 5]. -/
def code_2630 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2631: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 10], S=[0, 6]. -/
def code_2631 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2632: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 5], S=[0, 4]. -/
def code_2632 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2633: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 6], S=[0, 4]. -/
def code_2633 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2634: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 6], S=[0, 7]. -/
def code_2634 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2635: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 8], S=[0, 4]. -/
def code_2635 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2636: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 10], S=[0, 4]. -/
def code_2636 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2637: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 10], S=[0, 7]. -/
def code_2637 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2638: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_2638 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2639: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 8], S=[0, 4]. -/
def code_2639 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2640: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 8], S=[0, 7]. -/
def code_2640 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2641: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 9], S=[0, 4]. -/
def code_2641 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2642: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 10], S=[0, 7]. -/
def code_2642 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2643: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 7], S=[0, 5]. -/
def code_2643 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2644: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 7], S=[0, 6]. -/
def code_2644 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2645: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 8], S=[0, 5]. -/
def code_2645 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2646: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 8], S=[0, 6]. -/
def code_2646 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2647: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 9], S=[0, 5]. -/
def code_2647 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2648: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 10], S=[0, 6]. -/
def code_2648 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2649: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 4], S=[0, 5]. -/
def code_2649 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2650: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 5], S=[0, 8]. -/
def code_2650 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2651: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 6], S=[0, 3]. -/
def code_2651 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2652: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 7], S=[0, 8]. -/
def code_2652 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2653: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 8], S=[0, 5]. -/
def code_2653 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2654: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 3]. -/
def code_2654 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2655: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 5]. -/
def code_2655 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2656: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 8]. -/
def code_2656 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2657: ((6,2,2)), m=11, a=[1, 2, 2, 4, 5, 5], S=[0, 3]. -/
def code_2657 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2658: ((6,2,2)), m=11, a=[1, 2, 2, 4, 5, 6], S=[0, 3]. -/
def code_2658 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2659: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 6], S=[0, 3]. -/
def code_2659 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2660: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 7], S=[0, 3]. -/
def code_2660 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2661: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 7], S=[0, 8]. -/
def code_2661 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2662: ((6,2,2)), m=11, a=[1, 2, 2, 4, 7, 8], S=[0, 5]. -/
def code_2662 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2663: ((6,2,2)), m=11, a=[1, 2, 2, 4, 7, 10], S=[0, 8]. -/
def code_2663 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2664: ((6,2,2)), m=11, a=[1, 2, 2, 4, 8, 8], S=[0, 5]. -/
def code_2664 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2665: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 6], S=[0, 3]. -/
def code_2665 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2666: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 6], S=[0, 7]. -/
def code_2666 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2667: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 7], S=[0, 3]. -/
def code_2667 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2668: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 8], S=[0, 4]. -/
def code_2668 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2669: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 8], S=[0, 7]. -/
def code_2669 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2670: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 9], S=[0, 3]. -/
def code_2670 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2671: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 10], S=[0, 4]. -/
def code_2671 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2672: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 7], S=[0, 8]. -/
def code_2672 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]

/-- Catalogue code #2673: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 8], S=[0, 7]. -/
def code_2673 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2674: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 9], S=[0, 4]. -/
def code_2674 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2675: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 10], S=[0, 7]. -/
def code_2675 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2676: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 7], S=[0, 3]. -/
def code_2676 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2677: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 7], S=[0, 8]. -/
def code_2677 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2678: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 10], S=[0, 8]. -/
def code_2678 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2679: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_2679 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2680: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 6], S=[0, 8]. -/
def code_2680 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2681: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 7], S=[0, 8]. -/
def code_2681 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2682: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 8], S=[0, 4]. -/
def code_2682 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2683: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 8], S=[0, 7]. -/
def code_2683 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2684: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 9], S=[0, 3]. -/
def code_2684 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2685: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 3]. -/
def code_2685 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2686: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 4]. -/
def code_2686 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2687: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 7]. -/
def code_2687 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2688: ((6,2,2)), m=11, a=[1, 2, 2, 6, 7, 9], S=[0, 8]. -/
def code_2688 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2689: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 8], S=[0, 4]. -/
def code_2689 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2690: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 8], S=[0, 7]. -/
def code_2690 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2691: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 10], S=[0, 4]. -/
def code_2691 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2692: ((6,2,2)), m=11, a=[1, 2, 2, 6, 9, 10], S=[0, 3]. -/
def code_2692 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2693: ((6,2,2)), m=11, a=[1, 2, 2, 6, 10, 10], S=[0, 4]. -/
def code_2693 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2694: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 7], S=[0, 3]. -/
def code_2694 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2695: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 7], S=[0, 5]. -/
def code_2695 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2696: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 10], S=[0, 3]. -/
def code_2696 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2697: ((6,2,2)), m=11, a=[1, 2, 2, 7, 8, 8], S=[0, 5]. -/
def code_2697 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2698: ((6,2,2)), m=11, a=[1, 2, 2, 7, 8, 10], S=[0, 5]. -/
def code_2698 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2699: ((6,2,2)), m=11, a=[1, 2, 2, 7, 10, 10], S=[0, 5]. -/
def code_2699 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2700: ((6,2,2)), m=11, a=[1, 2, 2, 8, 8, 10], S=[0, 4]. -/
def code_2700 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2701: ((6,2,2)), m=11, a=[1, 2, 2, 8, 8, 10], S=[0, 5]. -/
def code_2701 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2702: ((6,2,2)), m=11, a=[1, 2, 2, 8, 9, 10], S=[0, 5]. -/
def code_2702 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2703: ((6,2,2)), m=11, a=[1, 2, 3, 3, 3, 4], S=[0, 6]. -/
def code_2703 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2704: ((6,2,2)), m=11, a=[1, 2, 3, 3, 3, 5], S=[0, 7]. -/
def code_2704 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2705: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 4], S=[0, 5]. -/
def code_2705 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2706: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 9], S=[0, 5]. -/
def code_2706 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2707: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 9], S=[0, 6]. -/
def code_2707 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2708: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 10], S=[0, 5]. -/
def code_2708 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2709: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 10], S=[0, 6]. -/
def code_2709 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2710: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 5], S=[0, 4]. -/
def code_2710 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2711: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 6], S=[0, 7]. -/
def code_2711 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2712: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 9], S=[0, 7]. -/
def code_2712 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]

/-- Catalogue code #2713: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 10], S=[0, 4]. -/
def code_2713 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2714: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 9], S=[0, 4]. -/
def code_2714 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2715: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 9], S=[0, 7]. -/
def code_2715 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2716: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 10], S=[0, 7]. -/
def code_2716 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2717: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 7], S=[0, 6]. -/
def code_2717 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2718: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 9], S=[0, 5]. -/
def code_2718 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2719: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 10], S=[0, 6]. -/
def code_2719 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2720: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 7], S=[0, 5]. -/
def code_2720 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2721: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 8], S=[0, 5]. -/
def code_2721 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2722: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 8], S=[0, 6]. -/
def code_2722 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2723: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 9], S=[0, 6]. -/
def code_2723 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2724: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 10], S=[0, 5]. -/
def code_2724 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2725: ((6,2,2)), m=11, a=[1, 2, 3, 4, 7, 8], S=[0, 5]. -/
def code_2725 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2726: ((6,2,2)), m=11, a=[1, 2, 3, 4, 7, 10], S=[0, 6]. -/
def code_2726 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2727: ((6,2,2)), m=11, a=[1, 2, 3, 4, 8, 8], S=[0, 5]. -/
def code_2727 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2728: ((6,2,2)), m=11, a=[1, 2, 3, 4, 8, 9], S=[0, 6]. -/
def code_2728 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2729: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 8], S=[0, 4]. -/
def code_2729 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2730: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 9], S=[0, 4]. -/
def code_2730 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2731: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 9], S=[0, 7]. -/
def code_2731 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2732: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 8], S=[0, 7]. -/
def code_2732 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2733: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 9], S=[0, 7]. -/
def code_2733 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2734: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 10], S=[0, 7]. -/
def code_2734 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2735: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 8], S=[0, 4]. -/
def code_2735 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]

/-- Catalogue code #2736: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 9], S=[0, 4]. -/
def code_2736 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2737: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 9], S=[0, 7]. -/
def code_2737 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2738: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 10], S=[0, 4]. -/
def code_2738 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2739: ((6,2,2)), m=11, a=[1, 2, 3, 5, 9, 9], S=[0, 4]. -/
def code_2739 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2740: ((6,2,2)), m=11, a=[1, 2, 3, 5, 9, 10], S=[0, 4]. -/
def code_2740 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2741: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 6], S=[0, 4]. -/
def code_2741 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2742: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 9], S=[0, 4]. -/
def code_2742 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2743: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 10], S=[0, 4]. -/
def code_2743 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2744: ((6,2,2)), m=11, a=[1, 2, 3, 6, 8, 8], S=[0, 7]. -/
def code_2744 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2745: ((6,2,2)), m=11, a=[1, 2, 3, 6, 8, 10], S=[0, 4]. -/
def code_2745 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2746: ((6,2,2)), m=11, a=[1, 2, 3, 6, 9, 10], S=[0, 4]. -/
def code_2746 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2747: ((6,2,2)), m=11, a=[1, 2, 3, 7, 7, 8], S=[0, 5]. -/
def code_2747 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2748: ((6,2,2)), m=11, a=[1, 2, 3, 7, 7, 10], S=[0, 5]. -/
def code_2748 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2749: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 9], S=[0, 6]. -/
def code_2749 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2750: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 10], S=[0, 5]. -/
def code_2750 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2751: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 10], S=[0, 6]. -/
def code_2751 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2752: ((6,2,2)), m=11, a=[1, 2, 3, 7, 9, 9], S=[0, 6]. -/
def code_2752 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2753: ((6,2,2)), m=11, a=[1, 2, 3, 7, 9, 10], S=[0, 5]. -/
def code_2753 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2754: ((6,2,2)), m=11, a=[1, 2, 3, 8, 8, 10], S=[0, 4]. -/
def code_2754 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2755: ((6,2,2)), m=11, a=[1, 2, 3, 8, 8, 10], S=[0, 6]. -/
def code_2755 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2756: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 4]. -/
def code_2756 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2757: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 5]. -/
def code_2757 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2758: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 6]. -/
def code_2758 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2759: ((6,2,2)), m=11, a=[1, 2, 3, 8, 10, 10], S=[0, 6]. -/
def code_2759 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2760: ((6,2,2)), m=11, a=[1, 2, 3, 9, 9, 10], S=[0, 6]. -/
def code_2760 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2761: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 5], S=[0, 3]. -/
def code_2761 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2762: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 8], S=[0, 6]. -/
def code_2762 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2763: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 9], S=[0, 3]. -/
def code_2763 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2764: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 10], S=[0, 5]. -/
def code_2764 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2765: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 5], S=[0, 3]. -/
def code_2765 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2766: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 5], S=[0, 8]. -/
def code_2766 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2767: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 6], S=[0, 3]. -/
def code_2767 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2768: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 6], S=[0, 8]. -/
def code_2768 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2769: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 9], S=[0, 8]. -/
def code_2769 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2770: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 10], S=[0, 3]. -/
def code_2770 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2771: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 6], S=[0, 3]. -/
def code_2771 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2772: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 6], S=[0, 8]. -/
def code_2772 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2773: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 7], S=[0, 8]. -/
def code_2773 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2774: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 9], S=[0, 3]. -/
def code_2774 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2775: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 10], S=[0, 3]. -/
def code_2775 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2776: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 10], S=[0, 8]. -/
def code_2776 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2777: ((6,2,2)), m=11, a=[1, 2, 4, 4, 7, 9], S=[0, 6]. -/
def code_2777 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2778: ((6,2,2)), m=11, a=[1, 2, 4, 4, 7, 10], S=[0, 8]. -/
def code_2778 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2779: ((6,2,2)), m=11, a=[1, 2, 4, 4, 8, 8], S=[0, 6]. -/
def code_2779 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2780: ((6,2,2)), m=11, a=[1, 2, 4, 4, 8, 10], S=[0, 6]. -/
def code_2780 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2781: ((6,2,2)), m=11, a=[1, 2, 4, 4, 9, 9], S=[0, 8]. -/
def code_2781 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2782: ((6,2,2)), m=11, a=[1, 2, 4, 4, 9, 10], S=[0, 3]. -/
def code_2782 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2783: ((6,2,2)), m=11, a=[1, 2, 4, 4, 10, 10], S=[0, 3]. -/
def code_2783 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2784: ((6,2,2)), m=11, a=[1, 2, 4, 4, 10, 10], S=[0, 6]. -/
def code_2784 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2785: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 6], S=[0, 3]. -/
def code_2785 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2786: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 7], S=[0, 3]. -/
def code_2786 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2787: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 9], S=[0, 8]. -/
def code_2787 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2788: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 10], S=[0, 8]. -/
def code_2788 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2789: ((6,2,2)), m=11, a=[1, 2, 4, 5, 6, 9], S=[0, 8]. -/
def code_2789 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2790: ((6,2,2)), m=11, a=[1, 2, 4, 5, 6, 10], S=[0, 3]. -/
def code_2790 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2791: ((6,2,2)), m=11, a=[1, 2, 4, 5, 7, 9], S=[0, 3]. -/
def code_2791 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2792: ((6,2,2)), m=11, a=[1, 2, 4, 5, 7, 10], S=[0, 8]. -/
def code_2792 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2793: ((6,2,2)), m=11, a=[1, 2, 4, 5, 10, 10], S=[0, 3]. -/
def code_2793 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2794: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 7], S=[0, 3]. -/
def code_2794 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2795: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 7], S=[0, 8]. -/
def code_2795 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2796: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 9], S=[0, 3]. -/
def code_2796 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2797: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 10], S=[0, 3]. -/
def code_2797 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2798: ((6,2,2)), m=11, a=[1, 2, 4, 6, 7, 9], S=[0, 8]. -/
def code_2798 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2799: ((6,2,2)), m=11, a=[1, 2, 4, 6, 7, 10], S=[0, 3]. -/
def code_2799 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2800: ((6,2,2)), m=11, a=[1, 2, 4, 6, 9, 10], S=[0, 3]. -/
def code_2800 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2801: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 8], S=[0, 6]. -/
def code_2801 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2802: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 9], S=[0, 6]. -/
def code_2802 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2803: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 10], S=[0, 5]. -/
def code_2803 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2804: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 9], S=[0, 5]. -/
def code_2804 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2805: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 9], S=[0, 6]. -/
def code_2805 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2806: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 10], S=[0, 5]. -/
def code_2806 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2807: ((6,2,2)), m=11, a=[1, 2, 4, 8, 9, 10], S=[0, 6]. -/
def code_2807 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2808: ((6,2,2)), m=11, a=[1, 2, 4, 8, 10, 10], S=[0, 6]. -/
def code_2808 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2809: ((6,2,2)), m=11, a=[1, 2, 5, 5, 5, 10], S=[0, 3]. -/
def code_2809 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2810: ((6,2,2)), m=11, a=[1, 2, 5, 5, 6, 8], S=[0, 7]. -/
def code_2810 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2811: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 7], S=[0, 3]. -/
def code_2811 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2812: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 7], S=[0, 8]. -/
def code_2812 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2813: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 9], S=[0, 3]. -/
def code_2813 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2814: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 9], S=[0, 4]. -/
def code_2814 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2815: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 9], S=[0, 7]. -/
def code_2815 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2816: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 10], S=[0, 7]. -/
def code_2816 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2817: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 9], S=[0, 8]. -/
def code_2817 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2818: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 10], S=[0, 7]. -/
def code_2818 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2819: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 10], S=[0, 8]. -/
def code_2819 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2820: ((6,2,2)), m=11, a=[1, 2, 5, 5, 10, 10], S=[0, 3]. -/
def code_2820 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2821: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 7], S=[0, 3]. -/
def code_2821 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2822: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 8], S=[0, 4]. -/
def code_2822 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2823: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 9], S=[0, 3]. -/
def code_2823 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2824: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 9], S=[0, 4]. -/
def code_2824 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2825: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 7], S=[0, 3]. -/
def code_2825 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2826: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 7], S=[0, 8]. -/
def code_2826 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2827: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 9], S=[0, 3]. -/
def code_2827 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2828: ((6,2,2)), m=11, a=[1, 2, 5, 6, 8, 8], S=[0, 4]. -/
def code_2828 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2829: ((6,2,2)), m=11, a=[1, 2, 5, 6, 8, 9], S=[0, 4]. -/
def code_2829 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2830: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 9], S=[0, 3]. -/
def code_2830 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2831: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 9], S=[0, 8]. -/
def code_2831 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2832: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 10], S=[0, 8]. -/
def code_2832 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2833: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 9], S=[0, 3]. -/
def code_2833 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2834: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 9], S=[0, 8]. -/
def code_2834 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2835: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 10], S=[0, 8]. -/
def code_2835 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2836: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 9], S=[0, 4]. -/
def code_2836 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2837: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 9], S=[0, 7]. -/
def code_2837 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2838: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 10], S=[0, 4]. -/
def code_2838 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2839: ((6,2,2)), m=11, a=[1, 2, 5, 8, 9, 9], S=[0, 4]. -/
def code_2839 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2840: ((6,2,2)), m=11, a=[1, 2, 5, 8, 9, 10], S=[0, 7]. -/
def code_2840 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2841: ((6,2,2)), m=11, a=[1, 2, 5, 8, 10, 10], S=[0, 7]. -/
def code_2841 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2842: ((6,2,2)), m=11, a=[1, 2, 5, 9, 9, 10], S=[0, 8]. -/
def code_2842 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2843: ((6,2,2)), m=11, a=[1, 2, 6, 6, 6, 7], S=[0, 8]. -/
def code_2843 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2844: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 7], S=[0, 3]. -/
def code_2844 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2845: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 7], S=[0, 8]. -/
def code_2845 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2846: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 9], S=[0, 3]. -/
def code_2846 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2847: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 10], S=[0, 3]. -/
def code_2847 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2848: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 8], S=[0, 7]. -/
def code_2848 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2849: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 9], S=[0, 7]. -/
def code_2849 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2850: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 10], S=[0, 4]. -/
def code_2850 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2851: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 10], S=[0, 7]. -/
def code_2851 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2852: ((6,2,2)), m=11, a=[1, 2, 6, 6, 9, 9], S=[0, 3]. -/
def code_2852 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2853: ((6,2,2)), m=11, a=[1, 2, 6, 6, 9, 10], S=[0, 4]. -/
def code_2853 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2854: ((6,2,2)), m=11, a=[1, 2, 6, 6, 10, 10], S=[0, 4]. -/
def code_2854 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2855: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 7], S=[0, 3]. -/
def code_2855 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2856: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 10], S=[0, 3]. -/
def code_2856 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2857: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 10], S=[0, 8]. -/
def code_2857 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2858: ((6,2,2)), m=11, a=[1, 2, 6, 8, 8, 9], S=[0, 7]. -/
def code_2858 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2859: ((6,2,2)), m=11, a=[1, 2, 6, 8, 8, 10], S=[0, 4]. -/
def code_2859 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2860: ((6,2,2)), m=11, a=[1, 2, 6, 8, 9, 10], S=[0, 7]. -/
def code_2860 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2861: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 8], S=[0, 5]. -/
def code_2861 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2862: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 10], S=[0, 3]. -/
def code_2862 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2863: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 10], S=[0, 6]. -/
def code_2863 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2864: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 8], S=[0, 5]. -/
def code_2864 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2865: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 8], S=[0, 6]. -/
def code_2865 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2866: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 9], S=[0, 6]. -/
def code_2866 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2867: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 10], S=[0, 5]. -/
def code_2867 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2868: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 9], S=[0, 6]. -/
def code_2868 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2869: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 10], S=[0, 5]. -/
def code_2869 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2870: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 10], S=[0, 6]. -/
def code_2870 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2871: ((6,2,2)), m=11, a=[1, 2, 7, 8, 9, 9], S=[0, 6]. -/
def code_2871 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2872: ((6,2,2)), m=11, a=[1, 2, 8, 8, 8, 9], S=[0, 7]. -/
def code_2872 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2873: ((6,2,2)), m=11, a=[1, 3, 3, 3, 3, 10], S=[0, 2]. -/
def code_2873 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2874: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 4], S=[0, 9]. -/
def code_2874 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2875: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 5], S=[0, 9]. -/
def code_2875 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2876: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 7], S=[0, 5]. -/
def code_2876 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2877: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 6], S=[0, 4]. -/
def code_2877 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2878: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 7], S=[0, 2]. -/
def code_2878 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2879: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 9], S=[0, 4]. -/
def code_2879 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2880: ((6,2,2)), m=11, a=[1, 3, 3, 3, 7, 9], S=[0, 5]. -/
def code_2880 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2881: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 6], S=[0, 9]. -/
def code_2881 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2882: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 8], S=[0, 6]. -/
def code_2882 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2883: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 10], S=[0, 5]. -/
def code_2883 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2884: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 10], S=[0, 9]. -/
def code_2884 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2885: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 5], S=[0, 9]. -/
def code_2885 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2886: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 6], S=[0, 2]. -/
def code_2886 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2887: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 7], S=[0, 2]. -/
def code_2887 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2888: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 10], S=[0, 2]. -/
def code_2888 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2889: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 10], S=[0, 9]. -/
def code_2889 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2890: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 6], S=[0, 2]. -/
def code_2890 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2891: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 8], S=[0, 2]. -/
def code_2891 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2892: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 10], S=[0, 2]. -/
def code_2892 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2893: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 10], S=[0, 9]. -/
def code_2893 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2894: ((6,2,2)), m=11, a=[1, 3, 3, 4, 7, 8], S=[0, 2]. -/
def code_2894 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2895: ((6,2,2)), m=11, a=[1, 3, 3, 4, 7, 9], S=[0, 6]. -/
def code_2895 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2896: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 9], S=[0, 5]. -/
def code_2896 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2897: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 2]. -/
def code_2897 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2898: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 5]. -/
def code_2898 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2899: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 9]. -/
def code_2899 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2900: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 9], S=[0, 5]. -/
def code_2900 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2901: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 9], S=[0, 6]. -/
def code_2901 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2902: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 10], S=[0, 5]. -/
def code_2902 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2903: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 10], S=[0, 6]. -/
def code_2903 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2904: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 5], S=[0, 4]. -/
def code_2904 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2905: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 6], S=[0, 2]. -/
def code_2905 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2906: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 8], S=[0, 7]. -/
def code_2906 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2907: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 10], S=[0, 4]. -/
def code_2907 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2908: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 10], S=[0, 9]. -/
def code_2908 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2909: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 7], S=[0, 2]. -/
def code_2909 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2910: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 9], S=[0, 7]. -/
def code_2910 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2911: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 10], S=[0, 2]. -/
def code_2911 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2912: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 10], S=[0, 7]. -/
def code_2912 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2913: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 7], S=[0, 2]. -/
def code_2913 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2914: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 10], S=[0, 2]. -/
def code_2914 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2915: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 10], S=[0, 9]. -/
def code_2915 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2916: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 9], S=[0, 4]. -/
def code_2916 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2917: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 9], S=[0, 7]. -/
def code_2917 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2918: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 10], S=[0, 7]. -/
def code_2918 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2919: ((6,2,2)), m=11, a=[1, 3, 3, 5, 10, 10], S=[0, 4]. -/
def code_2919 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2920: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 6], S=[0, 2]. -/
def code_2920 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2921: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 7], S=[0, 2]. -/
def code_2921 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2922: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 9], S=[0, 4]. -/
def code_2922 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2923: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 10], S=[0, 2]. -/
def code_2923 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2924: ((6,2,2)), m=11, a=[1, 3, 3, 6, 7, 10], S=[0, 2]. -/
def code_2924 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2925: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 9], S=[0, 7]. -/
def code_2925 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2926: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 10], S=[0, 2]. -/
def code_2926 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2927: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 10], S=[0, 7]. -/
def code_2927 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2928: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 9], S=[0, 4]. -/
def code_2928 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2929: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 9], S=[0, 7]. -/
def code_2929 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2930: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 10], S=[0, 7]. -/
def code_2930 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2931: ((6,2,2)), m=11, a=[1, 3, 3, 6, 10, 10], S=[0, 4]. -/
def code_2931 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2932: ((6,2,2)), m=11, a=[1, 3, 3, 7, 7, 8], S=[0, 9]. -/
def code_2932 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2933: ((6,2,2)), m=11, a=[1, 3, 3, 7, 7, 9], S=[0, 6]. -/
def code_2933 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2934: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 9], S=[0, 5]. -/
def code_2934 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2935: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 9], S=[0, 6]. -/
def code_2935 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2936: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 10], S=[0, 5]. -/
def code_2936 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2937: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 10], S=[0, 6]. -/
def code_2937 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2938: ((6,2,2)), m=11, a=[1, 3, 3, 7, 10, 10], S=[0, 6]. -/
def code_2938 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2939: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 9], S=[0, 4]. -/
def code_2939 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2940: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 9], S=[0, 7]. -/
def code_2940 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2941: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 10], S=[0, 7]. -/
def code_2941 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2942: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 5]. -/
def code_2942 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2943: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 6]. -/
def code_2943 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2944: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 7]. -/
def code_2944 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2945: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 10], S=[0, 6]. -/
def code_2945 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2946: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 10], S=[0, 7]. -/
def code_2946 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]

/-- Catalogue code #2947: ((6,2,2)), m=11, a=[1, 3, 4, 4, 4, 10], S=[0, 2]. -/
def code_2947 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2948: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 5], S=[0, 2]. -/
def code_2948 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2949: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 6], S=[0, 2]. -/
def code_2949 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2950: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 8], S=[0, 2]. -/
def code_2950 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2951: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 10], S=[0, 2]. -/
def code_2951 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]

/-- Catalogue code #2952: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 6], S=[0, 9]. -/
def code_2952 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2953: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 7], S=[0, 9]. -/
def code_2953 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2954: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 8], S=[0, 2]. -/
def code_2954 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2955: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 10], S=[0, 9]. -/
def code_2955 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]

/-- Catalogue code #2956: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 9], S=[0, 5]. -/
def code_2956 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2957: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 9], S=[0, 6]. -/
def code_2957 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2958: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 10], S=[0, 2]. -/
def code_2958 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2959: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 10], S=[0, 6]. -/
def code_2959 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2960: ((6,2,2)), m=11, a=[1, 3, 4, 4, 9, 9], S=[0, 5]. -/
def code_2960 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2961: ((6,2,2)), m=11, a=[1, 3, 4, 4, 9, 10], S=[0, 6]. -/
def code_2961 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2962: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 7], S=[0, 2]. -/
def code_2962 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2963: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 8], S=[0, 2]. -/
def code_2963 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2964: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 10], S=[0, 2]. -/
def code_2964 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2965: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 10], S=[0, 9]. -/
def code_2965 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2966: ((6,2,2)), m=11, a=[1, 3, 4, 5, 6, 7], S=[0, 2]. -/
def code_2966 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2967: ((6,2,2)), m=11, a=[1, 3, 4, 5, 6, 10], S=[0, 9]. -/
def code_2967 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2968: ((6,2,2)), m=11, a=[1, 3, 4, 5, 7, 10], S=[0, 2]. -/
def code_2968 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2969: ((6,2,2)), m=11, a=[1, 3, 4, 5, 7, 10], S=[0, 9]. -/
def code_2969 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2970: ((6,2,2)), m=11, a=[1, 3, 4, 5, 8, 10], S=[0, 2]. -/
def code_2970 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2971: ((6,2,2)), m=11, a=[1, 3, 4, 6, 6, 6], S=[0, 2]. -/
def code_2971 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2972: ((6,2,2)), m=11, a=[1, 3, 4, 6, 6, 7], S=[0, 9]. -/
def code_2972 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2973: ((6,2,2)), m=11, a=[1, 3, 4, 6, 7, 8], S=[0, 9]. -/
def code_2973 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2974: ((6,2,2)), m=11, a=[1, 3, 4, 6, 8, 8], S=[0, 9]. -/
def code_2974 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2975: ((6,2,2)), m=11, a=[1, 3, 4, 6, 8, 10], S=[0, 2]. -/
def code_2975 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2976: ((6,2,2)), m=11, a=[1, 3, 4, 7, 8, 9], S=[0, 5]. -/
def code_2976 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2977: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 9], S=[0, 5]. -/
def code_2977 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2978: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 9], S=[0, 6]. -/
def code_2978 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2979: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 10], S=[0, 6]. -/
def code_2979 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2980: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 9], S=[0, 5]. -/
def code_2980 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2981: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 9], S=[0, 6]. -/
def code_2981 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2982: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 10], S=[0, 5]. -/
def code_2982 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2983: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 10], S=[0, 6]. -/
def code_2983 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2984: ((6,2,2)), m=11, a=[1, 3, 4, 9, 9, 9], S=[0, 5]. -/
def code_2984 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2985: ((6,2,2)), m=11, a=[1, 3, 4, 9, 9, 10], S=[0, 6]. -/
def code_2985 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2986: ((6,2,2)), m=11, a=[1, 3, 5, 5, 5, 7], S=[0, 2]. -/
def code_2986 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2987: ((6,2,2)), m=11, a=[1, 3, 5, 5, 5, 9], S=[0, 4]. -/
def code_2987 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2988: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 7], S=[0, 2]. -/
def code_2988 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2989: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 8], S=[0, 9]. -/
def code_2989 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]

/-- Catalogue code #2990: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 10], S=[0, 2]. -/
def code_2990 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2991: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 8], S=[0, 4]. -/
def code_2991 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2992: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 9], S=[0, 7]. -/
def code_2992 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2993: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 10], S=[0, 9]. -/
def code_2993 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]

/-- Catalogue code #2994: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 9], S=[0, 4]. -/
def code_2994 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]

/-- Catalogue code #2995: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 9], S=[0, 7]. -/
def code_2995 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2996: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 10], S=[0, 4]. -/
def code_2996 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]

/-- Catalogue code #2997: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 10], S=[0, 7]. -/
def code_2997 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]

/-- Catalogue code #2998: ((6,2,2)), m=11, a=[1, 3, 5, 5, 10, 10], S=[0, 4]. -/
def code_2998 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]

/-- Catalogue code #2999: ((6,2,2)), m=11, a=[1, 3, 5, 5, 10, 10], S=[0, 9]. -/
def code_2999 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
def checks : List Bool :=
  [decide code_2500.OK,
   decide code_2501.OK,
   decide code_2502.OK,
   decide code_2503.OK,
   decide code_2504.OK,
   decide code_2505.OK,
   decide code_2506.OK,
   decide code_2507.OK,
   decide code_2508.OK,
   decide code_2509.OK,
   decide code_2510.OK,
   decide code_2511.OK,
   decide code_2512.OK,
   decide code_2513.OK,
   decide code_2514.OK,
   decide code_2515.OK,
   decide code_2516.OK,
   decide code_2517.OK,
   decide code_2518.OK,
   decide code_2519.OK,
   decide code_2520.OK,
   decide code_2521.OK,
   decide code_2522.OK,
   decide code_2523.OK,
   decide code_2524.OK,
   decide code_2525.OK,
   decide code_2526.OK,
   decide code_2527.OK,
   decide code_2528.OK,
   decide code_2529.OK,
   decide code_2530.OK,
   decide code_2531.OK,
   decide code_2532.OK,
   decide code_2533.OK,
   decide code_2534.OK,
   decide code_2535.OK,
   decide code_2536.OK,
   decide code_2537.OK,
   decide code_2538.OK,
   decide code_2539.OK,
   decide code_2540.OK,
   decide code_2541.OK,
   decide code_2542.OK,
   decide code_2543.OK,
   decide code_2544.OK,
   decide code_2545.OK,
   decide code_2546.OK,
   decide code_2547.OK,
   decide code_2548.OK,
   decide code_2549.OK,
   decide code_2550.OK,
   decide code_2551.OK,
   decide code_2552.OK,
   decide code_2553.OK,
   decide code_2554.OK,
   decide code_2555.OK,
   decide code_2556.OK,
   decide code_2557.OK,
   decide code_2558.OK,
   decide code_2559.OK,
   decide code_2560.OK,
   decide code_2561.OK,
   decide code_2562.OK,
   decide code_2563.OK,
   decide code_2564.OK,
   decide code_2565.OK,
   decide code_2566.OK,
   decide code_2567.OK,
   decide code_2568.OK,
   decide code_2569.OK,
   decide code_2570.OK,
   decide code_2571.OK,
   decide code_2572.OK,
   decide code_2573.OK,
   decide code_2574.OK,
   decide code_2575.OK,
   decide code_2576.OK,
   decide code_2577.OK,
   decide code_2578.OK,
   decide code_2579.OK,
   decide code_2580.OK,
   decide code_2581.OK,
   decide code_2582.OK,
   decide code_2583.OK,
   decide code_2584.OK,
   decide code_2585.OK,
   decide code_2586.OK,
   decide code_2587.OK,
   decide code_2588.OK,
   decide code_2589.OK,
   decide code_2590.OK,
   decide code_2591.OK,
   decide code_2592.OK,
   decide code_2593.OK,
   decide code_2594.OK,
   decide code_2595.OK,
   decide code_2596.OK,
   decide code_2597.OK,
   decide code_2598.OK,
   decide code_2599.OK,
   decide code_2600.OK,
   decide code_2601.OK,
   decide code_2602.OK,
   decide code_2603.OK,
   decide code_2604.OK,
   decide code_2605.OK,
   decide code_2606.OK,
   decide code_2607.OK,
   decide code_2608.OK,
   decide code_2609.OK,
   decide code_2610.OK,
   decide code_2611.OK,
   decide code_2612.OK,
   decide code_2613.OK,
   decide code_2614.OK,
   decide code_2615.OK,
   decide code_2616.OK,
   decide code_2617.OK,
   decide code_2618.OK,
   decide code_2619.OK,
   decide code_2620.OK,
   decide code_2621.OK,
   decide code_2622.OK,
   decide code_2623.OK,
   decide code_2624.OK,
   decide code_2625.OK,
   decide code_2626.OK,
   decide code_2627.OK,
   decide code_2628.OK,
   decide code_2629.OK,
   decide code_2630.OK,
   decide code_2631.OK,
   decide code_2632.OK,
   decide code_2633.OK,
   decide code_2634.OK,
   decide code_2635.OK,
   decide code_2636.OK,
   decide code_2637.OK,
   decide code_2638.OK,
   decide code_2639.OK,
   decide code_2640.OK,
   decide code_2641.OK,
   decide code_2642.OK,
   decide code_2643.OK,
   decide code_2644.OK,
   decide code_2645.OK,
   decide code_2646.OK,
   decide code_2647.OK,
   decide code_2648.OK,
   decide code_2649.OK,
   decide code_2650.OK,
   decide code_2651.OK,
   decide code_2652.OK,
   decide code_2653.OK,
   decide code_2654.OK,
   decide code_2655.OK,
   decide code_2656.OK,
   decide code_2657.OK,
   decide code_2658.OK,
   decide code_2659.OK,
   decide code_2660.OK,
   decide code_2661.OK,
   decide code_2662.OK,
   decide code_2663.OK,
   decide code_2664.OK,
   decide code_2665.OK,
   decide code_2666.OK,
   decide code_2667.OK,
   decide code_2668.OK,
   decide code_2669.OK,
   decide code_2670.OK,
   decide code_2671.OK,
   decide code_2672.OK,
   decide code_2673.OK,
   decide code_2674.OK,
   decide code_2675.OK,
   decide code_2676.OK,
   decide code_2677.OK,
   decide code_2678.OK,
   decide code_2679.OK,
   decide code_2680.OK,
   decide code_2681.OK,
   decide code_2682.OK,
   decide code_2683.OK,
   decide code_2684.OK,
   decide code_2685.OK,
   decide code_2686.OK,
   decide code_2687.OK,
   decide code_2688.OK,
   decide code_2689.OK,
   decide code_2690.OK,
   decide code_2691.OK,
   decide code_2692.OK,
   decide code_2693.OK,
   decide code_2694.OK,
   decide code_2695.OK,
   decide code_2696.OK,
   decide code_2697.OK,
   decide code_2698.OK,
   decide code_2699.OK,
   decide code_2700.OK,
   decide code_2701.OK,
   decide code_2702.OK,
   decide code_2703.OK,
   decide code_2704.OK,
   decide code_2705.OK,
   decide code_2706.OK,
   decide code_2707.OK,
   decide code_2708.OK,
   decide code_2709.OK,
   decide code_2710.OK,
   decide code_2711.OK,
   decide code_2712.OK,
   decide code_2713.OK,
   decide code_2714.OK,
   decide code_2715.OK,
   decide code_2716.OK,
   decide code_2717.OK,
   decide code_2718.OK,
   decide code_2719.OK,
   decide code_2720.OK,
   decide code_2721.OK,
   decide code_2722.OK,
   decide code_2723.OK,
   decide code_2724.OK,
   decide code_2725.OK,
   decide code_2726.OK,
   decide code_2727.OK,
   decide code_2728.OK,
   decide code_2729.OK,
   decide code_2730.OK,
   decide code_2731.OK,
   decide code_2732.OK,
   decide code_2733.OK,
   decide code_2734.OK,
   decide code_2735.OK,
   decide code_2736.OK,
   decide code_2737.OK,
   decide code_2738.OK,
   decide code_2739.OK,
   decide code_2740.OK,
   decide code_2741.OK,
   decide code_2742.OK,
   decide code_2743.OK,
   decide code_2744.OK,
   decide code_2745.OK,
   decide code_2746.OK,
   decide code_2747.OK,
   decide code_2748.OK,
   decide code_2749.OK,
   decide code_2750.OK,
   decide code_2751.OK,
   decide code_2752.OK,
   decide code_2753.OK,
   decide code_2754.OK,
   decide code_2755.OK,
   decide code_2756.OK,
   decide code_2757.OK,
   decide code_2758.OK,
   decide code_2759.OK,
   decide code_2760.OK,
   decide code_2761.OK,
   decide code_2762.OK,
   decide code_2763.OK,
   decide code_2764.OK,
   decide code_2765.OK,
   decide code_2766.OK,
   decide code_2767.OK,
   decide code_2768.OK,
   decide code_2769.OK,
   decide code_2770.OK,
   decide code_2771.OK,
   decide code_2772.OK,
   decide code_2773.OK,
   decide code_2774.OK,
   decide code_2775.OK,
   decide code_2776.OK,
   decide code_2777.OK,
   decide code_2778.OK,
   decide code_2779.OK,
   decide code_2780.OK,
   decide code_2781.OK,
   decide code_2782.OK,
   decide code_2783.OK,
   decide code_2784.OK,
   decide code_2785.OK,
   decide code_2786.OK,
   decide code_2787.OK,
   decide code_2788.OK,
   decide code_2789.OK,
   decide code_2790.OK,
   decide code_2791.OK,
   decide code_2792.OK,
   decide code_2793.OK,
   decide code_2794.OK,
   decide code_2795.OK,
   decide code_2796.OK,
   decide code_2797.OK,
   decide code_2798.OK,
   decide code_2799.OK,
   decide code_2800.OK,
   decide code_2801.OK,
   decide code_2802.OK,
   decide code_2803.OK,
   decide code_2804.OK,
   decide code_2805.OK,
   decide code_2806.OK,
   decide code_2807.OK,
   decide code_2808.OK,
   decide code_2809.OK,
   decide code_2810.OK,
   decide code_2811.OK,
   decide code_2812.OK,
   decide code_2813.OK,
   decide code_2814.OK,
   decide code_2815.OK,
   decide code_2816.OK,
   decide code_2817.OK,
   decide code_2818.OK,
   decide code_2819.OK,
   decide code_2820.OK,
   decide code_2821.OK,
   decide code_2822.OK,
   decide code_2823.OK,
   decide code_2824.OK,
   decide code_2825.OK,
   decide code_2826.OK,
   decide code_2827.OK,
   decide code_2828.OK,
   decide code_2829.OK,
   decide code_2830.OK,
   decide code_2831.OK,
   decide code_2832.OK,
   decide code_2833.OK,
   decide code_2834.OK,
   decide code_2835.OK,
   decide code_2836.OK,
   decide code_2837.OK,
   decide code_2838.OK,
   decide code_2839.OK,
   decide code_2840.OK,
   decide code_2841.OK,
   decide code_2842.OK,
   decide code_2843.OK,
   decide code_2844.OK,
   decide code_2845.OK,
   decide code_2846.OK,
   decide code_2847.OK,
   decide code_2848.OK,
   decide code_2849.OK,
   decide code_2850.OK,
   decide code_2851.OK,
   decide code_2852.OK,
   decide code_2853.OK,
   decide code_2854.OK,
   decide code_2855.OK,
   decide code_2856.OK,
   decide code_2857.OK,
   decide code_2858.OK,
   decide code_2859.OK,
   decide code_2860.OK,
   decide code_2861.OK,
   decide code_2862.OK,
   decide code_2863.OK,
   decide code_2864.OK,
   decide code_2865.OK,
   decide code_2866.OK,
   decide code_2867.OK,
   decide code_2868.OK,
   decide code_2869.OK,
   decide code_2870.OK,
   decide code_2871.OK,
   decide code_2872.OK,
   decide code_2873.OK,
   decide code_2874.OK,
   decide code_2875.OK,
   decide code_2876.OK,
   decide code_2877.OK,
   decide code_2878.OK,
   decide code_2879.OK,
   decide code_2880.OK,
   decide code_2881.OK,
   decide code_2882.OK,
   decide code_2883.OK,
   decide code_2884.OK,
   decide code_2885.OK,
   decide code_2886.OK,
   decide code_2887.OK,
   decide code_2888.OK,
   decide code_2889.OK,
   decide code_2890.OK,
   decide code_2891.OK,
   decide code_2892.OK,
   decide code_2893.OK,
   decide code_2894.OK,
   decide code_2895.OK,
   decide code_2896.OK,
   decide code_2897.OK,
   decide code_2898.OK,
   decide code_2899.OK,
   decide code_2900.OK,
   decide code_2901.OK,
   decide code_2902.OK,
   decide code_2903.OK,
   decide code_2904.OK,
   decide code_2905.OK,
   decide code_2906.OK,
   decide code_2907.OK,
   decide code_2908.OK,
   decide code_2909.OK,
   decide code_2910.OK,
   decide code_2911.OK,
   decide code_2912.OK,
   decide code_2913.OK,
   decide code_2914.OK,
   decide code_2915.OK,
   decide code_2916.OK,
   decide code_2917.OK,
   decide code_2918.OK,
   decide code_2919.OK,
   decide code_2920.OK,
   decide code_2921.OK,
   decide code_2922.OK,
   decide code_2923.OK,
   decide code_2924.OK,
   decide code_2925.OK,
   decide code_2926.OK,
   decide code_2927.OK,
   decide code_2928.OK,
   decide code_2929.OK,
   decide code_2930.OK,
   decide code_2931.OK,
   decide code_2932.OK,
   decide code_2933.OK,
   decide code_2934.OK,
   decide code_2935.OK,
   decide code_2936.OK,
   decide code_2937.OK,
   decide code_2938.OK,
   decide code_2939.OK,
   decide code_2940.OK,
   decide code_2941.OK,
   decide code_2942.OK,
   decide code_2943.OK,
   decide code_2944.OK,
   decide code_2945.OK,
   decide code_2946.OK,
   decide code_2947.OK,
   decide code_2948.OK,
   decide code_2949.OK,
   decide code_2950.OK,
   decide code_2951.OK,
   decide code_2952.OK,
   decide code_2953.OK,
   decide code_2954.OK,
   decide code_2955.OK,
   decide code_2956.OK,
   decide code_2957.OK,
   decide code_2958.OK,
   decide code_2959.OK,
   decide code_2960.OK,
   decide code_2961.OK,
   decide code_2962.OK,
   decide code_2963.OK,
   decide code_2964.OK,
   decide code_2965.OK,
   decide code_2966.OK,
   decide code_2967.OK,
   decide code_2968.OK,
   decide code_2969.OK,
   decide code_2970.OK,
   decide code_2971.OK,
   decide code_2972.OK,
   decide code_2973.OK,
   decide code_2974.OK,
   decide code_2975.OK,
   decide code_2976.OK,
   decide code_2977.OK,
   decide code_2978.OK,
   decide code_2979.OK,
   decide code_2980.OK,
   decide code_2981.OK,
   decide code_2982.OK,
   decide code_2983.OK,
   decide code_2984.OK,
   decide code_2985.OK,
   decide code_2986.OK,
   decide code_2987.OK,
   decide code_2988.OK,
   decide code_2989.OK,
   decide code_2990.OK,
   decide code_2991.OK,
   decide code_2992.OK,
   decide code_2993.OK,
   decide code_2994.OK,
   decide code_2995.OK,
   decide code_2996.OK,
   decide code_2997.OK,
   decide code_2998.OK,
   decide code_2999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk005
