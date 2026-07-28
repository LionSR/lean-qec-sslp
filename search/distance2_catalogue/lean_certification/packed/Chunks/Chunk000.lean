import SS

namespace Catalogue.Chunk000

open SS SS.Verify

/-- Catalogue code #0: ((4,2,2)), m=4, a=[1, 1, 1, 1], S=[0, 2]. -/
def code_0 : ExampleData 4 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false], ![true, true, true, true]}, {![false, false, true, true], ![true, true, false, false]}]
  prob := ![(fun s : BitString 4 =>
      if s = (![false, false, false, false] : BitString 4) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true] : BitString 4) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 4 =>
      if s = (![false, false, true, true] : BitString 4) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false] : BitString 4) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1: ((5,2,2)), m=4, a=[1, 1, 1, 1, 1], S=[0, 2]. -/
def code_1 : ExampleData 5 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false, false], ![true, false, true, true, true]}, {![false, false, false, true, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #2: ((5,2,2)), m=4, a=[1, 3, 3, 3, 3], S=[0, 2]. -/
def code_2 : ExampleData 5 4 2 where
  a := ![(1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, false, false, true], ![true, true, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #3: ((5,2,2)), m=5, a=[1, 1, 1, 1, 1], S=[0, 2]. -/
def code_3 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, false, true], ![false, true, false, true, false], ![true, false, false, false, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #4: ((5,2,2)), m=5, a=[1, 1, 1, 1, 1], S=[0, 3]. -/
def code_4 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, false, true, true], ![false, true, true, false, true], ![true, false, true, true, false], ![true, true, false, false, true]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #5: ((5,2,2)), m=5, a=[1, 1, 1, 4, 4], S=[0, 3]. -/
def code_5 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, true, true, true, true], ![true, false, false, true, false], ![true, true, false, true, true]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #6: ((5,2,2)), m=6, a=[1, 1, 1, 1, 2], S=[0, 3]. -/
def code_6 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, false, false, true], ![true, false, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #7: ((5,2,2)), m=6, a=[1, 1, 1, 1, 3], S=[0, 4]. -/
def code_7 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![true, true, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #8: ((5,2,2)), m=6, a=[1, 1, 1, 3, 3], S=[0, 4]. -/
def code_8 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![false, false, false, true, true], ![true, true, true, false, true]}, {![false, false, true, false, true], ![false, true, false, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #9: ((5,2,2)), m=6, a=[2, 2, 2, 3, 3], S=[0, 1]. -/
def code_9 : ExampleData 5 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, true, true], ![true, true, true, false, false], ![true, true, true, true, true]}, {![false, true, true, true, false], ![true, false, true, false, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #10: ((5,2,2)), m=7, a=[1, 1, 1, 2, 2], S=[0, 3]. -/
def code_10 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, false, true], ![false, true, false, true, false], ![true, false, false, false, true], ![true, false, false, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #11: ((5,2,2)), m=7, a=[1, 1, 1, 2, 2], S=[0, 4]. -/
def code_11 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, false, true, true], ![false, true, true, true, false], ![true, false, true, false, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #12: ((5,2,2)), m=7, a=[1, 1, 1, 3, 4], S=[0, 5]. -/
def code_12 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, false, false, true, true], ![true, true, true, false, true]}, {![false, false, true, false, true], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #13: ((5,2,2)), m=7, a=[1, 1, 1, 4, 4], S=[0, 2]. -/
def code_13 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![false, true, true, false, false], ![true, false, true, false, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #14: ((5,2,2)), m=7, a=[1, 1, 2, 2, 2], S=[0, 4]. -/
def code_14 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, false, true, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #15: ((5,2,2)), m=7, a=[1, 1, 2, 5, 5], S=[0, 3]. -/
def code_15 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, false, true, true, false], ![true, true, false, false, true]}, {![false, false, false, true, true], ![false, true, true, false, false], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #16: ((5,2,2)), m=7, a=[1, 1, 2, 5, 6], S=[0, 4]. -/
def code_16 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, false, true], ![false, true, true, true, true], ![true, false, false, false, true], ![true, true, false, true, false]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #17: ((5,2,2)), m=7, a=[1, 1, 3, 3, 3], S=[0, 2]. -/
def code_17 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, true, true], ![true, false, true, false, true]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #18: ((5,2,2)), m=7, a=[1, 1, 3, 3, 6], S=[0, 2]. -/
def code_18 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, false, false, true], ![false, true, true, true, false], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #19: ((5,2,2)), m=7, a=[1, 1, 4, 4, 4], S=[0, 2]. -/
def code_19 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, true, true], ![true, false, true, false, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #20: ((5,2,2)), m=7, a=[1, 1, 4, 4, 4], S=[0, 5]. -/
def code_20 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, true, true], ![false, true, false, true, false], ![false, true, true, false, false], ![true, false, false, false, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #21: ((5,2,2)), m=7, a=[1, 2, 2, 2, 6], S=[0, 3]. -/
def code_21 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, false, false, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, false, false, true, false], ![true, false, true, false, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #22: ((5,2,2)), m=7, a=[1, 2, 5, 6, 6], S=[0, 3]. -/
def code_22 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, false, true, false], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #23: ((5,2,2)), m=7, a=[1, 3, 3, 4, 6], S=[0, 5]. -/
def code_23 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, true, false], ![true, false, false, false, true], ![true, true, false, true, true], ![true, true, true, false, false]}, {![false, true, true, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #24: ((5,2,2)), m=7, a=[1, 4, 4, 6, 6], S=[0, 2]. -/
def code_24 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, false, true], ![true, true, true, true, true]}, {![false, false, true, true, true], ![false, true, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #25: ((5,2,2)), m=7, a=[1, 5, 5, 5, 6], S=[0, 4]. -/
def code_25 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, false, false, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #26: ((5,2,2)), m=7, a=[2, 2, 3, 4, 5], S=[0, 1]. -/
def code_26 : ExampleData 5 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, false, true], ![false, true, true, true, true], ![true, false, false, false, true], ![true, true, true, false, false]}, {![false, false, true, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #27: ((5,2,2)), m=7, a=[2, 2, 5, 6, 6], S=[0, 3]. -/
def code_27 : ExampleData 5 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, true, true], ![false, true, true, false, false], ![true, false, false, true, true], ![true, true, true, true, true]}, {![false, false, true, true, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #28: ((5,2,2)), m=8, a=[1, 1, 2, 2, 4], S=[0, 5]. -/
def code_28 : ExampleData 5 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![true, true, false, true, true], ![true, true, true, false, true]}, {![false, true, false, false, true], ![false, true, true, true, false], ![true, false, false, false, true]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #29: ((5,2,2)), m=8, a=[1, 1, 3, 3, 4], S=[0, 2]. -/
def code_29 : ExampleData 5 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #30: ((5,2,2)), m=9, a=[1, 1, 2, 2, 3], S=[0, 4]. -/
def code_30 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, true, false], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, false, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #31: ((5,2,2)), m=9, a=[1, 1, 2, 6, 7], S=[0, 4]. -/
def code_31 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, true, true, true, false], ![true, false, true, true, false], ![true, true, false, false, true]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #32: ((5,2,2)), m=9, a=[1, 1, 3, 4, 4], S=[0, 2]. -/
def code_32 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, false, true, true], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #33: ((5,2,2)), m=9, a=[1, 1, 3, 7, 7], S=[0, 5]. -/
def code_33 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true], ![true, true, false, false, true], ![true, true, false, true, false]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #34: ((5,2,2)), m=9, a=[1, 1, 5, 5, 6], S=[0, 2]. -/
def code_34 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, true, true, false], ![true, false, true, true, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #35: ((5,2,2)), m=9, a=[1, 3, 5, 5, 8], S=[0, 2]. -/
def code_35 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![true, false, false, false, true], ![true, true, false, true, false], ![true, true, true, false, false]}, {![false, true, false, false, true], ![true, false, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #36: ((5,2,2)), m=9, a=[1, 4, 4, 6, 8], S=[0, 7]. -/
def code_36 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![false, true, false, true, true], ![true, false, false, false, true], ![true, true, true, false, false]}, {![false, true, true, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #37: ((5,2,2)), m=10, a=[2, 2, 3, 3, 8], S=[0, 4]. -/
def code_37 : ExampleData 5 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #38: ((6,2,2)), m=4, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_38 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #39: ((6,2,2)), m=4, a=[1, 1, 1, 1, 1, 3], S=[0, 2]. -/
def code_39 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(-1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (1 : ℚ), (0 : ℚ)]

/-- Catalogue code #40: ((6,2,2)), m=4, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_40 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (-1 : ℚ)]

/-- Catalogue code #41: ((6,2,2)), m=4, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_41 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #42: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_42 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #43: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 1], S=[0, 3]. -/
def code_43 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #44: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 4], S=[0, 2]. -/
def code_44 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #45: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 4], S=[0, 3]. -/
def code_45 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #46: ((6,2,2)), m=5, a=[1, 1, 1, 1, 4, 4], S=[0, 3]. -/
def code_46 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #47: ((6,2,2)), m=5, a=[1, 1, 1, 4, 4, 4], S=[0, 2]. -/
def code_47 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-11 : ℚ) / 15)]

/-- Catalogue code #48: ((6,2,2)), m=5, a=[1, 1, 1, 4, 4, 4], S=[0, 3]. -/
def code_48 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #49: ((6,2,2)), m=5, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_49 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (-1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #50: ((6,2,2)), m=5, a=[1, 4, 4, 4, 4, 4], S=[0, 2]. -/
def code_50 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (-1 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #51: ((6,2,2)), m=5, a=[1, 4, 4, 4, 4, 4], S=[0, 3]. -/
def code_51 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #52: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_52 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #53: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 3]. -/
def code_53 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #54: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 4]. -/
def code_54 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #55: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 2], S=[0, 3]. -/
def code_55 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #56: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 3], S=[0, 4]. -/
def code_56 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #57: ((6,2,2)), m=6, a=[1, 1, 1, 1, 2, 5], S=[0, 3]. -/
def code_57 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #58: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_58 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #59: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 3], S=[0, 4]. -/
def code_59 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #60: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 5], S=[0, 2]. -/
def code_60 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #61: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 5], S=[0, 4]. -/
def code_61 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #62: ((6,2,2)), m=6, a=[1, 1, 1, 1, 5, 5], S=[0, 4]. -/
def code_62 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #63: ((6,2,2)), m=6, a=[1, 1, 1, 2, 2, 4], S=[0, 3]. -/
def code_63 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #64: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 3], S=[0, 4]. -/
def code_64 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (1 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #65: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 5], S=[0, 2]. -/
def code_65 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (-1 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #66: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 5], S=[0, 4]. -/
def code_66 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #67: ((6,2,2)), m=6, a=[1, 1, 2, 4, 4, 4], S=[0, 3]. -/
def code_67 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #68: ((6,2,2)), m=6, a=[1, 1, 3, 3, 5, 5], S=[0, 4]. -/
def code_68 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #69: ((6,2,2)), m=6, a=[1, 2, 2, 2, 4, 5], S=[0, 3]. -/
def code_69 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #70: ((6,2,2)), m=6, a=[1, 2, 2, 4, 4, 5], S=[0, 3]. -/
def code_70 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #71: ((6,2,2)), m=6, a=[1, 3, 3, 5, 5, 5], S=[0, 2]. -/
def code_71 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #72: ((6,2,2)), m=6, a=[1, 3, 5, 5, 5, 5], S=[0, 4]. -/
def code_72 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #73: ((6,2,2)), m=6, a=[1, 4, 4, 5, 5, 5], S=[0, 3]. -/
def code_73 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #74: ((6,2,2)), m=6, a=[2, 2, 2, 2, 3, 3], S=[0, 1]. -/
def code_74 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #75: ((6,2,2)), m=6, a=[2, 2, 2, 2, 3, 3], S=[0, 5]. -/
def code_75 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #76: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 3], S=[0, 1]. -/
def code_76 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #77: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 3], S=[0, 5]. -/
def code_77 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #78: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 4], S=[0, 1]. -/
def code_78 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (-1 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #79: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 4], S=[0, 5]. -/
def code_79 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #80: ((6,2,2)), m=6, a=[2, 2, 3, 3, 3, 4], S=[0, 1]. -/
def code_80 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #81: ((6,2,2)), m=6, a=[2, 2, 3, 3, 4, 4], S=[0, 1]. -/
def code_81 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #82: ((6,2,2)), m=6, a=[2, 2, 3, 3, 4, 4], S=[0, 5]. -/
def code_82 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]

/-- Catalogue code #83: ((6,2,2)), m=6, a=[2, 2, 4, 5, 5, 5], S=[0, 3]. -/
def code_83 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #84: ((6,2,2)), m=6, a=[2, 3, 3, 3, 4, 4], S=[0, 5]. -/
def code_84 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #85: ((6,2,2)), m=6, a=[2, 3, 3, 4, 4, 4], S=[0, 1]. -/
def code_85 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #86: ((6,2,2)), m=6, a=[2, 3, 3, 4, 4, 4], S=[0, 5]. -/
def code_86 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #87: ((6,2,2)), m=6, a=[3, 3, 4, 4, 4, 4], S=[0, 1]. -/
def code_87 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #88: ((6,2,2)), m=6, a=[3, 3, 4, 4, 4, 4], S=[0, 5]. -/
def code_88 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #89: ((6,2,2)), m=6, a=[3, 3, 5, 5, 5, 5], S=[0, 2]. -/
def code_89 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]

/-- Catalogue code #90: ((6,2,2)), m=6, a=[3, 5, 5, 5, 5, 5], S=[0, 2]. -/
def code_90 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #91: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 2], S=[0, 3]. -/
def code_91 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #92: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 2], S=[0, 4]. -/
def code_92 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #93: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 3], S=[0, 5]. -/
def code_93 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #94: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 4], S=[0, 5]. -/
def code_94 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #95: ((6,2,2)), m=7, a=[1, 1, 1, 1, 2, 2], S=[0, 3]. -/
def code_95 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #96: ((6,2,2)), m=7, a=[1, 1, 1, 1, 2, 2], S=[0, 4]. -/
def code_96 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #97: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_97 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #98: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 3], S=[0, 5]. -/
def code_98 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #99: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 4], S=[0, 2]. -/
def code_99 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #100: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 4], S=[0, 5]. -/
def code_100 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #101: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 6], S=[0, 2]. -/
def code_101 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #102: ((6,2,2)), m=7, a=[1, 1, 1, 1, 4, 4], S=[0, 2]. -/
def code_102 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #103: ((6,2,2)), m=7, a=[1, 1, 1, 1, 5, 5], S=[0, 3]. -/
def code_103 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #104: ((6,2,2)), m=7, a=[1, 1, 1, 1, 5, 6], S=[0, 4]. -/
def code_104 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #105: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 2], S=[0, 3]. -/
def code_105 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #106: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 2], S=[0, 4]. -/
def code_106 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #107: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 5], S=[0, 3]. -/
def code_107 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #108: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 5], S=[0, 4]. -/
def code_108 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #109: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 6], S=[0, 3]. -/
def code_109 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #110: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 6], S=[0, 4]. -/
def code_110 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #111: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 5], S=[0, 3]. -/
def code_111 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #112: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 5], S=[0, 4]. -/
def code_112 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #113: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 6], S=[0, 4]. -/
def code_113 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #114: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_114 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #115: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 4], S=[0, 2]. -/
def code_115 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #116: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 4], S=[0, 5]. -/
def code_116 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #117: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 6], S=[0, 2]. -/
def code_117 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #118: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 6], S=[0, 5]. -/
def code_118 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #119: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 4], S=[0, 2]. -/
def code_119 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #120: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 4], S=[0, 5]. -/
def code_120 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #121: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 6], S=[0, 5]. -/
def code_121 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #122: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 4], S=[0, 2]. -/
def code_122 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #123: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 4], S=[0, 5]. -/
def code_123 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #124: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 6], S=[0, 2]. -/
def code_124 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #125: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 6], S=[0, 5]. -/
def code_125 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #126: ((6,2,2)), m=7, a=[1, 1, 1, 4, 6, 6], S=[0, 2]. -/
def code_126 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #127: ((6,2,2)), m=7, a=[1, 1, 1, 5, 5, 5], S=[0, 3]. -/
def code_127 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #128: ((6,2,2)), m=7, a=[1, 1, 1, 5, 5, 6], S=[0, 3]. -/
def code_128 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #129: ((6,2,2)), m=7, a=[1, 1, 1, 5, 6, 6], S=[0, 3]. -/
def code_129 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #130: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 2], S=[0, 4]. -/
def code_130 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #131: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 5], S=[0, 3]. -/
def code_131 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #132: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 5], S=[0, 4]. -/
def code_132 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #133: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 6], S=[0, 3]. -/
def code_133 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #134: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 6], S=[0, 4]. -/
def code_134 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ)]

/-- Catalogue code #135: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 5], S=[0, 3]. -/
def code_135 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #136: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 5], S=[0, 4]. -/
def code_136 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #137: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 6], S=[0, 4]. -/
def code_137 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #138: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 5], S=[0, 3]. -/
def code_138 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #139: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 5], S=[0, 4]. -/
def code_139 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #140: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 6], S=[0, 3]. -/
def code_140 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #141: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 6], S=[0, 4]. -/
def code_141 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #142: ((6,2,2)), m=7, a=[1, 1, 2, 5, 6, 6], S=[0, 3]. -/
def code_142 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #143: ((6,2,2)), m=7, a=[1, 1, 2, 6, 6, 6], S=[0, 4]. -/
def code_143 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #144: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 3], S=[0, 2]. -/
def code_144 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #145: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 3], S=[0, 5]. -/
def code_145 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #146: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_146 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #147: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 6], S=[0, 2]. -/
def code_147 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #148: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 6], S=[0, 5]. -/
def code_148 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #149: ((6,2,2)), m=7, a=[1, 1, 3, 3, 4, 6], S=[0, 2]. -/
def code_149 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #150: ((6,2,2)), m=7, a=[1, 1, 3, 3, 4, 6], S=[0, 5]. -/
def code_150 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #151: ((6,2,2)), m=7, a=[1, 1, 3, 3, 6, 6], S=[0, 2]. -/
def code_151 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #152: ((6,2,2)), m=7, a=[1, 1, 3, 3, 6, 6], S=[0, 5]. -/
def code_152 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #153: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_153 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #154: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 4], S=[0, 5]. -/
def code_154 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #155: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 6], S=[0, 2]. -/
def code_155 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #156: ((6,2,2)), m=7, a=[1, 1, 3, 4, 6, 6], S=[0, 2]. -/
def code_156 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #157: ((6,2,2)), m=7, a=[1, 1, 3, 4, 6, 6], S=[0, 5]. -/
def code_157 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #158: ((6,2,2)), m=7, a=[1, 1, 3, 6, 6, 6], S=[0, 5]. -/
def code_158 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #159: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_159 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #160: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 4], S=[0, 5]. -/
def code_160 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #161: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 6], S=[0, 5]. -/
def code_161 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #162: ((6,2,2)), m=7, a=[1, 1, 4, 4, 6, 6], S=[0, 2]. -/
def code_162 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #163: ((6,2,2)), m=7, a=[1, 1, 4, 4, 6, 6], S=[0, 5]. -/
def code_163 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #164: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 5], S=[0, 3]. -/
def code_164 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #165: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 5], S=[0, 4]. -/
def code_165 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #166: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 6], S=[0, 3]. -/
def code_166 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #167: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 6], S=[0, 4]. -/
def code_167 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #168: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 2], S=[0, 3]. -/
def code_168 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #169: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 6], S=[0, 3]. -/
def code_169 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #170: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 6], S=[0, 4]. -/
def code_170 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #171: ((6,2,2)), m=7, a=[1, 2, 2, 2, 5, 5], S=[0, 4]. -/
def code_171 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #172: ((6,2,2)), m=7, a=[1, 2, 2, 2, 5, 6], S=[0, 3]. -/
def code_172 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #173: ((6,2,2)), m=7, a=[1, 2, 2, 2, 6, 6], S=[0, 3]. -/
def code_173 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #174: ((6,2,2)), m=7, a=[1, 2, 2, 2, 6, 6], S=[0, 4]. -/
def code_174 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #175: ((6,2,2)), m=7, a=[1, 2, 2, 5, 5, 6], S=[0, 3]. -/
def code_175 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #176: ((6,2,2)), m=7, a=[1, 2, 2, 5, 5, 6], S=[0, 4]. -/
def code_176 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #177: ((6,2,2)), m=7, a=[1, 2, 2, 5, 6, 6], S=[0, 3]. -/
def code_177 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #178: ((6,2,2)), m=7, a=[1, 2, 2, 5, 6, 6], S=[0, 4]. -/
def code_178 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #179: ((6,2,2)), m=7, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_179 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #180: ((6,2,2)), m=7, a=[1, 2, 5, 5, 5, 5], S=[0, 3]. -/
def code_180 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #181: ((6,2,2)), m=7, a=[1, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_181 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #182: ((6,2,2)), m=7, a=[1, 2, 5, 6, 6, 6], S=[0, 3]. -/
def code_182 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #183: ((6,2,2)), m=7, a=[1, 2, 6, 6, 6, 6], S=[0, 3]. -/
def code_183 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #184: ((6,2,2)), m=7, a=[1, 3, 3, 3, 3, 4], S=[0, 5]. -/
def code_184 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #185: ((6,2,2)), m=7, a=[1, 3, 3, 3, 4, 4], S=[0, 2]. -/
def code_185 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #186: ((6,2,2)), m=7, a=[1, 3, 3, 3, 4, 6], S=[0, 5]. -/
def code_186 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #187: ((6,2,2)), m=7, a=[1, 3, 3, 3, 6, 6], S=[0, 2]. -/
def code_187 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #188: ((6,2,2)), m=7, a=[1, 3, 3, 3, 6, 6], S=[0, 5]. -/
def code_188 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #189: ((6,2,2)), m=7, a=[1, 3, 3, 4, 4, 6], S=[0, 2]. -/
def code_189 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #190: ((6,2,2)), m=7, a=[1, 3, 3, 4, 6, 6], S=[0, 5]. -/
def code_190 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ)]

/-- Catalogue code #191: ((6,2,2)), m=7, a=[1, 3, 3, 6, 6, 6], S=[0, 2]. -/
def code_191 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #192: ((6,2,2)), m=7, a=[1, 3, 4, 4, 4, 6], S=[0, 2]. -/
def code_192 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #193: ((6,2,2)), m=7, a=[1, 3, 4, 4, 6, 6], S=[0, 2]. -/
def code_193 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #194: ((6,2,2)), m=7, a=[1, 3, 4, 4, 6, 6], S=[0, 5]. -/
def code_194 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #195: ((6,2,2)), m=7, a=[1, 3, 4, 6, 6, 6], S=[0, 2]. -/
def code_195 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #196: ((6,2,2)), m=7, a=[1, 4, 4, 4, 4, 4], S=[0, 2]. -/
def code_196 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #197: ((6,2,2)), m=7, a=[1, 4, 4, 4, 4, 4], S=[0, 5]. -/
def code_197 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #198: ((6,2,2)), m=7, a=[1, 4, 4, 4, 6, 6], S=[0, 2]. -/
def code_198 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #199: ((6,2,2)), m=7, a=[1, 4, 4, 4, 6, 6], S=[0, 5]. -/
def code_199 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #200: ((6,2,2)), m=7, a=[1, 4, 4, 6, 6, 6], S=[0, 2]. -/
def code_200 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #201: ((6,2,2)), m=7, a=[1, 4, 4, 6, 6, 6], S=[0, 5]. -/
def code_201 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #202: ((6,2,2)), m=7, a=[1, 4, 6, 6, 6, 6], S=[0, 5]. -/
def code_202 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #203: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 5], S=[0, 4]. -/
def code_203 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #204: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 6], S=[0, 3]. -/
def code_204 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #205: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 6], S=[0, 4]. -/
def code_205 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #206: ((6,2,2)), m=7, a=[1, 5, 5, 5, 6, 6], S=[0, 3]. -/
def code_206 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #207: ((6,2,2)), m=7, a=[1, 5, 5, 5, 6, 6], S=[0, 4]. -/
def code_207 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7)]

/-- Catalogue code #208: ((6,2,2)), m=7, a=[1, 5, 5, 6, 6, 6], S=[0, 3]. -/
def code_208 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (-1 : ℚ)]

/-- Catalogue code #209: ((6,2,2)), m=7, a=[1, 5, 5, 6, 6, 6], S=[0, 4]. -/
def code_209 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-6 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #210: ((6,2,2)), m=7, a=[2, 2, 2, 2, 5, 6], S=[0, 4]. -/
def code_210 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #211: ((6,2,2)), m=7, a=[2, 2, 2, 3, 3, 4], S=[0, 1]. -/
def code_211 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #212: ((6,2,2)), m=7, a=[2, 2, 2, 3, 3, 4], S=[0, 6]. -/
def code_212 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #213: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 4], S=[0, 1]. -/
def code_213 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #214: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 4], S=[0, 6]. -/
def code_214 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #215: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 5], S=[0, 1]. -/
def code_215 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #216: ((6,2,2)), m=7, a=[2, 2, 2, 5, 6, 6], S=[0, 3]. -/
def code_216 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #217: ((6,2,2)), m=7, a=[2, 2, 2, 5, 6, 6], S=[0, 4]. -/
def code_217 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #218: ((6,2,2)), m=7, a=[2, 2, 3, 3, 3, 4], S=[0, 1]. -/
def code_218 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #219: ((6,2,2)), m=7, a=[2, 2, 3, 3, 3, 4], S=[0, 6]. -/
def code_219 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #220: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 4], S=[0, 6]. -/
def code_220 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #221: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 5], S=[0, 1]. -/
def code_221 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #222: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 5], S=[0, 6]. -/
def code_222 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(-1 : ℚ), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #223: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 4], S=[0, 1]. -/
def code_223 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #224: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 4], S=[0, 6]. -/
def code_224 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #225: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_225 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #226: ((6,2,2)), m=7, a=[2, 2, 3, 4, 5, 5], S=[0, 1]. -/
def code_226 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #227: ((6,2,2)), m=7, a=[2, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_227 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #228: ((6,2,2)), m=7, a=[2, 2, 5, 5, 6, 6], S=[0, 4]. -/
def code_228 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #229: ((6,2,2)), m=7, a=[2, 2, 5, 6, 6, 6], S=[0, 3]. -/
def code_229 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #230: ((6,2,2)), m=7, a=[2, 2, 5, 6, 6, 6], S=[0, 4]. -/
def code_230 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #231: ((6,2,2)), m=7, a=[2, 3, 3, 3, 3, 4], S=[0, 6]. -/
def code_231 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #232: ((6,2,2)), m=7, a=[2, 3, 3, 3, 4, 5], S=[0, 1]. -/
def code_232 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #233: ((6,2,2)), m=7, a=[2, 3, 3, 4, 4, 5], S=[0, 1]. -/
def code_233 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #234: ((6,2,2)), m=7, a=[2, 3, 3, 4, 4, 5], S=[0, 6]. -/
def code_234 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #235: ((6,2,2)), m=7, a=[2, 3, 3, 4, 5, 5], S=[0, 6]. -/
def code_235 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #236: ((6,2,2)), m=7, a=[2, 3, 4, 4, 4, 5], S=[0, 6]. -/
def code_236 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #237: ((6,2,2)), m=7, a=[2, 3, 4, 4, 5, 5], S=[0, 6]. -/
def code_237 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #238: ((6,2,2)), m=7, a=[2, 3, 4, 5, 5, 5], S=[0, 6]. -/
def code_238 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #239: ((6,2,2)), m=7, a=[2, 5, 5, 5, 6, 6], S=[0, 3]. -/
def code_239 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #240: ((6,2,2)), m=7, a=[2, 5, 5, 5, 6, 6], S=[0, 4]. -/
def code_240 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #241: ((6,2,2)), m=7, a=[2, 5, 5, 6, 6, 6], S=[0, 4]. -/
def code_241 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #242: ((6,2,2)), m=7, a=[3, 3, 3, 4, 4, 5], S=[0, 6]. -/
def code_242 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #243: ((6,2,2)), m=7, a=[3, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_243 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #244: ((6,2,2)), m=7, a=[3, 3, 3, 4, 5, 5], S=[0, 6]. -/
def code_244 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #245: ((6,2,2)), m=7, a=[3, 3, 3, 4, 6, 6], S=[0, 2]. -/
def code_245 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #246: ((6,2,2)), m=7, a=[3, 3, 3, 4, 6, 6], S=[0, 5]. -/
def code_246 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #247: ((6,2,2)), m=7, a=[3, 3, 4, 4, 4, 6], S=[0, 5]. -/
def code_247 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #248: ((6,2,2)), m=7, a=[3, 3, 4, 4, 5, 5], S=[0, 6]. -/
def code_248 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #249: ((6,2,2)), m=7, a=[3, 3, 4, 5, 5, 5], S=[0, 1]. -/
def code_249 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #250: ((6,2,2)), m=7, a=[3, 3, 4, 5, 5, 5], S=[0, 6]. -/
def code_250 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #251: ((6,2,2)), m=7, a=[3, 4, 4, 4, 4, 5], S=[0, 1]. -/
def code_251 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #252: ((6,2,2)), m=7, a=[3, 4, 4, 4, 5, 5], S=[0, 6]. -/
def code_252 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #253: ((6,2,2)), m=7, a=[3, 4, 4, 4, 6, 6], S=[0, 5]. -/
def code_253 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #254: ((6,2,2)), m=7, a=[3, 4, 4, 5, 5, 5], S=[0, 1]. -/
def code_254 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #255: ((6,2,2)), m=7, a=[3, 4, 4, 5, 5, 5], S=[0, 6]. -/
def code_255 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #256: ((6,2,2)), m=7, a=[3, 4, 4, 6, 6, 6], S=[0, 2]. -/
def code_256 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #257: ((6,2,2)), m=7, a=[3, 4, 6, 6, 6, 6], S=[0, 2]. -/
def code_257 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #258: ((6,2,2)), m=7, a=[3, 4, 6, 6, 6, 6], S=[0, 5]. -/
def code_258 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #259: ((6,2,2)), m=8, a=[1, 1, 1, 1, 1, 3], S=[0, 4]. -/
def code_259 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #260: ((6,2,2)), m=8, a=[1, 1, 1, 1, 1, 4], S=[0, 5]. -/
def code_260 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #261: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 3]. -/
def code_261 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #262: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 4]. -/
def code_262 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #263: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 5]. -/
def code_263 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #264: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 4], S=[0, 5]. -/
def code_264 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #265: ((6,2,2)), m=8, a=[1, 1, 1, 1, 3, 4], S=[0, 6]. -/
def code_265 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #266: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 4], S=[0, 2]. -/
def code_266 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #267: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 4], S=[0, 3]. -/
def code_267 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #268: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 5], S=[0, 2]. -/
def code_268 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #269: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 6], S=[0, 3]. -/
def code_269 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #270: ((6,2,2)), m=8, a=[1, 1, 1, 2, 2, 2], S=[0, 5]. -/
def code_270 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((3 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #271: ((6,2,2)), m=8, a=[1, 1, 1, 2, 2, 4], S=[0, 5]. -/
def code_271 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4)]

/-- Catalogue code #272: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 4], S=[0, 3]. -/
def code_272 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #273: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 6], S=[0, 5]. -/
def code_273 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #274: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 7], S=[0, 3]. -/
def code_274 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #275: ((6,2,2)), m=8, a=[1, 1, 1, 2, 6, 6], S=[0, 5]. -/
def code_275 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #276: ((6,2,2)), m=8, a=[1, 1, 1, 3, 3, 5], S=[0, 6]. -/
def code_276 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #277: ((6,2,2)), m=8, a=[1, 1, 1, 3, 3, 7], S=[0, 2]. -/
def code_277 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #278: ((6,2,2)), m=8, a=[1, 1, 1, 3, 4, 7], S=[0, 6]. -/
def code_278 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #279: ((6,2,2)), m=8, a=[1, 1, 1, 3, 5, 7], S=[0, 6]. -/
def code_279 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]

/-- Catalogue code #280: ((6,2,2)), m=8, a=[1, 1, 1, 4, 4, 5], S=[0, 2]. -/
def code_280 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #281: ((6,2,2)), m=8, a=[1, 1, 1, 4, 4, 6], S=[0, 3]. -/
def code_281 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2)]

/-- Catalogue code #282: ((6,2,2)), m=8, a=[1, 1, 1, 4, 5, 5], S=[0, 2]. -/
def code_282 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #283: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 2], S=[0, 5]. -/
def code_283 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #284: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 4], S=[0, 3]. -/
def code_284 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #285: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 4], S=[0, 5]. -/
def code_285 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4)]

/-- Catalogue code #286: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 6], S=[0, 3]. -/
def code_286 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2)]

/-- Catalogue code #287: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 7], S=[0, 3]. -/
def code_287 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2)]

/-- Catalogue code #288: ((6,2,2)), m=8, a=[1, 1, 2, 2, 3, 7], S=[0, 4]. -/
def code_288 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #289: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 4], S=[0, 5]. -/
def code_289 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #290: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 6], S=[0, 3]. -/
def code_290 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #291: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 7], S=[0, 3]. -/
def code_291 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (-1 : ℚ)]

/-- Catalogue code #292: ((6,2,2)), m=8, a=[1, 1, 2, 2, 6, 6], S=[0, 5]. -/
def code_292 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #293: ((6,2,2)), m=8, a=[1, 1, 2, 4, 4, 6], S=[0, 5]. -/
def code_293 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #294: ((6,2,2)), m=8, a=[1, 1, 2, 4, 4, 7], S=[0, 5]. -/
def code_294 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2)]

/-- Catalogue code #295: ((6,2,2)), m=8, a=[1, 1, 2, 4, 7, 7], S=[0, 3]. -/
def code_295 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]

/-- Catalogue code #296: ((6,2,2)), m=8, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_296 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #297: ((6,2,2)), m=8, a=[1, 1, 3, 3, 4, 4], S=[0, 2]. -/
def code_297 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #298: ((6,2,2)), m=8, a=[1, 1, 4, 4, 5, 5], S=[0, 2]. -/
def code_298 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #299: ((6,2,2)), m=8, a=[1, 1, 4, 4, 6, 6], S=[0, 5]. -/
def code_299 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #300: ((6,2,2)), m=8, a=[1, 1, 4, 4, 6, 7], S=[0, 5]. -/
def code_300 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #301: ((6,2,2)), m=8, a=[1, 1, 4, 6, 6, 6], S=[0, 3]. -/
def code_301 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #302: ((6,2,2)), m=8, a=[1, 1, 4, 6, 6, 6], S=[0, 5]. -/
def code_302 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #303: ((6,2,2)), m=8, a=[1, 2, 2, 2, 4, 7], S=[0, 3]. -/
def code_303 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #304: ((6,2,2)), m=8, a=[1, 2, 2, 4, 4, 7], S=[0, 3]. -/
def code_304 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((3 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #305: ((6,2,2)), m=8, a=[1, 2, 2, 4, 4, 7], S=[0, 5]. -/
def code_305 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #306: ((6,2,2)), m=8, a=[1, 2, 2, 4, 7, 7], S=[0, 3]. -/
def code_306 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]

/-- Catalogue code #307: ((6,2,2)), m=8, a=[1, 2, 2, 4, 7, 7], S=[0, 5]. -/
def code_307 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #308: ((6,2,2)), m=8, a=[1, 2, 2, 6, 6, 7], S=[0, 3]. -/
def code_308 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #309: ((6,2,2)), m=8, a=[1, 2, 2, 6, 6, 7], S=[0, 5]. -/
def code_309 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #310: ((6,2,2)), m=8, a=[1, 2, 4, 4, 6, 7], S=[0, 3]. -/
def code_310 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #311: ((6,2,2)), m=8, a=[1, 2, 4, 6, 6, 7], S=[0, 5]. -/
def code_311 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #312: ((6,2,2)), m=8, a=[1, 3, 3, 3, 4, 7], S=[0, 6]. -/
def code_312 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #313: ((6,2,2)), m=8, a=[1, 4, 4, 5, 7, 7], S=[0, 2]. -/
def code_313 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #314: ((6,2,2)), m=8, a=[1, 4, 4, 6, 6, 7], S=[0, 5]. -/
def code_314 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #315: ((6,2,2)), m=8, a=[1, 4, 6, 6, 6, 7], S=[0, 3]. -/
def code_315 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #316: ((6,2,2)), m=8, a=[1, 4, 6, 6, 7, 7], S=[0, 3]. -/
def code_316 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((3 : ℚ) / 4)]

/-- Catalogue code #317: ((6,2,2)), m=8, a=[1, 4, 6, 6, 7, 7], S=[0, 5]. -/
def code_317 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #318: ((6,2,2)), m=8, a=[1, 5, 5, 5, 5, 7], S=[0, 6]. -/
def code_318 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]

/-- Catalogue code #319: ((6,2,2)), m=8, a=[1, 6, 6, 6, 6, 7], S=[0, 5]. -/
def code_319 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #320: ((6,2,2)), m=8, a=[2, 2, 2, 3, 4, 5], S=[0, 1]. -/
def code_320 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #321: ((6,2,2)), m=8, a=[2, 2, 2, 3, 5, 5], S=[0, 7]. -/
def code_321 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((3 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4)]

/-- Catalogue code #322: ((6,2,2)), m=8, a=[2, 2, 2, 4, 5, 5], S=[0, 1]. -/
def code_322 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #323: ((6,2,2)), m=8, a=[2, 2, 2, 4, 7, 7], S=[0, 3]. -/
def code_323 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #324: ((6,2,2)), m=8, a=[2, 2, 2, 5, 5, 5], S=[0, 1]. -/
def code_324 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4)]

/-- Catalogue code #325: ((6,2,2)), m=8, a=[2, 2, 3, 3, 3, 4], S=[0, 7]. -/
def code_325 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #326: ((6,2,2)), m=8, a=[2, 2, 3, 3, 4, 4], S=[0, 7]. -/
def code_326 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #327: ((6,2,2)), m=8, a=[2, 2, 3, 3, 4, 6], S=[0, 1]. -/
def code_327 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #328: ((6,2,2)), m=8, a=[2, 2, 3, 3, 5, 6], S=[0, 1]. -/
def code_328 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #329: ((6,2,2)), m=8, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_329 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]

/-- Catalogue code #330: ((6,2,2)), m=8, a=[2, 2, 3, 4, 4, 5], S=[0, 7]. -/
def code_330 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #331: ((6,2,2)), m=8, a=[2, 2, 3, 4, 5, 5], S=[0, 1]. -/
def code_331 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]

/-- Catalogue code #332: ((6,2,2)), m=8, a=[2, 2, 3, 5, 6, 6], S=[0, 1]. -/
def code_332 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #333: ((6,2,2)), m=8, a=[2, 2, 3, 5, 6, 6], S=[0, 7]. -/
def code_333 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #334: ((6,2,2)), m=8, a=[2, 2, 4, 4, 5, 5], S=[0, 1]. -/
def code_334 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #335: ((6,2,2)), m=8, a=[2, 2, 4, 5, 5, 6], S=[0, 7]. -/
def code_335 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4)]

/-- Catalogue code #336: ((6,2,2)), m=8, a=[2, 2, 4, 6, 7, 7], S=[0, 3]. -/
def code_336 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #337: ((6,2,2)), m=8, a=[2, 2, 4, 7, 7, 7], S=[0, 3]. -/
def code_337 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((3 : ℚ) / 4)]

/-- Catalogue code #338: ((6,2,2)), m=8, a=[2, 3, 3, 3, 3, 4], S=[0, 1]. -/
def code_338 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #339: ((6,2,2)), m=8, a=[2, 3, 3, 4, 5, 6], S=[0, 1]. -/
def code_339 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #340: ((6,2,2)), m=8, a=[2, 3, 3, 4, 6, 6], S=[0, 1]. -/
def code_340 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4)]

/-- Catalogue code #341: ((6,2,2)), m=8, a=[2, 3, 3, 6, 6, 6], S=[0, 4]. -/
def code_341 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]

/-- Catalogue code #342: ((6,2,2)), m=8, a=[2, 3, 4, 4, 5, 5], S=[0, 1]. -/
def code_342 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #343: ((6,2,2)), m=8, a=[2, 3, 4, 5, 6, 6], S=[0, 1]. -/
def code_343 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #344: ((6,2,2)), m=8, a=[2, 4, 4, 6, 7, 7], S=[0, 3]. -/
def code_344 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #345: ((6,2,2)), m=8, a=[2, 4, 4, 7, 7, 7], S=[0, 5]. -/
def code_345 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4)]

/-- Catalogue code #346: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 5], S=[0, 1]. -/
def code_346 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]

/-- Catalogue code #347: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 6], S=[0, 1]. -/
def code_347 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #348: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 6], S=[0, 7]. -/
def code_348 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #349: ((6,2,2)), m=8, a=[2, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_349 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2)]

/-- Catalogue code #350: ((6,2,2)), m=8, a=[2, 4, 5, 5, 6, 6], S=[0, 7]. -/
def code_350 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #351: ((6,2,2)), m=8, a=[2, 4, 6, 7, 7, 7], S=[0, 3]. -/
def code_351 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]

/-- Catalogue code #352: ((6,2,2)), m=8, a=[3, 3, 4, 6, 6, 6], S=[0, 1]. -/
def code_352 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4)]

/-- Catalogue code #353: ((6,2,2)), m=8, a=[3, 3, 5, 7, 7, 7], S=[0, 2]. -/
def code_353 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #354: ((6,2,2)), m=8, a=[3, 4, 4, 5, 6, 6], S=[0, 7]. -/
def code_354 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]

/-- Catalogue code #355: ((6,2,2)), m=8, a=[3, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_355 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #356: ((6,2,2)), m=8, a=[3, 4, 5, 6, 6, 6], S=[0, 7]. -/
def code_356 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]

/-- Catalogue code #357: ((6,2,2)), m=8, a=[4, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_357 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-3 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]

/-- Catalogue code #358: ((6,2,2)), m=8, a=[4, 5, 5, 5, 6, 6], S=[0, 1]. -/
def code_358 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4)]

/-- Catalogue code #359: ((6,2,2)), m=8, a=[4, 6, 6, 6, 7, 7], S=[0, 5]. -/
def code_359 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-3 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #360: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 3], S=[0, 4]. -/
def code_360 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #361: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 3], S=[0, 5]. -/
def code_361 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #362: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 4], S=[0, 6]. -/
def code_362 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #363: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 3], S=[0, 4]. -/
def code_363 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #364: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 3], S=[0, 7]. -/
def code_364 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #365: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 4], S=[0, 7]. -/
def code_365 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #366: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 5], S=[0, 7]. -/
def code_366 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #367: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 6], S=[0, 7]. -/
def code_367 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #368: ((6,2,2)), m=9, a=[1, 1, 1, 1, 4, 5], S=[0, 6]. -/
def code_368 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #369: ((6,2,2)), m=9, a=[1, 1, 1, 1, 4, 5], S=[0, 7]. -/
def code_369 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #370: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 5], S=[0, 2]. -/
def code_370 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #371: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 6], S=[0, 2]. -/
def code_371 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #372: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 7], S=[0, 3]. -/
def code_372 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #373: ((6,2,2)), m=9, a=[1, 1, 1, 1, 6, 6], S=[0, 4]. -/
def code_373 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #374: ((6,2,2)), m=9, a=[1, 1, 1, 1, 6, 7], S=[0, 4]. -/
def code_374 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #375: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 2], S=[0, 4]. -/
def code_375 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #376: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 2], S=[0, 5]. -/
def code_376 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #377: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 3], S=[0, 4]. -/
def code_377 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #378: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 3], S=[0, 5]. -/
def code_378 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #379: ((6,2,2)), m=9, a=[1, 1, 1, 2, 3, 3], S=[0, 4]. -/
def code_379 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #380: ((6,2,2)), m=9, a=[1, 1, 1, 2, 4, 8], S=[0, 3]. -/
def code_380 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #381: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 6], S=[0, 4]. -/
def code_381 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #382: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 7], S=[0, 4]. -/
def code_382 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #383: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 8], S=[0, 5]. -/
def code_383 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #384: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_384 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #385: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 4]. -/
def code_385 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #386: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 7]. -/
def code_386 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #387: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 4], S=[0, 2]. -/
def code_387 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #388: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 4], S=[0, 7]. -/
def code_388 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #389: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 5], S=[0, 2]. -/
def code_389 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #390: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 5], S=[0, 7]. -/
def code_390 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #391: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 2]. -/
def code_391 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #392: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 5]. -/
def code_392 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #393: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 7]. -/
def code_393 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #394: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 7], S=[0, 5]. -/
def code_394 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #395: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 8], S=[0, 2]. -/
def code_395 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #396: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 8], S=[0, 5]. -/
def code_396 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #397: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 4], S=[0, 2]. -/
def code_397 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #398: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 4], S=[0, 7]. -/
def code_398 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #399: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 5], S=[0, 7]. -/
def code_399 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #400: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 6], S=[0, 2]. -/
def code_400 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #401: ((6,2,2)), m=9, a=[1, 1, 1, 3, 5, 6], S=[0, 2]. -/
def code_401 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #402: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 6], S=[0, 4]. -/
def code_402 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #403: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 6], S=[0, 5]. -/
def code_403 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #404: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 7], S=[0, 5]. -/
def code_404 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #405: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 8], S=[0, 5]. -/
def code_405 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #406: ((6,2,2)), m=9, a=[1, 1, 1, 3, 7, 7], S=[0, 5]. -/
def code_406 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #407: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 6], S=[0, 2]. -/
def code_407 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #408: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 6], S=[0, 7]. -/
def code_408 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #409: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 8], S=[0, 7]. -/
def code_409 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #410: ((6,2,2)), m=9, a=[1, 1, 1, 4, 5, 6], S=[0, 2]. -/
def code_410 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #411: ((6,2,2)), m=9, a=[1, 1, 1, 4, 5, 6], S=[0, 7]. -/
def code_411 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #412: ((6,2,2)), m=9, a=[1, 1, 1, 4, 6, 6], S=[0, 7]. -/
def code_412 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #413: ((6,2,2)), m=9, a=[1, 1, 1, 4, 6, 8], S=[0, 7]. -/
def code_413 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #414: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 5], S=[0, 2]. -/
def code_414 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #415: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 5], S=[0, 7]. -/
def code_415 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #416: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 6], S=[0, 2]. -/
def code_416 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #417: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 6], S=[0, 7]. -/
def code_417 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #418: ((6,2,2)), m=9, a=[1, 1, 1, 5, 6, 6], S=[0, 7]. -/
def code_418 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #419: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 2]. -/
def code_419 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #420: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 4]. -/
def code_420 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #421: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 7]. -/
def code_421 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #422: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 8], S=[0, 2]. -/
def code_422 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #423: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 2], S=[0, 4]. -/
def code_423 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #424: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 3], S=[0, 4]. -/
def code_424 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #425: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 3], S=[0, 5]. -/
def code_425 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #426: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 3], S=[0, 4]. -/
def code_426 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #427: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 3], S=[0, 5]. -/
def code_427 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #428: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 6], S=[0, 4]. -/
def code_428 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #429: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 6], S=[0, 5]. -/
def code_429 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #430: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 7], S=[0, 4]. -/
def code_430 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #431: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 7], S=[0, 5]. -/
def code_431 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #432: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 8], S=[0, 4]. -/
def code_432 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #433: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 8], S=[0, 5]. -/
def code_433 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #434: ((6,2,2)), m=9, a=[1, 1, 2, 2, 5, 7], S=[0, 3]. -/
def code_434 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #435: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 6], S=[0, 4]. -/
def code_435 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #436: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 6], S=[0, 5]. -/
def code_436 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #437: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 7], S=[0, 4]. -/
def code_437 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #438: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 7], S=[0, 5]. -/
def code_438 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #439: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 8], S=[0, 5]. -/
def code_439 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #440: ((6,2,2)), m=9, a=[1, 1, 2, 2, 7, 7], S=[0, 5]. -/
def code_440 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #441: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 6], S=[0, 5]. -/
def code_441 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #442: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 7], S=[0, 4]. -/
def code_442 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #443: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 7], S=[0, 5]. -/
def code_443 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #444: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 8], S=[0, 4]. -/
def code_444 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #445: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 8], S=[0, 5]. -/
def code_445 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #446: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 6], S=[0, 5]. -/
def code_446 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #447: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 7], S=[0, 4]. -/
def code_447 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #448: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 7], S=[0, 5]. -/
def code_448 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #449: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 8], S=[0, 5]. -/
def code_449 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #450: ((6,2,2)), m=9, a=[1, 1, 2, 3, 7, 7], S=[0, 5]. -/
def code_450 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #451: ((6,2,2)), m=9, a=[1, 1, 2, 5, 5, 7], S=[0, 6]. -/
def code_451 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #452: ((6,2,2)), m=9, a=[1, 1, 2, 6, 6, 7], S=[0, 4]. -/
def code_452 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #453: ((6,2,2)), m=9, a=[1, 1, 2, 6, 6, 8], S=[0, 4]. -/
def code_453 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #454: ((6,2,2)), m=9, a=[1, 1, 2, 6, 7, 7], S=[0, 4]. -/
def code_454 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #455: ((6,2,2)), m=9, a=[1, 1, 2, 6, 7, 8], S=[0, 4]. -/
def code_455 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #456: ((6,2,2)), m=9, a=[1, 1, 2, 6, 8, 8], S=[0, 4]. -/
def code_456 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #457: ((6,2,2)), m=9, a=[1, 1, 2, 7, 7, 8], S=[0, 4]. -/
def code_457 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #458: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_458 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #459: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 4], S=[0, 7]. -/
def code_459 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #460: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 5], S=[0, 2]. -/
def code_460 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #461: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 7], S=[0, 4]. -/
def code_461 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #462: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 7], S=[0, 5]. -/
def code_462 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #463: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 8], S=[0, 2]. -/
def code_463 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #464: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 8], S=[0, 5]. -/
def code_464 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #465: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 4], S=[0, 2]. -/
def code_465 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #466: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 5], S=[0, 2]. -/
def code_466 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #467: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 5], S=[0, 7]. -/
def code_467 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #468: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 6], S=[0, 2]. -/
def code_468 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #469: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 6], S=[0, 7]. -/
def code_469 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #470: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 8], S=[0, 7]. -/
def code_470 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #471: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 5], S=[0, 2]. -/
def code_471 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #472: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 5], S=[0, 7]. -/
def code_472 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #473: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 6], S=[0, 2]. -/
def code_473 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #474: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 8], S=[0, 7]. -/
def code_474 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #475: ((6,2,2)), m=9, a=[1, 1, 3, 3, 6, 7], S=[0, 5]. -/
def code_475 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #476: ((6,2,2)), m=9, a=[1, 1, 3, 3, 6, 8], S=[0, 5]. -/
def code_476 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #477: ((6,2,2)), m=9, a=[1, 1, 3, 3, 7, 7], S=[0, 5]. -/
def code_477 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #478: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_478 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #479: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 5], S=[0, 2]. -/
def code_479 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #480: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 6], S=[0, 2]. -/
def code_480 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #481: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 6], S=[0, 7]. -/
def code_481 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #482: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 8], S=[0, 2]. -/
def code_482 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #483: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 5], S=[0, 7]. -/
def code_483 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #484: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 6], S=[0, 7]. -/
def code_484 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #485: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 8], S=[0, 2]. -/
def code_485 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #486: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 8], S=[0, 7]. -/
def code_486 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #487: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 6], S=[0, 2]. -/
def code_487 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #488: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 6], S=[0, 7]. -/
def code_488 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #489: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 8], S=[0, 2]. -/
def code_489 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #490: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 8], S=[0, 7]. -/
def code_490 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #491: ((6,2,2)), m=9, a=[1, 1, 3, 4, 8, 8], S=[0, 2]. -/
def code_491 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #492: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 6], S=[0, 2]. -/
def code_492 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #493: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 6], S=[0, 7]. -/
def code_493 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #494: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 8], S=[0, 2]. -/
def code_494 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #495: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 8], S=[0, 7]. -/
def code_495 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #496: ((6,2,2)), m=9, a=[1, 1, 3, 5, 6, 6], S=[0, 2]. -/
def code_496 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #497: ((6,2,2)), m=9, a=[1, 1, 3, 5, 6, 8], S=[0, 2]. -/
def code_497 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #498: ((6,2,2)), m=9, a=[1, 1, 3, 6, 6, 7], S=[0, 4]. -/
def code_498 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #499: ((6,2,2)), m=9, a=[1, 1, 3, 6, 6, 8], S=[0, 2]. -/
def code_499 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]
def checks : List Bool :=
  [decide code_0.OK,
   decide code_1.OK,
   decide code_2.OK,
   decide code_3.OK,
   decide code_4.OK,
   decide code_5.OK,
   decide code_6.OK,
   decide code_7.OK,
   decide code_8.OK,
   decide code_9.OK,
   decide code_10.OK,
   decide code_11.OK,
   decide code_12.OK,
   decide code_13.OK,
   decide code_14.OK,
   decide code_15.OK,
   decide code_16.OK,
   decide code_17.OK,
   decide code_18.OK,
   decide code_19.OK,
   decide code_20.OK,
   decide code_21.OK,
   decide code_22.OK,
   decide code_23.OK,
   decide code_24.OK,
   decide code_25.OK,
   decide code_26.OK,
   decide code_27.OK,
   decide code_28.OK,
   decide code_29.OK,
   decide code_30.OK,
   decide code_31.OK,
   decide code_32.OK,
   decide code_33.OK,
   decide code_34.OK,
   decide code_35.OK,
   decide code_36.OK,
   decide code_37.OK,
   decide code_38.OK,
   decide code_39.OK,
   decide code_40.OK,
   decide code_41.OK,
   decide code_42.OK,
   decide code_43.OK,
   decide code_44.OK,
   decide code_45.OK,
   decide code_46.OK,
   decide code_47.OK,
   decide code_48.OK,
   decide code_49.OK,
   decide code_50.OK,
   decide code_51.OK,
   decide code_52.OK,
   decide code_53.OK,
   decide code_54.OK,
   decide code_55.OK,
   decide code_56.OK,
   decide code_57.OK,
   decide code_58.OK,
   decide code_59.OK,
   decide code_60.OK,
   decide code_61.OK,
   decide code_62.OK,
   decide code_63.OK,
   decide code_64.OK,
   decide code_65.OK,
   decide code_66.OK,
   decide code_67.OK,
   decide code_68.OK,
   decide code_69.OK,
   decide code_70.OK,
   decide code_71.OK,
   decide code_72.OK,
   decide code_73.OK,
   decide code_74.OK,
   decide code_75.OK,
   decide code_76.OK,
   decide code_77.OK,
   decide code_78.OK,
   decide code_79.OK,
   decide code_80.OK,
   decide code_81.OK,
   decide code_82.OK,
   decide code_83.OK,
   decide code_84.OK,
   decide code_85.OK,
   decide code_86.OK,
   decide code_87.OK,
   decide code_88.OK,
   decide code_89.OK,
   decide code_90.OK,
   decide code_91.OK,
   decide code_92.OK,
   decide code_93.OK,
   decide code_94.OK,
   decide code_95.OK,
   decide code_96.OK,
   decide code_97.OK,
   decide code_98.OK,
   decide code_99.OK,
   decide code_100.OK,
   decide code_101.OK,
   decide code_102.OK,
   decide code_103.OK,
   decide code_104.OK,
   decide code_105.OK,
   decide code_106.OK,
   decide code_107.OK,
   decide code_108.OK,
   decide code_109.OK,
   decide code_110.OK,
   decide code_111.OK,
   decide code_112.OK,
   decide code_113.OK,
   decide code_114.OK,
   decide code_115.OK,
   decide code_116.OK,
   decide code_117.OK,
   decide code_118.OK,
   decide code_119.OK,
   decide code_120.OK,
   decide code_121.OK,
   decide code_122.OK,
   decide code_123.OK,
   decide code_124.OK,
   decide code_125.OK,
   decide code_126.OK,
   decide code_127.OK,
   decide code_128.OK,
   decide code_129.OK,
   decide code_130.OK,
   decide code_131.OK,
   decide code_132.OK,
   decide code_133.OK,
   decide code_134.OK,
   decide code_135.OK,
   decide code_136.OK,
   decide code_137.OK,
   decide code_138.OK,
   decide code_139.OK,
   decide code_140.OK,
   decide code_141.OK,
   decide code_142.OK,
   decide code_143.OK,
   decide code_144.OK,
   decide code_145.OK,
   decide code_146.OK,
   decide code_147.OK,
   decide code_148.OK,
   decide code_149.OK,
   decide code_150.OK,
   decide code_151.OK,
   decide code_152.OK,
   decide code_153.OK,
   decide code_154.OK,
   decide code_155.OK,
   decide code_156.OK,
   decide code_157.OK,
   decide code_158.OK,
   decide code_159.OK,
   decide code_160.OK,
   decide code_161.OK,
   decide code_162.OK,
   decide code_163.OK,
   decide code_164.OK,
   decide code_165.OK,
   decide code_166.OK,
   decide code_167.OK,
   decide code_168.OK,
   decide code_169.OK,
   decide code_170.OK,
   decide code_171.OK,
   decide code_172.OK,
   decide code_173.OK,
   decide code_174.OK,
   decide code_175.OK,
   decide code_176.OK,
   decide code_177.OK,
   decide code_178.OK,
   decide code_179.OK,
   decide code_180.OK,
   decide code_181.OK,
   decide code_182.OK,
   decide code_183.OK,
   decide code_184.OK,
   decide code_185.OK,
   decide code_186.OK,
   decide code_187.OK,
   decide code_188.OK,
   decide code_189.OK,
   decide code_190.OK,
   decide code_191.OK,
   decide code_192.OK,
   decide code_193.OK,
   decide code_194.OK,
   decide code_195.OK,
   decide code_196.OK,
   decide code_197.OK,
   decide code_198.OK,
   decide code_199.OK,
   decide code_200.OK,
   decide code_201.OK,
   decide code_202.OK,
   decide code_203.OK,
   decide code_204.OK,
   decide code_205.OK,
   decide code_206.OK,
   decide code_207.OK,
   decide code_208.OK,
   decide code_209.OK,
   decide code_210.OK,
   decide code_211.OK,
   decide code_212.OK,
   decide code_213.OK,
   decide code_214.OK,
   decide code_215.OK,
   decide code_216.OK,
   decide code_217.OK,
   decide code_218.OK,
   decide code_219.OK,
   decide code_220.OK,
   decide code_221.OK,
   decide code_222.OK,
   decide code_223.OK,
   decide code_224.OK,
   decide code_225.OK,
   decide code_226.OK,
   decide code_227.OK,
   decide code_228.OK,
   decide code_229.OK,
   decide code_230.OK,
   decide code_231.OK,
   decide code_232.OK,
   decide code_233.OK,
   decide code_234.OK,
   decide code_235.OK,
   decide code_236.OK,
   decide code_237.OK,
   decide code_238.OK,
   decide code_239.OK,
   decide code_240.OK,
   decide code_241.OK,
   decide code_242.OK,
   decide code_243.OK,
   decide code_244.OK,
   decide code_245.OK,
   decide code_246.OK,
   decide code_247.OK,
   decide code_248.OK,
   decide code_249.OK,
   decide code_250.OK,
   decide code_251.OK,
   decide code_252.OK,
   decide code_253.OK,
   decide code_254.OK,
   decide code_255.OK,
   decide code_256.OK,
   decide code_257.OK,
   decide code_258.OK,
   decide code_259.OK,
   decide code_260.OK,
   decide code_261.OK,
   decide code_262.OK,
   decide code_263.OK,
   decide code_264.OK,
   decide code_265.OK,
   decide code_266.OK,
   decide code_267.OK,
   decide code_268.OK,
   decide code_269.OK,
   decide code_270.OK,
   decide code_271.OK,
   decide code_272.OK,
   decide code_273.OK,
   decide code_274.OK,
   decide code_275.OK,
   decide code_276.OK,
   decide code_277.OK,
   decide code_278.OK,
   decide code_279.OK,
   decide code_280.OK,
   decide code_281.OK,
   decide code_282.OK,
   decide code_283.OK,
   decide code_284.OK,
   decide code_285.OK,
   decide code_286.OK,
   decide code_287.OK,
   decide code_288.OK,
   decide code_289.OK,
   decide code_290.OK,
   decide code_291.OK,
   decide code_292.OK,
   decide code_293.OK,
   decide code_294.OK,
   decide code_295.OK,
   decide code_296.OK,
   decide code_297.OK,
   decide code_298.OK,
   decide code_299.OK,
   decide code_300.OK,
   decide code_301.OK,
   decide code_302.OK,
   decide code_303.OK,
   decide code_304.OK,
   decide code_305.OK,
   decide code_306.OK,
   decide code_307.OK,
   decide code_308.OK,
   decide code_309.OK,
   decide code_310.OK,
   decide code_311.OK,
   decide code_312.OK,
   decide code_313.OK,
   decide code_314.OK,
   decide code_315.OK,
   decide code_316.OK,
   decide code_317.OK,
   decide code_318.OK,
   decide code_319.OK,
   decide code_320.OK,
   decide code_321.OK,
   decide code_322.OK,
   decide code_323.OK,
   decide code_324.OK,
   decide code_325.OK,
   decide code_326.OK,
   decide code_327.OK,
   decide code_328.OK,
   decide code_329.OK,
   decide code_330.OK,
   decide code_331.OK,
   decide code_332.OK,
   decide code_333.OK,
   decide code_334.OK,
   decide code_335.OK,
   decide code_336.OK,
   decide code_337.OK,
   decide code_338.OK,
   decide code_339.OK,
   decide code_340.OK,
   decide code_341.OK,
   decide code_342.OK,
   decide code_343.OK,
   decide code_344.OK,
   decide code_345.OK,
   decide code_346.OK,
   decide code_347.OK,
   decide code_348.OK,
   decide code_349.OK,
   decide code_350.OK,
   decide code_351.OK,
   decide code_352.OK,
   decide code_353.OK,
   decide code_354.OK,
   decide code_355.OK,
   decide code_356.OK,
   decide code_357.OK,
   decide code_358.OK,
   decide code_359.OK,
   decide code_360.OK,
   decide code_361.OK,
   decide code_362.OK,
   decide code_363.OK,
   decide code_364.OK,
   decide code_365.OK,
   decide code_366.OK,
   decide code_367.OK,
   decide code_368.OK,
   decide code_369.OK,
   decide code_370.OK,
   decide code_371.OK,
   decide code_372.OK,
   decide code_373.OK,
   decide code_374.OK,
   decide code_375.OK,
   decide code_376.OK,
   decide code_377.OK,
   decide code_378.OK,
   decide code_379.OK,
   decide code_380.OK,
   decide code_381.OK,
   decide code_382.OK,
   decide code_383.OK,
   decide code_384.OK,
   decide code_385.OK,
   decide code_386.OK,
   decide code_387.OK,
   decide code_388.OK,
   decide code_389.OK,
   decide code_390.OK,
   decide code_391.OK,
   decide code_392.OK,
   decide code_393.OK,
   decide code_394.OK,
   decide code_395.OK,
   decide code_396.OK,
   decide code_397.OK,
   decide code_398.OK,
   decide code_399.OK,
   decide code_400.OK,
   decide code_401.OK,
   decide code_402.OK,
   decide code_403.OK,
   decide code_404.OK,
   decide code_405.OK,
   decide code_406.OK,
   decide code_407.OK,
   decide code_408.OK,
   decide code_409.OK,
   decide code_410.OK,
   decide code_411.OK,
   decide code_412.OK,
   decide code_413.OK,
   decide code_414.OK,
   decide code_415.OK,
   decide code_416.OK,
   decide code_417.OK,
   decide code_418.OK,
   decide code_419.OK,
   decide code_420.OK,
   decide code_421.OK,
   decide code_422.OK,
   decide code_423.OK,
   decide code_424.OK,
   decide code_425.OK,
   decide code_426.OK,
   decide code_427.OK,
   decide code_428.OK,
   decide code_429.OK,
   decide code_430.OK,
   decide code_431.OK,
   decide code_432.OK,
   decide code_433.OK,
   decide code_434.OK,
   decide code_435.OK,
   decide code_436.OK,
   decide code_437.OK,
   decide code_438.OK,
   decide code_439.OK,
   decide code_440.OK,
   decide code_441.OK,
   decide code_442.OK,
   decide code_443.OK,
   decide code_444.OK,
   decide code_445.OK,
   decide code_446.OK,
   decide code_447.OK,
   decide code_448.OK,
   decide code_449.OK,
   decide code_450.OK,
   decide code_451.OK,
   decide code_452.OK,
   decide code_453.OK,
   decide code_454.OK,
   decide code_455.OK,
   decide code_456.OK,
   decide code_457.OK,
   decide code_458.OK,
   decide code_459.OK,
   decide code_460.OK,
   decide code_461.OK,
   decide code_462.OK,
   decide code_463.OK,
   decide code_464.OK,
   decide code_465.OK,
   decide code_466.OK,
   decide code_467.OK,
   decide code_468.OK,
   decide code_469.OK,
   decide code_470.OK,
   decide code_471.OK,
   decide code_472.OK,
   decide code_473.OK,
   decide code_474.OK,
   decide code_475.OK,
   decide code_476.OK,
   decide code_477.OK,
   decide code_478.OK,
   decide code_479.OK,
   decide code_480.OK,
   decide code_481.OK,
   decide code_482.OK,
   decide code_483.OK,
   decide code_484.OK,
   decide code_485.OK,
   decide code_486.OK,
   decide code_487.OK,
   decide code_488.OK,
   decide code_489.OK,
   decide code_490.OK,
   decide code_491.OK,
   decide code_492.OK,
   decide code_493.OK,
   decide code_494.OK,
   decide code_495.OK,
   decide code_496.OK,
   decide code_497.OK,
   decide code_498.OK,
   decide code_499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk000
