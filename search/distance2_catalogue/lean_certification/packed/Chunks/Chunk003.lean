import SS

namespace Catalogue.Chunk003

open SS SS.Verify

/-- Catalogue code #1500: ((6,2,2)), m=10, a=[1, 4, 4, 8, 8, 9], S=[0, 7]. -/
def code_1500 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1501: ((6,2,2)), m=10, a=[1, 4, 5, 5, 6, 8], S=[0, 7]. -/
def code_1501 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1502: ((6,2,2)), m=10, a=[1, 4, 5, 5, 7, 7], S=[0, 8]. -/
def code_1502 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1503: ((6,2,2)), m=10, a=[1, 4, 5, 5, 7, 9], S=[0, 8]. -/
def code_1503 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1504: ((6,2,2)), m=10, a=[1, 4, 5, 5, 8, 8], S=[0, 7]. -/
def code_1504 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1505: ((6,2,2)), m=10, a=[1, 4, 5, 6, 6, 7], S=[0, 2]. -/
def code_1505 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1506: ((6,2,2)), m=10, a=[1, 4, 5, 6, 6, 8], S=[0, 3]. -/
def code_1506 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1507: ((6,2,2)), m=10, a=[1, 4, 5, 6, 6, 8], S=[0, 7]. -/
def code_1507 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1508: ((6,2,2)), m=10, a=[1, 4, 5, 6, 7, 7], S=[0, 2]. -/
def code_1508 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1509: ((6,2,2)), m=10, a=[1, 4, 5, 6, 8, 8], S=[0, 3]. -/
def code_1509 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1510: ((6,2,2)), m=10, a=[1, 4, 5, 6, 8, 8], S=[0, 7]. -/
def code_1510 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5)]

/-- Catalogue code #1511: ((6,2,2)), m=10, a=[1, 4, 5, 6, 9, 9], S=[0, 7]. -/
def code_1511 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1512: ((6,2,2)), m=10, a=[1, 4, 5, 7, 7, 7], S=[0, 2]. -/
def code_1512 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1513: ((6,2,2)), m=10, a=[1, 4, 5, 7, 7, 9], S=[0, 2]. -/
def code_1513 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1514: ((6,2,2)), m=10, a=[1, 4, 5, 7, 7, 9], S=[0, 8]. -/
def code_1514 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1515: ((6,2,2)), m=10, a=[1, 4, 5, 7, 9, 9], S=[0, 2]. -/
def code_1515 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1516: ((6,2,2)), m=10, a=[1, 4, 5, 7, 9, 9], S=[0, 8]. -/
def code_1516 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1517: ((6,2,2)), m=10, a=[1, 4, 5, 8, 8, 8], S=[0, 3]. -/
def code_1517 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1518: ((6,2,2)), m=10, a=[1, 4, 5, 8, 8, 8], S=[0, 7]. -/
def code_1518 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1519: ((6,2,2)), m=10, a=[1, 4, 5, 8, 8, 9], S=[0, 3]. -/
def code_1519 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1520: ((6,2,2)), m=10, a=[1, 4, 5, 8, 8, 9], S=[0, 7]. -/
def code_1520 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1521: ((6,2,2)), m=10, a=[1, 4, 5, 8, 9, 9], S=[0, 3]. -/
def code_1521 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1522: ((6,2,2)), m=10, a=[1, 4, 6, 6, 6, 7], S=[0, 8]. -/
def code_1522 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1523: ((6,2,2)), m=10, a=[1, 4, 6, 6, 8, 9], S=[0, 3]. -/
def code_1523 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1524: ((6,2,2)), m=10, a=[1, 4, 6, 6, 9, 9], S=[0, 2]. -/
def code_1524 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1525: ((6,2,2)), m=10, a=[1, 4, 6, 6, 9, 9], S=[0, 3]. -/
def code_1525 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1526: ((6,2,2)), m=10, a=[1, 4, 6, 7, 7, 9], S=[0, 2]. -/
def code_1526 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1527: ((6,2,2)), m=10, a=[1, 4, 6, 7, 9, 9], S=[0, 2]. -/
def code_1527 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1528: ((6,2,2)), m=10, a=[1, 4, 6, 8, 8, 9], S=[0, 3]. -/
def code_1528 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1529: ((6,2,2)), m=10, a=[1, 4, 6, 8, 9, 9], S=[0, 3]. -/
def code_1529 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1530: ((6,2,2)), m=10, a=[1, 4, 7, 7, 9, 9], S=[0, 2]. -/
def code_1530 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1531: ((6,2,2)), m=10, a=[1, 4, 8, 8, 8, 9], S=[0, 3]. -/
def code_1531 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1532: ((6,2,2)), m=10, a=[1, 5, 5, 6, 6, 7], S=[0, 8]. -/
def code_1532 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1533: ((6,2,2)), m=10, a=[1, 5, 5, 6, 6, 8], S=[0, 3]. -/
def code_1533 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1534: ((6,2,2)), m=10, a=[1, 5, 5, 6, 7, 7], S=[0, 2]. -/
def code_1534 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1535: ((6,2,2)), m=10, a=[1, 5, 5, 6, 8, 8], S=[0, 7]. -/
def code_1535 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1536: ((6,2,2)), m=10, a=[1, 5, 5, 6, 8, 9], S=[0, 7]. -/
def code_1536 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1537: ((6,2,2)), m=10, a=[1, 5, 5, 7, 7, 8], S=[0, 4]. -/
def code_1537 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1538: ((6,2,2)), m=10, a=[1, 5, 5, 7, 7, 9], S=[0, 6]. -/
def code_1538 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1539: ((6,2,2)), m=10, a=[1, 5, 5, 7, 7, 9], S=[0, 8]. -/
def code_1539 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1540: ((6,2,2)), m=10, a=[1, 5, 5, 7, 9, 9], S=[0, 8]. -/
def code_1540 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1541: ((6,2,2)), m=10, a=[1, 5, 5, 8, 8, 8], S=[0, 6]. -/
def code_1541 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1542: ((6,2,2)), m=10, a=[1, 5, 5, 8, 8, 9], S=[0, 7]. -/
def code_1542 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1543: ((6,2,2)), m=10, a=[1, 5, 6, 6, 6, 7], S=[0, 8]. -/
def code_1543 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1544: ((6,2,2)), m=10, a=[1, 5, 6, 6, 7, 9], S=[0, 2]. -/
def code_1544 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1545: ((6,2,2)), m=10, a=[1, 5, 6, 6, 8, 8], S=[0, 3]. -/
def code_1545 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1546: ((6,2,2)), m=10, a=[1, 5, 6, 6, 8, 8], S=[0, 7]. -/
def code_1546 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1547: ((6,2,2)), m=10, a=[1, 5, 6, 6, 8, 9], S=[0, 3]. -/
def code_1547 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1548: ((6,2,2)), m=10, a=[1, 5, 6, 6, 8, 9], S=[0, 7]. -/
def code_1548 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1549: ((6,2,2)), m=10, a=[1, 5, 6, 6, 9, 9], S=[0, 3]. -/
def code_1549 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1550: ((6,2,2)), m=10, a=[1, 5, 6, 6, 9, 9], S=[0, 8]. -/
def code_1550 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1551: ((6,2,2)), m=10, a=[1, 5, 6, 7, 7, 7], S=[0, 2]. -/
def code_1551 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1552: ((6,2,2)), m=10, a=[1, 5, 6, 7, 7, 9], S=[0, 2]. -/
def code_1552 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1553: ((6,2,2)), m=10, a=[1, 5, 6, 7, 7, 9], S=[0, 8]. -/
def code_1553 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1554: ((6,2,2)), m=10, a=[1, 5, 6, 8, 8, 8], S=[0, 3]. -/
def code_1554 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1555: ((6,2,2)), m=10, a=[1, 5, 6, 8, 8, 8], S=[0, 7]. -/
def code_1555 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1556: ((6,2,2)), m=10, a=[1, 5, 6, 8, 8, 9], S=[0, 3]. -/
def code_1556 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1557: ((6,2,2)), m=10, a=[1, 5, 7, 7, 7, 8], S=[0, 4]. -/
def code_1557 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1558: ((6,2,2)), m=10, a=[1, 5, 7, 7, 7, 8], S=[0, 6]. -/
def code_1558 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1559: ((6,2,2)), m=10, a=[1, 5, 7, 7, 7, 9], S=[0, 2]. -/
def code_1559 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1560: ((6,2,2)), m=10, a=[1, 5, 7, 7, 7, 9], S=[0, 8]. -/
def code_1560 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1561: ((6,2,2)), m=10, a=[1, 5, 7, 7, 8, 9], S=[0, 6]. -/
def code_1561 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1562: ((6,2,2)), m=10, a=[1, 5, 7, 7, 9, 9], S=[0, 2]. -/
def code_1562 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1563: ((6,2,2)), m=10, a=[1, 5, 7, 7, 9, 9], S=[0, 4]. -/
def code_1563 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1564: ((6,2,2)), m=10, a=[1, 5, 7, 7, 9, 9], S=[0, 6]. -/
def code_1564 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1565: ((6,2,2)), m=10, a=[1, 5, 7, 8, 8, 9], S=[0, 4]. -/
def code_1565 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1566: ((6,2,2)), m=10, a=[1, 5, 7, 8, 9, 9], S=[0, 6]. -/
def code_1566 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1567: ((6,2,2)), m=10, a=[1, 5, 8, 8, 8, 9], S=[0, 3]. -/
def code_1567 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1568: ((6,2,2)), m=10, a=[1, 5, 8, 8, 8, 9], S=[0, 6]. -/
def code_1568 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1569: ((6,2,2)), m=10, a=[1, 5, 8, 8, 9, 9], S=[0, 6]. -/
def code_1569 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1570: ((6,2,2)), m=10, a=[1, 6, 6, 6, 7, 7], S=[0, 8]. -/
def code_1570 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1571: ((6,2,2)), m=10, a=[1, 6, 6, 6, 8, 9], S=[0, 7]. -/
def code_1571 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1572: ((6,2,2)), m=10, a=[1, 6, 6, 7, 7, 7], S=[0, 2]. -/
def code_1572 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1573: ((6,2,2)), m=10, a=[1, 6, 6, 8, 8, 9], S=[0, 3]. -/
def code_1573 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1574: ((6,2,2)), m=10, a=[1, 6, 6, 8, 9, 9], S=[0, 3]. -/
def code_1574 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1575: ((6,2,2)), m=10, a=[1, 6, 6, 9, 9, 9], S=[0, 3]. -/
def code_1575 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1576: ((6,2,2)), m=10, a=[1, 6, 8, 8, 8, 9], S=[0, 3]. -/
def code_1576 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1577: ((6,2,2)), m=10, a=[1, 7, 7, 7, 8, 9], S=[0, 4]. -/
def code_1577 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1578: ((6,2,2)), m=10, a=[1, 7, 7, 7, 9, 9], S=[0, 2]. -/
def code_1578 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1579: ((6,2,2)), m=10, a=[1, 7, 7, 8, 8, 9], S=[0, 4]. -/
def code_1579 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1580: ((6,2,2)), m=10, a=[2, 2, 2, 2, 3, 9], S=[0, 6]. -/
def code_1580 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1581: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 3], S=[0, 6]. -/
def code_1581 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1582: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 4], S=[0, 9]. -/
def code_1582 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1583: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 5], S=[0, 6]. -/
def code_1583 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ)]

/-- Catalogue code #1584: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 6], S=[0, 9]. -/
def code_1584 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1585: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 8], S=[0, 4]. -/
def code_1585 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1586: ((6,2,2)), m=10, a=[2, 2, 2, 3, 3, 8], S=[0, 6]. -/
def code_1586 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1587: ((6,2,2)), m=10, a=[2, 2, 2, 3, 4, 5], S=[0, 9]. -/
def code_1587 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1588: ((6,2,2)), m=10, a=[2, 2, 2, 3, 4, 7], S=[0, 1]. -/
def code_1588 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1589: ((6,2,2)), m=10, a=[2, 2, 2, 3, 4, 7], S=[0, 9]. -/
def code_1589 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1590: ((6,2,2)), m=10, a=[2, 2, 2, 3, 5, 6], S=[0, 1]. -/
def code_1590 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1591: ((6,2,2)), m=10, a=[2, 2, 2, 3, 5, 6], S=[0, 9]. -/
def code_1591 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1592: ((6,2,2)), m=10, a=[2, 2, 2, 3, 5, 8], S=[0, 6]. -/
def code_1592 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1593: ((6,2,2)), m=10, a=[2, 2, 2, 3, 6, 7], S=[0, 9]. -/
def code_1593 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((4 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1594: ((6,2,2)), m=10, a=[2, 2, 2, 3, 7, 7], S=[0, 4]. -/
def code_1594 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1595: ((6,2,2)), m=10, a=[2, 2, 2, 3, 7, 7], S=[0, 9]. -/
def code_1595 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1596: ((6,2,2)), m=10, a=[2, 2, 2, 4, 5, 5], S=[0, 1]. -/
def code_1596 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1597: ((6,2,2)), m=10, a=[2, 2, 2, 4, 5, 7], S=[0, 1]. -/
def code_1597 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1598: ((6,2,2)), m=10, a=[2, 2, 2, 4, 5, 9], S=[0, 3]. -/
def code_1598 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1599: ((6,2,2)), m=10, a=[2, 2, 2, 4, 5, 9], S=[0, 7]. -/
def code_1599 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1600: ((6,2,2)), m=10, a=[2, 2, 2, 4, 7, 7], S=[0, 1]. -/
def code_1600 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1601: ((6,2,2)), m=10, a=[2, 2, 2, 4, 9, 9], S=[0, 3]. -/
def code_1601 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1602: ((6,2,2)), m=10, a=[2, 2, 2, 5, 5, 6], S=[0, 1]. -/
def code_1602 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1603: ((6,2,2)), m=10, a=[2, 2, 2, 5, 6, 9], S=[0, 3]. -/
def code_1603 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1604: ((6,2,2)), m=10, a=[2, 2, 2, 5, 6, 9], S=[0, 7]. -/
def code_1604 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1605: ((6,2,2)), m=10, a=[2, 2, 2, 5, 8, 9], S=[0, 4]. -/
def code_1605 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1606: ((6,2,2)), m=10, a=[2, 2, 2, 5, 9, 9], S=[0, 3]. -/
def code_1606 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1607: ((6,2,2)), m=10, a=[2, 2, 2, 5, 9, 9], S=[0, 6]. -/
def code_1607 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1608: ((6,2,2)), m=10, a=[2, 2, 2, 6, 7, 7], S=[0, 9]. -/
def code_1608 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1609: ((6,2,2)), m=10, a=[2, 2, 2, 7, 7, 7], S=[0, 1]. -/
def code_1609 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((4 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1610: ((6,2,2)), m=10, a=[2, 2, 2, 7, 7, 7], S=[0, 6]. -/
def code_1610 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1611: ((6,2,2)), m=10, a=[2, 2, 2, 7, 7, 8], S=[0, 4]. -/
def code_1611 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1612: ((6,2,2)), m=10, a=[2, 2, 2, 7, 8, 9], S=[0, 4]. -/
def code_1612 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1613: ((6,2,2)), m=10, a=[2, 2, 2, 7, 8, 9], S=[0, 6]. -/
def code_1613 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1614: ((6,2,2)), m=10, a=[2, 2, 2, 8, 8, 9], S=[0, 6]. -/
def code_1614 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ)]

/-- Catalogue code #1615: ((6,2,2)), m=10, a=[2, 2, 2, 8, 9, 9], S=[0, 6]. -/
def code_1615 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1616: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 3], S=[0, 4]. -/
def code_1616 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1617: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 4], S=[0, 9]. -/
def code_1617 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1618: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 5], S=[0, 4]. -/
def code_1618 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1619: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 5], S=[0, 9]. -/
def code_1619 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1620: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 7], S=[0, 1]. -/
def code_1620 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1621: ((6,2,2)), m=10, a=[2, 2, 3, 3, 3, 9], S=[0, 6]. -/
def code_1621 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1622: ((6,2,2)), m=10, a=[2, 2, 3, 3, 4, 4], S=[0, 9]. -/
def code_1622 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1623: ((6,2,2)), m=10, a=[2, 2, 3, 3, 4, 6], S=[0, 1]. -/
def code_1623 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1624: ((6,2,2)), m=10, a=[2, 2, 3, 3, 4, 6], S=[0, 9]. -/
def code_1624 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1625: ((6,2,2)), m=10, a=[2, 2, 3, 3, 4, 8], S=[0, 1]. -/
def code_1625 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1626: ((6,2,2)), m=10, a=[2, 2, 3, 3, 5, 7], S=[0, 1]. -/
def code_1626 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1627: ((6,2,2)), m=10, a=[2, 2, 3, 3, 5, 7], S=[0, 6]. -/
def code_1627 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1628: ((6,2,2)), m=10, a=[2, 2, 3, 3, 5, 8], S=[0, 4]. -/
def code_1628 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1629: ((6,2,2)), m=10, a=[2, 2, 3, 3, 6, 6], S=[0, 1]. -/
def code_1629 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1630: ((6,2,2)), m=10, a=[2, 2, 3, 3, 6, 7], S=[0, 1]. -/
def code_1630 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1631: ((6,2,2)), m=10, a=[2, 2, 3, 3, 6, 8], S=[0, 1]. -/
def code_1631 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1632: ((6,2,2)), m=10, a=[2, 2, 3, 3, 7, 8], S=[0, 1]. -/
def code_1632 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1633: ((6,2,2)), m=10, a=[2, 2, 3, 3, 7, 8], S=[0, 4]. -/
def code_1633 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1634: ((6,2,2)), m=10, a=[2, 2, 3, 3, 7, 9], S=[0, 4]. -/
def code_1634 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1635: ((6,2,2)), m=10, a=[2, 2, 3, 3, 8, 9], S=[0, 4]. -/
def code_1635 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1636: ((6,2,2)), m=10, a=[2, 2, 3, 3, 9, 9], S=[0, 4]. -/
def code_1636 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1637: ((6,2,2)), m=10, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_1637 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1638: ((6,2,2)), m=10, a=[2, 2, 3, 4, 4, 5], S=[0, 9]. -/
def code_1638 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1639: ((6,2,2)), m=10, a=[2, 2, 3, 4, 4, 7], S=[0, 1]. -/
def code_1639 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1640: ((6,2,2)), m=10, a=[2, 2, 3, 4, 5, 6], S=[0, 1]. -/
def code_1640 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1641: ((6,2,2)), m=10, a=[2, 2, 3, 4, 5, 6], S=[0, 9]. -/
def code_1641 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5)]

/-- Catalogue code #1642: ((6,2,2)), m=10, a=[2, 2, 3, 4, 5, 7], S=[0, 9]. -/
def code_1642 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1643: ((6,2,2)), m=10, a=[2, 2, 3, 4, 6, 7], S=[0, 9]. -/
def code_1643 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1644: ((6,2,2)), m=10, a=[2, 2, 3, 5, 6, 6], S=[0, 1]. -/
def code_1644 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1645: ((6,2,2)), m=10, a=[2, 2, 3, 5, 6, 6], S=[0, 9]. -/
def code_1645 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1646: ((6,2,2)), m=10, a=[2, 2, 3, 5, 6, 7], S=[0, 1]. -/
def code_1646 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1647: ((6,2,2)), m=10, a=[2, 2, 3, 5, 6, 7], S=[0, 9]. -/
def code_1647 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1648: ((6,2,2)), m=10, a=[2, 2, 3, 5, 8, 8], S=[0, 4]. -/
def code_1648 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1649: ((6,2,2)), m=10, a=[2, 2, 3, 5, 9, 9], S=[0, 4]. -/
def code_1649 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1650: ((6,2,2)), m=10, a=[2, 2, 3, 5, 9, 9], S=[0, 6]. -/
def code_1650 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1651: ((6,2,2)), m=10, a=[2, 2, 3, 6, 6, 7], S=[0, 1]. -/
def code_1651 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1652: ((6,2,2)), m=10, a=[2, 2, 3, 6, 7, 7], S=[0, 9]. -/
def code_1652 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1653: ((6,2,2)), m=10, a=[2, 2, 3, 6, 7, 8], S=[0, 1]. -/
def code_1653 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1654: ((6,2,2)), m=10, a=[2, 2, 3, 7, 7, 9], S=[0, 4]. -/
def code_1654 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1655: ((6,2,2)), m=10, a=[2, 2, 3, 7, 8, 9], S=[0, 4]. -/
def code_1655 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1656: ((6,2,2)), m=10, a=[2, 2, 3, 7, 8, 9], S=[0, 6]. -/
def code_1656 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (-1 : ℚ)]

/-- Catalogue code #1657: ((6,2,2)), m=10, a=[2, 2, 3, 8, 8, 9], S=[0, 6]. -/
def code_1657 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1658: ((6,2,2)), m=10, a=[2, 2, 4, 4, 5, 5], S=[0, 9]. -/
def code_1658 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1659: ((6,2,2)), m=10, a=[2, 2, 4, 4, 5, 7], S=[0, 1]. -/
def code_1659 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1660: ((6,2,2)), m=10, a=[2, 2, 4, 4, 5, 7], S=[0, 9]. -/
def code_1660 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1661: ((6,2,2)), m=10, a=[2, 2, 4, 4, 5, 9], S=[0, 3]. -/
def code_1661 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1662: ((6,2,2)), m=10, a=[2, 2, 4, 4, 5, 9], S=[0, 7]. -/
def code_1662 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1663: ((6,2,2)), m=10, a=[2, 2, 4, 4, 7, 7], S=[0, 1]. -/
def code_1663 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1664: ((6,2,2)), m=10, a=[2, 2, 4, 4, 9, 9], S=[0, 3]. -/
def code_1664 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1665: ((6,2,2)), m=10, a=[2, 2, 4, 4, 9, 9], S=[0, 7]. -/
def code_1665 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1666: ((6,2,2)), m=10, a=[2, 2, 4, 5, 5, 6], S=[0, 1]. -/
def code_1666 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1667: ((6,2,2)), m=10, a=[2, 2, 4, 5, 5, 6], S=[0, 3]. -/
def code_1667 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1668: ((6,2,2)), m=10, a=[2, 2, 4, 5, 5, 7], S=[0, 1]. -/
def code_1668 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1669: ((6,2,2)), m=10, a=[2, 2, 4, 5, 5, 7], S=[0, 9]. -/
def code_1669 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1670: ((6,2,2)), m=10, a=[2, 2, 4, 5, 5, 9], S=[0, 3]. -/
def code_1670 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1671: ((6,2,2)), m=10, a=[2, 2, 4, 5, 6, 7], S=[0, 1]. -/
def code_1671 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1672: ((6,2,2)), m=10, a=[2, 2, 4, 5, 6, 7], S=[0, 9]. -/
def code_1672 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1673: ((6,2,2)), m=10, a=[2, 2, 4, 5, 6, 9], S=[0, 3]. -/
def code_1673 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1674: ((6,2,2)), m=10, a=[2, 2, 4, 5, 6, 9], S=[0, 7]. -/
def code_1674 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1675: ((6,2,2)), m=10, a=[2, 2, 4, 5, 7, 7], S=[0, 1]. -/
def code_1675 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1676: ((6,2,2)), m=10, a=[2, 2, 4, 5, 7, 8], S=[0, 9]. -/
def code_1676 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1677: ((6,2,2)), m=10, a=[2, 2, 4, 5, 8, 9], S=[0, 3]. -/
def code_1677 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1678: ((6,2,2)), m=10, a=[2, 2, 4, 5, 8, 9], S=[0, 7]. -/
def code_1678 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1679: ((6,2,2)), m=10, a=[2, 2, 4, 5, 9, 9], S=[0, 3]. -/
def code_1679 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1680: ((6,2,2)), m=10, a=[2, 2, 4, 5, 9, 9], S=[0, 7]. -/
def code_1680 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1681: ((6,2,2)), m=10, a=[2, 2, 4, 6, 7, 7], S=[0, 9]. -/
def code_1681 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1682: ((6,2,2)), m=10, a=[2, 2, 4, 6, 9, 9], S=[0, 7]. -/
def code_1682 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1683: ((6,2,2)), m=10, a=[2, 2, 4, 7, 7, 7], S=[0, 1]. -/
def code_1683 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1684: ((6,2,2)), m=10, a=[2, 2, 4, 8, 9, 9], S=[0, 7]. -/
def code_1684 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1685: ((6,2,2)), m=10, a=[2, 2, 5, 5, 6, 6], S=[0, 7]. -/
def code_1685 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1686: ((6,2,2)), m=10, a=[2, 2, 5, 5, 6, 6], S=[0, 9]. -/
def code_1686 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1687: ((6,2,2)), m=10, a=[2, 2, 5, 5, 6, 7], S=[0, 1]. -/
def code_1687 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1688: ((6,2,2)), m=10, a=[2, 2, 5, 5, 6, 8], S=[0, 9]. -/
def code_1688 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1689: ((6,2,2)), m=10, a=[2, 2, 5, 5, 6, 9], S=[0, 3]. -/
def code_1689 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1690: ((6,2,2)), m=10, a=[2, 2, 5, 5, 7, 9], S=[0, 6]. -/
def code_1690 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1691: ((6,2,2)), m=10, a=[2, 2, 5, 5, 9, 9], S=[0, 3]. -/
def code_1691 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1692: ((6,2,2)), m=10, a=[2, 2, 5, 5, 9, 9], S=[0, 4]. -/
def code_1692 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1693: ((6,2,2)), m=10, a=[2, 2, 5, 6, 6, 7], S=[0, 1]. -/
def code_1693 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1694: ((6,2,2)), m=10, a=[2, 2, 5, 6, 6, 7], S=[0, 9]. -/
def code_1694 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1695: ((6,2,2)), m=10, a=[2, 2, 5, 6, 6, 9], S=[0, 3]. -/
def code_1695 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1696: ((6,2,2)), m=10, a=[2, 2, 5, 6, 7, 8], S=[0, 1]. -/
def code_1696 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1697: ((6,2,2)), m=10, a=[2, 2, 5, 6, 7, 8], S=[0, 9]. -/
def code_1697 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1698: ((6,2,2)), m=10, a=[2, 2, 5, 6, 8, 9], S=[0, 3]. -/
def code_1698 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1699: ((6,2,2)), m=10, a=[2, 2, 5, 6, 9, 9], S=[0, 7]. -/
def code_1699 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1700: ((6,2,2)), m=10, a=[2, 2, 5, 7, 7, 7], S=[0, 1]. -/
def code_1700 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1701: ((6,2,2)), m=10, a=[2, 2, 5, 7, 7, 7], S=[0, 4]. -/
def code_1701 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1702: ((6,2,2)), m=10, a=[2, 2, 5, 7, 7, 7], S=[0, 9]. -/
def code_1702 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1703: ((6,2,2)), m=10, a=[2, 2, 5, 7, 7, 9], S=[0, 6]. -/
def code_1703 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1704: ((6,2,2)), m=10, a=[2, 2, 5, 7, 8, 8], S=[0, 6]. -/
def code_1704 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1705: ((6,2,2)), m=10, a=[2, 2, 6, 6, 7, 7], S=[0, 1]. -/
def code_1705 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1706: ((6,2,2)), m=10, a=[2, 2, 6, 6, 7, 7], S=[0, 9]. -/
def code_1706 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1707: ((6,2,2)), m=10, a=[2, 2, 6, 6, 9, 9], S=[0, 7]. -/
def code_1707 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1708: ((6,2,2)), m=10, a=[2, 2, 6, 7, 7, 8], S=[0, 1]. -/
def code_1708 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1709: ((6,2,2)), m=10, a=[2, 2, 7, 7, 7, 7], S=[0, 1]. -/
def code_1709 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1710: ((6,2,2)), m=10, a=[2, 2, 7, 9, 9, 9], S=[0, 4]. -/
def code_1710 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1711: ((6,2,2)), m=10, a=[2, 3, 3, 3, 3, 8], S=[0, 1]. -/
def code_1711 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1712: ((6,2,2)), m=10, a=[2, 3, 3, 3, 4, 5], S=[0, 1]. -/
def code_1712 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1713: ((6,2,2)), m=10, a=[2, 3, 3, 3, 4, 5], S=[0, 9]. -/
def code_1713 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1714: ((6,2,2)), m=10, a=[2, 3, 3, 3, 5, 6], S=[0, 1]. -/
def code_1714 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1715: ((6,2,2)), m=10, a=[2, 3, 3, 3, 5, 9], S=[0, 4]. -/
def code_1715 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1716: ((6,2,2)), m=10, a=[2, 3, 3, 3, 5, 9], S=[0, 6]. -/
def code_1716 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1717: ((6,2,2)), m=10, a=[2, 3, 3, 3, 8, 9], S=[0, 4]. -/
def code_1717 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1718: ((6,2,2)), m=10, a=[2, 3, 3, 3, 9, 9], S=[0, 4]. -/
def code_1718 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1719: ((6,2,2)), m=10, a=[2, 3, 3, 4, 4, 5], S=[0, 9]. -/
def code_1719 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1720: ((6,2,2)), m=10, a=[2, 3, 3, 4, 4, 6], S=[0, 1]. -/
def code_1720 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1721: ((6,2,2)), m=10, a=[2, 3, 3, 4, 4, 8], S=[0, 9]. -/
def code_1721 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1722: ((6,2,2)), m=10, a=[2, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_1722 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1723: ((6,2,2)), m=10, a=[2, 3, 3, 4, 5, 6], S=[0, 1]. -/
def code_1723 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1724: ((6,2,2)), m=10, a=[2, 3, 3, 4, 5, 6], S=[0, 9]. -/
def code_1724 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1725: ((6,2,2)), m=10, a=[2, 3, 3, 4, 5, 8], S=[0, 1]. -/
def code_1725 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1726: ((6,2,2)), m=10, a=[2, 3, 3, 4, 5, 8], S=[0, 9]. -/
def code_1726 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1727: ((6,2,2)), m=10, a=[2, 3, 3, 4, 6, 6], S=[0, 9]. -/
def code_1727 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1728: ((6,2,2)), m=10, a=[2, 3, 3, 4, 6, 8], S=[0, 1]. -/
def code_1728 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1729: ((6,2,2)), m=10, a=[2, 3, 3, 4, 8, 8], S=[0, 9]. -/
def code_1729 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1730: ((6,2,2)), m=10, a=[2, 3, 3, 5, 5, 9], S=[0, 6]. -/
def code_1730 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1731: ((6,2,2)), m=10, a=[2, 3, 3, 5, 6, 6], S=[0, 1]. -/
def code_1731 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1732: ((6,2,2)), m=10, a=[2, 3, 3, 5, 6, 6], S=[0, 9]. -/
def code_1732 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1733: ((6,2,2)), m=10, a=[2, 3, 3, 5, 6, 8], S=[0, 1]. -/
def code_1733 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1734: ((6,2,2)), m=10, a=[2, 3, 3, 5, 7, 8], S=[0, 4]. -/
def code_1734 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1735: ((6,2,2)), m=10, a=[2, 3, 3, 5, 7, 8], S=[0, 9]. -/
def code_1735 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1736: ((6,2,2)), m=10, a=[2, 3, 3, 5, 9, 9], S=[0, 4]. -/
def code_1736 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1737: ((6,2,2)), m=10, a=[2, 3, 3, 5, 9, 9], S=[0, 6]. -/
def code_1737 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1738: ((6,2,2)), m=10, a=[2, 3, 3, 6, 6, 6], S=[0, 1]. -/
def code_1738 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1739: ((6,2,2)), m=10, a=[2, 3, 3, 6, 6, 8], S=[0, 9]. -/
def code_1739 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1740: ((6,2,2)), m=10, a=[2, 3, 3, 6, 7, 8], S=[0, 1]. -/
def code_1740 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1741: ((6,2,2)), m=10, a=[2, 3, 3, 7, 8, 9], S=[0, 4]. -/
def code_1741 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1742: ((6,2,2)), m=10, a=[2, 3, 4, 4, 4, 5], S=[0, 1]. -/
def code_1742 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1743: ((6,2,2)), m=10, a=[2, 3, 4, 4, 4, 5], S=[0, 9]. -/
def code_1743 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1744: ((6,2,2)), m=10, a=[2, 3, 4, 4, 4, 7], S=[0, 9]. -/
def code_1744 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1745: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 5], S=[0, 1]. -/
def code_1745 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1746: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 6], S=[0, 1]. -/
def code_1746 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1747: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 7], S=[0, 1]. -/
def code_1747 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1748: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 7], S=[0, 9]. -/
def code_1748 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1749: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 8], S=[0, 1]. -/
def code_1749 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((4 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1750: ((6,2,2)), m=10, a=[2, 3, 4, 4, 5, 8], S=[0, 9]. -/
def code_1750 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1751: ((6,2,2)), m=10, a=[2, 3, 4, 4, 6, 7], S=[0, 1]. -/
def code_1751 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1752: ((6,2,2)), m=10, a=[2, 3, 4, 4, 7, 8], S=[0, 9]. -/
def code_1752 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1753: ((6,2,2)), m=10, a=[2, 3, 4, 5, 5, 8], S=[0, 1]. -/
def code_1753 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1754: ((6,2,2)), m=10, a=[2, 3, 4, 5, 6, 6], S=[0, 9]. -/
def code_1754 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1755: ((6,2,2)), m=10, a=[2, 3, 4, 5, 6, 7], S=[0, 1]. -/
def code_1755 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1756: ((6,2,2)), m=10, a=[2, 3, 4, 5, 6, 7], S=[0, 9]. -/
def code_1756 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1757: ((6,2,2)), m=10, a=[2, 3, 4, 5, 6, 8], S=[0, 1]. -/
def code_1757 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1758: ((6,2,2)), m=10, a=[2, 3, 4, 5, 6, 8], S=[0, 9]. -/
def code_1758 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1759: ((6,2,2)), m=10, a=[2, 3, 4, 5, 7, 7], S=[0, 9]. -/
def code_1759 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1760: ((6,2,2)), m=10, a=[2, 3, 4, 5, 8, 8], S=[0, 1]. -/
def code_1760 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1761: ((6,2,2)), m=10, a=[2, 3, 4, 5, 8, 8], S=[0, 9]. -/
def code_1761 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1762: ((6,2,2)), m=10, a=[2, 3, 4, 6, 7, 8], S=[0, 1]. -/
def code_1762 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1763: ((6,2,2)), m=10, a=[2, 3, 4, 6, 7, 8], S=[0, 9]. -/
def code_1763 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1764: ((6,2,2)), m=10, a=[2, 3, 4, 7, 7, 8], S=[0, 9]. -/
def code_1764 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1765: ((6,2,2)), m=10, a=[2, 3, 5, 5, 6, 6], S=[0, 9]. -/
def code_1765 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1766: ((6,2,2)), m=10, a=[2, 3, 5, 5, 6, 7], S=[0, 9]. -/
def code_1766 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1767: ((6,2,2)), m=10, a=[2, 3, 5, 5, 9, 9], S=[0, 6]. -/
def code_1767 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1768: ((6,2,2)), m=10, a=[2, 3, 5, 6, 6, 6], S=[0, 1]. -/
def code_1768 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1769: ((6,2,2)), m=10, a=[2, 3, 5, 6, 6, 6], S=[0, 9]. -/
def code_1769 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1770: ((6,2,2)), m=10, a=[2, 3, 5, 6, 6, 7], S=[0, 1]. -/
def code_1770 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1771: ((6,2,2)), m=10, a=[2, 3, 5, 6, 6, 8], S=[0, 1]. -/
def code_1771 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1772: ((6,2,2)), m=10, a=[2, 3, 5, 6, 6, 8], S=[0, 9]. -/
def code_1772 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1773: ((6,2,2)), m=10, a=[2, 3, 5, 6, 7, 7], S=[0, 1]. -/
def code_1773 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1774: ((6,2,2)), m=10, a=[2, 3, 5, 6, 7, 7], S=[0, 9]. -/
def code_1774 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1775: ((6,2,2)), m=10, a=[2, 3, 5, 6, 8, 8], S=[0, 1]. -/
def code_1775 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1776: ((6,2,2)), m=10, a=[2, 3, 5, 7, 7, 8], S=[0, 1]. -/
def code_1776 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1777: ((6,2,2)), m=10, a=[2, 3, 5, 7, 7, 8], S=[0, 6]. -/
def code_1777 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1778: ((6,2,2)), m=10, a=[2, 3, 5, 7, 9, 9], S=[0, 4]. -/
def code_1778 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1779: ((6,2,2)), m=10, a=[2, 3, 5, 7, 9, 9], S=[0, 6]. -/
def code_1779 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1780: ((6,2,2)), m=10, a=[2, 3, 5, 9, 9, 9], S=[0, 4]. -/
def code_1780 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1781: ((6,2,2)), m=10, a=[2, 3, 6, 6, 6, 7], S=[0, 1]. -/
def code_1781 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1782: ((6,2,2)), m=10, a=[2, 3, 6, 6, 6, 7], S=[0, 9]. -/
def code_1782 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1783: ((6,2,2)), m=10, a=[2, 3, 6, 6, 7, 8], S=[0, 1]. -/
def code_1783 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1784: ((6,2,2)), m=10, a=[2, 3, 7, 7, 8, 8], S=[0, 6]. -/
def code_1784 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1785: ((6,2,2)), m=10, a=[2, 3, 7, 7, 8, 8], S=[0, 9]. -/
def code_1785 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1786: ((6,2,2)), m=10, a=[2, 3, 7, 9, 9, 9], S=[0, 4]. -/
def code_1786 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1787: ((6,2,2)), m=10, a=[2, 4, 4, 4, 5, 5], S=[0, 7]. -/
def code_1787 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1788: ((6,2,2)), m=10, a=[2, 4, 4, 4, 5, 7], S=[0, 9]. -/
def code_1788 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1789: ((6,2,2)), m=10, a=[2, 4, 4, 4, 7, 7], S=[0, 9]. -/
def code_1789 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1790: ((6,2,2)), m=10, a=[2, 4, 4, 4, 9, 9], S=[0, 3]. -/
def code_1790 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1791: ((6,2,2)), m=10, a=[2, 4, 4, 5, 5, 6], S=[0, 3]. -/
def code_1791 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1792: ((6,2,2)), m=10, a=[2, 4, 4, 5, 5, 7], S=[0, 9]. -/
def code_1792 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1793: ((6,2,2)), m=10, a=[2, 4, 4, 5, 5, 8], S=[0, 7]. -/
def code_1793 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1794: ((6,2,2)), m=10, a=[2, 4, 4, 5, 5, 9], S=[0, 7]. -/
def code_1794 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1795: ((6,2,2)), m=10, a=[2, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_1795 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1796: ((6,2,2)), m=10, a=[2, 4, 4, 5, 6, 7], S=[0, 9]. -/
def code_1796 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1797: ((6,2,2)), m=10, a=[2, 4, 4, 5, 6, 9], S=[0, 3]. -/
def code_1797 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1798: ((6,2,2)), m=10, a=[2, 4, 4, 5, 6, 9], S=[0, 7]. -/
def code_1798 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1799: ((6,2,2)), m=10, a=[2, 4, 4, 5, 7, 7], S=[0, 1]. -/
def code_1799 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1800: ((6,2,2)), m=10, a=[2, 4, 4, 5, 7, 8], S=[0, 1]. -/
def code_1800 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1801: ((6,2,2)), m=10, a=[2, 4, 4, 5, 7, 8], S=[0, 9]. -/
def code_1801 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1802: ((6,2,2)), m=10, a=[2, 4, 4, 5, 8, 9], S=[0, 3]. -/
def code_1802 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1803: ((6,2,2)), m=10, a=[2, 4, 4, 5, 8, 9], S=[0, 7]. -/
def code_1803 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1804: ((6,2,2)), m=10, a=[2, 4, 4, 7, 7, 8], S=[0, 1]. -/
def code_1804 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1805: ((6,2,2)), m=10, a=[2, 4, 4, 8, 9, 9], S=[0, 3]. -/
def code_1805 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1806: ((6,2,2)), m=10, a=[2, 4, 5, 5, 6, 7], S=[0, 1]. -/
def code_1806 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1807: ((6,2,2)), m=10, a=[2, 4, 5, 5, 7, 7], S=[0, 1]. -/
def code_1807 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1808: ((6,2,2)), m=10, a=[2, 4, 5, 5, 7, 7], S=[0, 9]. -/
def code_1808 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1809: ((6,2,2)), m=10, a=[2, 4, 5, 5, 8, 8], S=[0, 1]. -/
def code_1809 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1810: ((6,2,2)), m=10, a=[2, 4, 5, 5, 8, 9], S=[0, 7]. -/
def code_1810 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1811: ((6,2,2)), m=10, a=[2, 4, 5, 5, 9, 9], S=[0, 7]. -/
def code_1811 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1812: ((6,2,2)), m=10, a=[2, 4, 5, 6, 6, 7], S=[0, 1]. -/
def code_1812 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1813: ((6,2,2)), m=10, a=[2, 4, 5, 6, 6, 7], S=[0, 9]. -/
def code_1813 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1814: ((6,2,2)), m=10, a=[2, 4, 5, 6, 7, 7], S=[0, 9]. -/
def code_1814 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1815: ((6,2,2)), m=10, a=[2, 4, 5, 6, 7, 8], S=[0, 1]. -/
def code_1815 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1816: ((6,2,2)), m=10, a=[2, 4, 5, 6, 7, 8], S=[0, 9]. -/
def code_1816 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1817: ((6,2,2)), m=10, a=[2, 4, 5, 6, 8, 9], S=[0, 3]. -/
def code_1817 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1818: ((6,2,2)), m=10, a=[2, 4, 5, 6, 8, 9], S=[0, 7]. -/
def code_1818 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1819: ((6,2,2)), m=10, a=[2, 4, 5, 6, 9, 9], S=[0, 3]. -/
def code_1819 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1820: ((6,2,2)), m=10, a=[2, 4, 5, 6, 9, 9], S=[0, 7]. -/
def code_1820 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1821: ((6,2,2)), m=10, a=[2, 4, 5, 7, 7, 7], S=[0, 1]. -/
def code_1821 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1822: ((6,2,2)), m=10, a=[2, 4, 5, 7, 7, 8], S=[0, 9]. -/
def code_1822 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1823: ((6,2,2)), m=10, a=[2, 4, 5, 8, 8, 9], S=[0, 3]. -/
def code_1823 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1824: ((6,2,2)), m=10, a=[2, 4, 5, 8, 8, 9], S=[0, 7]. -/
def code_1824 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1825: ((6,2,2)), m=10, a=[2, 4, 5, 8, 9, 9], S=[0, 3]. -/
def code_1825 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1826: ((6,2,2)), m=10, a=[2, 4, 6, 6, 9, 9], S=[0, 3]. -/
def code_1826 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1827: ((6,2,2)), m=10, a=[2, 4, 6, 7, 7, 8], S=[0, 9]. -/
def code_1827 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1828: ((6,2,2)), m=10, a=[2, 4, 6, 8, 9, 9], S=[0, 3]. -/
def code_1828 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((4 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1829: ((6,2,2)), m=10, a=[2, 4, 7, 7, 8, 8], S=[0, 9]. -/
def code_1829 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1830: ((6,2,2)), m=10, a=[2, 5, 5, 6, 6, 6], S=[0, 3]. -/
def code_1830 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1831: ((6,2,2)), m=10, a=[2, 5, 5, 6, 6, 6], S=[0, 7]. -/
def code_1831 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1832: ((6,2,2)), m=10, a=[2, 5, 5, 6, 6, 7], S=[0, 9]. -/
def code_1832 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1833: ((6,2,2)), m=10, a=[2, 5, 5, 6, 6, 8], S=[0, 3]. -/
def code_1833 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1834: ((6,2,2)), m=10, a=[2, 5, 5, 6, 7, 7], S=[0, 1]. -/
def code_1834 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1835: ((6,2,2)), m=10, a=[2, 5, 5, 6, 7, 8], S=[0, 9]. -/
def code_1835 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1836: ((6,2,2)), m=10, a=[2, 5, 5, 6, 9, 9], S=[0, 3]. -/
def code_1836 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1837: ((6,2,2)), m=10, a=[2, 5, 5, 7, 9, 9], S=[0, 4]. -/
def code_1837 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1838: ((6,2,2)), m=10, a=[2, 5, 5, 8, 9, 9], S=[0, 7]. -/
def code_1838 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1839: ((6,2,2)), m=10, a=[2, 5, 5, 9, 9, 9], S=[0, 7]. -/
def code_1839 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1840: ((6,2,2)), m=10, a=[2, 5, 6, 6, 6, 7], S=[0, 1]. -/
def code_1840 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1841: ((6,2,2)), m=10, a=[2, 5, 6, 6, 6, 7], S=[0, 9]. -/
def code_1841 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1842: ((6,2,2)), m=10, a=[2, 5, 6, 6, 6, 9], S=[0, 7]. -/
def code_1842 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1843: ((6,2,2)), m=10, a=[2, 5, 6, 6, 7, 7], S=[0, 1]. -/
def code_1843 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1844: ((6,2,2)), m=10, a=[2, 5, 6, 6, 7, 7], S=[0, 9]. -/
def code_1844 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1845: ((6,2,2)), m=10, a=[2, 5, 6, 6, 7, 8], S=[0, 1]. -/
def code_1845 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1846: ((6,2,2)), m=10, a=[2, 5, 6, 6, 7, 8], S=[0, 9]. -/
def code_1846 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1847: ((6,2,2)), m=10, a=[2, 5, 6, 6, 8, 9], S=[0, 3]. -/
def code_1847 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1848: ((6,2,2)), m=10, a=[2, 5, 6, 6, 8, 9], S=[0, 7]. -/
def code_1848 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1849: ((6,2,2)), m=10, a=[2, 5, 6, 7, 7, 8], S=[0, 1]. -/
def code_1849 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1850: ((6,2,2)), m=10, a=[2, 5, 6, 7, 7, 8], S=[0, 9]. -/
def code_1850 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1851: ((6,2,2)), m=10, a=[2, 5, 6, 8, 8, 9], S=[0, 7]. -/
def code_1851 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1852: ((6,2,2)), m=10, a=[2, 5, 6, 8, 9, 9], S=[0, 3]. -/
def code_1852 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1853: ((6,2,2)), m=10, a=[2, 5, 6, 8, 9, 9], S=[0, 7]. -/
def code_1853 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1854: ((6,2,2)), m=10, a=[2, 5, 6, 9, 9, 9], S=[0, 3]. -/
def code_1854 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1855: ((6,2,2)), m=10, a=[2, 5, 6, 9, 9, 9], S=[0, 7]. -/
def code_1855 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1856: ((6,2,2)), m=10, a=[2, 5, 7, 7, 7, 9], S=[0, 6]. -/
def code_1856 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1857: ((6,2,2)), m=10, a=[2, 5, 7, 7, 9, 9], S=[0, 4]. -/
def code_1857 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1858: ((6,2,2)), m=10, a=[2, 5, 7, 7, 9, 9], S=[0, 6]. -/
def code_1858 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1859: ((6,2,2)), m=10, a=[2, 5, 7, 8, 9, 9], S=[0, 4]. -/
def code_1859 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1860: ((6,2,2)), m=10, a=[2, 5, 7, 8, 9, 9], S=[0, 6]. -/
def code_1860 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1861: ((6,2,2)), m=10, a=[2, 5, 7, 9, 9, 9], S=[0, 4]. -/
def code_1861 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1862: ((6,2,2)), m=10, a=[2, 5, 8, 8, 9, 9], S=[0, 7]. -/
def code_1862 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1863: ((6,2,2)), m=10, a=[2, 5, 8, 9, 9, 9], S=[0, 6]. -/
def code_1863 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1864: ((6,2,2)), m=10, a=[2, 5, 8, 9, 9, 9], S=[0, 7]. -/
def code_1864 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1865: ((6,2,2)), m=10, a=[2, 6, 6, 6, 7, 7], S=[0, 9]. -/
def code_1865 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1866: ((6,2,2)), m=10, a=[2, 6, 6, 6, 9, 9], S=[0, 7]. -/
def code_1866 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1867: ((6,2,2)), m=10, a=[2, 6, 6, 7, 7, 8], S=[0, 1]. -/
def code_1867 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5)]

/-- Catalogue code #1868: ((6,2,2)), m=10, a=[2, 6, 6, 8, 9, 9], S=[0, 3]. -/
def code_1868 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1869: ((6,2,2)), m=10, a=[2, 6, 6, 8, 9, 9], S=[0, 7]. -/
def code_1869 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1870: ((6,2,2)), m=10, a=[2, 6, 6, 9, 9, 9], S=[0, 7]. -/
def code_1870 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1871: ((6,2,2)), m=10, a=[2, 6, 7, 7, 8, 8], S=[0, 9]. -/
def code_1871 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1872: ((6,2,2)), m=10, a=[2, 6, 8, 8, 9, 9], S=[0, 7]. -/
def code_1872 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1873: ((6,2,2)), m=10, a=[2, 7, 7, 7, 7, 8], S=[0, 9]. -/
def code_1873 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1874: ((6,2,2)), m=10, a=[2, 7, 7, 7, 9, 9], S=[0, 6]. -/
def code_1874 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1875: ((6,2,2)), m=10, a=[2, 7, 7, 8, 9, 9], S=[0, 6]. -/
def code_1875 : ExampleData 6 10 2 where
  a := ![(2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1876: ((6,2,2)), m=10, a=[3, 3, 3, 4, 4, 9], S=[0, 8]. -/
def code_1876 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1877: ((6,2,2)), m=10, a=[3, 3, 3, 4, 5, 5], S=[0, 9]. -/
def code_1877 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1878: ((6,2,2)), m=10, a=[3, 3, 3, 4, 5, 6], S=[0, 9]. -/
def code_1878 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1879: ((6,2,2)), m=10, a=[3, 3, 3, 4, 5, 9], S=[0, 8]. -/
def code_1879 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1880: ((6,2,2)), m=10, a=[3, 3, 3, 5, 5, 6], S=[0, 9]. -/
def code_1880 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1881: ((6,2,2)), m=10, a=[3, 3, 3, 5, 6, 6], S=[0, 1]. -/
def code_1881 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1882: ((6,2,2)), m=10, a=[3, 3, 3, 5, 6, 6], S=[0, 8]. -/
def code_1882 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1883: ((6,2,2)), m=10, a=[3, 3, 3, 5, 6, 8], S=[0, 9]. -/
def code_1883 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1884: ((6,2,2)), m=10, a=[3, 3, 3, 5, 6, 9], S=[0, 8]. -/
def code_1884 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1885: ((6,2,2)), m=10, a=[3, 3, 3, 5, 9, 9], S=[0, 8]. -/
def code_1885 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1886: ((6,2,2)), m=10, a=[3, 3, 4, 4, 4, 5], S=[0, 1]. -/
def code_1886 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1887: ((6,2,2)), m=10, a=[3, 3, 4, 4, 4, 8], S=[0, 1]. -/
def code_1887 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1888: ((6,2,2)), m=10, a=[3, 3, 4, 4, 5, 5], S=[0, 1]. -/
def code_1888 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1889: ((6,2,2)), m=10, a=[3, 3, 4, 4, 5, 5], S=[0, 8]. -/
def code_1889 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1890: ((6,2,2)), m=10, a=[3, 3, 4, 4, 5, 7], S=[0, 1]. -/
def code_1890 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1891: ((6,2,2)), m=10, a=[3, 3, 4, 4, 5, 8], S=[0, 1]. -/
def code_1891 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1892: ((6,2,2)), m=10, a=[3, 3, 4, 4, 5, 8], S=[0, 9]. -/
def code_1892 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1893: ((6,2,2)), m=10, a=[3, 3, 4, 4, 6, 8], S=[0, 9]. -/
def code_1893 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1894: ((6,2,2)), m=10, a=[3, 3, 4, 4, 8, 8], S=[0, 1]. -/
def code_1894 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1895: ((6,2,2)), m=10, a=[3, 3, 4, 4, 8, 8], S=[0, 9]. -/
def code_1895 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1896: ((6,2,2)), m=10, a=[3, 3, 4, 5, 5, 6], S=[0, 9]. -/
def code_1896 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1897: ((6,2,2)), m=10, a=[3, 3, 4, 5, 5, 7], S=[0, 1]. -/
def code_1897 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1898: ((6,2,2)), m=10, a=[3, 3, 4, 5, 5, 9], S=[0, 8]. -/
def code_1898 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1899: ((6,2,2)), m=10, a=[3, 3, 4, 5, 6, 6], S=[0, 9]. -/
def code_1899 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1900: ((6,2,2)), m=10, a=[3, 3, 4, 5, 6, 8], S=[0, 1]. -/
def code_1900 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1901: ((6,2,2)), m=10, a=[3, 3, 4, 5, 6, 9], S=[0, 2]. -/
def code_1901 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1902: ((6,2,2)), m=10, a=[3, 3, 4, 5, 6, 9], S=[0, 8]. -/
def code_1902 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1903: ((6,2,2)), m=10, a=[3, 3, 4, 5, 7, 8], S=[0, 1]. -/
def code_1903 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1904: ((6,2,2)), m=10, a=[3, 3, 4, 5, 7, 8], S=[0, 9]. -/
def code_1904 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1905: ((6,2,2)), m=10, a=[3, 3, 4, 5, 7, 9], S=[0, 2]. -/
def code_1905 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1906: ((6,2,2)), m=10, a=[3, 3, 4, 5, 9, 9], S=[0, 2]. -/
def code_1906 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1907: ((6,2,2)), m=10, a=[3, 3, 4, 5, 9, 9], S=[0, 8]. -/
def code_1907 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1908: ((6,2,2)), m=10, a=[3, 3, 4, 6, 8, 8], S=[0, 1]. -/
def code_1908 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1909: ((6,2,2)), m=10, a=[3, 3, 4, 7, 8, 8], S=[0, 1]. -/
def code_1909 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1910: ((6,2,2)), m=10, a=[3, 3, 4, 8, 8, 8], S=[0, 1]. -/
def code_1910 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1911: ((6,2,2)), m=10, a=[3, 3, 4, 9, 9, 9], S=[0, 2]. -/
def code_1911 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1912: ((6,2,2)), m=10, a=[3, 3, 5, 5, 6, 6], S=[0, 1]. -/
def code_1912 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1913: ((6,2,2)), m=10, a=[3, 3, 5, 5, 6, 8], S=[0, 1]. -/
def code_1913 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1914: ((6,2,2)), m=10, a=[3, 3, 5, 5, 6, 8], S=[0, 9]. -/
def code_1914 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1915: ((6,2,2)), m=10, a=[3, 3, 5, 5, 6, 9], S=[0, 2]. -/
def code_1915 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1916: ((6,2,2)), m=10, a=[3, 3, 5, 5, 7, 9], S=[0, 6]. -/
def code_1916 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1917: ((6,2,2)), m=10, a=[3, 3, 5, 5, 9, 9], S=[0, 6]. -/
def code_1917 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1918: ((6,2,2)), m=10, a=[3, 3, 5, 6, 6, 6], S=[0, 1]. -/
def code_1918 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1919: ((6,2,2)), m=10, a=[3, 3, 5, 6, 6, 8], S=[0, 9]. -/
def code_1919 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1920: ((6,2,2)), m=10, a=[3, 3, 5, 6, 7, 8], S=[0, 1]. -/
def code_1920 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1921: ((6,2,2)), m=10, a=[3, 3, 5, 6, 7, 9], S=[0, 2]. -/
def code_1921 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1922: ((6,2,2)), m=10, a=[3, 3, 5, 6, 8, 8], S=[0, 9]. -/
def code_1922 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1923: ((6,2,2)), m=10, a=[3, 3, 5, 6, 9, 9], S=[0, 2]. -/
def code_1923 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1924: ((6,2,2)), m=10, a=[3, 3, 5, 6, 9, 9], S=[0, 8]. -/
def code_1924 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1925: ((6,2,2)), m=10, a=[3, 3, 5, 7, 8, 9], S=[0, 4]. -/
def code_1925 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1926: ((6,2,2)), m=10, a=[3, 3, 5, 7, 8, 9], S=[0, 6]. -/
def code_1926 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1927: ((6,2,2)), m=10, a=[3, 3, 5, 7, 9, 9], S=[0, 4]. -/
def code_1927 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1928: ((6,2,2)), m=10, a=[3, 3, 5, 7, 9, 9], S=[0, 8]. -/
def code_1928 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1929: ((6,2,2)), m=10, a=[3, 3, 5, 8, 9, 9], S=[0, 4]. -/
def code_1929 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1930: ((6,2,2)), m=10, a=[3, 3, 5, 8, 9, 9], S=[0, 6]. -/
def code_1930 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1931: ((6,2,2)), m=10, a=[3, 3, 5, 9, 9, 9], S=[0, 2]. -/
def code_1931 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1932: ((6,2,2)), m=10, a=[3, 3, 5, 9, 9, 9], S=[0, 4]. -/
def code_1932 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1933: ((6,2,2)), m=10, a=[3, 3, 5, 9, 9, 9], S=[0, 6]. -/
def code_1933 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1934: ((6,2,2)), m=10, a=[3, 3, 7, 8, 8, 8], S=[0, 1]. -/
def code_1934 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1935: ((6,2,2)), m=10, a=[3, 3, 7, 8, 8, 8], S=[0, 6]. -/
def code_1935 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1936: ((6,2,2)), m=10, a=[3, 3, 7, 9, 9, 9], S=[0, 4]. -/
def code_1936 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1937: ((6,2,2)), m=10, a=[3, 3, 8, 8, 8, 9], S=[0, 6]. -/
def code_1937 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1938: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 5], S=[0, 2]. -/
def code_1938 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1939: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 7], S=[0, 2]. -/
def code_1939 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1940: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 7], S=[0, 8]. -/
def code_1940 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1941: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 7], S=[0, 9]. -/
def code_1941 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1942: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 8], S=[0, 1]. -/
def code_1942 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1943: ((6,2,2)), m=10, a=[3, 4, 4, 4, 5, 8], S=[0, 9]. -/
def code_1943 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1944: ((6,2,2)), m=10, a=[3, 4, 4, 4, 6, 9], S=[0, 2]. -/
def code_1944 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1945: ((6,2,2)), m=10, a=[3, 4, 4, 4, 7, 8], S=[0, 1]. -/
def code_1945 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1946: ((6,2,2)), m=10, a=[3, 4, 4, 4, 9, 9], S=[0, 2]. -/
def code_1946 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1947: ((6,2,2)), m=10, a=[3, 4, 4, 5, 5, 7], S=[0, 1]. -/
def code_1947 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1948: ((6,2,2)), m=10, a=[3, 4, 4, 5, 5, 8], S=[0, 1]. -/
def code_1948 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1949: ((6,2,2)), m=10, a=[3, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_1949 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1950: ((6,2,2)), m=10, a=[3, 4, 4, 5, 6, 7], S=[0, 8]. -/
def code_1950 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1951: ((6,2,2)), m=10, a=[3, 4, 4, 5, 6, 8], S=[0, 1]. -/
def code_1951 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1952: ((6,2,2)), m=10, a=[3, 4, 4, 5, 6, 8], S=[0, 9]. -/
def code_1952 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1953: ((6,2,2)), m=10, a=[3, 4, 4, 5, 6, 9], S=[0, 8]. -/
def code_1953 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1954: ((6,2,2)), m=10, a=[3, 4, 4, 5, 7, 7], S=[0, 2]. -/
def code_1954 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1955: ((6,2,2)), m=10, a=[3, 4, 4, 5, 7, 8], S=[0, 9]. -/
def code_1955 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1956: ((6,2,2)), m=10, a=[3, 4, 4, 5, 7, 9], S=[0, 8]. -/
def code_1956 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1957: ((6,2,2)), m=10, a=[3, 4, 4, 5, 8, 8], S=[0, 1]. -/
def code_1957 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1958: ((6,2,2)), m=10, a=[3, 4, 4, 5, 8, 8], S=[0, 9]. -/
def code_1958 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1959: ((6,2,2)), m=10, a=[3, 4, 4, 5, 9, 9], S=[0, 2]. -/
def code_1959 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1960: ((6,2,2)), m=10, a=[3, 4, 4, 6, 7, 9], S=[0, 8]. -/
def code_1960 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1961: ((6,2,2)), m=10, a=[3, 4, 4, 7, 7, 9], S=[0, 2]. -/
def code_1961 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1962: ((6,2,2)), m=10, a=[3, 4, 4, 7, 8, 8], S=[0, 9]. -/
def code_1962 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1963: ((6,2,2)), m=10, a=[3, 4, 4, 7, 9, 9], S=[0, 8]. -/
def code_1963 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1964: ((6,2,2)), m=10, a=[3, 4, 5, 5, 6, 8], S=[0, 9]. -/
def code_1964 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1965: ((6,2,2)), m=10, a=[3, 4, 5, 5, 7, 8], S=[0, 1]. -/
def code_1965 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1966: ((6,2,2)), m=10, a=[3, 4, 5, 5, 7, 9], S=[0, 2]. -/
def code_1966 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1967: ((6,2,2)), m=10, a=[3, 4, 5, 5, 9, 9], S=[0, 8]. -/
def code_1967 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1968: ((6,2,2)), m=10, a=[3, 4, 5, 6, 6, 7], S=[0, 2]. -/
def code_1968 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ)]

/-- Catalogue code #1969: ((6,2,2)), m=10, a=[3, 4, 5, 6, 6, 7], S=[0, 9]. -/
def code_1969 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1970: ((6,2,2)), m=10, a=[3, 4, 5, 6, 6, 8], S=[0, 1]. -/
def code_1970 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1971: ((6,2,2)), m=10, a=[3, 4, 5, 6, 6, 8], S=[0, 9]. -/
def code_1971 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1972: ((6,2,2)), m=10, a=[3, 4, 5, 6, 7, 8], S=[0, 1]. -/
def code_1972 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1973: ((6,2,2)), m=10, a=[3, 4, 5, 6, 7, 8], S=[0, 9]. -/
def code_1973 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1974: ((6,2,2)), m=10, a=[3, 4, 5, 6, 7, 9], S=[0, 2]. -/
def code_1974 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1975: ((6,2,2)), m=10, a=[3, 4, 5, 6, 7, 9], S=[0, 8]. -/
def code_1975 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1976: ((6,2,2)), m=10, a=[3, 4, 5, 6, 8, 8], S=[0, 1]. -/
def code_1976 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1977: ((6,2,2)), m=10, a=[3, 4, 5, 6, 8, 8], S=[0, 9]. -/
def code_1977 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1978: ((6,2,2)), m=10, a=[3, 4, 5, 6, 9, 9], S=[0, 8]. -/
def code_1978 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1979: ((6,2,2)), m=10, a=[3, 4, 5, 7, 8, 8], S=[0, 1]. -/
def code_1979 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((4 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1980: ((6,2,2)), m=10, a=[3, 4, 5, 7, 8, 8], S=[0, 9]. -/
def code_1980 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1981: ((6,2,2)), m=10, a=[3, 4, 5, 7, 9, 9], S=[0, 2]. -/
def code_1981 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1982: ((6,2,2)), m=10, a=[3, 4, 5, 9, 9, 9], S=[0, 2]. -/
def code_1982 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1983: ((6,2,2)), m=10, a=[3, 4, 6, 6, 7, 8], S=[0, 9]. -/
def code_1983 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5)]

/-- Catalogue code #1984: ((6,2,2)), m=10, a=[3, 4, 6, 7, 8, 8], S=[0, 1]. -/
def code_1984 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1985: ((6,2,2)), m=10, a=[3, 4, 7, 7, 8, 8], S=[0, 9]. -/
def code_1985 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1986: ((6,2,2)), m=10, a=[3, 4, 7, 8, 8, 8], S=[0, 1]. -/
def code_1986 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1987: ((6,2,2)), m=10, a=[3, 5, 5, 6, 6, 7], S=[0, 9]. -/
def code_1987 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (9 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1988: ((6,2,2)), m=10, a=[3, 5, 5, 6, 6, 8], S=[0, 1]. -/
def code_1988 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1989: ((6,2,2)), m=10, a=[3, 5, 5, 7, 8, 9], S=[0, 6]. -/
def code_1989 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1990: ((6,2,2)), m=10, a=[3, 5, 5, 7, 9, 9], S=[0, 2]. -/
def code_1990 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1991: ((6,2,2)), m=10, a=[3, 5, 5, 7, 9, 9], S=[0, 6]. -/
def code_1991 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1992: ((6,2,2)), m=10, a=[3, 5, 5, 8, 8, 9], S=[0, 4]. -/
def code_1992 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1993: ((6,2,2)), m=10, a=[3, 5, 5, 8, 9, 9], S=[0, 6]. -/
def code_1993 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1994: ((6,2,2)), m=10, a=[3, 5, 5, 9, 9, 9], S=[0, 2]. -/
def code_1994 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1995: ((6,2,2)), m=10, a=[3, 5, 5, 9, 9, 9], S=[0, 8]. -/
def code_1995 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1996: ((6,2,2)), m=10, a=[3, 5, 6, 6, 6, 7], S=[0, 1]. -/
def code_1996 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1997: ((6,2,2)), m=10, a=[3, 5, 6, 6, 6, 7], S=[0, 8]. -/
def code_1997 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1998: ((6,2,2)), m=10, a=[3, 5, 6, 6, 6, 8], S=[0, 1]. -/
def code_1998 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (1 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1999: ((6,2,2)), m=10, a=[3, 5, 6, 6, 7, 7], S=[0, 2]. -/
def code_1999 : ExampleData 6 10 2 where
  a := ![(3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]
def checks : List Bool :=
  [decide code_1500.OK,
   decide code_1501.OK,
   decide code_1502.OK,
   decide code_1503.OK,
   decide code_1504.OK,
   decide code_1505.OK,
   decide code_1506.OK,
   decide code_1507.OK,
   decide code_1508.OK,
   decide code_1509.OK,
   decide code_1510.OK,
   decide code_1511.OK,
   decide code_1512.OK,
   decide code_1513.OK,
   decide code_1514.OK,
   decide code_1515.OK,
   decide code_1516.OK,
   decide code_1517.OK,
   decide code_1518.OK,
   decide code_1519.OK,
   decide code_1520.OK,
   decide code_1521.OK,
   decide code_1522.OK,
   decide code_1523.OK,
   decide code_1524.OK,
   decide code_1525.OK,
   decide code_1526.OK,
   decide code_1527.OK,
   decide code_1528.OK,
   decide code_1529.OK,
   decide code_1530.OK,
   decide code_1531.OK,
   decide code_1532.OK,
   decide code_1533.OK,
   decide code_1534.OK,
   decide code_1535.OK,
   decide code_1536.OK,
   decide code_1537.OK,
   decide code_1538.OK,
   decide code_1539.OK,
   decide code_1540.OK,
   decide code_1541.OK,
   decide code_1542.OK,
   decide code_1543.OK,
   decide code_1544.OK,
   decide code_1545.OK,
   decide code_1546.OK,
   decide code_1547.OK,
   decide code_1548.OK,
   decide code_1549.OK,
   decide code_1550.OK,
   decide code_1551.OK,
   decide code_1552.OK,
   decide code_1553.OK,
   decide code_1554.OK,
   decide code_1555.OK,
   decide code_1556.OK,
   decide code_1557.OK,
   decide code_1558.OK,
   decide code_1559.OK,
   decide code_1560.OK,
   decide code_1561.OK,
   decide code_1562.OK,
   decide code_1563.OK,
   decide code_1564.OK,
   decide code_1565.OK,
   decide code_1566.OK,
   decide code_1567.OK,
   decide code_1568.OK,
   decide code_1569.OK,
   decide code_1570.OK,
   decide code_1571.OK,
   decide code_1572.OK,
   decide code_1573.OK,
   decide code_1574.OK,
   decide code_1575.OK,
   decide code_1576.OK,
   decide code_1577.OK,
   decide code_1578.OK,
   decide code_1579.OK,
   decide code_1580.OK,
   decide code_1581.OK,
   decide code_1582.OK,
   decide code_1583.OK,
   decide code_1584.OK,
   decide code_1585.OK,
   decide code_1586.OK,
   decide code_1587.OK,
   decide code_1588.OK,
   decide code_1589.OK,
   decide code_1590.OK,
   decide code_1591.OK,
   decide code_1592.OK,
   decide code_1593.OK,
   decide code_1594.OK,
   decide code_1595.OK,
   decide code_1596.OK,
   decide code_1597.OK,
   decide code_1598.OK,
   decide code_1599.OK,
   decide code_1600.OK,
   decide code_1601.OK,
   decide code_1602.OK,
   decide code_1603.OK,
   decide code_1604.OK,
   decide code_1605.OK,
   decide code_1606.OK,
   decide code_1607.OK,
   decide code_1608.OK,
   decide code_1609.OK,
   decide code_1610.OK,
   decide code_1611.OK,
   decide code_1612.OK,
   decide code_1613.OK,
   decide code_1614.OK,
   decide code_1615.OK,
   decide code_1616.OK,
   decide code_1617.OK,
   decide code_1618.OK,
   decide code_1619.OK,
   decide code_1620.OK,
   decide code_1621.OK,
   decide code_1622.OK,
   decide code_1623.OK,
   decide code_1624.OK,
   decide code_1625.OK,
   decide code_1626.OK,
   decide code_1627.OK,
   decide code_1628.OK,
   decide code_1629.OK,
   decide code_1630.OK,
   decide code_1631.OK,
   decide code_1632.OK,
   decide code_1633.OK,
   decide code_1634.OK,
   decide code_1635.OK,
   decide code_1636.OK,
   decide code_1637.OK,
   decide code_1638.OK,
   decide code_1639.OK,
   decide code_1640.OK,
   decide code_1641.OK,
   decide code_1642.OK,
   decide code_1643.OK,
   decide code_1644.OK,
   decide code_1645.OK,
   decide code_1646.OK,
   decide code_1647.OK,
   decide code_1648.OK,
   decide code_1649.OK,
   decide code_1650.OK,
   decide code_1651.OK,
   decide code_1652.OK,
   decide code_1653.OK,
   decide code_1654.OK,
   decide code_1655.OK,
   decide code_1656.OK,
   decide code_1657.OK,
   decide code_1658.OK,
   decide code_1659.OK,
   decide code_1660.OK,
   decide code_1661.OK,
   decide code_1662.OK,
   decide code_1663.OK,
   decide code_1664.OK,
   decide code_1665.OK,
   decide code_1666.OK,
   decide code_1667.OK,
   decide code_1668.OK,
   decide code_1669.OK,
   decide code_1670.OK,
   decide code_1671.OK,
   decide code_1672.OK,
   decide code_1673.OK,
   decide code_1674.OK,
   decide code_1675.OK,
   decide code_1676.OK,
   decide code_1677.OK,
   decide code_1678.OK,
   decide code_1679.OK,
   decide code_1680.OK,
   decide code_1681.OK,
   decide code_1682.OK,
   decide code_1683.OK,
   decide code_1684.OK,
   decide code_1685.OK,
   decide code_1686.OK,
   decide code_1687.OK,
   decide code_1688.OK,
   decide code_1689.OK,
   decide code_1690.OK,
   decide code_1691.OK,
   decide code_1692.OK,
   decide code_1693.OK,
   decide code_1694.OK,
   decide code_1695.OK,
   decide code_1696.OK,
   decide code_1697.OK,
   decide code_1698.OK,
   decide code_1699.OK,
   decide code_1700.OK,
   decide code_1701.OK,
   decide code_1702.OK,
   decide code_1703.OK,
   decide code_1704.OK,
   decide code_1705.OK,
   decide code_1706.OK,
   decide code_1707.OK,
   decide code_1708.OK,
   decide code_1709.OK,
   decide code_1710.OK,
   decide code_1711.OK,
   decide code_1712.OK,
   decide code_1713.OK,
   decide code_1714.OK,
   decide code_1715.OK,
   decide code_1716.OK,
   decide code_1717.OK,
   decide code_1718.OK,
   decide code_1719.OK,
   decide code_1720.OK,
   decide code_1721.OK,
   decide code_1722.OK,
   decide code_1723.OK,
   decide code_1724.OK,
   decide code_1725.OK,
   decide code_1726.OK,
   decide code_1727.OK,
   decide code_1728.OK,
   decide code_1729.OK,
   decide code_1730.OK,
   decide code_1731.OK,
   decide code_1732.OK,
   decide code_1733.OK,
   decide code_1734.OK,
   decide code_1735.OK,
   decide code_1736.OK,
   decide code_1737.OK,
   decide code_1738.OK,
   decide code_1739.OK,
   decide code_1740.OK,
   decide code_1741.OK,
   decide code_1742.OK,
   decide code_1743.OK,
   decide code_1744.OK,
   decide code_1745.OK,
   decide code_1746.OK,
   decide code_1747.OK,
   decide code_1748.OK,
   decide code_1749.OK,
   decide code_1750.OK,
   decide code_1751.OK,
   decide code_1752.OK,
   decide code_1753.OK,
   decide code_1754.OK,
   decide code_1755.OK,
   decide code_1756.OK,
   decide code_1757.OK,
   decide code_1758.OK,
   decide code_1759.OK,
   decide code_1760.OK,
   decide code_1761.OK,
   decide code_1762.OK,
   decide code_1763.OK,
   decide code_1764.OK,
   decide code_1765.OK,
   decide code_1766.OK,
   decide code_1767.OK,
   decide code_1768.OK,
   decide code_1769.OK,
   decide code_1770.OK,
   decide code_1771.OK,
   decide code_1772.OK,
   decide code_1773.OK,
   decide code_1774.OK,
   decide code_1775.OK,
   decide code_1776.OK,
   decide code_1777.OK,
   decide code_1778.OK,
   decide code_1779.OK,
   decide code_1780.OK,
   decide code_1781.OK,
   decide code_1782.OK,
   decide code_1783.OK,
   decide code_1784.OK,
   decide code_1785.OK,
   decide code_1786.OK,
   decide code_1787.OK,
   decide code_1788.OK,
   decide code_1789.OK,
   decide code_1790.OK,
   decide code_1791.OK,
   decide code_1792.OK,
   decide code_1793.OK,
   decide code_1794.OK,
   decide code_1795.OK,
   decide code_1796.OK,
   decide code_1797.OK,
   decide code_1798.OK,
   decide code_1799.OK,
   decide code_1800.OK,
   decide code_1801.OK,
   decide code_1802.OK,
   decide code_1803.OK,
   decide code_1804.OK,
   decide code_1805.OK,
   decide code_1806.OK,
   decide code_1807.OK,
   decide code_1808.OK,
   decide code_1809.OK,
   decide code_1810.OK,
   decide code_1811.OK,
   decide code_1812.OK,
   decide code_1813.OK,
   decide code_1814.OK,
   decide code_1815.OK,
   decide code_1816.OK,
   decide code_1817.OK,
   decide code_1818.OK,
   decide code_1819.OK,
   decide code_1820.OK,
   decide code_1821.OK,
   decide code_1822.OK,
   decide code_1823.OK,
   decide code_1824.OK,
   decide code_1825.OK,
   decide code_1826.OK,
   decide code_1827.OK,
   decide code_1828.OK,
   decide code_1829.OK,
   decide code_1830.OK,
   decide code_1831.OK,
   decide code_1832.OK,
   decide code_1833.OK,
   decide code_1834.OK,
   decide code_1835.OK,
   decide code_1836.OK,
   decide code_1837.OK,
   decide code_1838.OK,
   decide code_1839.OK,
   decide code_1840.OK,
   decide code_1841.OK,
   decide code_1842.OK,
   decide code_1843.OK,
   decide code_1844.OK,
   decide code_1845.OK,
   decide code_1846.OK,
   decide code_1847.OK,
   decide code_1848.OK,
   decide code_1849.OK,
   decide code_1850.OK,
   decide code_1851.OK,
   decide code_1852.OK,
   decide code_1853.OK,
   decide code_1854.OK,
   decide code_1855.OK,
   decide code_1856.OK,
   decide code_1857.OK,
   decide code_1858.OK,
   decide code_1859.OK,
   decide code_1860.OK,
   decide code_1861.OK,
   decide code_1862.OK,
   decide code_1863.OK,
   decide code_1864.OK,
   decide code_1865.OK,
   decide code_1866.OK,
   decide code_1867.OK,
   decide code_1868.OK,
   decide code_1869.OK,
   decide code_1870.OK,
   decide code_1871.OK,
   decide code_1872.OK,
   decide code_1873.OK,
   decide code_1874.OK,
   decide code_1875.OK,
   decide code_1876.OK,
   decide code_1877.OK,
   decide code_1878.OK,
   decide code_1879.OK,
   decide code_1880.OK,
   decide code_1881.OK,
   decide code_1882.OK,
   decide code_1883.OK,
   decide code_1884.OK,
   decide code_1885.OK,
   decide code_1886.OK,
   decide code_1887.OK,
   decide code_1888.OK,
   decide code_1889.OK,
   decide code_1890.OK,
   decide code_1891.OK,
   decide code_1892.OK,
   decide code_1893.OK,
   decide code_1894.OK,
   decide code_1895.OK,
   decide code_1896.OK,
   decide code_1897.OK,
   decide code_1898.OK,
   decide code_1899.OK,
   decide code_1900.OK,
   decide code_1901.OK,
   decide code_1902.OK,
   decide code_1903.OK,
   decide code_1904.OK,
   decide code_1905.OK,
   decide code_1906.OK,
   decide code_1907.OK,
   decide code_1908.OK,
   decide code_1909.OK,
   decide code_1910.OK,
   decide code_1911.OK,
   decide code_1912.OK,
   decide code_1913.OK,
   decide code_1914.OK,
   decide code_1915.OK,
   decide code_1916.OK,
   decide code_1917.OK,
   decide code_1918.OK,
   decide code_1919.OK,
   decide code_1920.OK,
   decide code_1921.OK,
   decide code_1922.OK,
   decide code_1923.OK,
   decide code_1924.OK,
   decide code_1925.OK,
   decide code_1926.OK,
   decide code_1927.OK,
   decide code_1928.OK,
   decide code_1929.OK,
   decide code_1930.OK,
   decide code_1931.OK,
   decide code_1932.OK,
   decide code_1933.OK,
   decide code_1934.OK,
   decide code_1935.OK,
   decide code_1936.OK,
   decide code_1937.OK,
   decide code_1938.OK,
   decide code_1939.OK,
   decide code_1940.OK,
   decide code_1941.OK,
   decide code_1942.OK,
   decide code_1943.OK,
   decide code_1944.OK,
   decide code_1945.OK,
   decide code_1946.OK,
   decide code_1947.OK,
   decide code_1948.OK,
   decide code_1949.OK,
   decide code_1950.OK,
   decide code_1951.OK,
   decide code_1952.OK,
   decide code_1953.OK,
   decide code_1954.OK,
   decide code_1955.OK,
   decide code_1956.OK,
   decide code_1957.OK,
   decide code_1958.OK,
   decide code_1959.OK,
   decide code_1960.OK,
   decide code_1961.OK,
   decide code_1962.OK,
   decide code_1963.OK,
   decide code_1964.OK,
   decide code_1965.OK,
   decide code_1966.OK,
   decide code_1967.OK,
   decide code_1968.OK,
   decide code_1969.OK,
   decide code_1970.OK,
   decide code_1971.OK,
   decide code_1972.OK,
   decide code_1973.OK,
   decide code_1974.OK,
   decide code_1975.OK,
   decide code_1976.OK,
   decide code_1977.OK,
   decide code_1978.OK,
   decide code_1979.OK,
   decide code_1980.OK,
   decide code_1981.OK,
   decide code_1982.OK,
   decide code_1983.OK,
   decide code_1984.OK,
   decide code_1985.OK,
   decide code_1986.OK,
   decide code_1987.OK,
   decide code_1988.OK,
   decide code_1989.OK,
   decide code_1990.OK,
   decide code_1991.OK,
   decide code_1992.OK,
   decide code_1993.OK,
   decide code_1994.OK,
   decide code_1995.OK,
   decide code_1996.OK,
   decide code_1997.OK,
   decide code_1998.OK,
   decide code_1999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk003
