import SS

namespace Catalogue.Chunk001

open SS SS.Verify

/-- Catalogue code #500: ((6,2,2)), m=9, a=[1, 1, 3, 6, 7, 7], S=[0, 4]. -/
def code_500 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #501: ((6,2,2)), m=9, a=[1, 1, 3, 6, 7, 7], S=[0, 5]. -/
def code_501 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #502: ((6,2,2)), m=9, a=[1, 1, 3, 6, 7, 8], S=[0, 4]. -/
def code_502 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #503: ((6,2,2)), m=9, a=[1, 1, 3, 7, 7, 7], S=[0, 4]. -/
def code_503 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #504: ((6,2,2)), m=9, a=[1, 1, 3, 7, 7, 8], S=[0, 4]. -/
def code_504 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #505: ((6,2,2)), m=9, a=[1, 1, 3, 7, 7, 8], S=[0, 5]. -/
def code_505 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #506: ((6,2,2)), m=9, a=[1, 1, 3, 7, 8, 8], S=[0, 5]. -/
def code_506 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #507: ((6,2,2)), m=9, a=[1, 1, 4, 4, 4, 8], S=[0, 2]. -/
def code_507 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #508: ((6,2,2)), m=9, a=[1, 1, 4, 4, 5, 8], S=[0, 7]. -/
def code_508 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #509: ((6,2,2)), m=9, a=[1, 1, 4, 4, 6, 6], S=[0, 2]. -/
def code_509 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #510: ((6,2,2)), m=9, a=[1, 1, 4, 4, 6, 6], S=[0, 7]. -/
def code_510 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #511: ((6,2,2)), m=9, a=[1, 1, 4, 4, 6, 8], S=[0, 7]. -/
def code_511 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #512: ((6,2,2)), m=9, a=[1, 1, 4, 4, 8, 8], S=[0, 2]. -/
def code_512 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #513: ((6,2,2)), m=9, a=[1, 1, 4, 5, 5, 6], S=[0, 2]. -/
def code_513 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #514: ((6,2,2)), m=9, a=[1, 1, 4, 5, 5, 6], S=[0, 7]. -/
def code_514 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #515: ((6,2,2)), m=9, a=[1, 1, 4, 5, 6, 6], S=[0, 2]. -/
def code_515 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #516: ((6,2,2)), m=9, a=[1, 1, 4, 5, 6, 6], S=[0, 7]. -/
def code_516 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #517: ((6,2,2)), m=9, a=[1, 1, 4, 6, 6, 6], S=[0, 2]. -/
def code_517 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #518: ((6,2,2)), m=9, a=[1, 1, 4, 6, 6, 6], S=[0, 7]. -/
def code_518 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #519: ((6,2,2)), m=9, a=[1, 1, 4, 6, 6, 8], S=[0, 2]. -/
def code_519 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #520: ((6,2,2)), m=9, a=[1, 1, 5, 5, 5, 6], S=[0, 2]. -/
def code_520 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #521: ((6,2,2)), m=9, a=[1, 1, 5, 5, 5, 6], S=[0, 7]. -/
def code_521 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #522: ((6,2,2)), m=9, a=[1, 1, 5, 5, 6, 6], S=[0, 2]. -/
def code_522 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #523: ((6,2,2)), m=9, a=[1, 1, 5, 5, 6, 8], S=[0, 2]. -/
def code_523 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #524: ((6,2,2)), m=9, a=[1, 1, 5, 5, 6, 8], S=[0, 7]. -/
def code_524 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #525: ((6,2,2)), m=9, a=[1, 1, 5, 6, 6, 6], S=[0, 2]. -/
def code_525 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #526: ((6,2,2)), m=9, a=[1, 1, 5, 6, 6, 8], S=[0, 2]. -/
def code_526 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #527: ((6,2,2)), m=9, a=[1, 1, 5, 6, 6, 8], S=[0, 7]. -/
def code_527 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #528: ((6,2,2)), m=9, a=[1, 1, 5, 6, 8, 8], S=[0, 7]. -/
def code_528 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #529: ((6,2,2)), m=9, a=[1, 1, 6, 6, 6, 7], S=[0, 4]. -/
def code_529 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #530: ((6,2,2)), m=9, a=[1, 1, 6, 6, 6, 7], S=[0, 5]. -/
def code_530 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #531: ((6,2,2)), m=9, a=[1, 1, 6, 6, 6, 8], S=[0, 2]. -/
def code_531 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #532: ((6,2,2)), m=9, a=[1, 1, 6, 6, 6, 8], S=[0, 5]. -/
def code_532 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #533: ((6,2,2)), m=9, a=[1, 1, 6, 6, 7, 7], S=[0, 4]. -/
def code_533 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #534: ((6,2,2)), m=9, a=[1, 1, 6, 6, 7, 7], S=[0, 5]. -/
def code_534 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #535: ((6,2,2)), m=9, a=[1, 1, 6, 6, 7, 8], S=[0, 4]. -/
def code_535 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #536: ((6,2,2)), m=9, a=[1, 1, 6, 7, 7, 7], S=[0, 4]. -/
def code_536 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #537: ((6,2,2)), m=9, a=[1, 1, 6, 7, 7, 7], S=[0, 5]. -/
def code_537 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #538: ((6,2,2)), m=9, a=[1, 2, 2, 2, 2, 3], S=[0, 4]. -/
def code_538 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #539: ((6,2,2)), m=9, a=[1, 2, 2, 2, 2, 6], S=[0, 5]. -/
def code_539 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #540: ((6,2,2)), m=9, a=[1, 2, 2, 2, 2, 8], S=[0, 5]. -/
def code_540 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #541: ((6,2,2)), m=9, a=[1, 2, 2, 2, 3, 3], S=[0, 5]. -/
def code_541 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #542: ((6,2,2)), m=9, a=[1, 2, 2, 2, 3, 6], S=[0, 4]. -/
def code_542 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #543: ((6,2,2)), m=9, a=[1, 2, 2, 2, 3, 8], S=[0, 4]. -/
def code_543 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #544: ((6,2,2)), m=9, a=[1, 2, 2, 2, 3, 8], S=[0, 5]. -/
def code_544 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #545: ((6,2,2)), m=9, a=[1, 2, 2, 2, 6, 6], S=[0, 4]. -/
def code_545 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #546: ((6,2,2)), m=9, a=[1, 2, 2, 2, 6, 6], S=[0, 5]. -/
def code_546 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #547: ((6,2,2)), m=9, a=[1, 2, 2, 2, 6, 8], S=[0, 5]. -/
def code_547 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #548: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 3], S=[0, 4]. -/
def code_548 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #549: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 6], S=[0, 4]. -/
def code_549 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #550: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 7], S=[0, 4]. -/
def code_550 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #551: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 7], S=[0, 5]. -/
def code_551 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #552: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 8], S=[0, 4]. -/
def code_552 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #553: ((6,2,2)), m=9, a=[1, 2, 2, 3, 3, 8], S=[0, 5]. -/
def code_553 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #554: ((6,2,2)), m=9, a=[1, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_554 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #555: ((6,2,2)), m=9, a=[1, 2, 2, 3, 6, 7], S=[0, 4]. -/
def code_555 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #556: ((6,2,2)), m=9, a=[1, 2, 2, 3, 6, 8], S=[0, 5]. -/
def code_556 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #557: ((6,2,2)), m=9, a=[1, 2, 2, 3, 7, 7], S=[0, 5]. -/
def code_557 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #558: ((6,2,2)), m=9, a=[1, 2, 2, 5, 5, 5], S=[0, 6]. -/
def code_558 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #559: ((6,2,2)), m=9, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_559 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #560: ((6,2,2)), m=9, a=[1, 2, 2, 6, 6, 7], S=[0, 5]. -/
def code_560 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #561: ((6,2,2)), m=9, a=[1, 2, 2, 6, 6, 8], S=[0, 4]. -/
def code_561 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #562: ((6,2,2)), m=9, a=[1, 2, 2, 6, 6, 8], S=[0, 5]. -/
def code_562 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #563: ((6,2,2)), m=9, a=[1, 2, 2, 6, 7, 8], S=[0, 4]. -/
def code_563 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #564: ((6,2,2)), m=9, a=[1, 2, 2, 6, 7, 8], S=[0, 5]. -/
def code_564 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #565: ((6,2,2)), m=9, a=[1, 2, 2, 6, 8, 8], S=[0, 4]. -/
def code_565 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #566: ((6,2,2)), m=9, a=[1, 2, 2, 6, 8, 8], S=[0, 5]. -/
def code_566 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #567: ((6,2,2)), m=9, a=[1, 2, 2, 7, 8, 8], S=[0, 5]. -/
def code_567 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #568: ((6,2,2)), m=9, a=[1, 2, 3, 3, 3, 7], S=[0, 5]. -/
def code_568 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #569: ((6,2,2)), m=9, a=[1, 2, 3, 3, 3, 8], S=[0, 4]. -/
def code_569 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #570: ((6,2,2)), m=9, a=[1, 2, 3, 3, 6, 7], S=[0, 5]. -/
def code_570 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #571: ((6,2,2)), m=9, a=[1, 2, 3, 3, 7, 7], S=[0, 4]. -/
def code_571 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #572: ((6,2,2)), m=9, a=[1, 2, 3, 3, 7, 8], S=[0, 4]. -/
def code_572 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #573: ((6,2,2)), m=9, a=[1, 2, 3, 3, 7, 8], S=[0, 5]. -/
def code_573 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #574: ((6,2,2)), m=9, a=[1, 2, 3, 3, 8, 8], S=[0, 5]. -/
def code_574 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #575: ((6,2,2)), m=9, a=[1, 2, 3, 6, 6, 7], S=[0, 5]. -/
def code_575 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #576: ((6,2,2)), m=9, a=[1, 2, 3, 6, 6, 8], S=[0, 4]. -/
def code_576 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #577: ((6,2,2)), m=9, a=[1, 2, 3, 6, 7, 7], S=[0, 4]. -/
def code_577 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #578: ((6,2,2)), m=9, a=[1, 2, 3, 6, 7, 7], S=[0, 5]. -/
def code_578 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #579: ((6,2,2)), m=9, a=[1, 2, 3, 6, 7, 8], S=[0, 4]. -/
def code_579 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #580: ((6,2,2)), m=9, a=[1, 2, 3, 6, 7, 8], S=[0, 5]. -/
def code_580 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #581: ((6,2,2)), m=9, a=[1, 2, 3, 6, 8, 8], S=[0, 5]. -/
def code_581 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #582: ((6,2,2)), m=9, a=[1, 2, 3, 7, 7, 8], S=[0, 4]. -/
def code_582 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #583: ((6,2,2)), m=9, a=[1, 2, 3, 7, 7, 8], S=[0, 5]. -/
def code_583 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #584: ((6,2,2)), m=9, a=[1, 2, 3, 7, 8, 8], S=[0, 5]. -/
def code_584 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #585: ((6,2,2)), m=9, a=[1, 2, 6, 6, 6, 7], S=[0, 5]. -/
def code_585 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #586: ((6,2,2)), m=9, a=[1, 2, 6, 6, 6, 8], S=[0, 4]. -/
def code_586 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #587: ((6,2,2)), m=9, a=[1, 2, 6, 6, 7, 7], S=[0, 5]. -/
def code_587 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #588: ((6,2,2)), m=9, a=[1, 2, 6, 6, 7, 8], S=[0, 4]. -/
def code_588 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #589: ((6,2,2)), m=9, a=[1, 2, 6, 6, 7, 8], S=[0, 5]. -/
def code_589 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #590: ((6,2,2)), m=9, a=[1, 3, 3, 3, 4, 4], S=[0, 2]. -/
def code_590 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #591: ((6,2,2)), m=9, a=[1, 3, 3, 3, 4, 4], S=[0, 7]. -/
def code_591 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #592: ((6,2,2)), m=9, a=[1, 3, 3, 3, 4, 5], S=[0, 2]. -/
def code_592 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #593: ((6,2,2)), m=9, a=[1, 3, 3, 3, 4, 8], S=[0, 2]. -/
def code_593 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #594: ((6,2,2)), m=9, a=[1, 3, 3, 3, 5, 8], S=[0, 7]. -/
def code_594 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #595: ((6,2,2)), m=9, a=[1, 3, 3, 3, 7, 7], S=[0, 4]. -/
def code_595 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #596: ((6,2,2)), m=9, a=[1, 3, 3, 3, 7, 7], S=[0, 5]. -/
def code_596 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #597: ((6,2,2)), m=9, a=[1, 3, 3, 3, 7, 8], S=[0, 5]. -/
def code_597 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #598: ((6,2,2)), m=9, a=[1, 3, 3, 3, 8, 8], S=[0, 4]. -/
def code_598 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #599: ((6,2,2)), m=9, a=[1, 3, 3, 3, 8, 8], S=[0, 7]. -/
def code_599 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #600: ((6,2,2)), m=9, a=[1, 3, 3, 4, 4, 4], S=[0, 2]. -/
def code_600 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #601: ((6,2,2)), m=9, a=[1, 3, 3, 4, 4, 6], S=[0, 2]. -/
def code_601 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #602: ((6,2,2)), m=9, a=[1, 3, 3, 4, 4, 8], S=[0, 2]. -/
def code_602 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #603: ((6,2,2)), m=9, a=[1, 3, 3, 4, 4, 8], S=[0, 7]. -/
def code_603 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #604: ((6,2,2)), m=9, a=[1, 3, 3, 4, 5, 5], S=[0, 2]. -/
def code_604 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #605: ((6,2,2)), m=9, a=[1, 3, 3, 4, 5, 6], S=[0, 2]. -/
def code_605 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #606: ((6,2,2)), m=9, a=[1, 3, 3, 4, 5, 8], S=[0, 2]. -/
def code_606 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #607: ((6,2,2)), m=9, a=[1, 3, 3, 4, 5, 8], S=[0, 7]. -/
def code_607 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #608: ((6,2,2)), m=9, a=[1, 3, 3, 4, 6, 8], S=[0, 2]. -/
def code_608 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #609: ((6,2,2)), m=9, a=[1, 3, 3, 4, 8, 8], S=[0, 2]. -/
def code_609 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #610: ((6,2,2)), m=9, a=[1, 3, 3, 4, 8, 8], S=[0, 7]. -/
def code_610 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #611: ((6,2,2)), m=9, a=[1, 3, 3, 5, 5, 5], S=[0, 2]. -/
def code_611 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #612: ((6,2,2)), m=9, a=[1, 3, 3, 5, 5, 6], S=[0, 7]. -/
def code_612 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #613: ((6,2,2)), m=9, a=[1, 3, 3, 5, 5, 8], S=[0, 2]. -/
def code_613 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #614: ((6,2,2)), m=9, a=[1, 3, 3, 5, 6, 8], S=[0, 7]. -/
def code_614 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #615: ((6,2,2)), m=9, a=[1, 3, 3, 5, 8, 8], S=[0, 7]. -/
def code_615 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #616: ((6,2,2)), m=9, a=[1, 3, 3, 6, 7, 7], S=[0, 4]. -/
def code_616 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #617: ((6,2,2)), m=9, a=[1, 3, 3, 6, 7, 7], S=[0, 5]. -/
def code_617 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #618: ((6,2,2)), m=9, a=[1, 3, 3, 6, 7, 8], S=[0, 5]. -/
def code_618 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #619: ((6,2,2)), m=9, a=[1, 3, 3, 6, 8, 8], S=[0, 7]. -/
def code_619 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #620: ((6,2,2)), m=9, a=[1, 3, 3, 7, 7, 7], S=[0, 4]. -/
def code_620 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #621: ((6,2,2)), m=9, a=[1, 3, 3, 7, 7, 7], S=[0, 5]. -/
def code_621 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #622: ((6,2,2)), m=9, a=[1, 3, 3, 7, 7, 8], S=[0, 4]. -/
def code_622 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #623: ((6,2,2)), m=9, a=[1, 3, 3, 7, 7, 8], S=[0, 5]. -/
def code_623 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #624: ((6,2,2)), m=9, a=[1, 3, 3, 7, 8, 8], S=[0, 5]. -/
def code_624 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #625: ((6,2,2)), m=9, a=[1, 3, 3, 8, 8, 8], S=[0, 7]. -/
def code_625 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #626: ((6,2,2)), m=9, a=[1, 3, 4, 4, 4, 6], S=[0, 2]. -/
def code_626 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #627: ((6,2,2)), m=9, a=[1, 3, 4, 4, 5, 5], S=[0, 2]. -/
def code_627 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #628: ((6,2,2)), m=9, a=[1, 3, 4, 4, 6, 6], S=[0, 7]. -/
def code_628 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #629: ((6,2,2)), m=9, a=[1, 3, 4, 4, 6, 8], S=[0, 2]. -/
def code_629 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #630: ((6,2,2)), m=9, a=[1, 3, 4, 4, 6, 8], S=[0, 7]. -/
def code_630 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #631: ((6,2,2)), m=9, a=[1, 3, 4, 4, 8, 8], S=[0, 2]. -/
def code_631 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #632: ((6,2,2)), m=9, a=[1, 3, 4, 4, 8, 8], S=[0, 7]. -/
def code_632 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #633: ((6,2,2)), m=9, a=[1, 3, 4, 5, 5, 5], S=[0, 7]. -/
def code_633 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #634: ((6,2,2)), m=9, a=[1, 3, 4, 5, 5, 6], S=[0, 7]. -/
def code_634 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #635: ((6,2,2)), m=9, a=[1, 3, 4, 5, 5, 8], S=[0, 2]. -/
def code_635 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #636: ((6,2,2)), m=9, a=[1, 3, 4, 5, 6, 8], S=[0, 2]. -/
def code_636 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #637: ((6,2,2)), m=9, a=[1, 3, 4, 5, 6, 8], S=[0, 7]. -/
def code_637 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #638: ((6,2,2)), m=9, a=[1, 3, 4, 6, 6, 8], S=[0, 2]. -/
def code_638 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #639: ((6,2,2)), m=9, a=[1, 3, 4, 6, 8, 8], S=[0, 7]. -/
def code_639 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #640: ((6,2,2)), m=9, a=[1, 3, 5, 5, 5, 8], S=[0, 2]. -/
def code_640 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #641: ((6,2,2)), m=9, a=[1, 3, 5, 5, 6, 6], S=[0, 7]. -/
def code_641 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #642: ((6,2,2)), m=9, a=[1, 3, 5, 5, 6, 8], S=[0, 2]. -/
def code_642 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #643: ((6,2,2)), m=9, a=[1, 3, 5, 5, 6, 8], S=[0, 7]. -/
def code_643 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #644: ((6,2,2)), m=9, a=[1, 3, 5, 5, 8, 8], S=[0, 2]. -/
def code_644 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #645: ((6,2,2)), m=9, a=[1, 3, 5, 6, 6, 8], S=[0, 7]. -/
def code_645 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #646: ((6,2,2)), m=9, a=[1, 3, 5, 6, 8, 8], S=[0, 2]. -/
def code_646 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #647: ((6,2,2)), m=9, a=[1, 3, 5, 6, 8, 8], S=[0, 7]. -/
def code_647 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #648: ((6,2,2)), m=9, a=[1, 3, 5, 8, 8, 8], S=[0, 2]. -/
def code_648 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #649: ((6,2,2)), m=9, a=[1, 3, 6, 6, 7, 7], S=[0, 4]. -/
def code_649 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #650: ((6,2,2)), m=9, a=[1, 3, 6, 6, 7, 7], S=[0, 5]. -/
def code_650 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #651: ((6,2,2)), m=9, a=[1, 3, 6, 6, 8, 8], S=[0, 4]. -/
def code_651 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #652: ((6,2,2)), m=9, a=[1, 3, 6, 7, 7, 7], S=[0, 5]. -/
def code_652 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #653: ((6,2,2)), m=9, a=[1, 3, 6, 7, 7, 8], S=[0, 4]. -/
def code_653 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #654: ((6,2,2)), m=9, a=[1, 3, 6, 7, 8, 8], S=[0, 4]. -/
def code_654 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #655: ((6,2,2)), m=9, a=[1, 3, 6, 8, 8, 8], S=[0, 4]. -/
def code_655 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #656: ((6,2,2)), m=9, a=[1, 3, 7, 7, 7, 7], S=[0, 4]. -/
def code_656 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #657: ((6,2,2)), m=9, a=[1, 3, 7, 7, 7, 8], S=[0, 4]. -/
def code_657 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #658: ((6,2,2)), m=9, a=[1, 3, 7, 8, 8, 8], S=[0, 4]. -/
def code_658 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #659: ((6,2,2)), m=9, a=[1, 4, 4, 4, 4, 6], S=[0, 7]. -/
def code_659 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #660: ((6,2,2)), m=9, a=[1, 4, 4, 4, 6, 8], S=[0, 2]. -/
def code_660 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #661: ((6,2,2)), m=9, a=[1, 4, 4, 5, 6, 6], S=[0, 7]. -/
def code_661 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #662: ((6,2,2)), m=9, a=[1, 4, 4, 5, 6, 8], S=[0, 7]. -/
def code_662 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #663: ((6,2,2)), m=9, a=[1, 4, 4, 6, 6, 6], S=[0, 2]. -/
def code_663 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #664: ((6,2,2)), m=9, a=[1, 4, 4, 6, 6, 6], S=[0, 7]. -/
def code_664 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #665: ((6,2,2)), m=9, a=[1, 4, 4, 6, 6, 8], S=[0, 7]. -/
def code_665 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #666: ((6,2,2)), m=9, a=[1, 4, 4, 6, 8, 8], S=[0, 2]. -/
def code_666 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #667: ((6,2,2)), m=9, a=[1, 4, 5, 5, 6, 6], S=[0, 2]. -/
def code_667 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #668: ((6,2,2)), m=9, a=[1, 4, 5, 5, 6, 6], S=[0, 7]. -/
def code_668 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #669: ((6,2,2)), m=9, a=[1, 4, 5, 5, 8, 8], S=[0, 2]. -/
def code_669 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #670: ((6,2,2)), m=9, a=[1, 4, 5, 6, 6, 6], S=[0, 2]. -/
def code_670 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #671: ((6,2,2)), m=9, a=[1, 4, 5, 6, 6, 8], S=[0, 2]. -/
def code_671 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #672: ((6,2,2)), m=9, a=[1, 4, 5, 6, 6, 8], S=[0, 7]. -/
def code_672 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #673: ((6,2,2)), m=9, a=[1, 4, 5, 6, 8, 8], S=[0, 2]. -/
def code_673 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #674: ((6,2,2)), m=9, a=[1, 4, 5, 6, 8, 8], S=[0, 7]. -/
def code_674 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #675: ((6,2,2)), m=9, a=[1, 4, 6, 6, 6, 8], S=[0, 2]. -/
def code_675 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #676: ((6,2,2)), m=9, a=[1, 4, 6, 6, 8, 8], S=[0, 2]. -/
def code_676 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #677: ((6,2,2)), m=9, a=[1, 5, 5, 5, 5, 6], S=[0, 2]. -/
def code_677 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #678: ((6,2,2)), m=9, a=[1, 5, 5, 5, 5, 6], S=[0, 7]. -/
def code_678 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #679: ((6,2,2)), m=9, a=[1, 5, 5, 5, 6, 6], S=[0, 2]. -/
def code_679 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #680: ((6,2,2)), m=9, a=[1, 5, 5, 5, 8, 8], S=[0, 7]. -/
def code_680 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #681: ((6,2,2)), m=9, a=[1, 5, 5, 6, 6, 8], S=[0, 2]. -/
def code_681 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #682: ((6,2,2)), m=9, a=[1, 5, 5, 6, 6, 8], S=[0, 7]. -/
def code_682 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #683: ((6,2,2)), m=9, a=[1, 5, 5, 6, 8, 8], S=[0, 7]. -/
def code_683 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #684: ((6,2,2)), m=9, a=[1, 5, 5, 8, 8, 8], S=[0, 2]. -/
def code_684 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #685: ((6,2,2)), m=9, a=[1, 5, 6, 6, 6, 8], S=[0, 7]. -/
def code_685 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #686: ((6,2,2)), m=9, a=[1, 5, 6, 6, 8, 8], S=[0, 2]. -/
def code_686 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #687: ((6,2,2)), m=9, a=[1, 6, 6, 6, 7, 7], S=[0, 4]. -/
def code_687 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #688: ((6,2,2)), m=9, a=[1, 6, 6, 6, 7, 7], S=[0, 5]. -/
def code_688 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #689: ((6,2,2)), m=9, a=[1, 6, 6, 6, 7, 8], S=[0, 5]. -/
def code_689 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #690: ((6,2,2)), m=9, a=[1, 6, 6, 6, 8, 8], S=[0, 4]. -/
def code_690 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #691: ((6,2,2)), m=9, a=[1, 6, 6, 6, 8, 8], S=[0, 7]. -/
def code_691 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #692: ((6,2,2)), m=9, a=[1, 6, 6, 7, 7, 7], S=[0, 4]. -/
def code_692 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #693: ((6,2,2)), m=9, a=[1, 6, 6, 7, 7, 8], S=[0, 4]. -/
def code_693 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #694: ((6,2,2)), m=9, a=[1, 6, 6, 7, 7, 8], S=[0, 5]. -/
def code_694 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #695: ((6,2,2)), m=9, a=[1, 6, 6, 7, 8, 8], S=[0, 4]. -/
def code_695 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #696: ((6,2,2)), m=9, a=[1, 6, 6, 7, 8, 8], S=[0, 5]. -/
def code_696 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #697: ((6,2,2)), m=9, a=[1, 6, 6, 8, 8, 8], S=[0, 4]. -/
def code_697 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9)]

/-- Catalogue code #698: ((6,2,2)), m=9, a=[1, 6, 6, 8, 8, 8], S=[0, 7]. -/
def code_698 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #699: ((6,2,2)), m=9, a=[1, 6, 7, 7, 7, 8], S=[0, 4]. -/
def code_699 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #700: ((6,2,2)), m=9, a=[1, 6, 7, 7, 7, 8], S=[0, 5]. -/
def code_700 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #701: ((6,2,2)), m=9, a=[1, 6, 7, 7, 8, 8], S=[0, 4]. -/
def code_701 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #702: ((6,2,2)), m=9, a=[1, 6, 7, 7, 8, 8], S=[0, 5]. -/
def code_702 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #703: ((6,2,2)), m=9, a=[1, 7, 7, 7, 7, 8], S=[0, 4]. -/
def code_703 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #704: ((6,2,2)), m=9, a=[2, 2, 2, 3, 3, 4], S=[0, 8]. -/
def code_704 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #705: ((6,2,2)), m=9, a=[2, 2, 2, 3, 3, 6], S=[0, 1]. -/
def code_705 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #706: ((6,2,2)), m=9, a=[2, 2, 2, 3, 3, 6], S=[0, 8]. -/
def code_706 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #707: ((6,2,2)), m=9, a=[2, 2, 2, 3, 3, 8], S=[0, 5]. -/
def code_707 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #708: ((6,2,2)), m=9, a=[2, 2, 2, 3, 4, 5], S=[0, 8]. -/
def code_708 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #709: ((6,2,2)), m=9, a=[2, 2, 2, 3, 4, 7], S=[0, 1]. -/
def code_709 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #710: ((6,2,2)), m=9, a=[2, 2, 2, 3, 5, 6], S=[0, 1]. -/
def code_710 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #711: ((6,2,2)), m=9, a=[2, 2, 2, 3, 6, 6], S=[0, 1]. -/
def code_711 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #712: ((6,2,2)), m=9, a=[2, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_712 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #713: ((6,2,2)), m=9, a=[2, 2, 2, 3, 6, 6], S=[0, 5]. -/
def code_713 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #714: ((6,2,2)), m=9, a=[2, 2, 2, 3, 6, 7], S=[0, 1]. -/
def code_714 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #715: ((6,2,2)), m=9, a=[2, 2, 2, 3, 6, 8], S=[0, 4]. -/
def code_715 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #716: ((6,2,2)), m=9, a=[2, 2, 2, 3, 7, 8], S=[0, 5]. -/
def code_716 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #717: ((6,2,2)), m=9, a=[2, 2, 2, 3, 8, 8], S=[0, 4]. -/
def code_717 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #718: ((6,2,2)), m=9, a=[2, 2, 2, 3, 8, 8], S=[0, 5]. -/
def code_718 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #719: ((6,2,2)), m=9, a=[2, 2, 2, 5, 5, 6], S=[0, 1]. -/
def code_719 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #720: ((6,2,2)), m=9, a=[2, 2, 2, 5, 6, 6], S=[0, 1]. -/
def code_720 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #721: ((6,2,2)), m=9, a=[2, 2, 2, 7, 8, 8], S=[0, 5]. -/
def code_721 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #722: ((6,2,2)), m=9, a=[2, 2, 3, 3, 3, 8], S=[0, 4]. -/
def code_722 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #723: ((6,2,2)), m=9, a=[2, 2, 3, 3, 3, 8], S=[0, 5]. -/
def code_723 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #724: ((6,2,2)), m=9, a=[2, 2, 3, 3, 4, 4], S=[0, 1]. -/
def code_724 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #725: ((6,2,2)), m=9, a=[2, 2, 3, 3, 4, 4], S=[0, 8]. -/
def code_725 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #726: ((6,2,2)), m=9, a=[2, 2, 3, 3, 4, 5], S=[0, 8]. -/
def code_726 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #727: ((6,2,2)), m=9, a=[2, 2, 3, 3, 4, 6], S=[0, 1]. -/
def code_727 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #728: ((6,2,2)), m=9, a=[2, 2, 3, 3, 4, 7], S=[0, 8]. -/
def code_728 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #729: ((6,2,2)), m=9, a=[2, 2, 3, 3, 5, 6], S=[0, 8]. -/
def code_729 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #730: ((6,2,2)), m=9, a=[2, 2, 3, 3, 6, 7], S=[0, 4]. -/
def code_730 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #731: ((6,2,2)), m=9, a=[2, 2, 3, 3, 6, 8], S=[0, 4]. -/
def code_731 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #732: ((6,2,2)), m=9, a=[2, 2, 3, 3, 6, 8], S=[0, 5]. -/
def code_732 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #733: ((6,2,2)), m=9, a=[2, 2, 3, 3, 7, 8], S=[0, 4]. -/
def code_733 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #734: ((6,2,2)), m=9, a=[2, 2, 3, 3, 8, 8], S=[0, 4]. -/
def code_734 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #735: ((6,2,2)), m=9, a=[2, 2, 3, 3, 8, 8], S=[0, 5]. -/
def code_735 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #736: ((6,2,2)), m=9, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_736 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #737: ((6,2,2)), m=9, a=[2, 2, 3, 4, 4, 5], S=[0, 8]. -/
def code_737 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #738: ((6,2,2)), m=9, a=[2, 2, 3, 4, 4, 6], S=[0, 1]. -/
def code_738 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #739: ((6,2,2)), m=9, a=[2, 2, 3, 4, 4, 6], S=[0, 8]. -/
def code_739 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #740: ((6,2,2)), m=9, a=[2, 2, 3, 4, 4, 7], S=[0, 1]. -/
def code_740 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ)]

/-- Catalogue code #741: ((6,2,2)), m=9, a=[2, 2, 3, 4, 5, 5], S=[0, 8]. -/
def code_741 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #742: ((6,2,2)), m=9, a=[2, 2, 3, 4, 5, 6], S=[0, 1]. -/
def code_742 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #743: ((6,2,2)), m=9, a=[2, 2, 3, 4, 5, 6], S=[0, 8]. -/
def code_743 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #744: ((6,2,2)), m=9, a=[2, 2, 3, 4, 5, 7], S=[0, 8]. -/
def code_744 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #745: ((6,2,2)), m=9, a=[2, 2, 3, 4, 6, 6], S=[0, 1]. -/
def code_745 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #746: ((6,2,2)), m=9, a=[2, 2, 3, 4, 6, 7], S=[0, 1]. -/
def code_746 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #747: ((6,2,2)), m=9, a=[2, 2, 3, 4, 7, 7], S=[0, 8]. -/
def code_747 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #748: ((6,2,2)), m=9, a=[2, 2, 3, 5, 5, 6], S=[0, 1]. -/
def code_748 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #749: ((6,2,2)), m=9, a=[2, 2, 3, 5, 5, 6], S=[0, 8]. -/
def code_749 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #750: ((6,2,2)), m=9, a=[2, 2, 3, 5, 6, 6], S=[0, 1]. -/
def code_750 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #751: ((6,2,2)), m=9, a=[2, 2, 3, 5, 6, 7], S=[0, 8]. -/
def code_751 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #752: ((6,2,2)), m=9, a=[2, 2, 3, 6, 6, 7], S=[0, 1]. -/
def code_752 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #753: ((6,2,2)), m=9, a=[2, 2, 3, 6, 6, 8], S=[0, 4]. -/
def code_753 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #754: ((6,2,2)), m=9, a=[2, 2, 3, 6, 6, 8], S=[0, 5]. -/
def code_754 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #755: ((6,2,2)), m=9, a=[2, 2, 3, 6, 7, 8], S=[0, 4]. -/
def code_755 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #756: ((6,2,2)), m=9, a=[2, 2, 3, 6, 7, 8], S=[0, 5]. -/
def code_756 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #757: ((6,2,2)), m=9, a=[2, 2, 3, 6, 8, 8], S=[0, 4]. -/
def code_757 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #758: ((6,2,2)), m=9, a=[2, 2, 3, 6, 8, 8], S=[0, 5]. -/
def code_758 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #759: ((6,2,2)), m=9, a=[2, 2, 3, 7, 8, 8], S=[0, 5]. -/
def code_759 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #760: ((6,2,2)), m=9, a=[2, 2, 4, 4, 5, 6], S=[0, 1]. -/
def code_760 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #761: ((6,2,2)), m=9, a=[2, 2, 4, 4, 5, 6], S=[0, 8]. -/
def code_761 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #762: ((6,2,2)), m=9, a=[2, 2, 4, 5, 6, 6], S=[0, 1]. -/
def code_762 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #763: ((6,2,2)), m=9, a=[2, 2, 4, 5, 6, 6], S=[0, 8]. -/
def code_763 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #764: ((6,2,2)), m=9, a=[2, 2, 5, 5, 5, 6], S=[0, 1]. -/
def code_764 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #765: ((6,2,2)), m=9, a=[2, 2, 5, 5, 5, 6], S=[0, 8]. -/
def code_765 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #766: ((6,2,2)), m=9, a=[2, 2, 5, 5, 6, 6], S=[0, 1]. -/
def code_766 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #767: ((6,2,2)), m=9, a=[2, 2, 5, 5, 6, 7], S=[0, 8]. -/
def code_767 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ)]

/-- Catalogue code #768: ((6,2,2)), m=9, a=[2, 2, 5, 6, 6, 6], S=[0, 1]. -/
def code_768 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #769: ((6,2,2)), m=9, a=[2, 2, 5, 6, 6, 6], S=[0, 8]. -/
def code_769 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #770: ((6,2,2)), m=9, a=[2, 2, 5, 6, 7, 7], S=[0, 1]. -/
def code_770 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #771: ((6,2,2)), m=9, a=[2, 2, 6, 6, 7, 8], S=[0, 5]. -/
def code_771 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #772: ((6,2,2)), m=9, a=[2, 2, 6, 7, 7, 8], S=[0, 4]. -/
def code_772 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #773: ((6,2,2)), m=9, a=[2, 2, 6, 7, 8, 8], S=[0, 4]. -/
def code_773 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #774: ((6,2,2)), m=9, a=[2, 2, 7, 8, 8, 8], S=[0, 4]. -/
def code_774 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #775: ((6,2,2)), m=9, a=[2, 3, 3, 3, 4, 4], S=[0, 8]. -/
def code_775 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #776: ((6,2,2)), m=9, a=[2, 3, 3, 3, 4, 5], S=[0, 1]. -/
def code_776 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #777: ((6,2,2)), m=9, a=[2, 3, 3, 3, 4, 7], S=[0, 8]. -/
def code_777 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #778: ((6,2,2)), m=9, a=[2, 3, 3, 3, 7, 8], S=[0, 4]. -/
def code_778 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #779: ((6,2,2)), m=9, a=[2, 3, 3, 3, 8, 8], S=[0, 4]. -/
def code_779 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #780: ((6,2,2)), m=9, a=[2, 3, 3, 3, 8, 8], S=[0, 5]. -/
def code_780 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #781: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 4], S=[0, 1]. -/
def code_781 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #782: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 4], S=[0, 8]. -/
def code_782 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #783: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 5], S=[0, 1]. -/
def code_783 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #784: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 6], S=[0, 8]. -/
def code_784 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #785: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 7], S=[0, 1]. -/
def code_785 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #786: ((6,2,2)), m=9, a=[2, 3, 3, 4, 4, 7], S=[0, 8]. -/
def code_786 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #787: ((6,2,2)), m=9, a=[2, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_787 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #788: ((6,2,2)), m=9, a=[2, 3, 3, 4, 5, 6], S=[0, 1]. -/
def code_788 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #789: ((6,2,2)), m=9, a=[2, 3, 3, 4, 5, 7], S=[0, 1]. -/
def code_789 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #790: ((6,2,2)), m=9, a=[2, 3, 3, 4, 5, 7], S=[0, 8]. -/
def code_790 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #791: ((6,2,2)), m=9, a=[2, 3, 3, 4, 6, 7], S=[0, 8]. -/
def code_791 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #792: ((6,2,2)), m=9, a=[2, 3, 3, 5, 5, 6], S=[0, 1]. -/
def code_792 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #793: ((6,2,2)), m=9, a=[2, 3, 3, 5, 5, 6], S=[0, 8]. -/
def code_793 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #794: ((6,2,2)), m=9, a=[2, 3, 3, 6, 7, 7], S=[0, 8]. -/
def code_794 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #795: ((6,2,2)), m=9, a=[2, 3, 3, 6, 7, 8], S=[0, 4]. -/
def code_795 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #796: ((6,2,2)), m=9, a=[2, 3, 3, 6, 8, 8], S=[0, 5]. -/
def code_796 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #797: ((6,2,2)), m=9, a=[2, 3, 3, 7, 7, 8], S=[0, 4]. -/
def code_797 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #798: ((6,2,2)), m=9, a=[2, 3, 3, 7, 8, 8], S=[0, 5]. -/
def code_798 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #799: ((6,2,2)), m=9, a=[2, 3, 4, 4, 4, 4], S=[0, 1]. -/
def code_799 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #800: ((6,2,2)), m=9, a=[2, 3, 4, 4, 4, 6], S=[0, 8]. -/
def code_800 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #801: ((6,2,2)), m=9, a=[2, 3, 4, 4, 4, 7], S=[0, 1]. -/
def code_801 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #802: ((6,2,2)), m=9, a=[2, 3, 4, 4, 5, 6], S=[0, 8]. -/
def code_802 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #803: ((6,2,2)), m=9, a=[2, 3, 4, 4, 5, 7], S=[0, 1]. -/
def code_803 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #804: ((6,2,2)), m=9, a=[2, 3, 4, 4, 5, 7], S=[0, 8]. -/
def code_804 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #805: ((6,2,2)), m=9, a=[2, 3, 4, 4, 6, 6], S=[0, 8]. -/
def code_805 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #806: ((6,2,2)), m=9, a=[2, 3, 4, 4, 6, 7], S=[0, 1]. -/
def code_806 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #807: ((6,2,2)), m=9, a=[2, 3, 4, 4, 7, 7], S=[0, 1]. -/
def code_807 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #808: ((6,2,2)), m=9, a=[2, 3, 4, 4, 7, 7], S=[0, 8]. -/
def code_808 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #809: ((6,2,2)), m=9, a=[2, 3, 4, 5, 5, 5], S=[0, 8]. -/
def code_809 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #810: ((6,2,2)), m=9, a=[2, 3, 4, 5, 5, 6], S=[0, 1]. -/
def code_810 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #811: ((6,2,2)), m=9, a=[2, 3, 4, 5, 5, 6], S=[0, 8]. -/
def code_811 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #812: ((6,2,2)), m=9, a=[2, 3, 4, 5, 6, 6], S=[0, 1]. -/
def code_812 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #813: ((6,2,2)), m=9, a=[2, 3, 4, 5, 6, 7], S=[0, 1]. -/
def code_813 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #814: ((6,2,2)), m=9, a=[2, 3, 4, 5, 6, 7], S=[0, 8]. -/
def code_814 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #815: ((6,2,2)), m=9, a=[2, 3, 4, 6, 7, 7], S=[0, 1]. -/
def code_815 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #816: ((6,2,2)), m=9, a=[2, 3, 5, 5, 5, 6], S=[0, 1]. -/
def code_816 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #817: ((6,2,2)), m=9, a=[2, 3, 5, 5, 6, 6], S=[0, 1]. -/
def code_817 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #818: ((6,2,2)), m=9, a=[2, 3, 5, 5, 6, 6], S=[0, 8]. -/
def code_818 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #819: ((6,2,2)), m=9, a=[2, 3, 5, 5, 6, 7], S=[0, 8]. -/
def code_819 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #820: ((6,2,2)), m=9, a=[2, 3, 5, 6, 6, 7], S=[0, 1]. -/
def code_820 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #821: ((6,2,2)), m=9, a=[2, 3, 5, 6, 7, 7], S=[0, 8]. -/
def code_821 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #822: ((6,2,2)), m=9, a=[2, 3, 6, 6, 7, 7], S=[0, 5]. -/
def code_822 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #823: ((6,2,2)), m=9, a=[2, 3, 6, 6, 7, 8], S=[0, 4]. -/
def code_823 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #824: ((6,2,2)), m=9, a=[2, 3, 6, 6, 8, 8], S=[0, 4]. -/
def code_824 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #825: ((6,2,2)), m=9, a=[2, 3, 6, 7, 7, 7], S=[0, 8]. -/
def code_825 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #826: ((6,2,2)), m=9, a=[2, 3, 6, 7, 7, 8], S=[0, 5]. -/
def code_826 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #827: ((6,2,2)), m=9, a=[2, 3, 6, 7, 8, 8], S=[0, 4]. -/
def code_827 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #828: ((6,2,2)), m=9, a=[2, 3, 6, 7, 8, 8], S=[0, 5]. -/
def code_828 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #829: ((6,2,2)), m=9, a=[2, 3, 6, 8, 8, 8], S=[0, 4]. -/
def code_829 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #830: ((6,2,2)), m=9, a=[2, 3, 7, 7, 8, 8], S=[0, 4]. -/
def code_830 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #831: ((6,2,2)), m=9, a=[2, 3, 7, 7, 8, 8], S=[0, 5]. -/
def code_831 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #832: ((6,2,2)), m=9, a=[2, 3, 7, 8, 8, 8], S=[0, 4]. -/
def code_832 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ)]

/-- Catalogue code #833: ((6,2,2)), m=9, a=[2, 3, 7, 8, 8, 8], S=[0, 5]. -/
def code_833 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #834: ((6,2,2)), m=9, a=[2, 3, 8, 8, 8, 8], S=[0, 5]. -/
def code_834 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #835: ((6,2,2)), m=9, a=[2, 4, 4, 5, 5, 6], S=[0, 1]. -/
def code_835 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #836: ((6,2,2)), m=9, a=[2, 4, 4, 5, 6, 6], S=[0, 1]. -/
def code_836 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #837: ((6,2,2)), m=9, a=[2, 4, 5, 5, 6, 6], S=[0, 8]. -/
def code_837 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #838: ((6,2,2)), m=9, a=[2, 4, 5, 5, 6, 7], S=[0, 1]. -/
def code_838 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #839: ((6,2,2)), m=9, a=[2, 4, 5, 5, 6, 7], S=[0, 8]. -/
def code_839 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #840: ((6,2,2)), m=9, a=[2, 4, 5, 5, 7, 8], S=[0, 3]. -/
def code_840 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #841: ((6,2,2)), m=9, a=[2, 4, 5, 6, 6, 6], S=[0, 1]. -/
def code_841 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #842: ((6,2,2)), m=9, a=[2, 4, 5, 6, 6, 7], S=[0, 1]. -/
def code_842 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #843: ((6,2,2)), m=9, a=[2, 4, 5, 6, 6, 7], S=[0, 8]. -/
def code_843 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #844: ((6,2,2)), m=9, a=[2, 4, 5, 6, 7, 7], S=[0, 1]. -/
def code_844 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #845: ((6,2,2)), m=9, a=[2, 5, 5, 5, 6, 6], S=[0, 1]. -/
def code_845 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #846: ((6,2,2)), m=9, a=[2, 5, 5, 5, 6, 6], S=[0, 8]. -/
def code_846 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #847: ((6,2,2)), m=9, a=[2, 5, 5, 5, 6, 7], S=[0, 8]. -/
def code_847 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #848: ((6,2,2)), m=9, a=[2, 5, 5, 6, 6, 6], S=[0, 1]. -/
def code_848 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #849: ((6,2,2)), m=9, a=[2, 5, 5, 6, 6, 6], S=[0, 8]. -/
def code_849 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #850: ((6,2,2)), m=9, a=[2, 5, 5, 6, 6, 7], S=[0, 1]. -/
def code_850 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #851: ((6,2,2)), m=9, a=[2, 5, 5, 6, 6, 7], S=[0, 8]. -/
def code_851 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #852: ((6,2,2)), m=9, a=[2, 5, 6, 6, 6, 7], S=[0, 1]. -/
def code_852 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #853: ((6,2,2)), m=9, a=[2, 5, 6, 6, 7, 7], S=[0, 1]. -/
def code_853 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #854: ((6,2,2)), m=9, a=[2, 5, 6, 7, 7, 7], S=[0, 8]. -/
def code_854 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #855: ((6,2,2)), m=9, a=[2, 6, 6, 6, 7, 8], S=[0, 4]. -/
def code_855 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #856: ((6,2,2)), m=9, a=[2, 6, 6, 7, 7, 8], S=[0, 4]. -/
def code_856 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #857: ((6,2,2)), m=9, a=[2, 6, 6, 7, 7, 8], S=[0, 5]. -/
def code_857 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #858: ((6,2,2)), m=9, a=[2, 6, 6, 7, 8, 8], S=[0, 4]. -/
def code_858 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #859: ((6,2,2)), m=9, a=[2, 6, 6, 7, 8, 8], S=[0, 5]. -/
def code_859 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #860: ((6,2,2)), m=9, a=[2, 6, 7, 7, 8, 8], S=[0, 5]. -/
def code_860 : ExampleData 6 9 2 where
  a := ![(2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #861: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 4], S=[0, 1]. -/
def code_861 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #862: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 4], S=[0, 7]. -/
def code_862 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #863: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 4], S=[0, 8]. -/
def code_863 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #864: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 5], S=[0, 8]. -/
def code_864 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #865: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 7], S=[0, 1]. -/
def code_865 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #866: ((6,2,2)), m=9, a=[3, 3, 3, 4, 4, 7], S=[0, 8]. -/
def code_866 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #867: ((6,2,2)), m=9, a=[3, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_867 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #868: ((6,2,2)), m=9, a=[3, 3, 3, 4, 5, 7], S=[0, 8]. -/
def code_868 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #869: ((6,2,2)), m=9, a=[3, 3, 3, 4, 5, 8], S=[0, 7]. -/
def code_869 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #870: ((6,2,2)), m=9, a=[3, 3, 3, 4, 7, 7], S=[0, 1]. -/
def code_870 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #871: ((6,2,2)), m=9, a=[3, 3, 3, 4, 7, 7], S=[0, 8]. -/
def code_871 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #872: ((6,2,2)), m=9, a=[3, 3, 3, 4, 8, 8], S=[0, 7]. -/
def code_872 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #873: ((6,2,2)), m=9, a=[3, 3, 3, 5, 5, 5], S=[0, 1]. -/
def code_873 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #874: ((6,2,2)), m=9, a=[3, 3, 3, 5, 5, 5], S=[0, 2]. -/
def code_874 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #875: ((6,2,2)), m=9, a=[3, 3, 3, 5, 5, 5], S=[0, 8]. -/
def code_875 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #876: ((6,2,2)), m=9, a=[3, 3, 3, 5, 5, 8], S=[0, 2]. -/
def code_876 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #877: ((6,2,2)), m=9, a=[3, 3, 3, 5, 5, 8], S=[0, 7]. -/
def code_877 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #878: ((6,2,2)), m=9, a=[3, 3, 3, 5, 8, 8], S=[0, 2]. -/
def code_878 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #879: ((6,2,2)), m=9, a=[3, 3, 3, 5, 8, 8], S=[0, 7]. -/
def code_879 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #880: ((6,2,2)), m=9, a=[3, 3, 3, 7, 7, 8], S=[0, 5]. -/
def code_880 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #881: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 4], S=[0, 1]. -/
def code_881 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #882: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 4], S=[0, 7]. -/
def code_882 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #883: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 5], S=[0, 2]. -/
def code_883 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #884: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 5], S=[0, 8]. -/
def code_884 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #885: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 6], S=[0, 1]. -/
def code_885 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #886: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 6], S=[0, 2]. -/
def code_886 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #887: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 6], S=[0, 8]. -/
def code_887 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #888: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 7], S=[0, 1]. -/
def code_888 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #889: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 7], S=[0, 8]. -/
def code_889 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #890: ((6,2,2)), m=9, a=[3, 3, 4, 4, 4, 8], S=[0, 7]. -/
def code_890 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9)]

/-- Catalogue code #891: ((6,2,2)), m=9, a=[3, 3, 4, 4, 5, 6], S=[0, 2]. -/
def code_891 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #892: ((6,2,2)), m=9, a=[3, 3, 4, 4, 5, 7], S=[0, 1]. -/
def code_892 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #893: ((6,2,2)), m=9, a=[3, 3, 4, 4, 5, 8], S=[0, 2]. -/
def code_893 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #894: ((6,2,2)), m=9, a=[3, 3, 4, 4, 5, 8], S=[0, 7]. -/
def code_894 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #895: ((6,2,2)), m=9, a=[3, 3, 4, 4, 6, 7], S=[0, 1]. -/
def code_895 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #896: ((6,2,2)), m=9, a=[3, 3, 4, 4, 6, 7], S=[0, 8]. -/
def code_896 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #897: ((6,2,2)), m=9, a=[3, 3, 4, 4, 6, 8], S=[0, 2]. -/
def code_897 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #898: ((6,2,2)), m=9, a=[3, 3, 4, 4, 7, 7], S=[0, 8]. -/
def code_898 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #899: ((6,2,2)), m=9, a=[3, 3, 4, 4, 8, 8], S=[0, 2]. -/
def code_899 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #900: ((6,2,2)), m=9, a=[3, 3, 4, 4, 8, 8], S=[0, 7]. -/
def code_900 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #901: ((6,2,2)), m=9, a=[3, 3, 4, 5, 5, 5], S=[0, 1]. -/
def code_901 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #902: ((6,2,2)), m=9, a=[3, 3, 4, 5, 5, 6], S=[0, 1]. -/
def code_902 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #903: ((6,2,2)), m=9, a=[3, 3, 4, 5, 5, 7], S=[0, 1]. -/
def code_903 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #904: ((6,2,2)), m=9, a=[3, 3, 4, 5, 5, 7], S=[0, 8]. -/
def code_904 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #905: ((6,2,2)), m=9, a=[3, 3, 4, 5, 5, 8], S=[0, 2]. -/
def code_905 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #906: ((6,2,2)), m=9, a=[3, 3, 4, 5, 6, 7], S=[0, 8]. -/
def code_906 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #907: ((6,2,2)), m=9, a=[3, 3, 4, 5, 7, 7], S=[0, 1]. -/
def code_907 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #908: ((6,2,2)), m=9, a=[3, 3, 4, 5, 7, 7], S=[0, 8]. -/
def code_908 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #909: ((6,2,2)), m=9, a=[3, 3, 4, 5, 8, 8], S=[0, 2]. -/
def code_909 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #910: ((6,2,2)), m=9, a=[3, 3, 4, 5, 8, 8], S=[0, 7]. -/
def code_910 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #911: ((6,2,2)), m=9, a=[3, 3, 4, 6, 7, 7], S=[0, 8]. -/
def code_911 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #912: ((6,2,2)), m=9, a=[3, 3, 4, 6, 8, 8], S=[0, 7]. -/
def code_912 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #913: ((6,2,2)), m=9, a=[3, 3, 4, 7, 7, 7], S=[0, 8]. -/
def code_913 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #914: ((6,2,2)), m=9, a=[3, 3, 4, 8, 8, 8], S=[0, 2]. -/
def code_914 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #915: ((6,2,2)), m=9, a=[3, 3, 5, 5, 5, 5], S=[0, 2]. -/
def code_915 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #916: ((6,2,2)), m=9, a=[3, 3, 5, 5, 5, 6], S=[0, 7]. -/
def code_916 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #917: ((6,2,2)), m=9, a=[3, 3, 5, 5, 5, 7], S=[0, 8]. -/
def code_917 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #918: ((6,2,2)), m=9, a=[3, 3, 5, 5, 6, 7], S=[0, 1]. -/
def code_918 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #919: ((6,2,2)), m=9, a=[3, 3, 5, 5, 6, 8], S=[0, 2]. -/
def code_919 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #920: ((6,2,2)), m=9, a=[3, 3, 5, 5, 7, 7], S=[0, 1]. -/
def code_920 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #921: ((6,2,2)), m=9, a=[3, 3, 5, 5, 7, 7], S=[0, 8]. -/
def code_921 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #922: ((6,2,2)), m=9, a=[3, 3, 5, 5, 8, 8], S=[0, 2]. -/
def code_922 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #923: ((6,2,2)), m=9, a=[3, 3, 5, 5, 8, 8], S=[0, 7]. -/
def code_923 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #924: ((6,2,2)), m=9, a=[3, 3, 5, 6, 7, 7], S=[0, 8]. -/
def code_924 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #925: ((6,2,2)), m=9, a=[3, 3, 5, 6, 8, 8], S=[0, 2]. -/
def code_925 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #926: ((6,2,2)), m=9, a=[3, 3, 5, 6, 8, 8], S=[0, 7]. -/
def code_926 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #927: ((6,2,2)), m=9, a=[3, 3, 5, 7, 7, 7], S=[0, 1]. -/
def code_927 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #928: ((6,2,2)), m=9, a=[3, 3, 5, 8, 8, 8], S=[0, 2]. -/
def code_928 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #929: ((6,2,2)), m=9, a=[3, 3, 6, 7, 7, 7], S=[0, 4]. -/
def code_929 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #930: ((6,2,2)), m=9, a=[3, 3, 6, 7, 7, 7], S=[0, 5]. -/
def code_930 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #931: ((6,2,2)), m=9, a=[3, 3, 6, 7, 7, 8], S=[0, 5]. -/
def code_931 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #932: ((6,2,2)), m=9, a=[3, 3, 6, 7, 8, 8], S=[0, 4]. -/
def code_932 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #933: ((6,2,2)), m=9, a=[3, 3, 7, 7, 7, 8], S=[0, 4]. -/
def code_933 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #934: ((6,2,2)), m=9, a=[3, 3, 7, 7, 7, 8], S=[0, 5]. -/
def code_934 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #935: ((6,2,2)), m=9, a=[3, 3, 7, 7, 8, 8], S=[0, 4]. -/
def code_935 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #936: ((6,2,2)), m=9, a=[3, 3, 7, 7, 8, 8], S=[0, 5]. -/
def code_936 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #937: ((6,2,2)), m=9, a=[3, 3, 7, 8, 8, 8], S=[0, 5]. -/
def code_937 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #938: ((6,2,2)), m=9, a=[3, 4, 4, 4, 4, 6], S=[0, 1]. -/
def code_938 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #939: ((6,2,2)), m=9, a=[3, 4, 4, 4, 4, 7], S=[0, 1]. -/
def code_939 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #940: ((6,2,2)), m=9, a=[3, 4, 4, 4, 4, 8], S=[0, 2]. -/
def code_940 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #941: ((6,2,2)), m=9, a=[3, 4, 4, 4, 4, 8], S=[0, 7]. -/
def code_941 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #942: ((6,2,2)), m=9, a=[3, 4, 4, 4, 5, 6], S=[0, 2]. -/
def code_942 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #943: ((6,2,2)), m=9, a=[3, 4, 4, 4, 6, 6], S=[0, 2]. -/
def code_943 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #944: ((6,2,2)), m=9, a=[3, 4, 4, 4, 6, 6], S=[0, 7]. -/
def code_944 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #945: ((6,2,2)), m=9, a=[3, 4, 4, 4, 6, 7], S=[0, 8]. -/
def code_945 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #946: ((6,2,2)), m=9, a=[3, 4, 4, 4, 7, 7], S=[0, 1]. -/
def code_946 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #947: ((6,2,2)), m=9, a=[3, 4, 4, 4, 7, 7], S=[0, 8]. -/
def code_947 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #948: ((6,2,2)), m=9, a=[3, 4, 4, 4, 8, 8], S=[0, 2]. -/
def code_948 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #949: ((6,2,2)), m=9, a=[3, 4, 4, 4, 8, 8], S=[0, 7]. -/
def code_949 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #950: ((6,2,2)), m=9, a=[3, 4, 4, 5, 6, 6], S=[0, 8]. -/
def code_950 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #951: ((6,2,2)), m=9, a=[3, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_951 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #952: ((6,2,2)), m=9, a=[3, 4, 4, 5, 6, 7], S=[0, 8]. -/
def code_952 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #953: ((6,2,2)), m=9, a=[3, 4, 4, 5, 6, 8], S=[0, 2]. -/
def code_953 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #954: ((6,2,2)), m=9, a=[3, 4, 4, 5, 7, 7], S=[0, 8]. -/
def code_954 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #955: ((6,2,2)), m=9, a=[3, 4, 4, 5, 8, 8], S=[0, 2]. -/
def code_955 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #956: ((6,2,2)), m=9, a=[3, 4, 4, 5, 8, 8], S=[0, 7]. -/
def code_956 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #957: ((6,2,2)), m=9, a=[3, 4, 4, 6, 6, 7], S=[0, 1]. -/
def code_957 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #958: ((6,2,2)), m=9, a=[3, 4, 4, 6, 6, 7], S=[0, 8]. -/
def code_958 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #959: ((6,2,2)), m=9, a=[3, 4, 4, 6, 6, 8], S=[0, 2]. -/
def code_959 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #960: ((6,2,2)), m=9, a=[3, 4, 4, 6, 7, 7], S=[0, 1]. -/
def code_960 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #961: ((6,2,2)), m=9, a=[3, 4, 4, 6, 7, 7], S=[0, 8]. -/
def code_961 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #962: ((6,2,2)), m=9, a=[3, 4, 4, 6, 8, 8], S=[0, 2]. -/
def code_962 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #963: ((6,2,2)), m=9, a=[3, 4, 4, 6, 8, 8], S=[0, 7]. -/
def code_963 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #964: ((6,2,2)), m=9, a=[3, 4, 4, 7, 7, 7], S=[0, 8]. -/
def code_964 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #965: ((6,2,2)), m=9, a=[3, 4, 4, 8, 8, 8], S=[0, 2]. -/
def code_965 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #966: ((6,2,2)), m=9, a=[3, 4, 4, 8, 8, 8], S=[0, 7]. -/
def code_966 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #967: ((6,2,2)), m=9, a=[3, 4, 5, 5, 5, 6], S=[0, 7]. -/
def code_967 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #968: ((6,2,2)), m=9, a=[3, 4, 5, 5, 6, 6], S=[0, 7]. -/
def code_968 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #969: ((6,2,2)), m=9, a=[3, 4, 5, 5, 6, 7], S=[0, 1]. -/
def code_969 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #970: ((6,2,2)), m=9, a=[3, 4, 5, 5, 6, 8], S=[0, 2]. -/
def code_970 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #971: ((6,2,2)), m=9, a=[3, 4, 5, 5, 7, 7], S=[0, 1]. -/
def code_971 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #972: ((6,2,2)), m=9, a=[3, 4, 5, 5, 7, 7], S=[0, 8]. -/
def code_972 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #973: ((6,2,2)), m=9, a=[3, 4, 5, 6, 6, 7], S=[0, 8]. -/
def code_973 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #974: ((6,2,2)), m=9, a=[3, 4, 5, 6, 6, 8], S=[0, 7]. -/
def code_974 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #975: ((6,2,2)), m=9, a=[3, 4, 5, 6, 7, 7], S=[0, 1]. -/
def code_975 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #976: ((6,2,2)), m=9, a=[3, 4, 5, 6, 7, 7], S=[0, 8]. -/
def code_976 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #977: ((6,2,2)), m=9, a=[3, 4, 5, 6, 8, 8], S=[0, 2]. -/
def code_977 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #978: ((6,2,2)), m=9, a=[3, 4, 5, 8, 8, 8], S=[0, 2]. -/
def code_978 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #979: ((6,2,2)), m=9, a=[3, 4, 5, 8, 8, 8], S=[0, 7]. -/
def code_979 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #980: ((6,2,2)), m=9, a=[3, 4, 6, 6, 7, 7], S=[0, 1]. -/
def code_980 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #981: ((6,2,2)), m=9, a=[3, 4, 6, 6, 8, 8], S=[0, 7]. -/
def code_981 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #982: ((6,2,2)), m=9, a=[3, 4, 6, 7, 7, 7], S=[0, 8]. -/
def code_982 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #983: ((6,2,2)), m=9, a=[3, 4, 6, 8, 8, 8], S=[0, 7]. -/
def code_983 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #984: ((6,2,2)), m=9, a=[3, 4, 8, 8, 8, 8], S=[0, 7]. -/
def code_984 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #985: ((6,2,2)), m=9, a=[3, 5, 5, 5, 5, 6], S=[0, 8]. -/
def code_985 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #986: ((6,2,2)), m=9, a=[3, 5, 5, 5, 5, 7], S=[0, 1]. -/
def code_986 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #987: ((6,2,2)), m=9, a=[3, 5, 5, 5, 5, 8], S=[0, 2]. -/
def code_987 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #988: ((6,2,2)), m=9, a=[3, 5, 5, 5, 6, 6], S=[0, 1]. -/
def code_988 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #989: ((6,2,2)), m=9, a=[3, 5, 5, 5, 6, 6], S=[0, 7]. -/
def code_989 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #990: ((6,2,2)), m=9, a=[3, 5, 5, 5, 6, 6], S=[0, 8]. -/
def code_990 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #991: ((6,2,2)), m=9, a=[3, 5, 5, 5, 6, 7], S=[0, 1]. -/
def code_991 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #992: ((6,2,2)), m=9, a=[3, 5, 5, 5, 6, 8], S=[0, 7]. -/
def code_992 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #993: ((6,2,2)), m=9, a=[3, 5, 5, 5, 7, 7], S=[0, 1]. -/
def code_993 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #994: ((6,2,2)), m=9, a=[3, 5, 5, 5, 7, 7], S=[0, 8]. -/
def code_994 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #995: ((6,2,2)), m=9, a=[3, 5, 5, 6, 6, 7], S=[0, 1]. -/
def code_995 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #996: ((6,2,2)), m=9, a=[3, 5, 5, 6, 6, 8], S=[0, 7]. -/
def code_996 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #997: ((6,2,2)), m=9, a=[3, 5, 5, 6, 7, 7], S=[0, 1]. -/
def code_997 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #998: ((6,2,2)), m=9, a=[3, 5, 5, 6, 7, 7], S=[0, 8]. -/
def code_998 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #999: ((6,2,2)), m=9, a=[3, 5, 5, 6, 8, 8], S=[0, 2]. -/
def code_999 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]
def checks : List Bool :=
  [decide code_500.OK,
   decide code_501.OK,
   decide code_502.OK,
   decide code_503.OK,
   decide code_504.OK,
   decide code_505.OK,
   decide code_506.OK,
   decide code_507.OK,
   decide code_508.OK,
   decide code_509.OK,
   decide code_510.OK,
   decide code_511.OK,
   decide code_512.OK,
   decide code_513.OK,
   decide code_514.OK,
   decide code_515.OK,
   decide code_516.OK,
   decide code_517.OK,
   decide code_518.OK,
   decide code_519.OK,
   decide code_520.OK,
   decide code_521.OK,
   decide code_522.OK,
   decide code_523.OK,
   decide code_524.OK,
   decide code_525.OK,
   decide code_526.OK,
   decide code_527.OK,
   decide code_528.OK,
   decide code_529.OK,
   decide code_530.OK,
   decide code_531.OK,
   decide code_532.OK,
   decide code_533.OK,
   decide code_534.OK,
   decide code_535.OK,
   decide code_536.OK,
   decide code_537.OK,
   decide code_538.OK,
   decide code_539.OK,
   decide code_540.OK,
   decide code_541.OK,
   decide code_542.OK,
   decide code_543.OK,
   decide code_544.OK,
   decide code_545.OK,
   decide code_546.OK,
   decide code_547.OK,
   decide code_548.OK,
   decide code_549.OK,
   decide code_550.OK,
   decide code_551.OK,
   decide code_552.OK,
   decide code_553.OK,
   decide code_554.OK,
   decide code_555.OK,
   decide code_556.OK,
   decide code_557.OK,
   decide code_558.OK,
   decide code_559.OK,
   decide code_560.OK,
   decide code_561.OK,
   decide code_562.OK,
   decide code_563.OK,
   decide code_564.OK,
   decide code_565.OK,
   decide code_566.OK,
   decide code_567.OK,
   decide code_568.OK,
   decide code_569.OK,
   decide code_570.OK,
   decide code_571.OK,
   decide code_572.OK,
   decide code_573.OK,
   decide code_574.OK,
   decide code_575.OK,
   decide code_576.OK,
   decide code_577.OK,
   decide code_578.OK,
   decide code_579.OK,
   decide code_580.OK,
   decide code_581.OK,
   decide code_582.OK,
   decide code_583.OK,
   decide code_584.OK,
   decide code_585.OK,
   decide code_586.OK,
   decide code_587.OK,
   decide code_588.OK,
   decide code_589.OK,
   decide code_590.OK,
   decide code_591.OK,
   decide code_592.OK,
   decide code_593.OK,
   decide code_594.OK,
   decide code_595.OK,
   decide code_596.OK,
   decide code_597.OK,
   decide code_598.OK,
   decide code_599.OK,
   decide code_600.OK,
   decide code_601.OK,
   decide code_602.OK,
   decide code_603.OK,
   decide code_604.OK,
   decide code_605.OK,
   decide code_606.OK,
   decide code_607.OK,
   decide code_608.OK,
   decide code_609.OK,
   decide code_610.OK,
   decide code_611.OK,
   decide code_612.OK,
   decide code_613.OK,
   decide code_614.OK,
   decide code_615.OK,
   decide code_616.OK,
   decide code_617.OK,
   decide code_618.OK,
   decide code_619.OK,
   decide code_620.OK,
   decide code_621.OK,
   decide code_622.OK,
   decide code_623.OK,
   decide code_624.OK,
   decide code_625.OK,
   decide code_626.OK,
   decide code_627.OK,
   decide code_628.OK,
   decide code_629.OK,
   decide code_630.OK,
   decide code_631.OK,
   decide code_632.OK,
   decide code_633.OK,
   decide code_634.OK,
   decide code_635.OK,
   decide code_636.OK,
   decide code_637.OK,
   decide code_638.OK,
   decide code_639.OK,
   decide code_640.OK,
   decide code_641.OK,
   decide code_642.OK,
   decide code_643.OK,
   decide code_644.OK,
   decide code_645.OK,
   decide code_646.OK,
   decide code_647.OK,
   decide code_648.OK,
   decide code_649.OK,
   decide code_650.OK,
   decide code_651.OK,
   decide code_652.OK,
   decide code_653.OK,
   decide code_654.OK,
   decide code_655.OK,
   decide code_656.OK,
   decide code_657.OK,
   decide code_658.OK,
   decide code_659.OK,
   decide code_660.OK,
   decide code_661.OK,
   decide code_662.OK,
   decide code_663.OK,
   decide code_664.OK,
   decide code_665.OK,
   decide code_666.OK,
   decide code_667.OK,
   decide code_668.OK,
   decide code_669.OK,
   decide code_670.OK,
   decide code_671.OK,
   decide code_672.OK,
   decide code_673.OK,
   decide code_674.OK,
   decide code_675.OK,
   decide code_676.OK,
   decide code_677.OK,
   decide code_678.OK,
   decide code_679.OK,
   decide code_680.OK,
   decide code_681.OK,
   decide code_682.OK,
   decide code_683.OK,
   decide code_684.OK,
   decide code_685.OK,
   decide code_686.OK,
   decide code_687.OK,
   decide code_688.OK,
   decide code_689.OK,
   decide code_690.OK,
   decide code_691.OK,
   decide code_692.OK,
   decide code_693.OK,
   decide code_694.OK,
   decide code_695.OK,
   decide code_696.OK,
   decide code_697.OK,
   decide code_698.OK,
   decide code_699.OK,
   decide code_700.OK,
   decide code_701.OK,
   decide code_702.OK,
   decide code_703.OK,
   decide code_704.OK,
   decide code_705.OK,
   decide code_706.OK,
   decide code_707.OK,
   decide code_708.OK,
   decide code_709.OK,
   decide code_710.OK,
   decide code_711.OK,
   decide code_712.OK,
   decide code_713.OK,
   decide code_714.OK,
   decide code_715.OK,
   decide code_716.OK,
   decide code_717.OK,
   decide code_718.OK,
   decide code_719.OK,
   decide code_720.OK,
   decide code_721.OK,
   decide code_722.OK,
   decide code_723.OK,
   decide code_724.OK,
   decide code_725.OK,
   decide code_726.OK,
   decide code_727.OK,
   decide code_728.OK,
   decide code_729.OK,
   decide code_730.OK,
   decide code_731.OK,
   decide code_732.OK,
   decide code_733.OK,
   decide code_734.OK,
   decide code_735.OK,
   decide code_736.OK,
   decide code_737.OK,
   decide code_738.OK,
   decide code_739.OK,
   decide code_740.OK,
   decide code_741.OK,
   decide code_742.OK,
   decide code_743.OK,
   decide code_744.OK,
   decide code_745.OK,
   decide code_746.OK,
   decide code_747.OK,
   decide code_748.OK,
   decide code_749.OK,
   decide code_750.OK,
   decide code_751.OK,
   decide code_752.OK,
   decide code_753.OK,
   decide code_754.OK,
   decide code_755.OK,
   decide code_756.OK,
   decide code_757.OK,
   decide code_758.OK,
   decide code_759.OK,
   decide code_760.OK,
   decide code_761.OK,
   decide code_762.OK,
   decide code_763.OK,
   decide code_764.OK,
   decide code_765.OK,
   decide code_766.OK,
   decide code_767.OK,
   decide code_768.OK,
   decide code_769.OK,
   decide code_770.OK,
   decide code_771.OK,
   decide code_772.OK,
   decide code_773.OK,
   decide code_774.OK,
   decide code_775.OK,
   decide code_776.OK,
   decide code_777.OK,
   decide code_778.OK,
   decide code_779.OK,
   decide code_780.OK,
   decide code_781.OK,
   decide code_782.OK,
   decide code_783.OK,
   decide code_784.OK,
   decide code_785.OK,
   decide code_786.OK,
   decide code_787.OK,
   decide code_788.OK,
   decide code_789.OK,
   decide code_790.OK,
   decide code_791.OK,
   decide code_792.OK,
   decide code_793.OK,
   decide code_794.OK,
   decide code_795.OK,
   decide code_796.OK,
   decide code_797.OK,
   decide code_798.OK,
   decide code_799.OK,
   decide code_800.OK,
   decide code_801.OK,
   decide code_802.OK,
   decide code_803.OK,
   decide code_804.OK,
   decide code_805.OK,
   decide code_806.OK,
   decide code_807.OK,
   decide code_808.OK,
   decide code_809.OK,
   decide code_810.OK,
   decide code_811.OK,
   decide code_812.OK,
   decide code_813.OK,
   decide code_814.OK,
   decide code_815.OK,
   decide code_816.OK,
   decide code_817.OK,
   decide code_818.OK,
   decide code_819.OK,
   decide code_820.OK,
   decide code_821.OK,
   decide code_822.OK,
   decide code_823.OK,
   decide code_824.OK,
   decide code_825.OK,
   decide code_826.OK,
   decide code_827.OK,
   decide code_828.OK,
   decide code_829.OK,
   decide code_830.OK,
   decide code_831.OK,
   decide code_832.OK,
   decide code_833.OK,
   decide code_834.OK,
   decide code_835.OK,
   decide code_836.OK,
   decide code_837.OK,
   decide code_838.OK,
   decide code_839.OK,
   decide code_840.OK,
   decide code_841.OK,
   decide code_842.OK,
   decide code_843.OK,
   decide code_844.OK,
   decide code_845.OK,
   decide code_846.OK,
   decide code_847.OK,
   decide code_848.OK,
   decide code_849.OK,
   decide code_850.OK,
   decide code_851.OK,
   decide code_852.OK,
   decide code_853.OK,
   decide code_854.OK,
   decide code_855.OK,
   decide code_856.OK,
   decide code_857.OK,
   decide code_858.OK,
   decide code_859.OK,
   decide code_860.OK,
   decide code_861.OK,
   decide code_862.OK,
   decide code_863.OK,
   decide code_864.OK,
   decide code_865.OK,
   decide code_866.OK,
   decide code_867.OK,
   decide code_868.OK,
   decide code_869.OK,
   decide code_870.OK,
   decide code_871.OK,
   decide code_872.OK,
   decide code_873.OK,
   decide code_874.OK,
   decide code_875.OK,
   decide code_876.OK,
   decide code_877.OK,
   decide code_878.OK,
   decide code_879.OK,
   decide code_880.OK,
   decide code_881.OK,
   decide code_882.OK,
   decide code_883.OK,
   decide code_884.OK,
   decide code_885.OK,
   decide code_886.OK,
   decide code_887.OK,
   decide code_888.OK,
   decide code_889.OK,
   decide code_890.OK,
   decide code_891.OK,
   decide code_892.OK,
   decide code_893.OK,
   decide code_894.OK,
   decide code_895.OK,
   decide code_896.OK,
   decide code_897.OK,
   decide code_898.OK,
   decide code_899.OK,
   decide code_900.OK,
   decide code_901.OK,
   decide code_902.OK,
   decide code_903.OK,
   decide code_904.OK,
   decide code_905.OK,
   decide code_906.OK,
   decide code_907.OK,
   decide code_908.OK,
   decide code_909.OK,
   decide code_910.OK,
   decide code_911.OK,
   decide code_912.OK,
   decide code_913.OK,
   decide code_914.OK,
   decide code_915.OK,
   decide code_916.OK,
   decide code_917.OK,
   decide code_918.OK,
   decide code_919.OK,
   decide code_920.OK,
   decide code_921.OK,
   decide code_922.OK,
   decide code_923.OK,
   decide code_924.OK,
   decide code_925.OK,
   decide code_926.OK,
   decide code_927.OK,
   decide code_928.OK,
   decide code_929.OK,
   decide code_930.OK,
   decide code_931.OK,
   decide code_932.OK,
   decide code_933.OK,
   decide code_934.OK,
   decide code_935.OK,
   decide code_936.OK,
   decide code_937.OK,
   decide code_938.OK,
   decide code_939.OK,
   decide code_940.OK,
   decide code_941.OK,
   decide code_942.OK,
   decide code_943.OK,
   decide code_944.OK,
   decide code_945.OK,
   decide code_946.OK,
   decide code_947.OK,
   decide code_948.OK,
   decide code_949.OK,
   decide code_950.OK,
   decide code_951.OK,
   decide code_952.OK,
   decide code_953.OK,
   decide code_954.OK,
   decide code_955.OK,
   decide code_956.OK,
   decide code_957.OK,
   decide code_958.OK,
   decide code_959.OK,
   decide code_960.OK,
   decide code_961.OK,
   decide code_962.OK,
   decide code_963.OK,
   decide code_964.OK,
   decide code_965.OK,
   decide code_966.OK,
   decide code_967.OK,
   decide code_968.OK,
   decide code_969.OK,
   decide code_970.OK,
   decide code_971.OK,
   decide code_972.OK,
   decide code_973.OK,
   decide code_974.OK,
   decide code_975.OK,
   decide code_976.OK,
   decide code_977.OK,
   decide code_978.OK,
   decide code_979.OK,
   decide code_980.OK,
   decide code_981.OK,
   decide code_982.OK,
   decide code_983.OK,
   decide code_984.OK,
   decide code_985.OK,
   decide code_986.OK,
   decide code_987.OK,
   decide code_988.OK,
   decide code_989.OK,
   decide code_990.OK,
   decide code_991.OK,
   decide code_992.OK,
   decide code_993.OK,
   decide code_994.OK,
   decide code_995.OK,
   decide code_996.OK,
   decide code_997.OK,
   decide code_998.OK,
   decide code_999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk001
