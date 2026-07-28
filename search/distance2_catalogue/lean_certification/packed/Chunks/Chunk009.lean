import SS

namespace Catalogue.Chunk009

open SS SS.Verify

/-- Catalogue code #4500: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 9], S=[0, 5]. -/
def code_4500 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4501: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 10], S=[0, 7]. -/
def code_4501 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4502: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 11], S=[0, 5]. -/
def code_4502 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4503: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 11], S=[0, 7]. -/
def code_4503 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4504: ((6,2,2)), m=12, a=[1, 2, 3, 4, 8, 9], S=[0, 5]. -/
def code_4504 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4505: ((6,2,2)), m=12, a=[1, 2, 3, 6, 8, 8], S=[0, 5]. -/
def code_4505 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4506: ((6,2,2)), m=12, a=[1, 2, 3, 6, 8, 8], S=[0, 7]. -/
def code_4506 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4507: ((6,2,2)), m=12, a=[1, 2, 3, 6, 8, 10], S=[0, 5]. -/
def code_4507 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4508: ((6,2,2)), m=12, a=[1, 2, 3, 6, 8, 11], S=[0, 5]. -/
def code_4508 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4509: ((6,2,2)), m=12, a=[1, 2, 3, 6, 10, 11], S=[0, 5]. -/
def code_4509 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4510: ((6,2,2)), m=12, a=[1, 2, 3, 8, 10, 11], S=[0, 5]. -/
def code_4510 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4511: ((6,2,2)), m=12, a=[1, 2, 4, 4, 6, 9], S=[0, 5]. -/
def code_4511 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4512: ((6,2,2)), m=12, a=[1, 2, 4, 4, 6, 9], S=[0, 7]. -/
def code_4512 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4513: ((6,2,2)), m=12, a=[1, 2, 4, 4, 6, 11], S=[0, 7]. -/
def code_4513 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4514: ((6,2,2)), m=12, a=[1, 2, 4, 6, 8, 9], S=[0, 5]. -/
def code_4514 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4515: ((6,2,2)), m=12, a=[1, 2, 4, 6, 8, 9], S=[0, 7]. -/
def code_4515 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4516: ((6,2,2)), m=12, a=[1, 2, 4, 6, 8, 11], S=[0, 5]. -/
def code_4516 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4517: ((6,2,2)), m=12, a=[1, 2, 4, 6, 9, 10], S=[0, 7]. -/
def code_4517 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4518: ((6,2,2)), m=12, a=[1, 2, 4, 6, 9, 11], S=[0, 5]. -/
def code_4518 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4519: ((6,2,2)), m=12, a=[1, 2, 4, 6, 9, 11], S=[0, 7]. -/
def code_4519 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4520: ((6,2,2)), m=12, a=[1, 2, 4, 6, 10, 11], S=[0, 7]. -/
def code_4520 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4521: ((6,2,2)), m=12, a=[1, 2, 4, 8, 9, 9], S=[0, 7]. -/
def code_4521 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]

/-- Catalogue code #4522: ((6,2,2)), m=12, a=[1, 2, 4, 8, 9, 10], S=[0, 7]. -/
def code_4522 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2)]

/-- Catalogue code #4523: ((6,2,2)), m=12, a=[1, 2, 4, 8, 9, 11], S=[0, 5]. -/
def code_4523 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4524: ((6,2,2)), m=12, a=[1, 2, 4, 9, 9, 10], S=[0, 7]. -/
def code_4524 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((5 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4525: ((6,2,2)), m=12, a=[1, 2, 4, 9, 9, 11], S=[0, 5]. -/
def code_4525 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4526: ((6,2,2)), m=12, a=[1, 2, 4, 9, 10, 11], S=[0, 7]. -/
def code_4526 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((5 : ℚ) / 6)]

/-- Catalogue code #4527: ((6,2,2)), m=12, a=[1, 2, 4, 9, 11, 11], S=[0, 7]. -/
def code_4527 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4528: ((6,2,2)), m=12, a=[1, 2, 6, 8, 8, 9], S=[0, 5]. -/
def code_4528 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4529: ((6,2,2)), m=12, a=[1, 2, 6, 8, 8, 9], S=[0, 7]. -/
def code_4529 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4530: ((6,2,2)), m=12, a=[1, 2, 6, 8, 8, 11], S=[0, 5]. -/
def code_4530 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4531: ((6,2,2)), m=12, a=[1, 2, 6, 8, 9, 9], S=[0, 7]. -/
def code_4531 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4532: ((6,2,2)), m=12, a=[1, 2, 6, 8, 9, 10], S=[0, 5]. -/
def code_4532 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #4533: ((6,2,2)), m=12, a=[1, 2, 6, 8, 9, 10], S=[0, 7]. -/
def code_4533 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4534: ((6,2,2)), m=12, a=[1, 2, 6, 8, 9, 11], S=[0, 5]. -/
def code_4534 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4535: ((6,2,2)), m=12, a=[1, 2, 6, 8, 10, 11], S=[0, 5]. -/
def code_4535 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4536: ((6,2,2)), m=12, a=[1, 2, 6, 9, 9, 11], S=[0, 7]. -/
def code_4536 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4537: ((6,2,2)), m=12, a=[1, 2, 6, 9, 10, 11], S=[0, 7]. -/
def code_4537 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #4538: ((6,2,2)), m=12, a=[1, 2, 8, 8, 9, 9], S=[0, 7]. -/
def code_4538 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4539: ((6,2,2)), m=12, a=[1, 2, 8, 8, 9, 10], S=[0, 7]. -/
def code_4539 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4540: ((6,2,2)), m=12, a=[1, 2, 8, 9, 9, 10], S=[0, 7]. -/
def code_4540 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4541: ((6,2,2)), m=12, a=[1, 3, 3, 4, 4, 5], S=[0, 10]. -/
def code_4541 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4542: ((6,2,2)), m=12, a=[1, 3, 3, 4, 4, 6], S=[0, 7]. -/
def code_4542 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4543: ((6,2,2)), m=12, a=[1, 3, 3, 4, 4, 6], S=[0, 10]. -/
def code_4543 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4544: ((6,2,2)), m=12, a=[1, 3, 3, 4, 4, 10], S=[0, 7]. -/
def code_4544 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4545: ((6,2,2)), m=12, a=[1, 3, 3, 4, 5, 5], S=[0, 10]. -/
def code_4545 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4546: ((6,2,2)), m=12, a=[1, 3, 3, 4, 6, 10], S=[0, 7]. -/
def code_4546 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4547: ((6,2,2)), m=12, a=[1, 3, 3, 4, 6, 11], S=[0, 5]. -/
def code_4547 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4548: ((6,2,2)), m=12, a=[1, 3, 3, 5, 5, 6], S=[0, 10]. -/
def code_4548 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #4549: ((6,2,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 2]. -/
def code_4549 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
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
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4550: ((6,2,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 10]. -/
def code_4550 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4551: ((6,2,2)), m=12, a=[1, 3, 3, 5, 6, 7], S=[0, 2]. -/
def code_4551 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4552: ((6,2,2)), m=12, a=[1, 3, 3, 5, 6, 11], S=[0, 10]. -/
def code_4552 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4553: ((6,2,2)), m=12, a=[1, 3, 3, 5, 8, 8], S=[0, 2]. -/
def code_4553 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4554: ((6,2,2)), m=12, a=[1, 3, 3, 6, 7, 11], S=[0, 2]. -/
def code_4554 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4555: ((6,2,2)), m=12, a=[1, 3, 3, 6, 8, 8], S=[0, 7]. -/
def code_4555 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4556: ((6,2,2)), m=12, a=[1, 3, 3, 6, 8, 11], S=[0, 7]. -/
def code_4556 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4557: ((6,2,2)), m=12, a=[1, 3, 3, 6, 10, 11], S=[0, 5]. -/
def code_4557 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4558: ((6,2,2)), m=12, a=[1, 3, 3, 6, 11, 11], S=[0, 7]. -/
def code_4558 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4559: ((6,2,2)), m=12, a=[1, 3, 3, 7, 7, 11], S=[0, 2]. -/
def code_4559 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #4560: ((6,2,2)), m=12, a=[1, 3, 3, 8, 8, 10], S=[0, 7]. -/
def code_4560 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4561: ((6,2,2)), m=12, a=[1, 3, 3, 8, 10, 11], S=[0, 5]. -/
def code_4561 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4562: ((6,2,2)), m=12, a=[1, 3, 3, 8, 11, 11], S=[0, 7]. -/
def code_4562 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4563: ((6,2,2)), m=12, a=[1, 3, 3, 10, 10, 11], S=[0, 7]. -/
def code_4563 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4564: ((6,2,2)), m=12, a=[1, 3, 4, 4, 5, 6], S=[0, 10]. -/
def code_4564 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4565: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 6], S=[0, 2]. -/
def code_4565 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4566: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 6], S=[0, 10]. -/
def code_4566 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4567: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 9], S=[0, 2]. -/
def code_4567 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4568: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 9], S=[0, 5]. -/
def code_4568 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4569: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 10], S=[0, 5]. -/
def code_4569 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4570: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 10], S=[0, 7]. -/
def code_4570 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4571: ((6,2,2)), m=12, a=[1, 3, 4, 4, 6, 11], S=[0, 10]. -/
def code_4571 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4572: ((6,2,2)), m=12, a=[1, 3, 4, 4, 7, 9], S=[0, 2]. -/
def code_4572 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4573: ((6,2,2)), m=12, a=[1, 3, 4, 4, 9, 10], S=[0, 5]. -/
def code_4573 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4574: ((6,2,2)), m=12, a=[1, 3, 4, 4, 9, 11], S=[0, 2]. -/
def code_4574 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4575: ((6,2,2)), m=12, a=[1, 3, 4, 4, 10, 10], S=[0, 5]. -/
def code_4575 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-5 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4576: ((6,2,2)), m=12, a=[1, 3, 4, 5, 5, 6], S=[0, 2]. -/
def code_4576 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4577: ((6,2,2)), m=12, a=[1, 3, 4, 5, 5, 7], S=[0, 2]. -/
def code_4577 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4578: ((6,2,2)), m=12, a=[1, 3, 4, 5, 5, 11], S=[0, 2]. -/
def code_4578 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4579: ((6,2,2)), m=12, a=[1, 3, 4, 5, 6, 11], S=[0, 2]. -/
def code_4579 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4580: ((6,2,2)), m=12, a=[1, 3, 4, 5, 6, 11], S=[0, 10]. -/
def code_4580 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4581: ((6,2,2)), m=12, a=[1, 3, 4, 6, 6, 8], S=[0, 2]. -/
def code_4581 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4582: ((6,2,2)), m=12, a=[1, 3, 4, 6, 8, 9], S=[0, 5]. -/
def code_4582 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4583: ((6,2,2)), m=12, a=[1, 3, 4, 6, 8, 10], S=[0, 5]. -/
def code_4583 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]

/-- Catalogue code #4584: ((6,2,2)), m=12, a=[1, 3, 4, 6, 8, 10], S=[0, 7]. -/
def code_4584 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4585: ((6,2,2)), m=12, a=[1, 3, 4, 6, 8, 11], S=[0, 2]. -/
def code_4585 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4586: ((6,2,2)), m=12, a=[1, 3, 4, 6, 8, 11], S=[0, 7]. -/
def code_4586 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4587: ((6,2,2)), m=12, a=[1, 3, 4, 6, 9, 10], S=[0, 5]. -/
def code_4587 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4588: ((6,2,2)), m=12, a=[1, 3, 4, 6, 10, 10], S=[0, 5]. -/
def code_4588 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4589: ((6,2,2)), m=12, a=[1, 3, 4, 6, 10, 11], S=[0, 7]. -/
def code_4589 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4590: ((6,2,2)), m=12, a=[1, 3, 4, 7, 8, 9], S=[0, 10]. -/
def code_4590 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4591: ((6,2,2)), m=12, a=[1, 3, 4, 8, 9, 10], S=[0, 5]. -/
def code_4591 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4592: ((6,2,2)), m=12, a=[1, 3, 4, 8, 10, 10], S=[0, 5]. -/
def code_4592 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4593: ((6,2,2)), m=12, a=[1, 3, 4, 8, 10, 11], S=[0, 7]. -/
def code_4593 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4594: ((6,2,2)), m=12, a=[1, 3, 4, 9, 10, 10], S=[0, 5]. -/
def code_4594 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4595: ((6,2,2)), m=12, a=[1, 3, 4, 9, 10, 11], S=[0, 7]. -/
def code_4595 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4596: ((6,2,2)), m=12, a=[1, 3, 5, 5, 5, 11], S=[0, 2]. -/
def code_4596 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3)]

/-- Catalogue code #4597: ((6,2,2)), m=12, a=[1, 3, 5, 5, 6, 11], S=[0, 10]. -/
def code_4597 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4598: ((6,2,2)), m=12, a=[1, 3, 5, 5, 8, 11], S=[0, 10]. -/
def code_4598 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4599: ((6,2,2)), m=12, a=[1, 3, 5, 6, 7, 8], S=[0, 2]. -/
def code_4599 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4600: ((6,2,2)), m=12, a=[1, 3, 5, 6, 8, 9], S=[0, 10]. -/
def code_4600 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4601: ((6,2,2)), m=12, a=[1, 3, 5, 6, 8, 11], S=[0, 2]. -/
def code_4601 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4602: ((6,2,2)), m=12, a=[1, 3, 5, 7, 8, 9], S=[0, 10]. -/
def code_4602 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4603: ((6,2,2)), m=12, a=[1, 3, 5, 7, 9, 11], S=[0, 4]. -/
def code_4603 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4604: ((6,2,2)), m=12, a=[1, 3, 6, 6, 8, 8], S=[0, 10]. -/
def code_4604 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4605: ((6,2,2)), m=12, a=[1, 3, 6, 7, 7, 8], S=[0, 10]. -/
def code_4605 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4606: ((6,2,2)), m=12, a=[1, 3, 6, 7, 7, 9], S=[0, 10]. -/
def code_4606 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4607: ((6,2,2)), m=12, a=[1, 3, 6, 7, 7, 11], S=[0, 2]. -/
def code_4607 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4608: ((6,2,2)), m=12, a=[1, 3, 6, 7, 8, 11], S=[0, 2]. -/
def code_4608 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4609: ((6,2,2)), m=12, a=[1, 3, 6, 8, 8, 9], S=[0, 10]. -/
def code_4609 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]

/-- Catalogue code #4610: ((6,2,2)), m=12, a=[1, 3, 6, 8, 8, 10], S=[0, 5]. -/
def code_4610 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4611: ((6,2,2)), m=12, a=[1, 3, 6, 8, 8, 10], S=[0, 7]. -/
def code_4611 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4612: ((6,2,2)), m=12, a=[1, 3, 6, 8, 9, 10], S=[0, 5]. -/
def code_4612 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4613: ((6,2,2)), m=12, a=[1, 3, 6, 8, 9, 11], S=[0, 10]. -/
def code_4613 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4614: ((6,2,2)), m=12, a=[1, 3, 6, 8, 10, 10], S=[0, 7]. -/
def code_4614 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4615: ((6,2,2)), m=12, a=[1, 3, 6, 8, 10, 11], S=[0, 5]. -/
def code_4615 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4616: ((6,2,2)), m=12, a=[1, 3, 6, 8, 10, 11], S=[0, 7]. -/
def code_4616 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4617: ((6,2,2)), m=12, a=[1, 3, 6, 8, 11, 11], S=[0, 7]. -/
def code_4617 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4618: ((6,2,2)), m=12, a=[1, 3, 7, 7, 8, 9], S=[0, 10]. -/
def code_4618 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4619: ((6,2,2)), m=12, a=[1, 3, 7, 8, 9, 11], S=[0, 10]. -/
def code_4619 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4620: ((6,2,2)), m=12, a=[1, 4, 4, 4, 5, 6], S=[0, 2]. -/
def code_4620 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4621: ((6,2,2)), m=12, a=[1, 4, 4, 4, 6, 6], S=[0, 10]. -/
def code_4621 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4622: ((6,2,2)), m=12, a=[1, 4, 4, 4, 6, 9], S=[0, 2]. -/
def code_4622 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4623: ((6,2,2)), m=12, a=[1, 4, 4, 5, 5, 6], S=[0, 10]. -/
def code_4623 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4624: ((6,2,2)), m=12, a=[1, 4, 4, 5, 6, 8], S=[0, 2]. -/
def code_4624 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4625: ((6,2,2)), m=12, a=[1, 4, 4, 5, 6, 9], S=[0, 10]. -/
def code_4625 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4626: ((6,2,2)), m=12, a=[1, 4, 4, 5, 6, 11], S=[0, 10]. -/
def code_4626 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4627: ((6,2,2)), m=12, a=[1, 4, 4, 6, 6, 8], S=[0, 2]. -/
def code_4627 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4628: ((6,2,2)), m=12, a=[1, 4, 4, 6, 7, 7], S=[0, 2]. -/
def code_4628 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4629: ((6,2,2)), m=12, a=[1, 4, 4, 6, 8, 9], S=[0, 2]. -/
def code_4629 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4630: ((6,2,2)), m=12, a=[1, 4, 4, 6, 9, 9], S=[0, 7]. -/
def code_4630 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4631: ((6,2,2)), m=12, a=[1, 4, 4, 6, 9, 9], S=[0, 10]. -/
def code_4631 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4632: ((6,2,2)), m=12, a=[1, 4, 4, 6, 9, 10], S=[0, 5]. -/
def code_4632 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4633: ((6,2,2)), m=12, a=[1, 4, 4, 6, 9, 10], S=[0, 7]. -/
def code_4633 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4634: ((6,2,2)), m=12, a=[1, 4, 4, 6, 10, 11], S=[0, 5]. -/
def code_4634 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4635: ((6,2,2)), m=12, a=[1, 4, 4, 9, 9, 10], S=[0, 7]. -/
def code_4635 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4636: ((6,2,2)), m=12, a=[1, 4, 5, 5, 6, 9], S=[0, 10]. -/
def code_4636 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4637: ((6,2,2)), m=12, a=[1, 4, 5, 5, 8, 9], S=[0, 2]. -/
def code_4637 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4638: ((6,2,2)), m=12, a=[1, 4, 5, 5, 9, 9], S=[0, 10]. -/
def code_4638 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #4639: ((6,2,2)), m=12, a=[1, 4, 5, 5, 9, 11], S=[0, 10]. -/
def code_4639 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4640: ((6,2,2)), m=12, a=[1, 4, 5, 5, 11, 11], S=[0, 10]. -/
def code_4640 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4641: ((6,2,2)), m=12, a=[1, 4, 5, 6, 7, 9], S=[0, 10]. -/
def code_4641 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4642: ((6,2,2)), m=12, a=[1, 4, 5, 6, 8, 9], S=[0, 2]. -/
def code_4642 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4643: ((6,2,2)), m=12, a=[1, 4, 5, 6, 8, 11], S=[0, 2]. -/
def code_4643 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4644: ((6,2,2)), m=12, a=[1, 4, 5, 6, 9, 11], S=[0, 2]. -/
def code_4644 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4645: ((6,2,2)), m=12, a=[1, 4, 5, 6, 9, 11], S=[0, 10]. -/
def code_4645 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4646: ((6,2,2)), m=12, a=[1, 4, 5, 7, 9, 11], S=[0, 10]. -/
def code_4646 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4647: ((6,2,2)), m=12, a=[1, 4, 5, 8, 9, 9], S=[0, 2]. -/
def code_4647 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4648: ((6,2,2)), m=12, a=[1, 4, 5, 9, 9, 11], S=[0, 10]. -/
def code_4648 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4649: ((6,2,2)), m=12, a=[1, 4, 5, 9, 11, 11], S=[0, 10]. -/
def code_4649 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4650: ((6,2,2)), m=12, a=[1, 4, 6, 6, 7, 8], S=[0, 10]. -/
def code_4650 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4651: ((6,2,2)), m=12, a=[1, 4, 6, 7, 8, 9], S=[0, 10]. -/
def code_4651 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4652: ((6,2,2)), m=12, a=[1, 4, 6, 7, 8, 11], S=[0, 10]. -/
def code_4652 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4653: ((6,2,2)), m=12, a=[1, 4, 6, 7, 9, 11], S=[0, 10]. -/
def code_4653 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4654: ((6,2,2)), m=12, a=[1, 4, 6, 8, 8, 9], S=[0, 2]. -/
def code_4654 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4655: ((6,2,2)), m=12, a=[1, 4, 6, 8, 9, 9], S=[0, 2]. -/
def code_4655 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4656: ((6,2,2)), m=12, a=[1, 4, 6, 8, 9, 10], S=[0, 5]. -/
def code_4656 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4657: ((6,2,2)), m=12, a=[1, 4, 6, 8, 9, 11], S=[0, 5]. -/
def code_4657 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4658: ((6,2,2)), m=12, a=[1, 4, 6, 8, 9, 11], S=[0, 10]. -/
def code_4658 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4659: ((6,2,2)), m=12, a=[1, 4, 6, 8, 10, 11], S=[0, 7]. -/
def code_4659 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4660: ((6,2,2)), m=12, a=[1, 4, 6, 9, 9, 10], S=[0, 7]. -/
def code_4660 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4661: ((6,2,2)), m=12, a=[1, 4, 6, 9, 9, 11], S=[0, 5]. -/
def code_4661 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4662: ((6,2,2)), m=12, a=[1, 4, 6, 9, 10, 10], S=[0, 5]. -/
def code_4662 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4663: ((6,2,2)), m=12, a=[1, 4, 6, 9, 10, 11], S=[0, 7]. -/
def code_4663 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-2 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4664: ((6,2,2)), m=12, a=[1, 4, 7, 7, 7, 11], S=[0, 10]. -/
def code_4664 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4665: ((6,2,2)), m=12, a=[1, 4, 7, 7, 9, 11], S=[0, 10]. -/
def code_4665 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4666: ((6,2,2)), m=12, a=[1, 4, 7, 7, 11, 11], S=[0, 2]. -/
def code_4666 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4667: ((6,2,2)), m=12, a=[1, 4, 7, 8, 9, 11], S=[0, 10]. -/
def code_4667 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4668: ((6,2,2)), m=12, a=[1, 4, 7, 9, 9, 11], S=[0, 10]. -/
def code_4668 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4669: ((6,2,2)), m=12, a=[1, 4, 7, 9, 11, 11], S=[0, 2]. -/
def code_4669 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4670: ((6,2,2)), m=12, a=[1, 4, 8, 9, 9, 10], S=[0, 7]. -/
def code_4670 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #4671: ((6,2,2)), m=12, a=[1, 4, 9, 10, 11, 11], S=[0, 5]. -/
def code_4671 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4672: ((6,2,2)), m=12, a=[1, 5, 5, 5, 8, 9], S=[0, 10]. -/
def code_4672 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4673: ((6,2,2)), m=12, a=[1, 5, 5, 5, 8, 11], S=[0, 2]. -/
def code_4673 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4674: ((6,2,2)), m=12, a=[1, 5, 5, 6, 8, 9], S=[0, 2]. -/
def code_4674 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4675: ((6,2,2)), m=12, a=[1, 5, 5, 6, 9, 9], S=[0, 10]. -/
def code_4675 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4676: ((6,2,2)), m=12, a=[1, 5, 5, 6, 9, 11], S=[0, 10]. -/
def code_4676 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4677: ((6,2,2)), m=12, a=[1, 5, 5, 9, 9, 11], S=[0, 10]. -/
def code_4677 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #4678: ((6,2,2)), m=12, a=[1, 5, 5, 9, 11, 11], S=[0, 10]. -/
def code_4678 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4679: ((6,2,2)), m=12, a=[1, 5, 6, 7, 9, 9], S=[0, 2]. -/
def code_4679 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4680: ((6,2,2)), m=12, a=[1, 5, 6, 8, 8, 8], S=[0, 2]. -/
def code_4680 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4681: ((6,2,2)), m=12, a=[1, 5, 6, 8, 8, 9], S=[0, 2]. -/
def code_4681 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4682: ((6,2,2)), m=12, a=[1, 5, 6, 9, 9, 11], S=[0, 10]. -/
def code_4682 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4683: ((6,2,2)), m=12, a=[1, 5, 7, 7, 8, 9], S=[0, 2]. -/
def code_4683 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4684: ((6,2,2)), m=12, a=[1, 5, 7, 8, 8, 11], S=[0, 2]. -/
def code_4684 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4685: ((6,2,2)), m=12, a=[1, 5, 7, 8, 9, 11], S=[0, 2]. -/
def code_4685 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4686: ((6,2,2)), m=12, a=[1, 6, 6, 7, 8, 8], S=[0, 2]. -/
def code_4686 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4687: ((6,2,2)), m=12, a=[1, 6, 6, 7, 8, 8], S=[0, 10]. -/
def code_4687 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4688: ((6,2,2)), m=12, a=[1, 6, 6, 8, 8, 9], S=[0, 10]. -/
def code_4688 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4689: ((6,2,2)), m=12, a=[1, 6, 7, 7, 8, 9], S=[0, 10]. -/
def code_4689 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4690: ((6,2,2)), m=12, a=[1, 6, 7, 7, 9, 9], S=[0, 2]. -/
def code_4690 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4691: ((6,2,2)), m=12, a=[1, 6, 7, 7, 9, 11], S=[0, 2]. -/
def code_4691 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4692: ((6,2,2)), m=12, a=[1, 6, 7, 8, 8, 9], S=[0, 10]. -/
def code_4692 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4693: ((6,2,2)), m=12, a=[1, 6, 7, 8, 8, 11], S=[0, 2]. -/
def code_4693 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4694: ((6,2,2)), m=12, a=[1, 6, 7, 8, 9, 11], S=[0, 2]. -/
def code_4694 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4695: ((6,2,2)), m=12, a=[1, 6, 7, 8, 9, 11], S=[0, 10]. -/
def code_4695 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4696: ((6,2,2)), m=12, a=[1, 6, 7, 9, 9, 11], S=[0, 2]. -/
def code_4696 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4697: ((6,2,2)), m=12, a=[1, 6, 8, 8, 8, 9], S=[0, 10]. -/
def code_4697 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4698: ((6,2,2)), m=12, a=[1, 6, 8, 8, 9, 9], S=[0, 7]. -/
def code_4698 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4699: ((6,2,2)), m=12, a=[1, 6, 8, 8, 9, 10], S=[0, 5]. -/
def code_4699 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #4700: ((6,2,2)), m=12, a=[1, 6, 8, 8, 10, 11], S=[0, 5]. -/
def code_4700 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4701: ((6,2,2)), m=12, a=[1, 6, 8, 9, 9, 11], S=[0, 7]. -/
def code_4701 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4702: ((6,2,2)), m=12, a=[1, 6, 8, 9, 10, 10], S=[0, 7]. -/
def code_4702 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4703: ((6,2,2)), m=12, a=[1, 6, 8, 9, 10, 11], S=[0, 7]. -/
def code_4703 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4704: ((6,2,2)), m=12, a=[1, 6, 9, 9, 10, 11], S=[0, 5]. -/
def code_4704 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4705: ((6,2,2)), m=12, a=[1, 6, 9, 9, 11, 11], S=[0, 7]. -/
def code_4705 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4706: ((6,2,2)), m=12, a=[1, 6, 9, 10, 10, 11], S=[0, 7]. -/
def code_4706 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4707: ((6,2,2)), m=12, a=[1, 6, 10, 10, 10, 11], S=[0, 5]. -/
def code_4707 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4708: ((6,2,2)), m=12, a=[1, 7, 7, 7, 9, 11], S=[0, 10]. -/
def code_4708 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #4709: ((6,2,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 10]. -/
def code_4709 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4710: ((6,2,2)), m=12, a=[1, 7, 8, 8, 9, 11], S=[0, 2]. -/
def code_4710 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4711: ((6,2,2)), m=12, a=[1, 7, 8, 9, 9, 11], S=[0, 2]. -/
def code_4711 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4712: ((6,2,2)), m=12, a=[1, 8, 8, 9, 10, 11], S=[0, 5]. -/
def code_4712 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4713: ((6,2,2)), m=12, a=[1, 8, 9, 9, 11, 11], S=[0, 7]. -/
def code_4713 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4714: ((6,2,2)), m=12, a=[1, 8, 9, 10, 10, 11], S=[0, 7]. -/
def code_4714 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4715: ((6,2,2)), m=12, a=[2, 2, 2, 5, 5, 6], S=[0, 11]. -/
def code_4715 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4716: ((6,2,2)), m=12, a=[2, 2, 2, 5, 6, 7], S=[0, 1]. -/
def code_4716 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4717: ((6,2,2)), m=12, a=[2, 2, 2, 6, 7, 7], S=[0, 1]. -/
def code_4717 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4718: ((6,2,2)), m=12, a=[2, 2, 2, 6, 11, 11], S=[0, 5]. -/
def code_4718 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4719: ((6,2,2)), m=12, a=[2, 2, 3, 3, 4, 4], S=[0, 7]. -/
def code_4719 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4720: ((6,2,2)), m=12, a=[2, 2, 3, 3, 4, 4], S=[0, 11]. -/
def code_4720 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-5 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4721: ((6,2,2)), m=12, a=[2, 2, 3, 3, 4, 5], S=[0, 11]. -/
def code_4721 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-5 : ℚ) / 6)]

/-- Catalogue code #4722: ((6,2,2)), m=12, a=[2, 2, 3, 3, 4, 8], S=[0, 11]. -/
def code_4722 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4723: ((6,2,2)), m=12, a=[2, 2, 3, 3, 5, 7], S=[0, 11]. -/
def code_4723 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4724: ((6,2,2)), m=12, a=[2, 2, 3, 4, 4, 5], S=[0, 11]. -/
def code_4724 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4725: ((6,2,2)), m=12, a=[2, 2, 3, 4, 4, 7], S=[0, 11]. -/
def code_4725 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4726: ((6,2,2)), m=12, a=[2, 2, 3, 4, 4, 9], S=[0, 1]. -/
def code_4726 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
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
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4727: ((6,2,2)), m=12, a=[2, 2, 3, 4, 4, 9], S=[0, 5]. -/
def code_4727 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4728: ((6,2,2)), m=12, a=[2, 2, 3, 4, 5, 6], S=[0, 11]. -/
def code_4728 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4729: ((6,2,2)), m=12, a=[2, 2, 3, 4, 5, 8], S=[0, 1]. -/
def code_4729 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4730: ((6,2,2)), m=12, a=[2, 2, 3, 4, 6, 7], S=[0, 1]. -/
def code_4730 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4731: ((6,2,2)), m=12, a=[2, 2, 3, 4, 6, 7], S=[0, 11]. -/
def code_4731 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4732: ((6,2,2)), m=12, a=[2, 2, 3, 4, 6, 11], S=[0, 5]. -/
def code_4732 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4733: ((6,2,2)), m=12, a=[2, 2, 3, 4, 7, 8], S=[0, 11]. -/
def code_4733 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4734: ((6,2,2)), m=12, a=[2, 2, 3, 4, 7, 9], S=[0, 11]. -/
def code_4734 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4735: ((6,2,2)), m=12, a=[2, 2, 3, 4, 8, 9], S=[0, 5]. -/
def code_4735 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
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
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4736: ((6,2,2)), m=12, a=[2, 2, 3, 4, 8, 9], S=[0, 11]. -/
def code_4736 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4737: ((6,2,2)), m=12, a=[2, 2, 3, 5, 5, 9], S=[0, 1]. -/
def code_4737 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4738: ((6,2,2)), m=12, a=[2, 2, 3, 5, 6, 8], S=[0, 1]. -/
def code_4738 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4739: ((6,2,2)), m=12, a=[2, 2, 3, 5, 8, 9], S=[0, 1]. -/
def code_4739 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4740: ((6,2,2)), m=12, a=[2, 2, 3, 6, 7, 8], S=[0, 11]. -/
def code_4740 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4741: ((6,2,2)), m=12, a=[2, 2, 3, 6, 8, 11], S=[0, 7]. -/
def code_4741 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4742: ((6,2,2)), m=12, a=[2, 2, 3, 6, 11, 11], S=[0, 7]. -/
def code_4742 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4743: ((6,2,2)), m=12, a=[2, 2, 3, 7, 7, 8], S=[0, 11]. -/
def code_4743 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((5 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4744: ((6,2,2)), m=12, a=[2, 2, 3, 7, 8, 9], S=[0, 11]. -/
def code_4744 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4745: ((6,2,2)), m=12, a=[2, 2, 3, 8, 8, 11], S=[0, 7]. -/
def code_4745 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4746: ((6,2,2)), m=12, a=[2, 2, 4, 4, 5, 7], S=[0, 11]. -/
def code_4746 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4747: ((6,2,2)), m=12, a=[2, 2, 4, 4, 5, 9], S=[0, 1]. -/
def code_4747 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4748: ((6,2,2)), m=12, a=[2, 2, 4, 4, 9, 9], S=[0, 1]. -/
def code_4748 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4749: ((6,2,2)), m=12, a=[2, 2, 4, 4, 9, 9], S=[0, 5]. -/
def code_4749 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4750: ((6,2,2)), m=12, a=[2, 2, 4, 4, 9, 11], S=[0, 5]. -/
def code_4750 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4751: ((6,2,2)), m=12, a=[2, 2, 4, 5, 5, 8], S=[0, 1]. -/
def code_4751 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4752: ((6,2,2)), m=12, a=[2, 2, 4, 5, 6, 7], S=[0, 11]. -/
def code_4752 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4753: ((6,2,2)), m=12, a=[2, 2, 4, 5, 7, 9], S=[0, 11]. -/
def code_4753 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4754: ((6,2,2)), m=12, a=[2, 2, 4, 6, 7, 7], S=[0, 1]. -/
def code_4754 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4755: ((6,2,2)), m=12, a=[2, 2, 4, 6, 7, 9], S=[0, 1]. -/
def code_4755 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4756: ((6,2,2)), m=12, a=[2, 2, 4, 6, 7, 9], S=[0, 11]. -/
def code_4756 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4757: ((6,2,2)), m=12, a=[2, 2, 4, 7, 7, 9], S=[0, 1]. -/
def code_4757 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4758: ((6,2,2)), m=12, a=[2, 2, 4, 7, 8, 9], S=[0, 11]. -/
def code_4758 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4759: ((6,2,2)), m=12, a=[2, 2, 4, 7, 9, 9], S=[0, 1]. -/
def code_4759 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]

/-- Catalogue code #4760: ((6,2,2)), m=12, a=[2, 2, 4, 8, 9, 9], S=[0, 5]. -/
def code_4760 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4761: ((6,2,2)), m=12, a=[2, 2, 4, 8, 9, 11], S=[0, 5]. -/
def code_4761 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4762: ((6,2,2)), m=12, a=[2, 2, 4, 9, 9, 11], S=[0, 5]. -/
def code_4762 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-5 : ℚ) / 6)]

/-- Catalogue code #4763: ((6,2,2)), m=12, a=[2, 2, 5, 5, 6, 8], S=[0, 1]. -/
def code_4763 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4764: ((6,2,2)), m=12, a=[2, 2, 5, 5, 6, 9], S=[0, 1]. -/
def code_4764 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4765: ((6,2,2)), m=12, a=[2, 2, 5, 5, 8, 9], S=[0, 1]. -/
def code_4765 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4766: ((6,2,2)), m=12, a=[2, 2, 5, 8, 8, 9], S=[0, 1]. -/
def code_4766 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4767: ((6,2,2)), m=12, a=[2, 2, 6, 7, 7, 8], S=[0, 11]. -/
def code_4767 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4768: ((6,2,2)), m=12, a=[2, 2, 6, 7, 8, 9], S=[0, 11]. -/
def code_4768 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4769: ((6,2,2)), m=12, a=[2, 2, 6, 8, 9, 11], S=[0, 7]. -/
def code_4769 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4770: ((6,2,2)), m=12, a=[2, 2, 6, 8, 11, 11], S=[0, 7]. -/
def code_4770 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4771: ((6,2,2)), m=12, a=[2, 2, 7, 7, 9, 9], S=[0, 1]. -/
def code_4771 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4772: ((6,2,2)), m=12, a=[2, 2, 7, 7, 9, 9], S=[0, 11]. -/
def code_4772 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4773: ((6,2,2)), m=12, a=[2, 2, 7, 8, 8, 9], S=[0, 1]. -/
def code_4773 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4774: ((6,2,2)), m=12, a=[2, 2, 8, 8, 9, 9], S=[0, 1]. -/
def code_4774 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4775: ((6,2,2)), m=12, a=[2, 3, 3, 4, 4, 6], S=[0, 5]. -/
def code_4775 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4776: ((6,2,2)), m=12, a=[2, 3, 3, 4, 5, 5], S=[0, 11]. -/
def code_4776 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4777: ((6,2,2)), m=12, a=[2, 3, 3, 4, 6, 8], S=[0, 1]. -/
def code_4777 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4778: ((6,2,2)), m=12, a=[2, 3, 3, 4, 7, 7], S=[0, 1]. -/
def code_4778 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4779: ((6,2,2)), m=12, a=[2, 3, 3, 4, 7, 8], S=[0, 1]. -/
def code_4779 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4780: ((6,2,2)), m=12, a=[2, 3, 3, 4, 8, 10], S=[0, 1]. -/
def code_4780 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4781: ((6,2,2)), m=12, a=[2, 3, 3, 4, 8, 11], S=[0, 5]. -/
def code_4781 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4782: ((6,2,2)), m=12, a=[2, 3, 3, 4, 11, 11], S=[0, 5]. -/
def code_4782 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4783: ((6,2,2)), m=12, a=[2, 3, 3, 5, 5, 6], S=[0, 1]. -/
def code_4783 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4784: ((6,2,2)), m=12, a=[2, 3, 3, 5, 6, 7], S=[0, 1]. -/
def code_4784 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4785: ((6,2,2)), m=12, a=[2, 3, 3, 5, 6, 8], S=[0, 11]. -/
def code_4785 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4786: ((6,2,2)), m=12, a=[2, 3, 3, 5, 8, 8], S=[0, 11]. -/
def code_4786 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4787: ((6,2,2)), m=12, a=[2, 3, 3, 6, 7, 8], S=[0, 1]. -/
def code_4787 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4788: ((6,2,2)), m=12, a=[2, 3, 3, 6, 8, 8], S=[0, 1]. -/
def code_4788 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4789: ((6,2,2)), m=12, a=[2, 3, 3, 6, 8, 8], S=[0, 7]. -/
def code_4789 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4790: ((6,2,2)), m=12, a=[2, 3, 3, 6, 8, 11], S=[0, 5]. -/
def code_4790 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4791: ((6,2,2)), m=12, a=[2, 3, 3, 6, 11, 11], S=[0, 5]. -/
def code_4791 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4792: ((6,2,2)), m=12, a=[2, 3, 3, 6, 11, 11], S=[0, 7]. -/
def code_4792 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4793: ((6,2,2)), m=12, a=[2, 3, 3, 7, 8, 10], S=[0, 1]. -/
def code_4793 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4794: ((6,2,2)), m=12, a=[2, 3, 3, 8, 8, 11], S=[0, 5]. -/
def code_4794 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4795: ((6,2,2)), m=12, a=[2, 3, 4, 4, 5, 6], S=[0, 1]. -/
def code_4795 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4796: ((6,2,2)), m=12, a=[2, 3, 4, 4, 5, 6], S=[0, 11]. -/
def code_4796 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4797: ((6,2,2)), m=12, a=[2, 3, 4, 4, 6, 7], S=[0, 1]. -/
def code_4797 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4798: ((6,2,2)), m=12, a=[2, 3, 4, 4, 6, 7], S=[0, 11]. -/
def code_4798 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4799: ((6,2,2)), m=12, a=[2, 3, 4, 4, 6, 9], S=[0, 5]. -/
def code_4799 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4800: ((6,2,2)), m=12, a=[2, 3, 4, 4, 6, 11], S=[0, 5]. -/
def code_4800 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4801: ((6,2,2)), m=12, a=[2, 3, 4, 4, 7, 9], S=[0, 11]. -/
def code_4801 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4802: ((6,2,2)), m=12, a=[2, 3, 4, 4, 11, 11], S=[0, 5]. -/
def code_4802 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4803: ((6,2,2)), m=12, a=[2, 3, 4, 5, 5, 6], S=[0, 11]. -/
def code_4803 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4804: ((6,2,2)), m=12, a=[2, 3, 4, 5, 5, 7], S=[0, 1]. -/
def code_4804 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4805: ((6,2,2)), m=12, a=[2, 3, 4, 5, 5, 10], S=[0, 11]. -/
def code_4805 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4806: ((6,2,2)), m=12, a=[2, 3, 4, 5, 6, 7], S=[0, 1]. -/
def code_4806 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4807: ((6,2,2)), m=12, a=[2, 3, 4, 5, 6, 7], S=[0, 11]. -/
def code_4807 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4808: ((6,2,2)), m=12, a=[2, 3, 4, 5, 6, 8], S=[0, 1]. -/
def code_4808 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4809: ((6,2,2)), m=12, a=[2, 3, 4, 5, 6, 9], S=[0, 1]. -/
def code_4809 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4810: ((6,2,2)), m=12, a=[2, 3, 4, 5, 6, 10], S=[0, 1]. -/
def code_4810 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-5 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4811: ((6,2,2)), m=12, a=[2, 3, 4, 5, 7, 8], S=[0, 11]. -/
def code_4811 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4812: ((6,2,2)), m=12, a=[2, 3, 4, 5, 8, 9], S=[0, 1]. -/
def code_4812 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4813: ((6,2,2)), m=12, a=[2, 3, 4, 6, 7, 8], S=[0, 1]. -/
def code_4813 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4814: ((6,2,2)), m=12, a=[2, 3, 4, 6, 7, 8], S=[0, 11]. -/
def code_4814 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2)]

/-- Catalogue code #4815: ((6,2,2)), m=12, a=[2, 3, 4, 6, 7, 9], S=[0, 11]. -/
def code_4815 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4816: ((6,2,2)), m=12, a=[2, 3, 4, 6, 8, 9], S=[0, 1]. -/
def code_4816 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4817: ((6,2,2)), m=12, a=[2, 3, 4, 6, 8, 11], S=[0, 5]. -/
def code_4817 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4818: ((6,2,2)), m=12, a=[2, 3, 4, 6, 9, 11], S=[0, 7]. -/
def code_4818 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4819: ((6,2,2)), m=12, a=[2, 3, 4, 6, 10, 11], S=[0, 5]. -/
def code_4819 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4820: ((6,2,2)), m=12, a=[2, 3, 4, 6, 10, 11], S=[0, 7]. -/
def code_4820 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4821: ((6,2,2)), m=12, a=[2, 3, 4, 6, 11, 11], S=[0, 5]. -/
def code_4821 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4822: ((6,2,2)), m=12, a=[2, 3, 4, 7, 7, 8], S=[0, 1]. -/
def code_4822 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4823: ((6,2,2)), m=12, a=[2, 3, 4, 8, 9, 11], S=[0, 7]. -/
def code_4823 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4824: ((6,2,2)), m=12, a=[2, 3, 5, 5, 8, 8], S=[0, 1]. -/
def code_4824 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4825: ((6,2,2)), m=12, a=[2, 3, 5, 5, 9, 10], S=[0, 11]. -/
def code_4825 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4826: ((6,2,2)), m=12, a=[2, 3, 5, 6, 7, 8], S=[0, 11]. -/
def code_4826 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4827: ((6,2,2)), m=12, a=[2, 3, 5, 6, 7, 10], S=[0, 1]. -/
def code_4827 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4828: ((6,2,2)), m=12, a=[2, 3, 5, 6, 8, 8], S=[0, 1]. -/
def code_4828 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4829: ((6,2,2)), m=12, a=[2, 3, 5, 6, 8, 8], S=[0, 11]. -/
def code_4829 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4830: ((6,2,2)), m=12, a=[2, 3, 5, 6, 8, 9], S=[0, 1]. -/
def code_4830 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4831: ((6,2,2)), m=12, a=[2, 3, 5, 7, 8, 9], S=[0, 11]. -/
def code_4831 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4832: ((6,2,2)), m=12, a=[2, 3, 5, 8, 8, 9], S=[0, 1]. -/
def code_4832 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4833: ((6,2,2)), m=12, a=[2, 3, 6, 7, 7, 8], S=[0, 1]. -/
def code_4833 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4834: ((6,2,2)), m=12, a=[2, 3, 6, 7, 7, 8], S=[0, 11]. -/
def code_4834 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4835: ((6,2,2)), m=12, a=[2, 3, 6, 7, 7, 9], S=[0, 11]. -/
def code_4835 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4836: ((6,2,2)), m=12, a=[2, 3, 6, 7, 8, 8], S=[0, 1]. -/
def code_4836 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]

/-- Catalogue code #4837: ((6,2,2)), m=12, a=[2, 3, 6, 7, 8, 8], S=[0, 11]. -/
def code_4837 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4838: ((6,2,2)), m=12, a=[2, 3, 6, 7, 8, 10], S=[0, 1]. -/
def code_4838 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4839: ((6,2,2)), m=12, a=[2, 3, 6, 7, 8, 10], S=[0, 11]. -/
def code_4839 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4840: ((6,2,2)), m=12, a=[2, 3, 6, 8, 8, 9], S=[0, 1]. -/
def code_4840 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4841: ((6,2,2)), m=12, a=[2, 3, 6, 8, 8, 9], S=[0, 5]. -/
def code_4841 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4842: ((6,2,2)), m=12, a=[2, 3, 6, 8, 8, 9], S=[0, 7]. -/
def code_4842 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4843: ((6,2,2)), m=12, a=[2, 3, 6, 8, 8, 9], S=[0, 11]. -/
def code_4843 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4844: ((6,2,2)), m=12, a=[2, 3, 6, 8, 8, 11], S=[0, 7]. -/
def code_4844 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4845: ((6,2,2)), m=12, a=[2, 3, 6, 8, 9, 11], S=[0, 7]. -/
def code_4845 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4846: ((6,2,2)), m=12, a=[2, 3, 7, 7, 7, 8], S=[0, 11]. -/
def code_4846 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4847: ((6,2,2)), m=12, a=[2, 3, 7, 7, 8, 9], S=[0, 1]. -/
def code_4847 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4848: ((6,2,2)), m=12, a=[2, 3, 7, 8, 8, 10], S=[0, 1]. -/
def code_4848 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4849: ((6,2,2)), m=12, a=[2, 3, 8, 8, 9, 11], S=[0, 7]. -/
def code_4849 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4850: ((6,2,2)), m=12, a=[2, 3, 9, 10, 11, 11], S=[0, 5]. -/
def code_4850 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (3 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4851: ((6,2,2)), m=12, a=[2, 4, 4, 5, 5, 6], S=[0, 11]. -/
def code_4851 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4852: ((6,2,2)), m=12, a=[2, 4, 4, 5, 5, 9], S=[0, 11]. -/
def code_4852 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4853: ((6,2,2)), m=12, a=[2, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_4853 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4854: ((6,2,2)), m=12, a=[2, 4, 4, 5, 6, 9], S=[0, 1]. -/
def code_4854 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4855: ((6,2,2)), m=12, a=[2, 4, 4, 5, 7, 9], S=[0, 1]. -/
def code_4855 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4856: ((6,2,2)), m=12, a=[2, 4, 4, 5, 9, 10], S=[0, 11]. -/
def code_4856 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4857: ((6,2,2)), m=12, a=[2, 4, 4, 6, 7, 9], S=[0, 11]. -/
def code_4857 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4858: ((6,2,2)), m=12, a=[2, 4, 4, 6, 9, 9], S=[0, 5]. -/
def code_4858 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4859: ((6,2,2)), m=12, a=[2, 4, 4, 6, 9, 9], S=[0, 11]. -/
def code_4859 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4860: ((6,2,2)), m=12, a=[2, 4, 4, 6, 9, 11], S=[0, 5]. -/
def code_4860 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4861: ((6,2,2)), m=12, a=[2, 4, 4, 6, 9, 11], S=[0, 7]. -/
def code_4861 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4862: ((6,2,2)), m=12, a=[2, 4, 4, 6, 11, 11], S=[0, 5]. -/
def code_4862 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4863: ((6,2,2)), m=12, a=[2, 4, 4, 7, 9, 9], S=[0, 1]. -/
def code_4863 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4864: ((6,2,2)), m=12, a=[2, 4, 4, 9, 9, 11], S=[0, 5]. -/
def code_4864 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4865: ((6,2,2)), m=12, a=[2, 4, 5, 5, 6, 9], S=[0, 11]. -/
def code_4865 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((2 : ℚ) / 3)]

/-- Catalogue code #4866: ((6,2,2)), m=12, a=[2, 4, 5, 5, 8, 10], S=[0, 11]. -/
def code_4866 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4867: ((6,2,2)), m=12, a=[2, 4, 5, 6, 7, 8], S=[0, 11]. -/
def code_4867 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4868: ((6,2,2)), m=12, a=[2, 4, 5, 6, 7, 9], S=[0, 1]. -/
def code_4868 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 6)]

/-- Catalogue code #4869: ((6,2,2)), m=12, a=[2, 4, 5, 6, 7, 9], S=[0, 11]. -/
def code_4869 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4870: ((6,2,2)), m=12, a=[2, 4, 5, 6, 7, 10], S=[0, 1]. -/
def code_4870 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2)]

/-- Catalogue code #4871: ((6,2,2)), m=12, a=[2, 4, 5, 6, 8, 9], S=[0, 1]. -/
def code_4871 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4872: ((6,2,2)), m=12, a=[2, 4, 5, 6, 8, 9], S=[0, 11]. -/
def code_4872 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4873: ((6,2,2)), m=12, a=[2, 4, 5, 6, 9, 10], S=[0, 1]. -/
def code_4873 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4874: ((6,2,2)), m=12, a=[2, 4, 5, 6, 9, 10], S=[0, 11]. -/
def code_4874 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4875: ((6,2,2)), m=12, a=[2, 4, 5, 7, 9, 9], S=[0, 11]. -/
def code_4875 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4876: ((6,2,2)), m=12, a=[2, 4, 5, 8, 9, 9], S=[0, 11]. -/
def code_4876 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4877: ((6,2,2)), m=12, a=[2, 4, 6, 7, 7, 8], S=[0, 1]. -/
def code_4877 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #4878: ((6,2,2)), m=12, a=[2, 4, 6, 7, 7, 9], S=[0, 1]. -/
def code_4878 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #4879: ((6,2,2)), m=12, a=[2, 4, 6, 7, 8, 9], S=[0, 1]. -/
def code_4879 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4880: ((6,2,2)), m=12, a=[2, 4, 6, 7, 8, 9], S=[0, 11]. -/
def code_4880 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4881: ((6,2,2)), m=12, a=[2, 4, 6, 7, 9, 10], S=[0, 1]. -/
def code_4881 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6)]

/-- Catalogue code #4882: ((6,2,2)), m=12, a=[2, 4, 6, 8, 9, 9], S=[0, 7]. -/
def code_4882 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4883: ((6,2,2)), m=12, a=[2, 4, 6, 8, 9, 11], S=[0, 5]. -/
def code_4883 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4884: ((6,2,2)), m=12, a=[2, 4, 6, 9, 10, 11], S=[0, 7]. -/
def code_4884 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4885: ((6,2,2)), m=12, a=[2, 4, 6, 9, 11, 11], S=[0, 5]. -/
def code_4885 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4886: ((6,2,2)), m=12, a=[2, 4, 6, 10, 11, 11], S=[0, 5]. -/
def code_4886 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4887: ((6,2,2)), m=12, a=[2, 4, 7, 7, 7, 9], S=[0, 1]. -/
def code_4887 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4888: ((6,2,2)), m=12, a=[2, 4, 7, 7, 7, 9], S=[0, 11]. -/
def code_4888 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4889: ((6,2,2)), m=12, a=[2, 4, 7, 7, 8, 10], S=[0, 1]. -/
def code_4889 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4890: ((6,2,2)), m=12, a=[2, 4, 8, 9, 9, 10], S=[0, 11]. -/
def code_4890 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4891: ((6,2,2)), m=12, a=[2, 4, 8, 10, 11, 11], S=[0, 5]. -/
def code_4891 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4892: ((6,2,2)), m=12, a=[2, 4, 9, 9, 11, 11], S=[0, 5]. -/
def code_4892 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4893: ((6,2,2)), m=12, a=[2, 4, 9, 10, 11, 11], S=[0, 5]. -/
def code_4893 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4894: ((6,2,2)), m=12, a=[2, 5, 5, 5, 8, 9], S=[0, 11]. -/
def code_4894 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4895: ((6,2,2)), m=12, a=[2, 5, 5, 6, 8, 8], S=[0, 1]. -/
def code_4895 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3)]

/-- Catalogue code #4896: ((6,2,2)), m=12, a=[2, 5, 5, 6, 8, 9], S=[0, 1]. -/
def code_4896 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3)]

/-- Catalogue code #4897: ((6,2,2)), m=12, a=[2, 5, 5, 6, 9, 9], S=[0, 1]. -/
def code_4897 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4898: ((6,2,2)), m=12, a=[2, 5, 5, 6, 9, 9], S=[0, 11]. -/
def code_4898 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4899: ((6,2,2)), m=12, a=[2, 5, 6, 7, 8, 9], S=[0, 11]. -/
def code_4899 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4900: ((6,2,2)), m=12, a=[2, 5, 6, 7, 8, 10], S=[0, 11]. -/
def code_4900 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4901: ((6,2,2)), m=12, a=[2, 5, 6, 8, 8, 9], S=[0, 1]. -/
def code_4901 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4902: ((6,2,2)), m=12, a=[2, 5, 6, 8, 8, 9], S=[0, 11]. -/
def code_4902 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4903: ((6,2,2)), m=12, a=[2, 5, 6, 8, 9, 9], S=[0, 11]. -/
def code_4903 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4904: ((6,2,2)), m=12, a=[2, 5, 6, 8, 9, 10], S=[0, 11]. -/
def code_4904 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4905: ((6,2,2)), m=12, a=[2, 5, 7, 8, 9, 10], S=[0, 11]. -/
def code_4905 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4906: ((6,2,2)), m=12, a=[2, 5, 8, 8, 9, 9], S=[0, 11]. -/
def code_4906 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4907: ((6,2,2)), m=12, a=[2, 5, 8, 9, 9, 10], S=[0, 11]. -/
def code_4907 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4908: ((6,2,2)), m=12, a=[2, 6, 7, 7, 8, 8], S=[0, 11]. -/
def code_4908 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4909: ((6,2,2)), m=12, a=[2, 6, 7, 7, 8, 9], S=[0, 1]. -/
def code_4909 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((-2 : ℚ) / 3)]

/-- Catalogue code #4910: ((6,2,2)), m=12, a=[2, 6, 7, 7, 8, 9], S=[0, 11]. -/
def code_4910 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-2 : ℚ) / 3)]

/-- Catalogue code #4911: ((6,2,2)), m=12, a=[2, 6, 7, 8, 8, 9], S=[0, 1]. -/
def code_4911 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #4912: ((6,2,2)), m=12, a=[2, 6, 7, 8, 8, 9], S=[0, 11]. -/
def code_4912 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4913: ((6,2,2)), m=12, a=[2, 6, 7, 8, 9, 10], S=[0, 1]. -/
def code_4913 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4914: ((6,2,2)), m=12, a=[2, 6, 7, 8, 9, 10], S=[0, 11]. -/
def code_4914 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4915: ((6,2,2)), m=12, a=[2, 6, 8, 8, 9, 9], S=[0, 1]. -/
def code_4915 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4916: ((6,2,2)), m=12, a=[2, 6, 8, 8, 9, 9], S=[0, 5]. -/
def code_4916 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4917: ((6,2,2)), m=12, a=[2, 6, 8, 8, 9, 11], S=[0, 5]. -/
def code_4917 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4918: ((6,2,2)), m=12, a=[2, 6, 8, 8, 9, 11], S=[0, 7]. -/
def code_4918 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4919: ((6,2,2)), m=12, a=[2, 6, 8, 8, 11, 11], S=[0, 5]. -/
def code_4919 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4920: ((6,2,2)), m=12, a=[2, 6, 8, 8, 11, 11], S=[0, 7]. -/
def code_4920 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4921: ((6,2,2)), m=12, a=[2, 6, 8, 9, 9, 11], S=[0, 5]. -/
def code_4921 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4922: ((6,2,2)), m=12, a=[2, 6, 9, 9, 11, 11], S=[0, 5]. -/
def code_4922 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4923: ((6,2,2)), m=12, a=[2, 6, 9, 10, 11, 11], S=[0, 5]. -/
def code_4923 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6)]

/-- Catalogue code #4924: ((6,2,2)), m=12, a=[2, 7, 7, 8, 8, 9], S=[0, 11]. -/
def code_4924 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4925: ((6,2,2)), m=12, a=[2, 7, 7, 8, 9, 10], S=[0, 1]. -/
def code_4925 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4926: ((6,2,2)), m=12, a=[2, 7, 8, 8, 9, 9], S=[0, 1]. -/
def code_4926 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4927: ((6,2,2)), m=12, a=[2, 8, 8, 9, 9, 11], S=[0, 5]. -/
def code_4927 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4928: ((6,2,2)), m=12, a=[2, 8, 8, 9, 11, 11], S=[0, 7]. -/
def code_4928 : ExampleData 6 12 2 where
  a := ![(2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4929: ((6,2,2)), m=12, a=[3, 3, 4, 4, 5, 6], S=[0, 11]. -/
def code_4929 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4930: ((6,2,2)), m=12, a=[3, 3, 4, 4, 5, 10], S=[0, 11]. -/
def code_4930 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4931: ((6,2,2)), m=12, a=[3, 3, 4, 4, 6, 7], S=[0, 1]. -/
def code_4931 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4932: ((6,2,2)), m=12, a=[3, 3, 4, 4, 6, 7], S=[0, 10]. -/
def code_4932 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #4933: ((6,2,2)), m=12, a=[3, 3, 4, 4, 6, 10], S=[0, 1]. -/
def code_4933 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4934: ((6,2,2)), m=12, a=[3, 3, 4, 4, 6, 10], S=[0, 5]. -/
def code_4934 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4935: ((6,2,2)), m=12, a=[3, 3, 4, 4, 6, 11], S=[0, 5]. -/
def code_4935 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4936: ((6,2,2)), m=12, a=[3, 3, 4, 4, 7, 10], S=[0, 1]. -/
def code_4936 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4937: ((6,2,2)), m=12, a=[3, 3, 4, 5, 6, 7], S=[0, 11]. -/
def code_4937 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4938: ((6,2,2)), m=12, a=[3, 3, 4, 5, 6, 10], S=[0, 11]. -/
def code_4938 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]

/-- Catalogue code #4939: ((6,2,2)), m=12, a=[3, 3, 4, 5, 7, 7], S=[0, 11]. -/
def code_4939 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4940: ((6,2,2)), m=12, a=[3, 3, 4, 6, 7, 7], S=[0, 1]. -/
def code_4940 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4941: ((6,2,2)), m=12, a=[3, 3, 4, 6, 7, 7], S=[0, 10]. -/
def code_4941 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4942: ((6,2,2)), m=12, a=[3, 3, 4, 6, 7, 7], S=[0, 11]. -/
def code_4942 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4943: ((6,2,2)), m=12, a=[3, 3, 4, 6, 8, 11], S=[0, 10]. -/
def code_4943 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4944: ((6,2,2)), m=12, a=[3, 3, 4, 6, 10, 11], S=[0, 5]. -/
def code_4944 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4945: ((6,2,2)), m=12, a=[3, 3, 4, 7, 7, 7], S=[0, 1]. -/
def code_4945 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4946: ((6,2,2)), m=12, a=[3, 3, 4, 7, 8, 10], S=[0, 1]. -/
def code_4946 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4947: ((6,2,2)), m=12, a=[3, 3, 4, 7, 11, 11], S=[0, 10]. -/
def code_4947 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4948: ((6,2,2)), m=12, a=[3, 3, 4, 8, 10, 11], S=[0, 5]. -/
def code_4948 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]

/-- Catalogue code #4949: ((6,2,2)), m=12, a=[3, 3, 5, 5, 5, 6], S=[0, 11]. -/
def code_4949 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4950: ((6,2,2)), m=12, a=[3, 3, 5, 5, 5, 8], S=[0, 11]. -/
def code_4950 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4951: ((6,2,2)), m=12, a=[3, 3, 5, 5, 6, 7], S=[0, 1]. -/
def code_4951 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]

/-- Catalogue code #4952: ((6,2,2)), m=12, a=[3, 3, 5, 5, 6, 8], S=[0, 10]. -/
def code_4952 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4953: ((6,2,2)), m=12, a=[3, 3, 5, 5, 6, 8], S=[0, 11]. -/
def code_4953 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]

/-- Catalogue code #4954: ((6,2,2)), m=12, a=[3, 3, 5, 5, 6, 11], S=[0, 10]. -/
def code_4954 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4955: ((6,2,2)), m=12, a=[3, 3, 5, 5, 7, 8], S=[0, 1]. -/
def code_4955 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4956: ((6,2,2)), m=12, a=[3, 3, 5, 5, 10, 10], S=[0, 1]. -/
def code_4956 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4957: ((6,2,2)), m=12, a=[3, 3, 5, 5, 10, 10], S=[0, 11]. -/
def code_4957 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4958: ((6,2,2)), m=12, a=[3, 3, 5, 6, 7, 7], S=[0, 11]. -/
def code_4958 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4959: ((6,2,2)), m=12, a=[3, 3, 5, 6, 7, 8], S=[0, 1]. -/
def code_4959 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4960: ((6,2,2)), m=12, a=[3, 3, 5, 6, 7, 10], S=[0, 11]. -/
def code_4960 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4961: ((6,2,2)), m=12, a=[3, 3, 5, 6, 8, 8], S=[0, 11]. -/
def code_4961 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4962: ((6,2,2)), m=12, a=[3, 3, 5, 6, 11, 11], S=[0, 10]. -/
def code_4962 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4963: ((6,2,2)), m=12, a=[3, 3, 5, 7, 8, 10], S=[0, 1]. -/
def code_4963 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4964: ((6,2,2)), m=12, a=[3, 3, 5, 7, 8, 10], S=[0, 11]. -/
def code_4964 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4965: ((6,2,2)), m=12, a=[3, 3, 5, 8, 8, 10], S=[0, 11]. -/
def code_4965 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4966: ((6,2,2)), m=12, a=[3, 3, 5, 8, 10, 10], S=[0, 11]. -/
def code_4966 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]

/-- Catalogue code #4967: ((6,2,2)), m=12, a=[3, 3, 6, 7, 7, 7], S=[0, 1]. -/
def code_4967 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4968: ((6,2,2)), m=12, a=[3, 3, 6, 7, 7, 8], S=[0, 2]. -/
def code_4968 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4969: ((6,2,2)), m=12, a=[3, 3, 6, 7, 7, 10], S=[0, 1]. -/
def code_4969 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4970: ((6,2,2)), m=12, a=[3, 3, 6, 7, 7, 11], S=[0, 2]. -/
def code_4970 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4971: ((6,2,2)), m=12, a=[3, 3, 6, 7, 8, 8], S=[0, 1]. -/
def code_4971 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4972: ((6,2,2)), m=12, a=[3, 3, 6, 7, 11, 11], S=[0, 10]. -/
def code_4972 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4973: ((6,2,2)), m=12, a=[3, 3, 6, 8, 8, 11], S=[0, 5]. -/
def code_4973 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4974: ((6,2,2)), m=12, a=[3, 3, 6, 8, 11, 11], S=[0, 5]. -/
def code_4974 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4975: ((6,2,2)), m=12, a=[3, 3, 6, 8, 11, 11], S=[0, 7]. -/
def code_4975 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4976: ((6,2,2)), m=12, a=[3, 3, 6, 8, 11, 11], S=[0, 10]. -/
def code_4976 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4977: ((6,2,2)), m=12, a=[3, 3, 7, 7, 8, 11], S=[0, 2]. -/
def code_4977 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #4978: ((6,2,2)), m=12, a=[3, 4, 4, 5, 5, 6], S=[0, 1]. -/
def code_4978 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4979: ((6,2,2)), m=12, a=[3, 4, 4, 5, 5, 10], S=[0, 1]. -/
def code_4979 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4980: ((6,2,2)), m=12, a=[3, 4, 4, 5, 5, 11], S=[0, 2]. -/
def code_4980 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4981: ((6,2,2)), m=12, a=[3, 4, 4, 5, 6, 6], S=[0, 2]. -/
def code_4981 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4982: ((6,2,2)), m=12, a=[3, 4, 4, 5, 6, 10], S=[0, 11]. -/
def code_4982 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #4983: ((6,2,2)), m=12, a=[3, 4, 4, 5, 10, 10], S=[0, 1]. -/
def code_4983 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #4984: ((6,2,2)), m=12, a=[3, 4, 4, 5, 10, 10], S=[0, 11]. -/
def code_4984 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4985: ((6,2,2)), m=12, a=[3, 4, 4, 6, 6, 11], S=[0, 2]. -/
def code_4985 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4986: ((6,2,2)), m=12, a=[3, 4, 4, 6, 7, 8], S=[0, 2]. -/
def code_4986 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #4987: ((6,2,2)), m=12, a=[3, 4, 4, 6, 7, 9], S=[0, 11]. -/
def code_4987 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]

/-- Catalogue code #4988: ((6,2,2)), m=12, a=[3, 4, 4, 6, 7, 10], S=[0, 1]. -/
def code_4988 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #4989: ((6,2,2)), m=12, a=[3, 4, 4, 6, 7, 10], S=[0, 11]. -/
def code_4989 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6)]

/-- Catalogue code #4990: ((6,2,2)), m=12, a=[3, 4, 4, 6, 10, 11], S=[0, 7]. -/
def code_4990 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]

/-- Catalogue code #4991: ((6,2,2)), m=12, a=[3, 4, 4, 6, 11, 11], S=[0, 5]. -/
def code_4991 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]

/-- Catalogue code #4992: ((6,2,2)), m=12, a=[3, 4, 4, 7, 9, 10], S=[0, 11]. -/
def code_4992 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #4993: ((6,2,2)), m=12, a=[3, 4, 4, 9, 10, 10], S=[0, 5]. -/
def code_4993 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
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
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #4994: ((6,2,2)), m=12, a=[3, 4, 5, 5, 5, 9], S=[0, 1]. -/
def code_4994 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4995: ((6,2,2)), m=12, a=[3, 4, 5, 5, 6, 9], S=[0, 1]. -/
def code_4995 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4996: ((6,2,2)), m=12, a=[3, 4, 5, 5, 6, 10], S=[0, 1]. -/
def code_4996 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]

/-- Catalogue code #4997: ((6,2,2)), m=12, a=[3, 4, 5, 5, 6, 10], S=[0, 11]. -/
def code_4997 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]

/-- Catalogue code #4998: ((6,2,2)), m=12, a=[3, 4, 5, 5, 9, 10], S=[0, 1]. -/
def code_4998 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]

/-- Catalogue code #4999: ((6,2,2)), m=12, a=[3, 4, 5, 5, 9, 11], S=[0, 2]. -/
def code_4999 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]
def checks : List Bool :=
  [decide code_4500.OK,
   decide code_4501.OK,
   decide code_4502.OK,
   decide code_4503.OK,
   decide code_4504.OK,
   decide code_4505.OK,
   decide code_4506.OK,
   decide code_4507.OK,
   decide code_4508.OK,
   decide code_4509.OK,
   decide code_4510.OK,
   decide code_4511.OK,
   decide code_4512.OK,
   decide code_4513.OK,
   decide code_4514.OK,
   decide code_4515.OK,
   decide code_4516.OK,
   decide code_4517.OK,
   decide code_4518.OK,
   decide code_4519.OK,
   decide code_4520.OK,
   decide code_4521.OK,
   decide code_4522.OK,
   decide code_4523.OK,
   decide code_4524.OK,
   decide code_4525.OK,
   decide code_4526.OK,
   decide code_4527.OK,
   decide code_4528.OK,
   decide code_4529.OK,
   decide code_4530.OK,
   decide code_4531.OK,
   decide code_4532.OK,
   decide code_4533.OK,
   decide code_4534.OK,
   decide code_4535.OK,
   decide code_4536.OK,
   decide code_4537.OK,
   decide code_4538.OK,
   decide code_4539.OK,
   decide code_4540.OK,
   decide code_4541.OK,
   decide code_4542.OK,
   decide code_4543.OK,
   decide code_4544.OK,
   decide code_4545.OK,
   decide code_4546.OK,
   decide code_4547.OK,
   decide code_4548.OK,
   decide code_4549.OK,
   decide code_4550.OK,
   decide code_4551.OK,
   decide code_4552.OK,
   decide code_4553.OK,
   decide code_4554.OK,
   decide code_4555.OK,
   decide code_4556.OK,
   decide code_4557.OK,
   decide code_4558.OK,
   decide code_4559.OK,
   decide code_4560.OK,
   decide code_4561.OK,
   decide code_4562.OK,
   decide code_4563.OK,
   decide code_4564.OK,
   decide code_4565.OK,
   decide code_4566.OK,
   decide code_4567.OK,
   decide code_4568.OK,
   decide code_4569.OK,
   decide code_4570.OK,
   decide code_4571.OK,
   decide code_4572.OK,
   decide code_4573.OK,
   decide code_4574.OK,
   decide code_4575.OK,
   decide code_4576.OK,
   decide code_4577.OK,
   decide code_4578.OK,
   decide code_4579.OK,
   decide code_4580.OK,
   decide code_4581.OK,
   decide code_4582.OK,
   decide code_4583.OK,
   decide code_4584.OK,
   decide code_4585.OK,
   decide code_4586.OK,
   decide code_4587.OK,
   decide code_4588.OK,
   decide code_4589.OK,
   decide code_4590.OK,
   decide code_4591.OK,
   decide code_4592.OK,
   decide code_4593.OK,
   decide code_4594.OK,
   decide code_4595.OK,
   decide code_4596.OK,
   decide code_4597.OK,
   decide code_4598.OK,
   decide code_4599.OK,
   decide code_4600.OK,
   decide code_4601.OK,
   decide code_4602.OK,
   decide code_4603.OK,
   decide code_4604.OK,
   decide code_4605.OK,
   decide code_4606.OK,
   decide code_4607.OK,
   decide code_4608.OK,
   decide code_4609.OK,
   decide code_4610.OK,
   decide code_4611.OK,
   decide code_4612.OK,
   decide code_4613.OK,
   decide code_4614.OK,
   decide code_4615.OK,
   decide code_4616.OK,
   decide code_4617.OK,
   decide code_4618.OK,
   decide code_4619.OK,
   decide code_4620.OK,
   decide code_4621.OK,
   decide code_4622.OK,
   decide code_4623.OK,
   decide code_4624.OK,
   decide code_4625.OK,
   decide code_4626.OK,
   decide code_4627.OK,
   decide code_4628.OK,
   decide code_4629.OK,
   decide code_4630.OK,
   decide code_4631.OK,
   decide code_4632.OK,
   decide code_4633.OK,
   decide code_4634.OK,
   decide code_4635.OK,
   decide code_4636.OK,
   decide code_4637.OK,
   decide code_4638.OK,
   decide code_4639.OK,
   decide code_4640.OK,
   decide code_4641.OK,
   decide code_4642.OK,
   decide code_4643.OK,
   decide code_4644.OK,
   decide code_4645.OK,
   decide code_4646.OK,
   decide code_4647.OK,
   decide code_4648.OK,
   decide code_4649.OK,
   decide code_4650.OK,
   decide code_4651.OK,
   decide code_4652.OK,
   decide code_4653.OK,
   decide code_4654.OK,
   decide code_4655.OK,
   decide code_4656.OK,
   decide code_4657.OK,
   decide code_4658.OK,
   decide code_4659.OK,
   decide code_4660.OK,
   decide code_4661.OK,
   decide code_4662.OK,
   decide code_4663.OK,
   decide code_4664.OK,
   decide code_4665.OK,
   decide code_4666.OK,
   decide code_4667.OK,
   decide code_4668.OK,
   decide code_4669.OK,
   decide code_4670.OK,
   decide code_4671.OK,
   decide code_4672.OK,
   decide code_4673.OK,
   decide code_4674.OK,
   decide code_4675.OK,
   decide code_4676.OK,
   decide code_4677.OK,
   decide code_4678.OK,
   decide code_4679.OK,
   decide code_4680.OK,
   decide code_4681.OK,
   decide code_4682.OK,
   decide code_4683.OK,
   decide code_4684.OK,
   decide code_4685.OK,
   decide code_4686.OK,
   decide code_4687.OK,
   decide code_4688.OK,
   decide code_4689.OK,
   decide code_4690.OK,
   decide code_4691.OK,
   decide code_4692.OK,
   decide code_4693.OK,
   decide code_4694.OK,
   decide code_4695.OK,
   decide code_4696.OK,
   decide code_4697.OK,
   decide code_4698.OK,
   decide code_4699.OK,
   decide code_4700.OK,
   decide code_4701.OK,
   decide code_4702.OK,
   decide code_4703.OK,
   decide code_4704.OK,
   decide code_4705.OK,
   decide code_4706.OK,
   decide code_4707.OK,
   decide code_4708.OK,
   decide code_4709.OK,
   decide code_4710.OK,
   decide code_4711.OK,
   decide code_4712.OK,
   decide code_4713.OK,
   decide code_4714.OK,
   decide code_4715.OK,
   decide code_4716.OK,
   decide code_4717.OK,
   decide code_4718.OK,
   decide code_4719.OK,
   decide code_4720.OK,
   decide code_4721.OK,
   decide code_4722.OK,
   decide code_4723.OK,
   decide code_4724.OK,
   decide code_4725.OK,
   decide code_4726.OK,
   decide code_4727.OK,
   decide code_4728.OK,
   decide code_4729.OK,
   decide code_4730.OK,
   decide code_4731.OK,
   decide code_4732.OK,
   decide code_4733.OK,
   decide code_4734.OK,
   decide code_4735.OK,
   decide code_4736.OK,
   decide code_4737.OK,
   decide code_4738.OK,
   decide code_4739.OK,
   decide code_4740.OK,
   decide code_4741.OK,
   decide code_4742.OK,
   decide code_4743.OK,
   decide code_4744.OK,
   decide code_4745.OK,
   decide code_4746.OK,
   decide code_4747.OK,
   decide code_4748.OK,
   decide code_4749.OK,
   decide code_4750.OK,
   decide code_4751.OK,
   decide code_4752.OK,
   decide code_4753.OK,
   decide code_4754.OK,
   decide code_4755.OK,
   decide code_4756.OK,
   decide code_4757.OK,
   decide code_4758.OK,
   decide code_4759.OK,
   decide code_4760.OK,
   decide code_4761.OK,
   decide code_4762.OK,
   decide code_4763.OK,
   decide code_4764.OK,
   decide code_4765.OK,
   decide code_4766.OK,
   decide code_4767.OK,
   decide code_4768.OK,
   decide code_4769.OK,
   decide code_4770.OK,
   decide code_4771.OK,
   decide code_4772.OK,
   decide code_4773.OK,
   decide code_4774.OK,
   decide code_4775.OK,
   decide code_4776.OK,
   decide code_4777.OK,
   decide code_4778.OK,
   decide code_4779.OK,
   decide code_4780.OK,
   decide code_4781.OK,
   decide code_4782.OK,
   decide code_4783.OK,
   decide code_4784.OK,
   decide code_4785.OK,
   decide code_4786.OK,
   decide code_4787.OK,
   decide code_4788.OK,
   decide code_4789.OK,
   decide code_4790.OK,
   decide code_4791.OK,
   decide code_4792.OK,
   decide code_4793.OK,
   decide code_4794.OK,
   decide code_4795.OK,
   decide code_4796.OK,
   decide code_4797.OK,
   decide code_4798.OK,
   decide code_4799.OK,
   decide code_4800.OK,
   decide code_4801.OK,
   decide code_4802.OK,
   decide code_4803.OK,
   decide code_4804.OK,
   decide code_4805.OK,
   decide code_4806.OK,
   decide code_4807.OK,
   decide code_4808.OK,
   decide code_4809.OK,
   decide code_4810.OK,
   decide code_4811.OK,
   decide code_4812.OK,
   decide code_4813.OK,
   decide code_4814.OK,
   decide code_4815.OK,
   decide code_4816.OK,
   decide code_4817.OK,
   decide code_4818.OK,
   decide code_4819.OK,
   decide code_4820.OK,
   decide code_4821.OK,
   decide code_4822.OK,
   decide code_4823.OK,
   decide code_4824.OK,
   decide code_4825.OK,
   decide code_4826.OK,
   decide code_4827.OK,
   decide code_4828.OK,
   decide code_4829.OK,
   decide code_4830.OK,
   decide code_4831.OK,
   decide code_4832.OK,
   decide code_4833.OK,
   decide code_4834.OK,
   decide code_4835.OK,
   decide code_4836.OK,
   decide code_4837.OK,
   decide code_4838.OK,
   decide code_4839.OK,
   decide code_4840.OK,
   decide code_4841.OK,
   decide code_4842.OK,
   decide code_4843.OK,
   decide code_4844.OK,
   decide code_4845.OK,
   decide code_4846.OK,
   decide code_4847.OK,
   decide code_4848.OK,
   decide code_4849.OK,
   decide code_4850.OK,
   decide code_4851.OK,
   decide code_4852.OK,
   decide code_4853.OK,
   decide code_4854.OK,
   decide code_4855.OK,
   decide code_4856.OK,
   decide code_4857.OK,
   decide code_4858.OK,
   decide code_4859.OK,
   decide code_4860.OK,
   decide code_4861.OK,
   decide code_4862.OK,
   decide code_4863.OK,
   decide code_4864.OK,
   decide code_4865.OK,
   decide code_4866.OK,
   decide code_4867.OK,
   decide code_4868.OK,
   decide code_4869.OK,
   decide code_4870.OK,
   decide code_4871.OK,
   decide code_4872.OK,
   decide code_4873.OK,
   decide code_4874.OK,
   decide code_4875.OK,
   decide code_4876.OK,
   decide code_4877.OK,
   decide code_4878.OK,
   decide code_4879.OK,
   decide code_4880.OK,
   decide code_4881.OK,
   decide code_4882.OK,
   decide code_4883.OK,
   decide code_4884.OK,
   decide code_4885.OK,
   decide code_4886.OK,
   decide code_4887.OK,
   decide code_4888.OK,
   decide code_4889.OK,
   decide code_4890.OK,
   decide code_4891.OK,
   decide code_4892.OK,
   decide code_4893.OK,
   decide code_4894.OK,
   decide code_4895.OK,
   decide code_4896.OK,
   decide code_4897.OK,
   decide code_4898.OK,
   decide code_4899.OK,
   decide code_4900.OK,
   decide code_4901.OK,
   decide code_4902.OK,
   decide code_4903.OK,
   decide code_4904.OK,
   decide code_4905.OK,
   decide code_4906.OK,
   decide code_4907.OK,
   decide code_4908.OK,
   decide code_4909.OK,
   decide code_4910.OK,
   decide code_4911.OK,
   decide code_4912.OK,
   decide code_4913.OK,
   decide code_4914.OK,
   decide code_4915.OK,
   decide code_4916.OK,
   decide code_4917.OK,
   decide code_4918.OK,
   decide code_4919.OK,
   decide code_4920.OK,
   decide code_4921.OK,
   decide code_4922.OK,
   decide code_4923.OK,
   decide code_4924.OK,
   decide code_4925.OK,
   decide code_4926.OK,
   decide code_4927.OK,
   decide code_4928.OK,
   decide code_4929.OK,
   decide code_4930.OK,
   decide code_4931.OK,
   decide code_4932.OK,
   decide code_4933.OK,
   decide code_4934.OK,
   decide code_4935.OK,
   decide code_4936.OK,
   decide code_4937.OK,
   decide code_4938.OK,
   decide code_4939.OK,
   decide code_4940.OK,
   decide code_4941.OK,
   decide code_4942.OK,
   decide code_4943.OK,
   decide code_4944.OK,
   decide code_4945.OK,
   decide code_4946.OK,
   decide code_4947.OK,
   decide code_4948.OK,
   decide code_4949.OK,
   decide code_4950.OK,
   decide code_4951.OK,
   decide code_4952.OK,
   decide code_4953.OK,
   decide code_4954.OK,
   decide code_4955.OK,
   decide code_4956.OK,
   decide code_4957.OK,
   decide code_4958.OK,
   decide code_4959.OK,
   decide code_4960.OK,
   decide code_4961.OK,
   decide code_4962.OK,
   decide code_4963.OK,
   decide code_4964.OK,
   decide code_4965.OK,
   decide code_4966.OK,
   decide code_4967.OK,
   decide code_4968.OK,
   decide code_4969.OK,
   decide code_4970.OK,
   decide code_4971.OK,
   decide code_4972.OK,
   decide code_4973.OK,
   decide code_4974.OK,
   decide code_4975.OK,
   decide code_4976.OK,
   decide code_4977.OK,
   decide code_4978.OK,
   decide code_4979.OK,
   decide code_4980.OK,
   decide code_4981.OK,
   decide code_4982.OK,
   decide code_4983.OK,
   decide code_4984.OK,
   decide code_4985.OK,
   decide code_4986.OK,
   decide code_4987.OK,
   decide code_4988.OK,
   decide code_4989.OK,
   decide code_4990.OK,
   decide code_4991.OK,
   decide code_4992.OK,
   decide code_4993.OK,
   decide code_4994.OK,
   decide code_4995.OK,
   decide code_4996.OK,
   decide code_4997.OK,
   decide code_4998.OK,
   decide code_4999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk009
