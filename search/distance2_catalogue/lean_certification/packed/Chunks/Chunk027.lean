import SS

namespace Catalogue.Chunk027

open SS SS.Verify

/-- Catalogue code #13500: ((6,2,2)), m=18, a=[3, 4, 10, 10, 11, 12], S=[0, 16]. -/
def code_13500 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13501: ((6,2,2)), m=18, a=[3, 4, 10, 11, 16, 17], S=[0, 13]. -/
def code_13501 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13502: ((6,2,2)), m=18, a=[3, 4, 10, 12, 14, 17], S=[0, 16]. -/
def code_13502 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13503: ((6,2,2)), m=18, a=[3, 5, 6, 8, 16, 16], S=[0, 4]. -/
def code_13503 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13504: ((6,2,2)), m=18, a=[3, 5, 6, 10, 11, 16], S=[0, 1]. -/
def code_13504 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13505: ((6,2,2)), m=18, a=[3, 5, 6, 10, 16, 17], S=[0, 7]. -/
def code_13505 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), ((-4 : ℚ) / 9)]

/-- Catalogue code #13506: ((6,2,2)), m=18, a=[3, 5, 7, 10, 12, 14], S=[0, 17]. -/
def code_13506 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13507: ((6,2,2)), m=18, a=[3, 5, 8, 11, 12, 14], S=[0, 1]. -/
def code_13507 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13508: ((6,2,2)), m=18, a=[3, 5, 8, 12, 14, 17], S=[0, 7]. -/
def code_13508 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13509: ((6,2,2)), m=18, a=[3, 6, 7, 10, 13, 14], S=[0, 1]. -/
def code_13509 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13510: ((6,2,2)), m=18, a=[3, 6, 7, 10, 14, 17], S=[0, 5]. -/
def code_13510 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13511: ((6,2,2)), m=18, a=[3, 6, 8, 8, 13, 14], S=[0, 2]. -/
def code_13511 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13512: ((6,2,2)), m=18, a=[3, 6, 8, 11, 13, 14], S=[0, 17]. -/
def code_13512 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13513: ((6,2,2)), m=18, a=[3, 6, 8, 11, 13, 16], S=[0, 17]. -/
def code_13513 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13514: ((6,2,2)), m=18, a=[3, 6, 8, 11, 14, 16], S=[0, 5]. -/
def code_13514 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((-5 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13515: ((6,2,2)), m=18, a=[3, 6, 8, 11, 14, 16], S=[0, 17]. -/
def code_13515 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13516: ((6,2,2)), m=18, a=[3, 6, 8, 13, 14, 16], S=[0, 7]. -/
def code_13516 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((-4 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13517: ((6,2,2)), m=18, a=[3, 6, 8, 13, 14, 16], S=[0, 17]. -/
def code_13517 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), ((5 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13518: ((6,2,2)), m=18, a=[3, 6, 10, 10, 16, 17], S=[0, 4]. -/
def code_13518 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13519: ((6,2,2)), m=18, a=[3, 6, 10, 11, 16, 17], S=[0, 13]. -/
def code_13519 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13520: ((6,2,2)), m=18, a=[3, 6, 10, 13, 14, 17], S=[0, 11]. -/
def code_13520 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13521: ((6,2,2)), m=18, a=[3, 6, 11, 13, 14, 16], S=[0, 17]. -/
def code_13521 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13522: ((6,2,2)), m=18, a=[3, 6, 14, 14, 16, 17], S=[0, 8]. -/
def code_13522 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13523: ((6,2,2)), m=18, a=[3, 7, 8, 12, 13, 14], S=[0, 1]. -/
def code_13523 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13524: ((6,2,2)), m=18, a=[3, 7, 8, 12, 13, 16], S=[0, 1]. -/
def code_13524 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13525: ((6,2,2)), m=18, a=[3, 7, 8, 12, 14, 16], S=[0, 1]. -/
def code_13525 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13526: ((6,2,2)), m=18, a=[3, 7, 8, 12, 14, 16], S=[0, 5]. -/
def code_13526 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((5 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13527: ((6,2,2)), m=18, a=[3, 7, 8, 12, 14, 17], S=[0, 5]. -/
def code_13527 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13528: ((6,2,2)), m=18, a=[3, 7, 8, 12, 16, 17], S=[0, 5]. -/
def code_13528 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13529: ((6,2,2)), m=18, a=[3, 7, 8, 13, 14, 16], S=[0, 1]. -/
def code_13529 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13530: ((6,2,2)), m=18, a=[3, 7, 8, 14, 16, 17], S=[0, 5]. -/
def code_13530 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13531: ((6,2,2)), m=18, a=[3, 7, 12, 13, 14, 16], S=[0, 1]. -/
def code_13531 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13532: ((6,2,2)), m=18, a=[3, 7, 12, 14, 16, 17], S=[0, 5]. -/
def code_13532 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13533: ((6,2,2)), m=18, a=[3, 8, 11, 12, 14, 17], S=[0, 13]. -/
def code_13533 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13534: ((6,2,2)), m=18, a=[3, 8, 11, 12, 16, 16], S=[0, 4]. -/
def code_13534 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13535: ((6,2,2)), m=18, a=[3, 8, 11, 13, 14, 16], S=[0, 17]. -/
def code_13535 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13536: ((6,2,2)), m=18, a=[3, 8, 12, 13, 14, 16], S=[0, 1]. -/
def code_13536 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13537: ((6,2,2)), m=18, a=[3, 8, 12, 13, 14, 16], S=[0, 11]. -/
def code_13537 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13538: ((6,2,2)), m=18, a=[3, 8, 12, 13, 14, 17], S=[0, 11]. -/
def code_13538 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13539: ((6,2,2)), m=18, a=[3, 8, 12, 13, 16, 17], S=[0, 11]. -/
def code_13539 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9)]

/-- Catalogue code #13540: ((6,2,2)), m=18, a=[3, 8, 12, 14, 16, 17], S=[0, 5]. -/
def code_13540 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13541: ((6,2,2)), m=18, a=[3, 8, 12, 14, 16, 17], S=[0, 11]. -/
def code_13541 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13542: ((6,2,2)), m=18, a=[3, 8, 13, 14, 16, 17], S=[0, 11]. -/
def code_13542 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13543: ((6,2,2)), m=18, a=[3, 12, 13, 14, 16, 17], S=[0, 11]. -/
def code_13543 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13544: ((6,2,2)), m=18, a=[4, 4, 5, 5, 10, 12], S=[0, 2]. -/
def code_13544 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13545: ((6,2,2)), m=18, a=[4, 4, 5, 5, 12, 16], S=[0, 8]. -/
def code_13545 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13546: ((6,2,2)), m=18, a=[4, 4, 6, 8, 9, 10], S=[0, 16]. -/
def code_13546 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13547: ((6,2,2)), m=18, a=[4, 4, 6, 8, 9, 11], S=[0, 16]. -/
def code_13547 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13548: ((6,2,2)), m=18, a=[4, 4, 6, 8, 11, 17], S=[0, 16]. -/
def code_13548 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13549: ((6,2,2)), m=18, a=[4, 4, 6, 9, 10, 17], S=[0, 16]. -/
def code_13549 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13550: ((6,2,2)), m=18, a=[4, 4, 7, 9, 10, 12], S=[0, 2]. -/
def code_13550 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13551: ((6,2,2)), m=18, a=[4, 4, 11, 12, 15, 16], S=[0, 10]. -/
def code_13551 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13552: ((6,2,2)), m=18, a=[4, 5, 5, 12, 16, 16], S=[0, 8]. -/
def code_13552 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13553: ((6,2,2)), m=18, a=[4, 5, 6, 6, 9, 11], S=[0, 15]. -/
def code_13553 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13554: ((6,2,2)), m=18, a=[4, 5, 6, 7, 8, 9], S=[0, 15]. -/
def code_13554 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13555: ((6,2,2)), m=18, a=[4, 5, 6, 7, 9, 12], S=[0, 15]. -/
def code_13555 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13556: ((6,2,2)), m=18, a=[4, 5, 6, 8, 8, 11], S=[0, 2]. -/
def code_13556 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13557: ((6,2,2)), m=18, a=[4, 5, 6, 8, 11, 14], S=[0, 2]. -/
def code_13557 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13558: ((6,2,2)), m=18, a=[4, 5, 6, 9, 16, 16], S=[0, 10]. -/
def code_13558 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13559: ((6,2,2)), m=18, a=[4, 5, 6, 10, 11, 15], S=[0, 17]. -/
def code_13559 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13560: ((6,2,2)), m=18, a=[4, 5, 6, 10, 11, 16], S=[0, 1]. -/
def code_13560 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9)]

/-- Catalogue code #13561: ((6,2,2)), m=18, a=[4, 5, 6, 10, 16, 17], S=[0, 7]. -/
def code_13561 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13562: ((6,2,2)), m=18, a=[4, 5, 6, 11, 14, 16], S=[0, 10]. -/
def code_13562 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13563: ((6,2,2)), m=18, a=[4, 5, 7, 10, 12, 15], S=[0, 1]. -/
def code_13563 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13564: ((6,2,2)), m=18, a=[4, 5, 8, 11, 12, 15], S=[0, 17]. -/
def code_13564 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13565: ((6,2,2)), m=18, a=[4, 5, 8, 11, 12, 16], S=[0, 17]. -/
def code_13565 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13566: ((6,2,2)), m=18, a=[4, 5, 8, 11, 15, 16], S=[0, 17]. -/
def code_13566 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13567: ((6,2,2)), m=18, a=[4, 5, 8, 12, 15, 16], S=[0, 7]. -/
def code_13567 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13568: ((6,2,2)), m=18, a=[4, 5, 8, 12, 15, 16], S=[0, 17]. -/
def code_13568 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13569: ((6,2,2)), m=18, a=[4, 5, 9, 10, 10, 12], S=[0, 16]. -/
def code_13569 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13570: ((6,2,2)), m=18, a=[4, 5, 10, 12, 14, 15], S=[0, 16]. -/
def code_13570 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13571: ((6,2,2)), m=18, a=[4, 5, 10, 12, 15, 17], S=[0, 11]. -/
def code_13571 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13572: ((6,2,2)), m=18, a=[4, 5, 11, 12, 15, 16], S=[0, 17]. -/
def code_13572 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13573: ((6,2,2)), m=18, a=[4, 6, 7, 8, 10, 15], S=[0, 16]. -/
def code_13573 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13574: ((6,2,2)), m=18, a=[4, 6, 7, 9, 14, 16], S=[0, 10]. -/
def code_13574 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13575: ((6,2,2)), m=18, a=[4, 6, 7, 10, 13, 15], S=[0, 17]. -/
def code_13575 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13576: ((6,2,2)), m=18, a=[4, 6, 7, 10, 15, 16], S=[0, 5]. -/
def code_13576 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9)]

/-- Catalogue code #13577: ((6,2,2)), m=18, a=[4, 6, 7, 10, 15, 16], S=[0, 17]. -/
def code_13577 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((4 : ℚ) / 9)]

/-- Catalogue code #13578: ((6,2,2)), m=18, a=[4, 6, 7, 13, 15, 16], S=[0, 17]. -/
def code_13578 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13579: ((6,2,2)), m=18, a=[4, 6, 7, 14, 16, 16], S=[0, 10]. -/
def code_13579 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13580: ((6,2,2)), m=18, a=[4, 6, 8, 8, 9, 14], S=[0, 2]. -/
def code_13580 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #13581: ((6,2,2)), m=18, a=[4, 6, 8, 8, 14, 15], S=[0, 2]. -/
def code_13581 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13582: ((6,2,2)), m=18, a=[4, 6, 8, 8, 15, 17], S=[0, 2]. -/
def code_13582 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13583: ((6,2,2)), m=18, a=[4, 6, 8, 9, 10, 13], S=[0, 16]. -/
def code_13583 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13584: ((6,2,2)), m=18, a=[4, 6, 8, 11, 13, 15], S=[0, 1]. -/
def code_13584 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13585: ((6,2,2)), m=18, a=[4, 6, 8, 11, 13, 16], S=[0, 1]. -/
def code_13585 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13586: ((6,2,2)), m=18, a=[4, 6, 8, 11, 15, 16], S=[0, 1]. -/
def code_13586 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 9)]

/-- Catalogue code #13587: ((6,2,2)), m=18, a=[4, 6, 8, 11, 15, 17], S=[0, 5]. -/
def code_13587 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13588: ((6,2,2)), m=18, a=[4, 6, 8, 11, 16, 17], S=[0, 5]. -/
def code_13588 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13589: ((6,2,2)), m=18, a=[4, 6, 8, 13, 13, 14], S=[0, 2]. -/
def code_13589 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13590: ((6,2,2)), m=18, a=[4, 6, 8, 13, 15, 16], S=[0, 1]. -/
def code_13590 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((5 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13591: ((6,2,2)), m=18, a=[4, 6, 8, 13, 15, 16], S=[0, 7]. -/
def code_13591 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13592: ((6,2,2)), m=18, a=[4, 6, 8, 13, 15, 17], S=[0, 7]. -/
def code_13592 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13593: ((6,2,2)), m=18, a=[4, 6, 8, 13, 16, 17], S=[0, 7]. -/
def code_13593 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13594: ((6,2,2)), m=18, a=[4, 6, 8, 14, 17, 17], S=[0, 2]. -/
def code_13594 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13595: ((6,2,2)), m=18, a=[4, 6, 8, 15, 16, 17], S=[0, 5]. -/
def code_13595 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13596: ((6,2,2)), m=18, a=[4, 6, 8, 15, 16, 17], S=[0, 7]. -/
def code_13596 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13597: ((6,2,2)), m=18, a=[4, 6, 9, 10, 11, 12], S=[0, 15]. -/
def code_13597 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13598: ((6,2,2)), m=18, a=[4, 6, 9, 14, 16, 17], S=[0, 10]. -/
def code_13598 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13599: ((6,2,2)), m=18, a=[4, 6, 11, 14, 15, 16], S=[0, 10]. -/
def code_13599 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13600: ((6,2,2)), m=18, a=[4, 6, 11, 15, 16, 17], S=[0, 5]. -/
def code_13600 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13601: ((6,2,2)), m=18, a=[4, 6, 13, 13, 14, 16], S=[0, 10]. -/
def code_13601 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13602: ((6,2,2)), m=18, a=[4, 6, 13, 15, 16, 17], S=[0, 7]. -/
def code_13602 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13603: ((6,2,2)), m=18, a=[4, 6, 14, 16, 16, 17], S=[0, 10]. -/
def code_13603 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13604: ((6,2,2)), m=18, a=[4, 6, 14, 16, 17, 17], S=[0, 10]. -/
def code_13604 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13605: ((6,2,2)), m=18, a=[4, 7, 9, 10, 10, 12], S=[0, 2]. -/
def code_13605 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13606: ((6,2,2)), m=18, a=[4, 7, 10, 12, 13, 14], S=[0, 16]. -/
def code_13606 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13607: ((6,2,2)), m=18, a=[4, 7, 10, 12, 15, 17], S=[0, 13]. -/
def code_13607 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13608: ((6,2,2)), m=18, a=[4, 7, 10, 13, 15, 16], S=[0, 17]. -/
def code_13608 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13609: ((6,2,2)), m=18, a=[4, 7, 14, 16, 16, 17], S=[0, 10]. -/
def code_13609 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13610: ((6,2,2)), m=18, a=[4, 8, 8, 14, 17, 17], S=[0, 2]. -/
def code_13610 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13611: ((6,2,2)), m=18, a=[4, 8, 9, 11, 12, 13], S=[0, 15]. -/
def code_13611 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13612: ((6,2,2)), m=18, a=[4, 8, 9, 12, 12, 13], S=[0, 15]. -/
def code_13612 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13613: ((6,2,2)), m=18, a=[4, 8, 11, 12, 15, 16], S=[0, 13]. -/
def code_13613 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9)]

/-- Catalogue code #13614: ((6,2,2)), m=18, a=[4, 8, 11, 12, 15, 16], S=[0, 17]. -/
def code_13614 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ), ((4 : ℚ) / 9), (0 : ℚ), ((-4 : ℚ) / 9)]

/-- Catalogue code #13615: ((6,2,2)), m=18, a=[4, 8, 11, 13, 15, 16], S=[0, 1]. -/
def code_13615 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13616: ((6,2,2)), m=18, a=[4, 8, 11, 15, 16, 17], S=[0, 5]. -/
def code_13616 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13617: ((6,2,2)), m=18, a=[4, 8, 13, 15, 16, 17], S=[0, 7]. -/
def code_13617 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13618: ((6,2,2)), m=18, a=[4, 9, 10, 11, 12, 17], S=[0, 3]. -/
def code_13618 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13619: ((6,2,2)), m=18, a=[4, 9, 11, 12, 16, 17], S=[0, 3]. -/
def code_13619 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13620: ((6,2,2)), m=18, a=[4, 10, 10, 12, 14, 15], S=[0, 16]. -/
def code_13620 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13621: ((6,2,2)), m=18, a=[4, 10, 10, 14, 15, 15], S=[0, 16]. -/
def code_13621 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13622: ((6,2,2)), m=18, a=[4, 10, 12, 13, 14, 15], S=[0, 16]. -/
def code_13622 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13623: ((6,2,2)), m=18, a=[4, 11, 13, 14, 16, 16], S=[0, 10]. -/
def code_13623 : ExampleData 6 18 2 where
  a := ![(4 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13624: ((6,2,2)), m=18, a=[5, 6, 6, 7, 8, 9], S=[0, 3]. -/
def code_13624 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13625: ((6,2,2)), m=18, a=[5, 6, 7, 10, 14, 15], S=[0, 1]. -/
def code_13625 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13626: ((6,2,2)), m=18, a=[5, 6, 7, 10, 14, 16], S=[0, 1]. -/
def code_13626 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((-2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13627: ((6,2,2)), m=18, a=[5, 6, 7, 10, 15, 16], S=[0, 1]. -/
def code_13627 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13628: ((6,2,2)), m=18, a=[5, 6, 7, 14, 15, 16], S=[0, 1]. -/
def code_13628 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13629: ((6,2,2)), m=18, a=[5, 6, 8, 8, 16, 17], S=[0, 4]. -/
def code_13629 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13630: ((6,2,2)), m=18, a=[5, 6, 8, 16, 16, 17], S=[0, 4]. -/
def code_13630 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13631: ((6,2,2)), m=18, a=[5, 6, 9, 10, 10, 16], S=[0, 4]. -/
def code_13631 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 9)]

/-- Catalogue code #13632: ((6,2,2)), m=18, a=[5, 6, 9, 10, 11, 16], S=[0, 15]. -/
def code_13632 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13633: ((6,2,2)), m=18, a=[5, 6, 9, 10, 16, 17], S=[0, 15]. -/
def code_13633 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13634: ((6,2,2)), m=18, a=[5, 6, 10, 14, 15, 16], S=[0, 1]. -/
def code_13634 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 9), ((5 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13635: ((6,2,2)), m=18, a=[5, 6, 10, 14, 15, 16], S=[0, 11]. -/
def code_13635 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13636: ((6,2,2)), m=18, a=[5, 6, 10, 14, 15, 17], S=[0, 11]. -/
def code_13636 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13637: ((6,2,2)), m=18, a=[5, 6, 10, 14, 16, 17], S=[0, 11]. -/
def code_13637 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13638: ((6,2,2)), m=18, a=[5, 6, 10, 15, 16, 17], S=[0, 11]. -/
def code_13638 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9)]

/-- Catalogue code #13639: ((6,2,2)), m=18, a=[5, 6, 14, 15, 16, 17], S=[0, 11]. -/
def code_13639 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13640: ((6,2,2)), m=18, a=[5, 6, 14, 16, 16, 17], S=[0, 10]. -/
def code_13640 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13641: ((6,2,2)), m=18, a=[5, 7, 10, 14, 15, 16], S=[0, 1]. -/
def code_13641 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13642: ((6,2,2)), m=18, a=[5, 8, 9, 10, 12, 14], S=[0, 2]. -/
def code_13642 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13643: ((6,2,2)), m=18, a=[5, 8, 9, 10, 12, 16], S=[0, 4]. -/
def code_13643 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13644: ((6,2,2)), m=18, a=[5, 8, 11, 12, 15, 16], S=[0, 17]. -/
def code_13644 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13645: ((6,2,2)), m=18, a=[5, 9, 10, 11, 12, 16], S=[0, 3]. -/
def code_13645 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13646: ((6,2,2)), m=18, a=[5, 10, 14, 15, 16, 17], S=[0, 11]. -/
def code_13646 : ExampleData 6 18 2 where
  a := ![(5 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13647: ((6,2,2)), m=18, a=[6, 6, 8, 9, 16, 17], S=[0, 3]. -/
def code_13647 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13648: ((6,2,2)), m=18, a=[6, 7, 7, 8, 8, 14], S=[0, 16]. -/
def code_13648 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13649: ((6,2,2)), m=18, a=[6, 7, 7, 8, 8, 16], S=[0, 14]. -/
def code_13649 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9)]

/-- Catalogue code #13650: ((6,2,2)), m=18, a=[6, 7, 7, 8, 16, 16], S=[0, 14]. -/
def code_13650 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13651: ((6,2,2)), m=18, a=[6, 7, 8, 8, 9, 14], S=[0, 2]. -/
def code_13651 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13652: ((6,2,2)), m=18, a=[6, 7, 8, 8, 15, 16], S=[0, 4]. -/
def code_13652 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13653: ((6,2,2)), m=18, a=[6, 7, 8, 8, 16, 16], S=[0, 4]. -/
def code_13653 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13654: ((6,2,2)), m=18, a=[6, 7, 8, 9, 13, 14], S=[0, 15]. -/
def code_13654 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13655: ((6,2,2)), m=18, a=[6, 7, 9, 10, 10, 14], S=[0, 16]. -/
def code_13655 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13656: ((6,2,2)), m=18, a=[6, 7, 9, 10, 14, 14], S=[0, 16]. -/
def code_13656 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13657: ((6,2,2)), m=18, a=[6, 7, 10, 13, 15, 16], S=[0, 17]. -/
def code_13657 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13658: ((6,2,2)), m=18, a=[6, 7, 10, 14, 15, 16], S=[0, 1]. -/
def code_13658 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), (0 : ℚ), ((-4 : ℚ) / 9)]

/-- Catalogue code #13659: ((6,2,2)), m=18, a=[6, 7, 10, 14, 15, 17], S=[0, 13]. -/
def code_13659 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13660: ((6,2,2)), m=18, a=[6, 7, 10, 14, 16, 17], S=[0, 13]. -/
def code_13660 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13661: ((6,2,2)), m=18, a=[6, 7, 10, 15, 16, 17], S=[0, 13]. -/
def code_13661 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13662: ((6,2,2)), m=18, a=[6, 7, 14, 15, 16, 17], S=[0, 13]. -/
def code_13662 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13663: ((6,2,2)), m=18, a=[6, 8, 8, 9, 11, 14], S=[0, 16]. -/
def code_13663 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13664: ((6,2,2)), m=18, a=[6, 8, 8, 9, 13, 14], S=[0, 2]. -/
def code_13664 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13665: ((6,2,2)), m=18, a=[6, 8, 8, 9, 13, 16], S=[0, 4]. -/
def code_13665 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13666: ((6,2,2)), m=18, a=[6, 8, 8, 14, 14, 15], S=[0, 16]. -/
def code_13666 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13667: ((6,2,2)), m=18, a=[6, 8, 8, 14, 15, 17], S=[0, 16]. -/
def code_13667 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13668: ((6,2,2)), m=18, a=[6, 8, 8, 14, 17, 17], S=[0, 2]. -/
def code_13668 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13669: ((6,2,2)), m=18, a=[6, 8, 8, 15, 16, 17], S=[0, 14]. -/
def code_13669 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13670: ((6,2,2)), m=18, a=[6, 8, 8, 16, 16, 17], S=[0, 4]. -/
def code_13670 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13671: ((6,2,2)), m=18, a=[6, 8, 8, 16, 16, 17], S=[0, 14]. -/
def code_13671 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13672: ((6,2,2)), m=18, a=[6, 8, 8, 16, 17, 17], S=[0, 4]. -/
def code_13672 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13673: ((6,2,2)), m=18, a=[6, 8, 8, 16, 17, 17], S=[0, 14]. -/
def code_13673 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13674: ((6,2,2)), m=18, a=[6, 8, 9, 11, 14, 14], S=[0, 16]. -/
def code_13674 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13675: ((6,2,2)), m=18, a=[6, 8, 9, 14, 14, 17], S=[0, 16]. -/
def code_13675 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13676: ((6,2,2)), m=18, a=[6, 8, 9, 16, 16, 17], S=[0, 4]. -/
def code_13676 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13677: ((6,2,2)), m=18, a=[6, 8, 11, 13, 14, 16], S=[0, 17]. -/
def code_13677 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13678: ((6,2,2)), m=18, a=[6, 8, 11, 13, 15, 16], S=[0, 1]. -/
def code_13678 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13679: ((6,2,2)), m=18, a=[6, 8, 11, 15, 16, 16], S=[0, 4]. -/
def code_13679 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13680: ((6,2,2)), m=18, a=[6, 8, 11, 15, 16, 17], S=[0, 5]. -/
def code_13680 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13681: ((6,2,2)), m=18, a=[6, 8, 13, 15, 16, 17], S=[0, 7]. -/
def code_13681 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), ((-4 : ℚ) / 9)]

/-- Catalogue code #13682: ((6,2,2)), m=18, a=[6, 8, 15, 16, 16, 17], S=[0, 14]. -/
def code_13682 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13683: ((6,2,2)), m=18, a=[6, 9, 10, 11, 13, 14], S=[0, 3]. -/
def code_13683 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13684: ((6,2,2)), m=18, a=[6, 9, 10, 12, 16, 17], S=[0, 3]. -/
def code_13684 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13685: ((6,2,2)), m=18, a=[6, 9, 12, 13, 14, 16], S=[0, 15]. -/
def code_13685 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13686: ((6,2,2)), m=18, a=[6, 9, 14, 16, 16, 17], S=[0, 10]. -/
def code_13686 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13687: ((6,2,2)), m=18, a=[6, 10, 10, 14, 14, 15], S=[0, 16]. -/
def code_13687 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13688: ((6,2,2)), m=18, a=[6, 10, 10, 14, 15, 17], S=[0, 16]. -/
def code_13688 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13689: ((6,2,2)), m=18, a=[6, 10, 10, 14, 17, 17], S=[0, 16]. -/
def code_13689 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13690: ((6,2,2)), m=18, a=[6, 10, 14, 14, 17, 17], S=[0, 16]. -/
def code_13690 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13691: ((6,2,2)), m=18, a=[6, 10, 14, 15, 16, 17], S=[0, 11]. -/
def code_13691 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ), ((-5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13692: ((6,2,2)), m=18, a=[6, 10, 14, 15, 16, 17], S=[0, 13]. -/
def code_13692 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13693: ((6,2,2)), m=18, a=[6, 12, 13, 14, 16, 17], S=[0, 15]. -/
def code_13693 : ExampleData 6 18 2 where
  a := ![(6 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13694: ((6,2,2)), m=18, a=[7, 8, 9, 10, 12, 14], S=[0, 2]. -/
def code_13694 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13695: ((6,2,2)), m=18, a=[7, 8, 12, 13, 14, 15], S=[0, 17]. -/
def code_13695 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13696: ((6,2,2)), m=18, a=[7, 8, 12, 13, 14, 16], S=[0, 1]. -/
def code_13696 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13697: ((6,2,2)), m=18, a=[7, 8, 12, 14, 16, 17], S=[0, 5]. -/
def code_13697 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13698: ((6,2,2)), m=18, a=[7, 9, 10, 12, 14, 17], S=[0, 3]. -/
def code_13698 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13699: ((6,2,2)), m=18, a=[7, 9, 12, 14, 16, 17], S=[0, 15]. -/
def code_13699 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13700: ((6,2,2)), m=18, a=[7, 10, 14, 15, 16, 17], S=[0, 13]. -/
def code_13700 : ExampleData 6 18 2 where
  a := ![(7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13701: ((6,2,2)), m=18, a=[8, 12, 13, 14, 16, 17], S=[0, 11]. -/
def code_13701 : ExampleData 6 18 2 where
  a := ![(8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13702: ((6,2,2)), m=18, a=[9, 10, 11, 12, 12, 16], S=[0, 3]. -/
def code_13702 : ExampleData 6 18 2 where
  a := ![(9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #13703: ((6,2,2)), m=18, a=[9, 10, 11, 12, 13, 14], S=[0, 3]. -/
def code_13703 : ExampleData 6 18 2 where
  a := ![(9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13704: ((6,2,2)), m=18, a=[9, 12, 13, 14, 16, 17], S=[0, 3]. -/
def code_13704 : ExampleData 6 18 2 where
  a := ![(9 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13705: ((6,2,2)), m=18, a=[10, 11, 12, 13, 14, 15], S=[0, 1]. -/
def code_13705 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13706: ((6,2,2)), m=18, a=[10, 11, 12, 13, 14, 16], S=[0, 1]. -/
def code_13706 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13707: ((6,2,2)), m=18, a=[10, 11, 12, 13, 15, 16], S=[0, 1]. -/
def code_13707 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13708: ((6,2,2)), m=18, a=[10, 11, 12, 14, 15, 16], S=[0, 1]. -/
def code_13708 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9)]

/-- Catalogue code #13709: ((6,2,2)), m=18, a=[10, 11, 12, 14, 15, 16], S=[0, 5]. -/
def code_13709 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9), ((5 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13710: ((6,2,2)), m=18, a=[10, 11, 12, 14, 15, 17], S=[0, 5]. -/
def code_13710 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), ((2 : ℚ) / 9)]

/-- Catalogue code #13711: ((6,2,2)), m=18, a=[10, 11, 12, 15, 16, 17], S=[0, 5]. -/
def code_13711 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13712: ((6,2,2)), m=18, a=[10, 11, 13, 14, 15, 16], S=[0, 1]. -/
def code_13712 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13713: ((6,2,2)), m=18, a=[10, 11, 14, 15, 16, 17], S=[0, 5]. -/
def code_13713 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13714: ((6,2,2)), m=18, a=[10, 12, 13, 14, 15, 16], S=[0, 1]. -/
def code_13714 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13715: ((6,2,2)), m=18, a=[10, 12, 13, 14, 15, 16], S=[0, 7]. -/
def code_13715 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13716: ((6,2,2)), m=18, a=[10, 12, 13, 14, 15, 17], S=[0, 7]. -/
def code_13716 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13717: ((6,2,2)), m=18, a=[10, 12, 13, 15, 16, 17], S=[0, 7]. -/
def code_13717 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9)]

/-- Catalogue code #13718: ((6,2,2)), m=18, a=[10, 12, 14, 15, 16, 17], S=[0, 5]. -/
def code_13718 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13719: ((6,2,2)), m=18, a=[10, 12, 14, 15, 16, 17], S=[0, 7]. -/
def code_13719 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13720: ((6,2,2)), m=18, a=[10, 13, 14, 15, 16, 17], S=[0, 7]. -/
def code_13720 : ExampleData 6 18 2 where
  a := ![(10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13721: ((6,2,2)), m=18, a=[11, 12, 13, 14, 15, 16], S=[0, 1]. -/
def code_13721 : ExampleData 6 18 2 where
  a := ![(11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13722: ((6,2,2)), m=18, a=[11, 12, 14, 15, 16, 17], S=[0, 5]. -/
def code_13722 : ExampleData 6 18 2 where
  a := ![(11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13723: ((6,2,2)), m=18, a=[12, 13, 14, 15, 16, 17], S=[0, 7]. -/
def code_13723 : ExampleData 6 18 2 where
  a := ![(12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13724: ((6,2,2)), m=20, a=[1, 1, 3, 4, 7, 11], S=[0, 12]. -/
def code_13724 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13725: ((6,2,2)), m=20, a=[1, 1, 3, 7, 8, 15], S=[0, 4]. -/
def code_13725 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (8 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13726: ((6,2,2)), m=20, a=[1, 1, 3, 11, 12, 15], S=[0, 16]. -/
def code_13726 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (1 : ZMod 20), (3 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13727: ((6,2,2)), m=20, a=[1, 1, 7, 11, 15, 17], S=[0, 4]. -/
def code_13727 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (1 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13728: ((6,2,2)), m=20, a=[1, 3, 3, 4, 13, 15], S=[0, 8]. -/
def code_13728 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13729: ((6,2,2)), m=20, a=[1, 3, 4, 5, 7, 17], S=[0, 8]. -/
def code_13729 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13730: ((6,2,2)), m=20, a=[1, 3, 4, 5, 7, 19], S=[0, 8]. -/
def code_13730 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13731: ((6,2,2)), m=20, a=[1, 3, 4, 5, 9, 19], S=[0, 8]. -/
def code_13731 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13732: ((6,2,2)), m=20, a=[1, 3, 4, 5, 11, 11], S=[0, 8]. -/
def code_13732 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (11 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13733: ((6,2,2)), m=20, a=[1, 3, 4, 5, 11, 17], S=[0, 8]. -/
def code_13733 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13734: ((6,2,2)), m=20, a=[1, 3, 4, 7, 9, 19], S=[0, 8]. -/
def code_13734 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13735: ((6,2,2)), m=20, a=[1, 3, 4, 11, 13, 15], S=[0, 8]. -/
def code_13735 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13736: ((6,2,2)), m=20, a=[1, 3, 5, 5, 11, 16], S=[0, 8]. -/
def code_13736 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13737: ((6,2,2)), m=20, a=[1, 3, 5, 7, 9, 19], S=[0, 16]. -/
def code_13737 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13738: ((6,2,2)), m=20, a=[1, 3, 5, 7, 11, 12], S=[0, 4]. -/
def code_13738 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13739: ((6,2,2)), m=20, a=[1, 3, 5, 7, 11, 17], S=[0, 8]. -/
def code_13739 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13740: ((6,2,2)), m=20, a=[1, 3, 5, 7, 12, 17], S=[0, 16]. -/
def code_13740 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (12 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13741: ((6,2,2)), m=20, a=[1, 3, 5, 8, 11, 15], S=[0, 16]. -/
def code_13741 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (8 : ZMod 20), (11 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13742: ((6,2,2)), m=20, a=[1, 3, 5, 9, 12, 19], S=[0, 16]. -/
def code_13742 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13743: ((6,2,2)), m=20, a=[1, 3, 5, 11, 11, 17], S=[0, 4]. -/
def code_13743 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13744: ((6,2,2)), m=20, a=[1, 3, 5, 11, 12, 13], S=[0, 4]. -/
def code_13744 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (13 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13745: ((6,2,2)), m=20, a=[1, 3, 5, 11, 13, 15], S=[0, 16]. -/
def code_13745 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13746: ((6,2,2)), m=20, a=[1, 3, 5, 11, 13, 16], S=[0, 12]. -/
def code_13746 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13747: ((6,2,2)), m=20, a=[1, 3, 5, 11, 13, 19], S=[0, 8]. -/
def code_13747 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13748: ((6,2,2)), m=20, a=[1, 3, 5, 11, 16, 19], S=[0, 8]. -/
def code_13748 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (16 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13749: ((6,2,2)), m=20, a=[1, 3, 7, 9, 9, 15], S=[0, 8]. -/
def code_13749 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (9 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13750: ((6,2,2)), m=20, a=[1, 3, 7, 9, 12, 15], S=[0, 4]. -/
def code_13750 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13751: ((6,2,2)), m=20, a=[1, 3, 7, 9, 15, 16], S=[0, 8]. -/
def code_13751 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13752: ((6,2,2)), m=20, a=[1, 3, 7, 9, 15, 17], S=[0, 8]. -/
def code_13752 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13753: ((6,2,2)), m=20, a=[1, 3, 7, 12, 15, 17], S=[0, 4]. -/
def code_13753 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (7 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13754: ((6,2,2)), m=20, a=[1, 3, 9, 11, 13, 15], S=[0, 4]. -/
def code_13754 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (9 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13755: ((6,2,2)), m=20, a=[1, 3, 9, 12, 13, 15], S=[0, 16]. -/
def code_13755 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13756: ((6,2,2)), m=20, a=[1, 3, 9, 13, 15, 16], S=[0, 12]. -/
def code_13756 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13757: ((6,2,2)), m=20, a=[1, 3, 11, 13, 16, 19], S=[0, 8]. -/
def code_13757 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (3 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (16 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13758: ((6,2,2)), m=20, a=[1, 4, 5, 7, 9, 19], S=[0, 8]. -/
def code_13758 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13759: ((6,2,2)), m=20, a=[1, 4, 7, 15, 17, 19], S=[0, 12]. -/
def code_13759 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (4 : ZMod 20), (7 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13760: ((6,2,2)), m=20, a=[1, 4, 7, 16, 18, 18], S=[0, 12]. -/
def code_13760 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (4 : ZMod 20), (7 : ZMod 20), (16 : ZMod 20), (18 : ZMod 20), (18 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13761: ((6,2,2)), m=20, a=[1, 5, 7, 11, 11, 12], S=[0, 4]. -/
def code_13761 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13762: ((6,2,2)), m=20, a=[1, 5, 7, 11, 12, 17], S=[0, 4]. -/
def code_13762 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13763: ((6,2,2)), m=20, a=[1, 5, 7, 11, 12, 17], S=[0, 16]. -/
def code_13763 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13764: ((6,2,2)), m=20, a=[1, 5, 7, 15, 16, 17], S=[0, 12]. -/
def code_13764 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13765: ((6,2,2)), m=20, a=[1, 5, 11, 12, 13, 19], S=[0, 4]. -/
def code_13765 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (13 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13766: ((6,2,2)), m=20, a=[1, 7, 9, 12, 15, 17], S=[0, 4]. -/
def code_13766 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13767: ((6,2,2)), m=20, a=[1, 8, 11, 13, 15, 17], S=[0, 4]. -/
def code_13767 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (8 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13768: ((6,2,2)), m=20, a=[1, 9, 11, 13, 15, 16], S=[0, 8]. -/
def code_13768 : ExampleData 6 20 2 where
  a := ![(1 : ZMod 20), (9 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13769: ((6,2,2)), m=20, a=[3, 3, 4, 9, 13, 15], S=[0, 8]. -/
def code_13769 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (3 : ZMod 20), (4 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13770: ((6,2,2)), m=20, a=[3, 4, 5, 7, 9, 19], S=[0, 12]. -/
def code_13770 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13771: ((6,2,2)), m=20, a=[3, 4, 5, 7, 11, 17], S=[0, 8]. -/
def code_13771 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13772: ((6,2,2)), m=20, a=[3, 4, 9, 13, 15, 19], S=[0, 8]. -/
def code_13772 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (4 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13773: ((6,2,2)), m=20, a=[3, 4, 9, 13, 15, 19], S=[0, 12]. -/
def code_13773 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (4 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13774: ((6,2,2)), m=20, a=[3, 4, 11, 13, 17, 19], S=[0, 12]. -/
def code_13774 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (4 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13775: ((6,2,2)), m=20, a=[3, 5, 5, 7, 8, 9], S=[0, 16]. -/
def code_13775 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (5 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (8 : ZMod 20), (9 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13776: ((6,2,2)), m=20, a=[3, 5, 7, 8, 9, 19], S=[0, 16]. -/
def code_13776 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (8 : ZMod 20), (9 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13777: ((6,2,2)), m=20, a=[3, 5, 7, 9, 12, 19], S=[0, 16]. -/
def code_13777 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13778: ((6,2,2)), m=20, a=[3, 5, 8, 13, 17, 19], S=[0, 16]. -/
def code_13778 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (5 : ZMod 20), (8 : ZMod 20), (13 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13779: ((6,2,2)), m=20, a=[3, 5, 9, 13, 15, 19], S=[0, 16]. -/
def code_13779 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (5 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13780: ((6,2,2)), m=20, a=[3, 8, 13, 15, 17, 19], S=[0, 4]. -/
def code_13780 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (8 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13781: ((6,2,2)), m=20, a=[3, 9, 11, 13, 15, 16], S=[0, 8]. -/
def code_13781 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13782: ((6,2,2)), m=20, a=[3, 9, 13, 15, 15, 16], S=[0, 12]. -/
def code_13782 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13783: ((6,2,2)), m=20, a=[3, 9, 13, 15, 16, 17], S=[0, 12]. -/
def code_13783 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13784: ((6,2,2)), m=20, a=[3, 9, 13, 15, 16, 19], S=[0, 12]. -/
def code_13784 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13785: ((6,2,2)), m=20, a=[3, 9, 13, 16, 17, 19], S=[0, 12]. -/
def code_13785 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (16 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13786: ((6,2,2)), m=20, a=[3, 9, 15, 16, 17, 19], S=[0, 12]. -/
def code_13786 : ExampleData 6 20 2 where
  a := ![(3 : ZMod 20), (9 : ZMod 20), (15 : ZMod 20), (16 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13787: ((6,2,2)), m=20, a=[4, 5, 5, 7, 11, 17], S=[0, 8]. -/
def code_13787 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13788: ((6,2,2)), m=20, a=[4, 5, 5, 7, 17, 19], S=[0, 8]. -/
def code_13788 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13789: ((6,2,2)), m=20, a=[4, 5, 7, 10, 14, 16], S=[0, 8]. -/
def code_13789 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (10 : ZMod 20), (14 : ZMod 20), (16 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13790: ((6,2,2)), m=20, a=[4, 5, 9, 11, 17, 19], S=[0, 12]. -/
def code_13790 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (9 : ZMod 20), (11 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13791: ((6,2,2)), m=20, a=[4, 5, 9, 13, 15, 19], S=[0, 8]. -/
def code_13791 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13792: ((6,2,2)), m=20, a=[4, 5, 11, 13, 17, 19], S=[0, 8]. -/
def code_13792 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13793: ((6,2,2)), m=20, a=[4, 5, 11, 13, 17, 19], S=[0, 12]. -/
def code_13793 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (5 : ZMod 20), (11 : ZMod 20), (13 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13794: ((6,2,2)), m=20, a=[4, 6, 6, 7, 16, 17], S=[0, 8]. -/
def code_13794 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (6 : ZMod 20), (6 : ZMod 20), (7 : ZMod 20), (16 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (8 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13795: ((6,2,2)), m=20, a=[4, 7, 9, 15, 17, 19], S=[0, 12]. -/
def code_13795 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13796: ((6,2,2)), m=20, a=[4, 9, 13, 15, 15, 17], S=[0, 12]. -/
def code_13796 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13797: ((6,2,2)), m=20, a=[4, 9, 13, 15, 17, 19], S=[0, 12]. -/
def code_13797 : ExampleData 6 20 2 where
  a := ![(4 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (12 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13798: ((6,2,2)), m=20, a=[5, 5, 7, 11, 12, 19], S=[0, 16]. -/
def code_13798 : ExampleData 6 20 2 where
  a := ![(5 : ZMod 20), (5 : ZMod 20), (7 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13799: ((6,2,2)), m=20, a=[5, 7, 9, 12, 17, 19], S=[0, 4]. -/
def code_13799 : ExampleData 6 20 2 where
  a := ![(5 : ZMod 20), (7 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13800: ((6,2,2)), m=20, a=[5, 9, 12, 15, 17, 19], S=[0, 4]. -/
def code_13800 : ExampleData 6 20 2 where
  a := ![(5 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (4 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13801: ((6,2,2)), m=20, a=[7, 9, 12, 17, 17, 19], S=[0, 16]. -/
def code_13801 : ExampleData 6 20 2 where
  a := ![(7 : ZMod 20), (9 : ZMod 20), (12 : ZMod 20), (17 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13802: ((6,2,2)), m=20, a=[8, 9, 13, 15, 15, 17], S=[0, 16]. -/
def code_13802 : ExampleData 6 20 2 where
  a := ![(8 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13803: ((6,2,2)), m=20, a=[8, 9, 13, 15, 15, 19], S=[0, 16]. -/
def code_13803 : ExampleData 6 20 2 where
  a := ![(8 : ZMod 20), (9 : ZMod 20), (13 : ZMod 20), (15 : ZMod 20), (15 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13804: ((6,2,2)), m=20, a=[9, 11, 12, 15, 17, 19], S=[0, 16]. -/
def code_13804 : ExampleData 6 20 2 where
  a := ![(9 : ZMod 20), (11 : ZMod 20), (12 : ZMod 20), (15 : ZMod 20), (17 : ZMod 20), (19 : ZMod 20)]
  S := ![(0 : ZMod 20), (16 : ZMod 20)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13805: ((6,3,2)), m=6, a=[1, 1, 1, 1, 3, 3], S=[0, 2, 4]. -/
def code_13805 : ExampleData 6 6 3 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13806: ((6,3,2)), m=6, a=[1, 1, 1, 3, 3, 5], S=[0, 2, 4]. -/
def code_13806 : ExampleData 6 6 3 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13807: ((6,3,2)), m=6, a=[1, 1, 3, 3, 5, 5], S=[0, 2, 4]. -/
def code_13807 : ExampleData 6 6 3 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13808: ((6,3,2)), m=6, a=[1, 3, 3, 5, 5, 5], S=[0, 2, 4]. -/
def code_13808 : ExampleData 6 6 3 where
  a := ![(1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13809: ((6,3,2)), m=6, a=[3, 3, 5, 5, 5, 5], S=[0, 2, 4]. -/
def code_13809 : ExampleData 6 6 3 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13810: ((6,3,2)), m=8, a=[1, 1, 1, 3, 3, 3], S=[0, 2, 4]. -/
def code_13810 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13811: ((6,3,2)), m=8, a=[1, 1, 1, 3, 3, 3], S=[0, 2, 6]. -/
def code_13811 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13812: ((6,3,2)), m=8, a=[1, 1, 1, 3, 3, 5], S=[0, 2, 6]. -/
def code_13812 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #13813: ((6,3,2)), m=8, a=[1, 1, 1, 5, 5, 5], S=[0, 2, 4]. -/
def code_13813 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #13814: ((6,3,2)), m=8, a=[1, 1, 1, 5, 5, 5], S=[0, 2, 6]. -/
def code_13814 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2)]

/-- Catalogue code #13815: ((6,3,2)), m=8, a=[1, 1, 3, 3, 5, 7], S=[0, 2, 4]. -/
def code_13815 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #13816: ((6,3,2)), m=8, a=[1, 3, 3, 3, 7, 7], S=[0, 2, 6]. -/
def code_13816 : ExampleData 6 8 3 where
  a := ![(1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #13817: ((6,3,2)), m=9, a=[1, 1, 2, 2, 4, 4], S=[0, 3, 6]. -/
def code_13817 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13818: ((6,3,2)), m=9, a=[1, 1, 2, 2, 4, 5], S=[0, 3, 6]. -/
def code_13818 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13819: ((6,3,2)), m=9, a=[1, 1, 4, 4, 7, 7], S=[0, 3, 6]. -/
def code_13819 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13820: ((6,3,2)), m=9, a=[1, 1, 5, 5, 7, 7], S=[0, 3, 6]. -/
def code_13820 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13821: ((6,3,2)), m=9, a=[1, 2, 2, 4, 4, 8], S=[0, 3, 6]. -/
def code_13821 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13822: ((6,3,2)), m=9, a=[1, 2, 4, 4, 7, 8], S=[0, 3, 6]. -/
def code_13822 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13823: ((6,3,2)), m=9, a=[1, 2, 4, 5, 7, 8], S=[0, 3, 6]. -/
def code_13823 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13824: ((6,3,2)), m=9, a=[1, 5, 5, 7, 7, 8], S=[0, 3, 6]. -/
def code_13824 : ExampleData 6 9 3 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13825: ((6,3,2)), m=9, a=[2, 4, 4, 7, 8, 8], S=[0, 3, 6]. -/
def code_13825 : ExampleData 6 9 3 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13826: ((6,3,2)), m=9, a=[4, 5, 7, 7, 8, 8], S=[0, 3, 6]. -/
def code_13826 : ExampleData 6 9 3 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13827: ((6,3,2)), m=10, a=[1, 1, 1, 4, 4, 4], S=[0, 2, 5]. -/
def code_13827 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13828: ((6,3,2)), m=10, a=[1, 1, 1, 4, 4, 4], S=[0, 3, 5]. -/
def code_13828 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13829: ((6,3,2)), m=10, a=[1, 1, 1, 6, 6, 6], S=[0, 3, 8]. -/
def code_13829 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13830: ((6,3,2)), m=10, a=[1, 1, 4, 4, 6, 9], S=[0, 5, 7]. -/
def code_13830 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13831: ((6,3,2)), m=10, a=[1, 1, 4, 4, 6, 9], S=[0, 5, 8]. -/
def code_13831 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13832: ((6,3,2)), m=10, a=[1, 1, 6, 6, 6, 9], S=[0, 2, 7]. -/
def code_13832 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13833: ((6,3,2)), m=10, a=[1, 4, 4, 4, 9, 9], S=[0, 3, 8]. -/
def code_13833 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13834: ((6,3,2)), m=10, a=[1, 4, 6, 6, 9, 9], S=[0, 2, 5]. -/
def code_13834 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #13835: ((6,3,2)), m=10, a=[1, 4, 6, 6, 9, 9], S=[0, 3, 5]. -/
def code_13835 : ExampleData 6 10 3 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #13836: ((6,3,2)), m=10, a=[2, 2, 2, 3, 3, 3], S=[0, 5, 6]. -/
def code_13836 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13837: ((6,3,2)), m=10, a=[2, 2, 2, 3, 3, 3], S=[0, 5, 9]. -/
def code_13837 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #13838: ((6,3,2)), m=10, a=[2, 2, 2, 3, 7, 7], S=[0, 4, 9]. -/
def code_13838 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13839: ((6,3,2)), m=10, a=[2, 2, 2, 7, 7, 7], S=[0, 1, 6]. -/
def code_13839 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13840: ((6,3,2)), m=10, a=[2, 2, 3, 3, 7, 8], S=[0, 1, 5]. -/
def code_13840 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13841: ((6,3,2)), m=10, a=[2, 2, 3, 3, 7, 8], S=[0, 4, 5]. -/
def code_13841 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13842: ((6,3,2)), m=10, a=[2, 3, 7, 7, 8, 8], S=[0, 5, 6]. -/
def code_13842 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13843: ((6,3,2)), m=10, a=[2, 3, 7, 7, 8, 8], S=[0, 5, 9]. -/
def code_13843 : ExampleData 6 10 3 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13844: ((6,3,2)), m=10, a=[3, 3, 3, 8, 8, 8], S=[0, 4, 9]. -/
def code_13844 : ExampleData 6 10 3 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #13845: ((6,3,2)), m=10, a=[3, 3, 7, 8, 8, 8], S=[0, 1, 6]. -/
def code_13845 : ExampleData 6 10 3 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13846: ((6,3,2)), m=10, a=[4, 4, 4, 9, 9, 9], S=[0, 2, 7]. -/
def code_13846 : ExampleData 6 10 3 where
  a := ![(4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #13847: ((6,3,2)), m=12, a=[1, 1, 1, 5, 5, 5], S=[0, 3, 6]. -/
def code_13847 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13848: ((6,3,2)), m=12, a=[1, 1, 1, 5, 5, 7], S=[0, 6, 10]. -/
def code_13848 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13849: ((6,3,2)), m=12, a=[1, 1, 1, 7, 7, 7], S=[0, 2, 8]. -/
def code_13849 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13850: ((6,3,2)), m=12, a=[1, 1, 1, 7, 7, 7], S=[0, 3, 9]. -/
def code_13850 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13851: ((6,3,2)), m=12, a=[1, 1, 1, 7, 7, 7], S=[0, 4, 10]. -/
def code_13851 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13852: ((6,3,2)), m=12, a=[1, 1, 2, 4, 5, 5], S=[0, 3, 6]. -/
def code_13852 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13853: ((6,3,2)), m=12, a=[1, 1, 2, 4, 5, 5], S=[0, 6, 9]. -/
def code_13853 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13854: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 2, 6]. -/
def code_13854 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13855: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 2, 10]. -/
def code_13855 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13856: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 4, 6]. -/
def code_13856 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13857: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 6, 8]. -/
def code_13857 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13858: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 6, 10]. -/
def code_13858 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13859: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 2, 8]. -/
def code_13859 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #13860: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 4, 8]. -/
def code_13860 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13861: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 4, 10]. -/
def code_13861 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13862: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 6, 8]. -/
def code_13862 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13863: ((6,3,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 8, 10]. -/
def code_13863 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13864: ((6,3,2)), m=12, a=[1, 1, 3, 3, 7, 7], S=[0, 2, 4]. -/
def code_13864 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13865: ((6,3,2)), m=12, a=[1, 1, 3, 3, 7, 7], S=[0, 2, 8]. -/
def code_13865 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13866: ((6,3,2)), m=12, a=[1, 1, 3, 5, 5, 9], S=[0, 2, 6]. -/
def code_13866 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13867: ((6,3,2)), m=12, a=[1, 1, 3, 5, 5, 9], S=[0, 2, 10]. -/
def code_13867 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13868: ((6,3,2)), m=12, a=[1, 1, 3, 5, 5, 9], S=[0, 6, 10]. -/
def code_13868 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13869: ((6,3,2)), m=12, a=[1, 1, 3, 5, 7, 9], S=[0, 4, 10]. -/
def code_13869 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13870: ((6,3,2)), m=12, a=[1, 1, 3, 5, 7, 9], S=[0, 8, 10]. -/
def code_13870 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13871: ((6,3,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 2, 4]. -/
def code_13871 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13872: ((6,3,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 2, 8]. -/
def code_13872 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13873: ((6,3,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 4, 6]. -/
def code_13873 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13874: ((6,3,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 4, 8]. -/
def code_13874 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13875: ((6,3,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 4, 10]. -/
def code_13875 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13876: ((6,3,2)), m=12, a=[1, 1, 5, 5, 5, 11], S=[0, 2, 6]. -/
def code_13876 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13877: ((6,3,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 2, 6]. -/
def code_13877 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13878: ((6,3,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 2, 10]. -/
def code_13878 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13879: ((6,3,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 6, 8]. -/
def code_13879 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13880: ((6,3,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 6, 10]. -/
def code_13880 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13881: ((6,3,2)), m=12, a=[1, 1, 5, 7, 9, 9], S=[0, 2, 6]. -/
def code_13881 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13882: ((6,3,2)), m=12, a=[1, 2, 2, 4, 4, 7], S=[0, 3, 9]. -/
def code_13882 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #13883: ((6,3,2)), m=12, a=[1, 2, 2, 5, 8, 8], S=[0, 6, 9]. -/
def code_13883 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13884: ((6,3,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 2, 4]. -/
def code_13884 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13885: ((6,3,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 2, 8]. -/
def code_13885 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13886: ((6,3,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 4, 6]. -/
def code_13886 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #13887: ((6,3,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 4, 8]. -/
def code_13887 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13888: ((6,3,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 4, 10]. -/
def code_13888 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13889: ((6,3,2)), m=12, a=[1, 3, 3, 5, 7, 11], S=[0, 2, 6]. -/
def code_13889 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13890: ((6,3,2)), m=12, a=[1, 3, 3, 5, 7, 11], S=[0, 2, 10]. -/
def code_13890 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13891: ((6,3,2)), m=12, a=[1, 3, 3, 5, 7, 11], S=[0, 4, 6]. -/
def code_13891 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13892: ((6,3,2)), m=12, a=[1, 3, 3, 5, 7, 11], S=[0, 6, 8]. -/
def code_13892 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13893: ((6,3,2)), m=12, a=[1, 3, 3, 7, 7, 11], S=[0, 2, 6]. -/
def code_13893 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13894: ((6,3,2)), m=12, a=[1, 3, 5, 5, 9, 11], S=[0, 2, 4]. -/
def code_13894 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13895: ((6,3,2)), m=12, a=[1, 3, 5, 5, 9, 11], S=[0, 2, 8]. -/
def code_13895 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #13896: ((6,3,2)), m=12, a=[1, 3, 5, 7, 9, 11], S=[0, 4, 6]. -/
def code_13896 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13897: ((6,3,2)), m=12, a=[1, 3, 5, 7, 9, 11], S=[0, 6, 8]. -/
def code_13897 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13898: ((6,3,2)), m=12, a=[1, 3, 7, 7, 9, 11], S=[0, 4, 10]. -/
def code_13898 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13899: ((6,3,2)), m=12, a=[1, 3, 7, 7, 9, 11], S=[0, 8, 10]. -/
def code_13899 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13900: ((6,3,2)), m=12, a=[1, 5, 5, 7, 11, 11], S=[0, 6, 8]. -/
def code_13900 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13901: ((6,3,2)), m=12, a=[1, 5, 5, 9, 9, 11], S=[0, 6, 10]. -/
def code_13901 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #13902: ((6,3,2)), m=12, a=[1, 5, 7, 7, 11, 11], S=[0, 3, 6]. -/
def code_13902 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13903: ((6,3,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 2, 6]. -/
def code_13903 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13904: ((6,3,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 2, 10]. -/
def code_13904 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13905: ((6,3,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 4, 6]. -/
def code_13905 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13906: ((6,3,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 6, 8]. -/
def code_13906 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13907: ((6,3,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 6, 10]. -/
def code_13907 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13908: ((6,3,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 2, 8]. -/
def code_13908 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #13909: ((6,3,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 4, 8]. -/
def code_13909 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13910: ((6,3,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 4, 10]. -/
def code_13910 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13911: ((6,3,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 6, 8]. -/
def code_13911 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13912: ((6,3,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 8, 10]. -/
def code_13912 : ExampleData 6 12 3 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13913: ((6,3,2)), m=12, a=[2, 2, 3, 3, 4, 4], S=[0, 6, 7]. -/
def code_13913 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((5 : ℚ) / 6)]

/-- Catalogue code #13914: ((6,3,2)), m=12, a=[2, 2, 3, 3, 4, 4], S=[0, 6, 11]. -/
def code_13914 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13915: ((6,3,2)), m=12, a=[2, 2, 3, 3, 4, 8], S=[0, 6, 11]. -/
def code_13915 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #13916: ((6,3,2)), m=12, a=[2, 2, 3, 3, 8, 8], S=[0, 6, 7]. -/
def code_13916 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #13917: ((6,3,2)), m=12, a=[2, 2, 3, 4, 4, 9], S=[0, 1, 7]. -/
def code_13917 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #13918: ((6,3,2)), m=12, a=[2, 2, 3, 4, 8, 9], S=[0, 5, 11]. -/
def code_13918 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13919: ((6,3,2)), m=12, a=[2, 2, 3, 8, 8, 9], S=[0, 1, 7]. -/
def code_13919 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13920: ((6,3,2)), m=12, a=[2, 2, 4, 4, 9, 9], S=[0, 1, 6]. -/
def code_13920 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13921: ((6,3,2)), m=12, a=[2, 2, 4, 4, 9, 9], S=[0, 5, 6]. -/
def code_13921 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13922: ((6,3,2)), m=12, a=[2, 2, 4, 8, 9, 9], S=[0, 5, 6]. -/
def code_13922 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13923: ((6,3,2)), m=12, a=[2, 3, 3, 4, 4, 10], S=[0, 1, 6]. -/
def code_13923 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #13924: ((6,3,2)), m=12, a=[2, 3, 3, 4, 8, 10], S=[0, 1, 6]. -/
def code_13924 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13925: ((6,3,2)), m=12, a=[2, 3, 3, 4, 8, 10], S=[0, 5, 6]. -/
def code_13925 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13926: ((6,3,2)), m=12, a=[2, 4, 4, 9, 9, 10], S=[0, 6, 7]. -/
def code_13926 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #13927: ((6,3,2)), m=12, a=[2, 4, 8, 9, 9, 10], S=[0, 6, 7]. -/
def code_13927 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13928: ((6,3,2)), m=12, a=[2, 4, 8, 9, 9, 10], S=[0, 6, 11]. -/
def code_13928 : ExampleData 6 12 3 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13929: ((6,3,2)), m=12, a=[3, 3, 4, 4, 10, 10], S=[0, 6, 11]. -/
def code_13929 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #13930: ((6,3,2)), m=12, a=[3, 3, 5, 5, 11, 11], S=[0, 4, 10]. -/
def code_13930 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13931: ((6,3,2)), m=12, a=[3, 3, 5, 5, 11, 11], S=[0, 8, 10]. -/
def code_13931 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13932: ((6,3,2)), m=12, a=[3, 3, 5, 7, 11, 11], S=[0, 6, 10]. -/
def code_13932 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #13933: ((6,3,2)), m=12, a=[3, 3, 7, 7, 11, 11], S=[0, 2, 6]. -/
def code_13933 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13934: ((6,3,2)), m=12, a=[3, 3, 7, 7, 11, 11], S=[0, 4, 8]. -/
def code_13934 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13935: ((6,3,2)), m=12, a=[3, 3, 7, 7, 11, 11], S=[0, 6, 8]. -/
def code_13935 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13936: ((6,3,2)), m=12, a=[3, 3, 7, 7, 11, 11], S=[0, 6, 10]. -/
def code_13936 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13937: ((6,3,2)), m=12, a=[3, 3, 8, 8, 10, 10], S=[0, 6, 7]. -/
def code_13937 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13938: ((6,3,2)), m=12, a=[3, 3, 8, 8, 10, 10], S=[0, 6, 11]. -/
def code_13938 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((5 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13939: ((6,3,2)), m=12, a=[3, 4, 4, 9, 10, 10], S=[0, 5, 11]. -/
def code_13939 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13940: ((6,3,2)), m=12, a=[3, 4, 8, 9, 10, 10], S=[0, 1, 7]. -/
def code_13940 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13941: ((6,3,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 2, 8]. -/
def code_13941 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13942: ((6,3,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 4, 10]. -/
def code_13942 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13943: ((6,3,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 6, 8]. -/
def code_13943 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #13944: ((6,3,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 8, 10]. -/
def code_13944 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13945: ((6,3,2)), m=12, a=[3, 5, 7, 9, 11, 11], S=[0, 2, 4]. -/
def code_13945 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13946: ((6,3,2)), m=12, a=[3, 5, 7, 9, 11, 11], S=[0, 2, 8]. -/
def code_13946 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13947: ((6,3,2)), m=12, a=[3, 7, 7, 9, 11, 11], S=[0, 2, 6]. -/
def code_13947 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13948: ((6,3,2)), m=12, a=[3, 7, 7, 9, 11, 11], S=[0, 2, 10]. -/
def code_13948 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13949: ((6,3,2)), m=12, a=[3, 7, 7, 9, 11, 11], S=[0, 6, 10]. -/
def code_13949 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13950: ((6,3,2)), m=12, a=[3, 8, 8, 9, 10, 10], S=[0, 1, 7]. -/
def code_13950 : ExampleData 6 12 3 where
  a := ![(3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #13951: ((6,3,2)), m=12, a=[4, 4, 9, 9, 10, 10], S=[0, 5, 6]. -/
def code_13951 : ExampleData 6 12 3 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #13952: ((6,3,2)), m=12, a=[5, 7, 9, 9, 11, 11], S=[0, 2, 4]. -/
def code_13952 : ExampleData 6 12 3 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13953: ((6,3,2)), m=12, a=[5, 7, 9, 9, 11, 11], S=[0, 2, 8]. -/
def code_13953 : ExampleData 6 12 3 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13954: ((6,3,2)), m=12, a=[5, 7, 9, 9, 11, 11], S=[0, 4, 10]. -/
def code_13954 : ExampleData 6 12 3 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #13955: ((6,3,2)), m=12, a=[8, 8, 9, 9, 10, 10], S=[0, 1, 6]. -/
def code_13955 : ExampleData 6 12 3 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13956: ((6,3,2)), m=12, a=[8, 8, 9, 9, 10, 10], S=[0, 5, 6]. -/
def code_13956 : ExampleData 6 12 3 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13957: ((6,3,2)), m=14, a=[1, 1, 3, 4, 6, 6], S=[0, 2, 7]. -/
def code_13957 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13958: ((6,3,2)), m=14, a=[1, 1, 3, 4, 6, 6], S=[0, 5, 7]. -/
def code_13958 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}]
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
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13959: ((6,3,2)), m=14, a=[1, 1, 3, 8, 8, 10], S=[0, 5, 12]. -/
def code_13959 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
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
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13960: ((6,3,2)), m=14, a=[1, 1, 6, 6, 10, 11], S=[0, 7, 9]. -/
def code_13960 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13961: ((6,3,2)), m=14, a=[1, 1, 6, 6, 10, 11], S=[0, 7, 12]. -/
def code_13961 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13962: ((6,3,2)), m=14, a=[1, 1, 8, 8, 10, 11], S=[0, 2, 9]. -/
def code_13962 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13963: ((6,3,2)), m=14, a=[1, 2, 2, 5, 5, 6], S=[0, 7, 10]. -/
def code_13963 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13964: ((6,3,2)), m=14, a=[1, 2, 2, 5, 5, 6], S=[0, 7, 11]. -/
def code_13964 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13965: ((6,3,2)), m=14, a=[1, 2, 2, 5, 8, 9], S=[0, 3, 10]. -/
def code_13965 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
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
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13966: ((6,3,2)), m=14, a=[1, 2, 2, 6, 9, 9], S=[0, 4, 11]. -/
def code_13966 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
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
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13967: ((6,3,2)), m=14, a=[1, 2, 5, 6, 9, 12], S=[0, 3, 7]. -/
def code_13967 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13968: ((6,3,2)), m=14, a=[1, 2, 5, 6, 9, 12], S=[0, 4, 7]. -/
def code_13968 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13969: ((6,3,2)), m=14, a=[1, 3, 4, 6, 8, 13], S=[0, 7, 9]. -/
def code_13969 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13970: ((6,3,2)), m=14, a=[1, 3, 4, 6, 8, 13], S=[0, 7, 12]. -/
def code_13970 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13971: ((6,3,2)), m=14, a=[1, 3, 6, 6, 10, 13], S=[0, 2, 9]. -/
def code_13971 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13972: ((6,3,2)), m=14, a=[1, 4, 8, 8, 11, 13], S=[0, 5, 12]. -/
def code_13972 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13973: ((6,3,2)), m=14, a=[1, 5, 5, 8, 12, 12], S=[0, 4, 11]. -/
def code_13973 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13974: ((6,3,2)), m=14, a=[1, 6, 8, 10, 11, 13], S=[0, 2, 7]. -/
def code_13974 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13975: ((6,3,2)), m=14, a=[1, 6, 8, 10, 11, 13], S=[0, 5, 7]. -/
def code_13975 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13976: ((6,3,2)), m=14, a=[1, 6, 9, 9, 12, 12], S=[0, 7, 10]. -/
def code_13976 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13977: ((6,3,2)), m=14, a=[1, 6, 9, 9, 12, 12], S=[0, 7, 11]. -/
def code_13977 : ExampleData 6 14 3 where
  a := ![(1 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13978: ((6,3,2)), m=14, a=[2, 2, 5, 5, 8, 13], S=[0, 3, 7]. -/
def code_13978 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13979: ((6,3,2)), m=14, a=[2, 2, 5, 5, 8, 13], S=[0, 4, 7]. -/
def code_13979 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13980: ((6,3,2)), m=14, a=[2, 2, 6, 9, 9, 13], S=[0, 3, 10]. -/
def code_13980 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13981: ((6,3,2)), m=14, a=[2, 3, 3, 4, 4, 5], S=[0, 7, 8]. -/
def code_13981 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13982: ((6,3,2)), m=14, a=[2, 3, 3, 4, 4, 5], S=[0, 7, 13]. -/
def code_13982 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13983: ((6,3,2)), m=14, a=[2, 3, 3, 5, 10, 10], S=[0, 6, 13]. -/
def code_13983 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13984: ((6,3,2)), m=14, a=[2, 3, 4, 4, 9, 11], S=[0, 6, 13]. -/
def code_13984 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #13985: ((6,3,2)), m=14, a=[2, 3, 4, 5, 10, 11], S=[0, 1, 7]. -/
def code_13985 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13986: ((6,3,2)), m=14, a=[2, 3, 4, 5, 10, 11], S=[0, 6, 7]. -/
def code_13986 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13987: ((6,3,2)), m=14, a=[2, 5, 8, 9, 12, 13], S=[0, 7, 10]. -/
def code_13987 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13988: ((6,3,2)), m=14, a=[2, 5, 8, 9, 12, 13], S=[0, 7, 11]. -/
def code_13988 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13989: ((6,3,2)), m=14, a=[2, 5, 10, 10, 11, 11], S=[0, 7, 8]. -/
def code_13989 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13990: ((6,3,2)), m=14, a=[2, 5, 10, 10, 11, 11], S=[0, 7, 13]. -/
def code_13990 : ExampleData 6 14 3 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13991: ((6,3,2)), m=14, a=[3, 3, 4, 4, 9, 12], S=[0, 1, 7]. -/
def code_13991 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13992: ((6,3,2)), m=14, a=[3, 3, 4, 4, 9, 12], S=[0, 6, 7]. -/
def code_13992 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13993: ((6,3,2)), m=14, a=[3, 4, 6, 6, 13, 13], S=[0, 5, 12]. -/
def code_13993 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #13994: ((6,3,2)), m=14, a=[3, 4, 8, 8, 13, 13], S=[0, 2, 7]. -/
def code_13994 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13995: ((6,3,2)), m=14, a=[3, 4, 9, 10, 11, 12], S=[0, 7, 8]. -/
def code_13995 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13996: ((6,3,2)), m=14, a=[3, 4, 9, 10, 11, 12], S=[0, 7, 13]. -/
def code_13996 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13997: ((6,3,2)), m=14, a=[3, 5, 10, 10, 11, 12], S=[0, 1, 8]. -/
def code_13997 : ExampleData 6 14 3 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #13998: ((6,3,2)), m=14, a=[4, 4, 5, 11, 11, 12], S=[0, 6, 13]. -/
def code_13998 : ExampleData 6 14 3 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13999: ((6,3,2)), m=14, a=[4, 4, 9, 11, 11, 12], S=[0, 1, 8]. -/
def code_13999 : ExampleData 6 14 3 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
def checks : List Bool :=
  [decide code_13500.OK,
   decide code_13501.OK,
   decide code_13502.OK,
   decide code_13503.OK,
   decide code_13504.OK,
   decide code_13505.OK,
   decide code_13506.OK,
   decide code_13507.OK,
   decide code_13508.OK,
   decide code_13509.OK,
   decide code_13510.OK,
   decide code_13511.OK,
   decide code_13512.OK,
   decide code_13513.OK,
   decide code_13514.OK,
   decide code_13515.OK,
   decide code_13516.OK,
   decide code_13517.OK,
   decide code_13518.OK,
   decide code_13519.OK,
   decide code_13520.OK,
   decide code_13521.OK,
   decide code_13522.OK,
   decide code_13523.OK,
   decide code_13524.OK,
   decide code_13525.OK,
   decide code_13526.OK,
   decide code_13527.OK,
   decide code_13528.OK,
   decide code_13529.OK,
   decide code_13530.OK,
   decide code_13531.OK,
   decide code_13532.OK,
   decide code_13533.OK,
   decide code_13534.OK,
   decide code_13535.OK,
   decide code_13536.OK,
   decide code_13537.OK,
   decide code_13538.OK,
   decide code_13539.OK,
   decide code_13540.OK,
   decide code_13541.OK,
   decide code_13542.OK,
   decide code_13543.OK,
   decide code_13544.OK,
   decide code_13545.OK,
   decide code_13546.OK,
   decide code_13547.OK,
   decide code_13548.OK,
   decide code_13549.OK,
   decide code_13550.OK,
   decide code_13551.OK,
   decide code_13552.OK,
   decide code_13553.OK,
   decide code_13554.OK,
   decide code_13555.OK,
   decide code_13556.OK,
   decide code_13557.OK,
   decide code_13558.OK,
   decide code_13559.OK,
   decide code_13560.OK,
   decide code_13561.OK,
   decide code_13562.OK,
   decide code_13563.OK,
   decide code_13564.OK,
   decide code_13565.OK,
   decide code_13566.OK,
   decide code_13567.OK,
   decide code_13568.OK,
   decide code_13569.OK,
   decide code_13570.OK,
   decide code_13571.OK,
   decide code_13572.OK,
   decide code_13573.OK,
   decide code_13574.OK,
   decide code_13575.OK,
   decide code_13576.OK,
   decide code_13577.OK,
   decide code_13578.OK,
   decide code_13579.OK,
   decide code_13580.OK,
   decide code_13581.OK,
   decide code_13582.OK,
   decide code_13583.OK,
   decide code_13584.OK,
   decide code_13585.OK,
   decide code_13586.OK,
   decide code_13587.OK,
   decide code_13588.OK,
   decide code_13589.OK,
   decide code_13590.OK,
   decide code_13591.OK,
   decide code_13592.OK,
   decide code_13593.OK,
   decide code_13594.OK,
   decide code_13595.OK,
   decide code_13596.OK,
   decide code_13597.OK,
   decide code_13598.OK,
   decide code_13599.OK,
   decide code_13600.OK,
   decide code_13601.OK,
   decide code_13602.OK,
   decide code_13603.OK,
   decide code_13604.OK,
   decide code_13605.OK,
   decide code_13606.OK,
   decide code_13607.OK,
   decide code_13608.OK,
   decide code_13609.OK,
   decide code_13610.OK,
   decide code_13611.OK,
   decide code_13612.OK,
   decide code_13613.OK,
   decide code_13614.OK,
   decide code_13615.OK,
   decide code_13616.OK,
   decide code_13617.OK,
   decide code_13618.OK,
   decide code_13619.OK,
   decide code_13620.OK,
   decide code_13621.OK,
   decide code_13622.OK,
   decide code_13623.OK,
   decide code_13624.OK,
   decide code_13625.OK,
   decide code_13626.OK,
   decide code_13627.OK,
   decide code_13628.OK,
   decide code_13629.OK,
   decide code_13630.OK,
   decide code_13631.OK,
   decide code_13632.OK,
   decide code_13633.OK,
   decide code_13634.OK,
   decide code_13635.OK,
   decide code_13636.OK,
   decide code_13637.OK,
   decide code_13638.OK,
   decide code_13639.OK,
   decide code_13640.OK,
   decide code_13641.OK,
   decide code_13642.OK,
   decide code_13643.OK,
   decide code_13644.OK,
   decide code_13645.OK,
   decide code_13646.OK,
   decide code_13647.OK,
   decide code_13648.OK,
   decide code_13649.OK,
   decide code_13650.OK,
   decide code_13651.OK,
   decide code_13652.OK,
   decide code_13653.OK,
   decide code_13654.OK,
   decide code_13655.OK,
   decide code_13656.OK,
   decide code_13657.OK,
   decide code_13658.OK,
   decide code_13659.OK,
   decide code_13660.OK,
   decide code_13661.OK,
   decide code_13662.OK,
   decide code_13663.OK,
   decide code_13664.OK,
   decide code_13665.OK,
   decide code_13666.OK,
   decide code_13667.OK,
   decide code_13668.OK,
   decide code_13669.OK,
   decide code_13670.OK,
   decide code_13671.OK,
   decide code_13672.OK,
   decide code_13673.OK,
   decide code_13674.OK,
   decide code_13675.OK,
   decide code_13676.OK,
   decide code_13677.OK,
   decide code_13678.OK,
   decide code_13679.OK,
   decide code_13680.OK,
   decide code_13681.OK,
   decide code_13682.OK,
   decide code_13683.OK,
   decide code_13684.OK,
   decide code_13685.OK,
   decide code_13686.OK,
   decide code_13687.OK,
   decide code_13688.OK,
   decide code_13689.OK,
   decide code_13690.OK,
   decide code_13691.OK,
   decide code_13692.OK,
   decide code_13693.OK,
   decide code_13694.OK,
   decide code_13695.OK,
   decide code_13696.OK,
   decide code_13697.OK,
   decide code_13698.OK,
   decide code_13699.OK,
   decide code_13700.OK,
   decide code_13701.OK,
   decide code_13702.OK,
   decide code_13703.OK,
   decide code_13704.OK,
   decide code_13705.OK,
   decide code_13706.OK,
   decide code_13707.OK,
   decide code_13708.OK,
   decide code_13709.OK,
   decide code_13710.OK,
   decide code_13711.OK,
   decide code_13712.OK,
   decide code_13713.OK,
   decide code_13714.OK,
   decide code_13715.OK,
   decide code_13716.OK,
   decide code_13717.OK,
   decide code_13718.OK,
   decide code_13719.OK,
   decide code_13720.OK,
   decide code_13721.OK,
   decide code_13722.OK,
   decide code_13723.OK,
   decide code_13724.OK,
   decide code_13725.OK,
   decide code_13726.OK,
   decide code_13727.OK,
   decide code_13728.OK,
   decide code_13729.OK,
   decide code_13730.OK,
   decide code_13731.OK,
   decide code_13732.OK,
   decide code_13733.OK,
   decide code_13734.OK,
   decide code_13735.OK,
   decide code_13736.OK,
   decide code_13737.OK,
   decide code_13738.OK,
   decide code_13739.OK,
   decide code_13740.OK,
   decide code_13741.OK,
   decide code_13742.OK,
   decide code_13743.OK,
   decide code_13744.OK,
   decide code_13745.OK,
   decide code_13746.OK,
   decide code_13747.OK,
   decide code_13748.OK,
   decide code_13749.OK,
   decide code_13750.OK,
   decide code_13751.OK,
   decide code_13752.OK,
   decide code_13753.OK,
   decide code_13754.OK,
   decide code_13755.OK,
   decide code_13756.OK,
   decide code_13757.OK,
   decide code_13758.OK,
   decide code_13759.OK,
   decide code_13760.OK,
   decide code_13761.OK,
   decide code_13762.OK,
   decide code_13763.OK,
   decide code_13764.OK,
   decide code_13765.OK,
   decide code_13766.OK,
   decide code_13767.OK,
   decide code_13768.OK,
   decide code_13769.OK,
   decide code_13770.OK,
   decide code_13771.OK,
   decide code_13772.OK,
   decide code_13773.OK,
   decide code_13774.OK,
   decide code_13775.OK,
   decide code_13776.OK,
   decide code_13777.OK,
   decide code_13778.OK,
   decide code_13779.OK,
   decide code_13780.OK,
   decide code_13781.OK,
   decide code_13782.OK,
   decide code_13783.OK,
   decide code_13784.OK,
   decide code_13785.OK,
   decide code_13786.OK,
   decide code_13787.OK,
   decide code_13788.OK,
   decide code_13789.OK,
   decide code_13790.OK,
   decide code_13791.OK,
   decide code_13792.OK,
   decide code_13793.OK,
   decide code_13794.OK,
   decide code_13795.OK,
   decide code_13796.OK,
   decide code_13797.OK,
   decide code_13798.OK,
   decide code_13799.OK,
   decide code_13800.OK,
   decide code_13801.OK,
   decide code_13802.OK,
   decide code_13803.OK,
   decide code_13804.OK,
   decide code_13805.OK,
   decide code_13806.OK,
   decide code_13807.OK,
   decide code_13808.OK,
   decide code_13809.OK,
   decide code_13810.OK,
   decide code_13811.OK,
   decide code_13812.OK,
   decide code_13813.OK,
   decide code_13814.OK,
   decide code_13815.OK,
   decide code_13816.OK,
   decide code_13817.OK,
   decide code_13818.OK,
   decide code_13819.OK,
   decide code_13820.OK,
   decide code_13821.OK,
   decide code_13822.OK,
   decide code_13823.OK,
   decide code_13824.OK,
   decide code_13825.OK,
   decide code_13826.OK,
   decide code_13827.OK,
   decide code_13828.OK,
   decide code_13829.OK,
   decide code_13830.OK,
   decide code_13831.OK,
   decide code_13832.OK,
   decide code_13833.OK,
   decide code_13834.OK,
   decide code_13835.OK,
   decide code_13836.OK,
   decide code_13837.OK,
   decide code_13838.OK,
   decide code_13839.OK,
   decide code_13840.OK,
   decide code_13841.OK,
   decide code_13842.OK,
   decide code_13843.OK,
   decide code_13844.OK,
   decide code_13845.OK,
   decide code_13846.OK,
   decide code_13847.OK,
   decide code_13848.OK,
   decide code_13849.OK,
   decide code_13850.OK,
   decide code_13851.OK,
   decide code_13852.OK,
   decide code_13853.OK,
   decide code_13854.OK,
   decide code_13855.OK,
   decide code_13856.OK,
   decide code_13857.OK,
   decide code_13858.OK,
   decide code_13859.OK,
   decide code_13860.OK,
   decide code_13861.OK,
   decide code_13862.OK,
   decide code_13863.OK,
   decide code_13864.OK,
   decide code_13865.OK,
   decide code_13866.OK,
   decide code_13867.OK,
   decide code_13868.OK,
   decide code_13869.OK,
   decide code_13870.OK,
   decide code_13871.OK,
   decide code_13872.OK,
   decide code_13873.OK,
   decide code_13874.OK,
   decide code_13875.OK,
   decide code_13876.OK,
   decide code_13877.OK,
   decide code_13878.OK,
   decide code_13879.OK,
   decide code_13880.OK,
   decide code_13881.OK,
   decide code_13882.OK,
   decide code_13883.OK,
   decide code_13884.OK,
   decide code_13885.OK,
   decide code_13886.OK,
   decide code_13887.OK,
   decide code_13888.OK,
   decide code_13889.OK,
   decide code_13890.OK,
   decide code_13891.OK,
   decide code_13892.OK,
   decide code_13893.OK,
   decide code_13894.OK,
   decide code_13895.OK,
   decide code_13896.OK,
   decide code_13897.OK,
   decide code_13898.OK,
   decide code_13899.OK,
   decide code_13900.OK,
   decide code_13901.OK,
   decide code_13902.OK,
   decide code_13903.OK,
   decide code_13904.OK,
   decide code_13905.OK,
   decide code_13906.OK,
   decide code_13907.OK,
   decide code_13908.OK,
   decide code_13909.OK,
   decide code_13910.OK,
   decide code_13911.OK,
   decide code_13912.OK,
   decide code_13913.OK,
   decide code_13914.OK,
   decide code_13915.OK,
   decide code_13916.OK,
   decide code_13917.OK,
   decide code_13918.OK,
   decide code_13919.OK,
   decide code_13920.OK,
   decide code_13921.OK,
   decide code_13922.OK,
   decide code_13923.OK,
   decide code_13924.OK,
   decide code_13925.OK,
   decide code_13926.OK,
   decide code_13927.OK,
   decide code_13928.OK,
   decide code_13929.OK,
   decide code_13930.OK,
   decide code_13931.OK,
   decide code_13932.OK,
   decide code_13933.OK,
   decide code_13934.OK,
   decide code_13935.OK,
   decide code_13936.OK,
   decide code_13937.OK,
   decide code_13938.OK,
   decide code_13939.OK,
   decide code_13940.OK,
   decide code_13941.OK,
   decide code_13942.OK,
   decide code_13943.OK,
   decide code_13944.OK,
   decide code_13945.OK,
   decide code_13946.OK,
   decide code_13947.OK,
   decide code_13948.OK,
   decide code_13949.OK,
   decide code_13950.OK,
   decide code_13951.OK,
   decide code_13952.OK,
   decide code_13953.OK,
   decide code_13954.OK,
   decide code_13955.OK,
   decide code_13956.OK,
   decide code_13957.OK,
   decide code_13958.OK,
   decide code_13959.OK,
   decide code_13960.OK,
   decide code_13961.OK,
   decide code_13962.OK,
   decide code_13963.OK,
   decide code_13964.OK,
   decide code_13965.OK,
   decide code_13966.OK,
   decide code_13967.OK,
   decide code_13968.OK,
   decide code_13969.OK,
   decide code_13970.OK,
   decide code_13971.OK,
   decide code_13972.OK,
   decide code_13973.OK,
   decide code_13974.OK,
   decide code_13975.OK,
   decide code_13976.OK,
   decide code_13977.OK,
   decide code_13978.OK,
   decide code_13979.OK,
   decide code_13980.OK,
   decide code_13981.OK,
   decide code_13982.OK,
   decide code_13983.OK,
   decide code_13984.OK,
   decide code_13985.OK,
   decide code_13986.OK,
   decide code_13987.OK,
   decide code_13988.OK,
   decide code_13989.OK,
   decide code_13990.OK,
   decide code_13991.OK,
   decide code_13992.OK,
   decide code_13993.OK,
   decide code_13994.OK,
   decide code_13995.OK,
   decide code_13996.OK,
   decide code_13997.OK,
   decide code_13998.OK,
   decide code_13999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk027
