import Mathlib

/-!
# BD16 no-go: `a = (1,1,1,2,2,2,6)` (mod 8), complementary ansatz

This file formalizes Section 16 of `BD16_distance3.tex`:
we prove that a small subsystem of weight-≤2 Knill–Laflamme constraints
(Norm + 7 diagonal + 9 off-diagonal) has **no** solution.

We work purely algebraically with:
- unknown complex amplitudes `c : Fin 10 → ℂ` (written `c0`..`c9`),
- probabilities `p_k = |c_k|^2 = Complex.normSq (c k) : ℝ`.

The proof follows the outline from the TeX:
1. Solve the 8 diagonal linear equations (a 2-parameter family of `p_k`).
2. From the 9 off-diagonal equations, derive three “real product” relations.
3. Use these to force `a,b,c',d,e,f ≠ 0`.
4. Use global phase invariance to fix a gauge where `b` is real and positive.
5. In that gauge, all six special amplitudes become real, giving a purely
   algebraic contradiction.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_1112226

open scoped BigOperators
open scoped ComplexConjugate

/-- The probability `p_k = |c_k|^2`. -/
def p (c : Fin 10 → ℂ) (k : Fin 10) : ℝ := Complex.normSq (c k)

/-- The six distinguished coefficients used in the off-diagonal equations. -/
abbrev a (c : Fin 10 → ℂ) : ℂ := c 6
abbrev b (c : Fin 10 → ℂ) : ℂ := c 9
abbrev c' (c : Fin 10 → ℂ) : ℂ := c 7
abbrev d (c : Fin 10 → ℂ) : ℂ := c 8
abbrev e (c : Fin 10 → ℂ) : ℂ := c 4
abbrev f (c : Fin 10 → ℂ) : ℂ := c 5

/-- The 17-equation subsystem from `BD16_distance3.tex`, §16.

Diagonal part: normalization + seven `Z_j` constraints, expressed as linear equations in `p_k`.

Off-diagonal part: three `x = e1/e2/e3` blocks (each giving three equations).
-/
structure System (c : Fin 10 → ℂ) : Prop where
  /- Diagonal equations (in `p_k : ℝ`). -/
  norm :
      p c 0 + p c 1 + p c 2 + p c 3 + p c 4 + p c 5 + p c 6 + p c 7 + p c 8 + p c 9 = 1
  z1 : p c 6 + p c 7 + p c 8 + p c 9 = (1 / 2 : ℝ)
  z2 : p c 4 + p c 5 + p c 8 + p c 9 = (1 / 2 : ℝ)
  z3 : p c 4 + p c 5 + p c 6 + p c 7 = (1 / 2 : ℝ)
  z4 : p c 3 + p c 5 + p c 7 + p c 9 = (1 / 2 : ℝ)
  z5 : p c 2 + p c 5 + p c 7 + p c 9 = (1 / 2 : ℝ)
  z6 : p c 1 + p c 5 + p c 7 + p c 9 = (1 / 2 : ℝ)
  z7 : p c 1 + p c 2 + p c 3 + p c 4 + p c 6 + p c 8 = (1 / 2 : ℝ)

  /- Off-diagonal equations (in the six special coefficients). -/
  x1_0 : star (b c) * a c + star (c' c) * d c + star (a c) * b c + star (d c) * c' c = 0
  x1_2 :
      -(star (b c) * a c) + star (c' c) * d c + star (a c) * b c - star (d c) * c' c = 0
  x1_4 :
      -(star (b c) * a c) - star (c' c) * d c + star (a c) * b c + star (d c) * c' c = 0

  x2_0 : star (f c) * d c + star (d c) * f c + star (b c) * e c + star (e c) * b c = 0
  x2_1 : star (f c) * d c - star (d c) * f c - star (b c) * e c + star (e c) * b c = 0
  x2_4 :
      -(star (f c) * d c) + star (d c) * f c - star (b c) * e c + star (e c) * b c = 0

  x3_0 : star (f c) * a c + star (a c) * f c + star (c' c) * e c + star (e c) * c' c = 0
  x3_1 : star (f c) * a c - star (a c) * f c - star (c' c) * e c + star (e c) * c' c = 0
  x3_4 :
      -(star (f c) * a c) + star (a c) * f c - star (c' c) * e c + star (e c) * c' c = 0

namespace System

variable {c : Fin 10 → ℂ}

/-!
## Step 1: Solve the diagonal (`Z`) system
-/

lemma p0_eq (h : System c) : p c 0 = (1 / 16 : ℝ) := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma p1_eq (h : System c) : p c 1 = (1 / 16 : ℝ) := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma p2_eq (h : System c) : p c 2 = (1 / 16 : ℝ) := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma p3_eq (h : System c) : p c 3 = (1 / 16 : ℝ) := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma p6_eq (h : System c) : p c 6 = (1 / 4 : ℝ) - p c 7 := by
  linarith [h.z1, h.z2, h.z3, h.z7]

lemma p8_eq (h : System c) : p c 8 = (1 / 4 : ℝ) - p c 9 := by
  linarith [h.z1, h.z2, h.z3, h.z7]

lemma p4_eq (h : System c) : p c 4 = p c 7 + p c 9 - (3 / 16 : ℝ) := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma p5_eq (h : System c) : p c 5 = (7 / 16 : ℝ) - p c 7 - p c 9 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

/-- The diagonal system solution packaged in a convenient form.

This matches Lemma `lean-Z-system` in the TeX. -/
lemma z_solution (h : System c) :
    p c 0 = (1 / 16 : ℝ) ∧ p c 1 = (1 / 16 : ℝ) ∧ p c 2 = (1 / 16 : ℝ) ∧ p c 3 = (1 / 16 : ℝ) ∧
      p c 6 = (1 / 4 : ℝ) - p c 7 ∧ p c 8 = (1 / 4 : ℝ) - p c 9 ∧
        p c 4 = p c 7 + p c 9 - (3 / 16 : ℝ) ∧ p c 5 = (7 / 16 : ℝ) - p c 7 - p c 9 := by
  refine ⟨p0_eq h, p1_eq h, p2_eq h, p3_eq h, p6_eq h, p8_eq h, p4_eq h, p5_eq h⟩

/-!
## Step 2: Product relations from the off-diagonal blocks
-/

/-- From the `x = e1` block we obtain `conj(b) * a = -conj(d) * c'` and this product is real. -/
lemma prod1 (h : System c) :
    star (b c) * a c = -(star (d c) * c' c) ∧ (star (b c) * a c).im = 0 := by
  -- First obtain the relation by subtracting `x1_2` from `x1_0`.
  have hrel2 : (2 : ℂ) * (star (b c) * a c + star (d c) * c' c) = 0 := by
    linear_combination h.x1_0 - h.x1_2
  have hrel_sum : star (b c) * a c + star (d c) * c' c = 0 := by
    have : (2 : ℂ) = 0 ∨ star (b c) * a c + star (d c) * c' c = 0 := (mul_eq_zero).1 hrel2
    exact this.resolve_left (by norm_num)
  have hrel : star (b c) * a c = -(star (d c) * c' c) :=
    eq_neg_of_add_eq_zero_left hrel_sum

  -- Next show this product is real by adding `x1_2 + x1_4`.
  have hconj2 : (2 : ℂ) * (star (a c) * b c - star (b c) * a c) = 0 := by
    linear_combination h.x1_2 + h.x1_4
  have hconj_eq : star (a c) * b c = star (b c) * a c := by
    have : (2 : ℂ) = 0 ∨ star (a c) * b c - star (b c) * a c = 0 := (mul_eq_zero).1 hconj2
    have hzero : star (a c) * b c - star (b c) * a c = 0 := this.resolve_left (by norm_num)
    exact sub_eq_zero.mp hzero
  have hstar : star (star (b c) * a c) = star (b c) * a c := by
    -- `star (star b * a) = star a * b`.
    simpa [star_mul, star_star] using hconj_eq
  have him : (star (b c) * a c).im = 0 := by
    have : conj (star (b c) * a c) = star (b c) * a c := by
      simpa [Complex.star_def] using hstar
    exact (Complex.conj_eq_iff_im).1 this

  exact ⟨hrel, him⟩

/-- From the `x = e2` block we obtain `conj(b) * e = -conj(d) * f` and this product is real. -/
lemma prod2 (h : System c) :
    star (b c) * e c = -(star (d c) * f c) ∧ (star (b c) * e c).im = 0 := by
  -- Relation from `x2_0 - x2_1`.
  have hrel2 : (2 : ℂ) * (star (d c) * f c + star (b c) * e c) = 0 := by
    linear_combination h.x2_0 - h.x2_1
  have hrel_sum : star (d c) * f c + star (b c) * e c = 0 := by
    have : (2 : ℂ) = 0 ∨ star (d c) * f c + star (b c) * e c = 0 := (mul_eq_zero).1 hrel2
    exact this.resolve_left (by norm_num)
  have hrel : star (b c) * e c = -(star (d c) * f c) := by
    -- commute to use `eq_neg_of_add_eq_zero_right`
    have : star (b c) * e c + star (d c) * f c = 0 := by
      simpa [add_comm, add_left_comm, add_assoc] using hrel_sum
    simpa [add_comm] using (eq_neg_of_add_eq_zero_left this)

  -- Reality from `x2_1 + x2_4`.
  have hconj2 : (2 : ℂ) * (star (e c) * b c - star (b c) * e c) = 0 := by
    linear_combination h.x2_1 + h.x2_4
  have hconj_eq : star (e c) * b c = star (b c) * e c := by
    have : (2 : ℂ) = 0 ∨ star (e c) * b c - star (b c) * e c = 0 := (mul_eq_zero).1 hconj2
    have hzero : star (e c) * b c - star (b c) * e c = 0 := this.resolve_left (by norm_num)
    exact sub_eq_zero.mp hzero
  have hstar : star (star (b c) * e c) = star (b c) * e c := by
    simpa [star_mul, star_star] using hconj_eq
  have him : (star (b c) * e c).im = 0 := by
    have : conj (star (b c) * e c) = star (b c) * e c := by
      simpa [Complex.star_def] using hstar
    exact (Complex.conj_eq_iff_im).1 this

  exact ⟨hrel, him⟩

/-- From the `x = e3` block we obtain `conj(c') * e = -conj(a) * f` and this product is real. -/
lemma prod3 (h : System c) :
    star (c' c) * e c = -(star (a c) * f c) ∧ (star (c' c) * e c).im = 0 := by
  -- Relation from `x3_0 - x3_1`.
  have hrel2 : (2 : ℂ) * (star (a c) * f c + star (c' c) * e c) = 0 := by
    linear_combination h.x3_0 - h.x3_1
  have hrel_sum : star (a c) * f c + star (c' c) * e c = 0 := by
    have : (2 : ℂ) = 0 ∨ star (a c) * f c + star (c' c) * e c = 0 := (mul_eq_zero).1 hrel2
    exact this.resolve_left (by norm_num)
  have hrel : star (c' c) * e c = -(star (a c) * f c) := by
    have : star (c' c) * e c + star (a c) * f c = 0 := by
      simpa [add_comm, add_left_comm, add_assoc] using hrel_sum
    simpa [add_comm] using (eq_neg_of_add_eq_zero_left this)

  -- Reality from `x3_1 + x3_4`.
  have hconj2 : (2 : ℂ) * (star (e c) * c' c - star (c' c) * e c) = 0 := by
    linear_combination h.x3_1 + h.x3_4
  have hconj_eq : star (e c) * c' c = star (c' c) * e c := by
    have : (2 : ℂ) = 0 ∨ star (e c) * c' c - star (c' c) * e c = 0 := (mul_eq_zero).1 hconj2
    have hzero : star (e c) * c' c - star (c' c) * e c = 0 := this.resolve_left (by norm_num)
    exact sub_eq_zero.mp hzero
  have hstar : star (star (c' c) * e c) = star (c' c) * e c := by
    simpa [star_mul, star_star] using hconj_eq
  have him : (star (c' c) * e c).im = 0 := by
    have : conj (star (c' c) * e c) = star (c' c) * e c := by
      simpa [Complex.star_def] using hstar
    exact (Complex.conj_eq_iff_im).1 this

  exact ⟨hrel, him⟩

/-!
## Step 3: Nonzero amplitudes

This follows the case-splitting argument in the TeX (Lemma `lean-nonzero`).
-/

private lemma p_nonneg (c : Fin 10 → ℂ) (k : Fin 10) : 0 ≤ p c k :=
  Complex.normSq_nonneg (c k)

private lemma normSq_eq_p (c : Fin 10 → ℂ) (k : Fin 10) : Complex.normSq (c k) = p c k := rfl

lemma b_ne_zero (h : System c) : b c ≠ 0 := by
  intro hb
  -- Then `p9 = 0`.
  have hp9 : p c 9 = 0 := by simp [p, b, hb]
  -- So `p8 = 1/4` hence `d ≠ 0`.
  have hp8 : p c 8 = (1 / 4 : ℝ) := by simpa [hp9] using (p8_eq h)
  have hd : d c ≠ 0 := by
    -- `0 < p8` hence `d ≠ 0`.
    have : (0 : ℝ) < p c 8 := by simpa [hp8] using (by norm_num : (0 : ℝ) < (1 / 4 : ℝ))
    exact (Complex.normSq_pos).1 (by simpa [p, d] using this)
  -- From prod1: `0 = -star d * c'` hence `c' = 0`.
  have hprod1 : star (b c) * a c = -(star (d c) * c' c) := (prod1 h).1
  have hzero : -(star (d c) * c' c) = 0 := by simpa [hb] using hprod1
  have hmul0 : star (d c) * c' c = 0 := (neg_eq_zero).1 hzero
  have hc0 : c' c = 0 := by
    have : star (d c) = 0 ∨ c' c = 0 := (mul_eq_zero).1 hmul0
    exact this.resolve_left (by
      -- `star d ≠ 0` since `d ≠ 0`.
      intro hsd
      have : d c = 0 := (star_eq_zero).1 hsd
      exact hd this)
  have hp7 : p c 7 = 0 := by simp [p, c', hc0]
  -- Now `p4 = -3/16 < 0`, contradiction.
  have hp4 : p c 4 = -(3 / 16 : ℝ) := by
    -- From the diagonal solve: `p4 = p7 + p9 - 3/16`.
    simpa [hp7, hp9, sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using (p4_eq h)
  have : (0 : ℝ) ≤ p c 4 := p_nonneg c 4
  have : (0 : ℝ) ≤ -(3 / 16 : ℝ) := by simpa [hp4] using this
  linarith

lemma e_ne_zero (h : System c) : e c ≠ 0 := by
  intro he0
  have hp4 : p c 4 = 0 := by simp [p, e, he0]
  -- From the diagonal solve: `u+v = 3/16` and hence `p5 = 1/4`, so `f ≠ 0`.
  have huv : p c 7 + p c 9 = (3 / 16 : ℝ) := by
    have := p4_eq h
    -- `0 = u+v-3/16`.
    linarith
  have hp5 : p c 5 = (1 / 4 : ℝ) := by
    have := p5_eq h
    linarith [huv]
  have hf : f c ≠ 0 := by
    have : (0 : ℝ) < p c 5 := by simpa [hp5] using (by norm_num : (0 : ℝ) < (1 / 4 : ℝ))
    exact (Complex.normSq_pos).1 (by simpa [p, f] using this)

  -- From prod2: `0 = -star d * f`, so `d = 0`.
  have hb0 : b c ≠ 0 := b_ne_zero h
  have hprod2 : star (b c) * e c = -(star (d c) * f c) := (prod2 h).1
  have hzero : -(star (d c) * f c) = 0 := by simpa [e, he0] using hprod2
  have hmul0 : star (d c) * f c = 0 := (neg_eq_zero).1 hzero
  have hd0 : d c = 0 := by
    have : star (d c) = 0 ∨ f c = 0 := (mul_eq_zero).1 hmul0
    have hsd0 : star (d c) = 0 := this.resolve_right hf
    exact (star_eq_zero).1 hsd0

  -- Then `p8 = 0` so `v = 1/4`.
  have hp8 : p c 8 = 0 := by simp [p, d, hd0]
  have hv : p c 9 = (1 / 4 : ℝ) := by
    have := p8_eq h
    linarith [hp8]
  -- But then `u = 3/16 - 1/4 = -1/16 < 0`, impossible since `u = p7 ≥ 0`.
  have hu : p c 7 = -(1 / 16 : ℝ) := by linarith [huv, hv]
  have : (0 : ℝ) ≤ p c 7 := p_nonneg c 7
  have : (0 : ℝ) ≤ -(1 / 16 : ℝ) := by simpa [hu] using this
  linarith

lemma c'_ne_zero (h : System c) : c' c ≠ 0 := by
  intro hc0
  have hu : p c 7 = 0 := by simp [p, c', hc0]
  -- From prod1: `star b * a = 0` so `a = 0` since `b ≠ 0`.
  have hb0 : b c ≠ 0 := b_ne_zero h
  have hprod1 : star (b c) * a c = -(star (d c) * c' c) := (prod1 h).1
  have hba0 : star (b c) * a c = 0 := by simpa [hc0] using hprod1
  have ha0 : a c = 0 := by
    have : star (b c) = 0 ∨ a c = 0 := (mul_eq_zero).1 hba0
    exact this.resolve_left (by
      intro hsb
      have : b c = 0 := (star_eq_zero).1 hsb
      exact hb0 this)
  have hp6 : p c 6 = 0 := by simp [p, a, ha0]
  -- But diagonal solve gives `p6 = 1/4 - u = 1/4`, contradiction.
  have hp6' : p c 6 = (1 / 4 : ℝ) := by simpa [hu] using (p6_eq h)
  linarith [hp6, hp6']

lemma d_ne_zero (h : System c) : d c ≠ 0 := by
  intro hd0
  have hp8 : p c 8 = 0 := by simp [p, d, hd0]
  -- Then `v = 1/4`.
  have hv : p c 9 = (1 / 4 : ℝ) := by
    have := p8_eq h
    linarith [hp8]
  -- From prod2: `star b * e = 0`, hence `e = 0` since `b ≠ 0`.
  have hb0 : b c ≠ 0 := b_ne_zero h
  have hprod2 : star (b c) * e c = -(star (d c) * f c) := (prod2 h).1
  have hbe0 : star (b c) * e c = 0 := by simpa [hd0] using hprod2
  have he0 : e c = 0 := by
    have : star (b c) = 0 ∨ e c = 0 := (mul_eq_zero).1 hbe0
    exact this.resolve_left (by
      intro hsb
      have : b c = 0 := (star_eq_zero).1 hsb
      exact hb0 this)
  exact e_ne_zero h he0

lemma a_ne_zero (h : System c) : a c ≠ 0 := by
  intro ha0
  have hp6 : p c 6 = 0 := by simp [p, a, ha0]
  -- Then `u = 1/4` and so `c' ≠ 0`.
  have hu : p c 7 = (1 / 4 : ℝ) := by
    have := p6_eq h
    linarith [hp6]
  have hc0 : c' c ≠ 0 := by
    have : (0 : ℝ) < p c 7 := by simpa [hu] using (by norm_num : (0 : ℝ) < (1 / 4 : ℝ))
    exact (Complex.normSq_pos).1 (by simpa [p, c'] using this)
  -- From prod3: `0 = -star c' * e`, hence `e = 0`, contradiction.
  have hprod3 : star (c' c) * e c = -(star (a c) * f c) := (prod3 h).1
  have hce0 : star (c' c) * e c = 0 := by simpa [a, ha0] using hprod3
  have he0 : e c = 0 := by
    have : star (c' c) = 0 ∨ e c = 0 := (mul_eq_zero).1 hce0
    exact this.resolve_left (by
      intro hsc
      have : c' c = 0 := (star_eq_zero).1 hsc
      exact hc0 this)
  exact e_ne_zero h he0

lemma f_ne_zero (h : System c) : f c ≠ 0 := by
  intro hf0
  have hp5 : p c 5 = 0 := by simp [p, f, hf0]
  -- Then `u+v = 7/16`, so `p4 = 1/4` hence `e ≠ 0`.
  have huv : p c 7 + p c 9 = (7 / 16 : ℝ) := by
    have := p5_eq h
    linarith [hp5]
  have hp4 : p c 4 = (1 / 4 : ℝ) := by
    have := p4_eq h
    linarith [huv]
  have he0 : e c ≠ 0 := by
    have : (0 : ℝ) < p c 4 := by simpa [hp4] using (by norm_num : (0 : ℝ) < (1 / 4 : ℝ))
    exact (Complex.normSq_pos).1 (by simpa [p, e] using this)

  -- But prod2 gives `star b * e = 0`, contradiction since `b ≠ 0` and `e ≠ 0`.
  have hb0 : b c ≠ 0 := b_ne_zero h
  have hprod2 : star (b c) * e c = -(star (d c) * f c) := (prod2 h).1
  have hbe0 : star (b c) * e c = 0 := by simpa [f, hf0] using hprod2
  have : star (b c) = 0 ∨ e c = 0 := (mul_eq_zero).1 hbe0
  have : e c = 0 := this.resolve_left (by
    intro hsb
    have : b c = 0 := (star_eq_zero).1 hsb
    exact hb0 this)
  exact he0 this

/-- All six special amplitudes are nonzero. -/
lemma six_ne_zero (h : System c) :
    a c ≠ 0 ∧ b c ≠ 0 ∧ c' c ≠ 0 ∧ d c ≠ 0 ∧ e c ≠ 0 ∧ f c ≠ 0 := by
  refine ⟨a_ne_zero h, b_ne_zero h, c'_ne_zero h, d_ne_zero h, e_ne_zero h, f_ne_zero h⟩

/-!
## Step 4: Global phase invariance
-/

/-- Multiply all coefficients by a global scalar `ω`. -/
def scale (ω : ℂ) (c : Fin 10 → ℂ) : Fin 10 → ℂ := fun k => ω * c k

lemma p_scale (ω : ℂ) (c : Fin 10 → ℂ) (k : Fin 10) : p (scale ω c) k = Complex.normSq ω * p c k := by
  simp [p, scale, Complex.normSq_mul, mul_assoc]

lemma star_mul_mul (ω x y : ℂ) : star (ω * x) * (ω * y) = (star ω * ω) * (star x * y) := by
  -- Expand `star (ω * x)` and then use commutativity.
  -- After simp, `ring` finishes.
  simp [StarMul.star_mul]
  ring

lemma star_mul_self_of_normSq_eq_one {ω : ℂ} (hω : Complex.normSq ω = 1) : star ω * ω = (1 : ℂ) := by
  -- `star ω * ω = ↑(normSq ω)`.
  have : (starRingEnd ℂ) ω * ω = (Complex.normSq ω : ℂ) := by
    simpa using (Complex.normSq_eq_conj_mul_self (z := ω)).symm
  have : star ω * ω = (Complex.normSq ω : ℂ) := by
    simpa [Complex.star_def] using this
  simpa [this, hω]

/-- Global phase invariance: scaling by `ω` with `|ω| = 1` preserves the whole system. -/
lemma scale_system (h : System c) {ω : ℂ} (hω : Complex.normSq ω = 1) : System (scale ω c) := by
  have hω' : star ω * ω = (1 : ℂ) := star_mul_self_of_normSq_eq_one (ω := ω) hω
  have hstar : ∀ x y : ℂ, (starRingEnd ℂ) (ω * x) * (ω * y) = (starRingEnd ℂ) x * y := by
    intro x y
    calc
      (starRingEnd ℂ) (ω * x) * (ω * y) = (star ω * ω) * ((starRingEnd ℂ) x * y) := by
        -- `star (ω*x) * (ω*y) = (star ω * ω) * (star x * y)`
        simpa using (star_mul_mul (ω := ω) (x := x) (y := y))
      _ = (starRingEnd ℂ) x * y := by
        -- multiply `hω' : star ω * ω = 1` by `(starRingEnd ℂ) x * y`
        have hmul :
            (star ω * ω) * ((starRingEnd ℂ) x * y) = (1 : ℂ) * ((starRingEnd ℂ) x * y) :=
          congrArg (fun t : ℂ => t * ((starRingEnd ℂ) x * y)) hω'
        simpa using hmul

  refine {
    norm := ?_, z1 := ?_, z2 := ?_, z3 := ?_, z4 := ?_, z5 := ?_, z6 := ?_, z7 := ?_,
    x1_0 := ?_, x1_2 := ?_, x1_4 := ?_,
    x2_0 := ?_, x2_1 := ?_, x2_4 := ?_,
    x3_0 := ?_, x3_1 := ?_, x3_4 := ?_ }
  · simpa [p, scale, Complex.normSq_mul, hω] using h.norm
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z1
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z2
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z3
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z4
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z5
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z6
  · simpa [p, scale, Complex.normSq_mul, hω] using h.z7

  · -- x1_0
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 9) (c 6), hstar (c 7) (c 8), hstar (c 6) (c 9), hstar (c 8) (c 7)]
    simpa [a, b, c', d] using h.x1_0

  · -- x1_2
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 9) (c 6), hstar (c 7) (c 8), hstar (c 6) (c 9), hstar (c 8) (c 7)]
    simpa [a, b, c', d] using h.x1_2

  · -- x1_4
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 9) (c 6), hstar (c 7) (c 8), hstar (c 6) (c 9), hstar (c 8) (c 7)]
    simpa [a, b, c', d] using h.x1_4

  · -- x2_0
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 8), hstar (c 8) (c 5), hstar (c 9) (c 4), hstar (c 4) (c 9)]
    simpa [b, d, e, f] using h.x2_0

  · -- x2_1
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 8), hstar (c 8) (c 5), hstar (c 9) (c 4), hstar (c 4) (c 9)]
    simpa [b, d, e, f] using h.x2_1

  · -- x2_4
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 8), hstar (c 8) (c 5), hstar (c 9) (c 4), hstar (c 4) (c 9)]
    simpa [b, d, e, f] using h.x2_4

  · -- x3_0
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 6), hstar (c 6) (c 5), hstar (c 7) (c 4), hstar (c 4) (c 7)]
    simpa [a, c', e, f] using h.x3_0

  · -- x3_1
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 6), hstar (c 6) (c 5), hstar (c 7) (c 4), hstar (c 4) (c 7)]
    simpa [a, c', e, f] using h.x3_1

  · -- x3_4
    dsimp [a, b, c', d, e, f, scale]
    rw [hstar (c 5) (c 6), hstar (c 6) (c 5), hstar (c 7) (c 4), hstar (c 4) (c 7)]
    simpa [a, c', e, f] using h.x3_4

/-!
## Step 5: Phase fixing and reality
-/

/-- A convenient unit-magnitude phase: `ω = conj b / √(normSq b)`.

When `b ≠ 0` this satisfies `normSq ω = 1` and makes `ω*b` real and positive. -/
noncomputable def phaseFix (b : ℂ) : ℂ := star b / (Real.sqrt (Complex.normSq b))

lemma normSq_phaseFix {b : ℂ} (hb : b ≠ 0) : Complex.normSq (phaseFix b) = 1 := by
  classical
  unfold phaseFix
  have hb' : Complex.normSq b ≠ 0 := by
    intro h0
    apply hb
    exact (Complex.normSq_eq_zero).1 h0
  -- Compute `normSq (star b / √(normSq b))`.
  calc
    Complex.normSq (star b / (Real.sqrt (Complex.normSq b)))
        = Complex.normSq (star b) / Complex.normSq (Real.sqrt (Complex.normSq b) : ℂ) := by
            simpa using (Complex.normSq_div (star b) (Real.sqrt (Complex.normSq b) : ℂ))
    _ = Complex.normSq b / ((Real.sqrt (Complex.normSq b)) * (Real.sqrt (Complex.normSq b))) := by
          simp [Complex.normSq_conj, Complex.normSq_ofReal]
    _ = Complex.normSq b / Complex.normSq b := by
          simp [Real.mul_self_sqrt (Complex.normSq_nonneg b)]
    _ = 1 := by
          simpa [div_self hb']

lemma phaseFix_mul_self (b : ℂ) : phaseFix b * b = (Real.sqrt (Complex.normSq b) : ℂ) := by
  classical
  unfold phaseFix
  -- `star b * b = ↑(normSq b)`.
  have hnorm : (starRingEnd ℂ) b * b = (Complex.normSq b : ℂ) := by
    simpa using (Complex.normSq_eq_conj_mul_self (z := b)).symm
  have hnorm' : star b * b = (Complex.normSq b : ℂ) := by
    -- `star b = conj b` and `starRingEnd` applies `conj`.
    simpa [Complex.star_def] using hnorm
  -- finish by field-style manipulation in `ℂ`.
  -- Note: this holds even when `b = 0` since `0⁻¹ = 0` in a field.
  --
  -- `(star b / r) * b = (star b * b) / r = (normSq b) / r = r`.
  calc
    (star b / (Real.sqrt (Complex.normSq b))) * b
        = (star b * b) / (Real.sqrt (Complex.normSq b)) := by
            simp [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm]
    _ = (Complex.normSq b : ℂ) / (Real.sqrt (Complex.normSq b) : ℂ) := by
          simpa [hnorm]
    _ = (Real.sqrt (Complex.normSq b) : ℂ) := by
          have hreal :
              (Complex.normSq b) / Real.sqrt (Complex.normSq b) = Real.sqrt (Complex.normSq b) := by
            simpa using (Real.div_sqrt (x := Complex.normSq b))
          have hcast :
              ((Complex.normSq b / Real.sqrt (Complex.normSq b) : ℝ) : ℂ) =
                (Complex.normSq b : ℂ) / (Real.sqrt (Complex.normSq b) : ℂ) :=
            Complex.ofReal_div (Complex.normSq b) (Real.sqrt (Complex.normSq b))
          have hcomplex :
              ((Complex.normSq b / Real.sqrt (Complex.normSq b) : ℝ) : ℂ) =
                (Real.sqrt (Complex.normSq b) : ℂ) :=
            congrArg (fun r : ℝ => (r : ℂ)) hreal

          calc
            (Complex.normSq b : ℂ) / (Real.sqrt (Complex.normSq b) : ℂ)
                = ((Complex.normSq b / Real.sqrt (Complex.normSq b) : ℝ) : ℂ) := by
                  exact hcast.symm
            _ = (Real.sqrt (Complex.normSq b) : ℂ) := hcomplex

/-- Helper: if `r` is real and nonzero, and `(r*z).im = 0`, then `z` is real. -/
lemma im_eq_zero_of_mul_im_eq_zero_left {r z : ℂ} (hr : r.im = 0) (hr0 : r ≠ 0)
    (h : (r * z).im = 0) : z.im = 0 := by
  have hre : r.re ≠ 0 := by
    intro hre0
    apply hr0
    ext <;> simp [hre0, hr]
  have him : (r * z).im = r.re * z.im := by
    simp [Complex.mul_im, hr, add_comm, add_left_comm, add_assoc]
  have : r.re * z.im = 0 := by simpa [him] using h
  have : r.re = 0 ∨ z.im = 0 := (mul_eq_zero).1 this
  exact this.resolve_left hre

/-- Symmetric version of `im_eq_zero_of_mul_im_eq_zero_left`. -/
lemma im_eq_zero_of_mul_im_eq_zero_right {z r : ℂ} (hr : r.im = 0) (hr0 : r ≠ 0)
    (h : (z * r).im = 0) : z.im = 0 := by
  have : (r * z).im = 0 := by simpa [mul_comm] using h
  exact im_eq_zero_of_mul_im_eq_zero_left (r := r) (z := z) hr hr0 this

/-- If `System c` holds and `b c` is real and nonzero, then all six special coefficients are real.

We phrase “real” as `z.im = 0`. -/
lemma six_im_eq_zero_of_b_real (h : System c) (hb_im : (b c).im = 0) (hb0 : b c ≠ 0) :
    (a c).im = 0 ∧ (c' c).im = 0 ∧ (d c).im = 0 ∧ (e c).im = 0 ∧ (f c).im = 0 := by
  -- From `prod1` and `prod2`, first show `a` and `e` are real.
  have hb_star : star (b c) = b c := by
    have : (starRingEnd ℂ) (b c) = b c := (Complex.conj_eq_iff_im).2 hb_im
    simpa [Complex.star_def] using this

  have ha_mul_im : (b c * a c).im = 0 := by
    -- `prod1` gives `(star b * a).im = 0`.
    have := (prod1 h).2
    simpa [hb_star, mul_assoc] using this
  have ha_im : (a c).im = 0 :=
    im_eq_zero_of_mul_im_eq_zero_left (r := b c) (z := a c) hb_im hb0 ha_mul_im

  have he_mul_im : (b c * e c).im = 0 := by
    have := (prod2 h).2
    simpa [hb_star, mul_assoc] using this
  have he_im : (e c).im = 0 :=
    im_eq_zero_of_mul_im_eq_zero_left (r := b c) (z := e c) hb_im hb0 he_mul_im

  -- Now `e ≠ 0` by the nonzero lemma.
  have he0 : e c ≠ 0 := (six_ne_zero h).2.2.2.2.1

  -- From `prod3`, deduce `star c'` is real, hence `c'` is real.
  have hc_mul_im : (star (c' c) * e c).im = 0 := (prod3 h).2
  have hcstar_im : (star (c' c)).im = 0 := by
    -- commute to put `e` on the left
    have : (e c * star (c' c)).im = 0 := by simpa [mul_comm, mul_assoc] using hc_mul_im
    exact im_eq_zero_of_mul_im_eq_zero_left (r := e c) (z := star (c' c)) he_im he0 this
  have hc_im : (c' c).im = 0 := by
    -- `(star z).im = - z.im`.
    have : (star (c' c)).im = -(c' c).im := by
      -- use `Complex.conj_im` via `star_def`
      simpa [Complex.star_def] using (Complex.conj_im (c' c))
    have : -(c' c).im = 0 := by simpa [this] using hcstar_im
    exact (neg_eq_zero).1 this

  have hc0 : c' c ≠ 0 := (six_ne_zero h).2.2.1

  -- Use `prod1` relation: `star b * a = - star d * c'`.
  have hrel1 : star (b c) * a c = -(star (d c) * c' c) := (prod1 h).1
  have hd_mul_im : (star (d c) * c' c).im = 0 := by
    -- RHS is the negation of a real number.
    have : (-(star (d c) * c' c)).im = 0 := by simpa [hrel1] using (prod1 h).2
    -- `im (-z) = - im z`.
    simpa using (by simpa using congrArg Complex.im (by simpa using this))
  -- Put `c'` on the left to deduce `star d` real.
  have hdstar_im : (star (d c)).im = 0 := by
    have : (c' c * star (d c)).im = 0 := by simpa [mul_comm, mul_assoc] using hd_mul_im
    exact im_eq_zero_of_mul_im_eq_zero_left (r := c' c) (z := star (d c)) hc_im hc0 this
  have hd_im : (d c).im = 0 := by
    have : (star (d c)).im = -(d c).im := by
      simpa [Complex.star_def] using (Complex.conj_im (d c))
    have : -(d c).im = 0 := by simpa [this] using hdstar_im
    exact (neg_eq_zero).1 this

  have hd0 : d c ≠ 0 := (six_ne_zero h).2.2.2.1

  -- Finally from `prod2` relation we deduce `f` real.
  have hrel2 : star (b c) * e c = -(star (d c) * f c) := (prod2 h).1
  have hf_mul_im : (star (d c) * f c).im = 0 := by
    have : (-(star (d c) * f c)).im = 0 := by
      -- again RHS is negation of a real
      have := (prod2 h).2
      -- rewrite `star b = b` and `e` real; but we only need `im`.
      simpa [hrel2] using this
    -- `im (-z) = -im z`.
    have : -(star (d c) * f c).im = 0 := by
      -- `Complex.im` is additive
      simpa using (by
        -- `Complex.im_neg` is simp
        simpa using this)
    -- so `(star d * f).im = 0`
    exact (neg_eq_zero).1 this
  have hf_im : (f c).im = 0 :=
    im_eq_zero_of_mul_im_eq_zero_left (r := star (d c)) (z := f c)
      (by
        -- `star d` is real
        -- `(star d).im = 0` follows from `hdstar_im`
        exact hdstar_im)
      (by
        -- `star d ≠ 0` since `d ≠ 0`
        intro hsd
        have : d c = 0 := (star_eq_zero).1 hsd
        exact hd0 this)
      (by simpa using hf_mul_im)

  exact ⟨ha_im, hc_im, hd_im, he_im, hf_im⟩

/-!
## Step 6: Final contradiction
-/

/-- In a real gauge, the three product relations imply `a * f = 0`. -/
lemma af_eq_zero_of_real_gauge (h : System c)
    (ha_im : (a c).im = 0) (hb_im : (b c).im = 0) (hc_im : (c' c).im = 0)
    (hd_im : (d c).im = 0) (he_im : (e c).im = 0) (hf_im : (f c).im = 0)
    (hb0 : b c ≠ 0) : a c * f c = 0 := by
  -- Turn the three `prod` relations into unconjugated relations.
  have ha_star : star (a c) = a c := by
    have : (starRingEnd ℂ) (a c) = a c := (Complex.conj_eq_iff_im).2 ha_im
    simpa [Complex.star_def] using this
  have hb_star : star (b c) = b c := by
    have : (starRingEnd ℂ) (b c) = b c := (Complex.conj_eq_iff_im).2 hb_im
    simpa [Complex.star_def] using this
  have hc_star : star (c' c) = c' c := by
    have : (starRingEnd ℂ) (c' c) = c' c := (Complex.conj_eq_iff_im).2 hc_im
    simpa [Complex.star_def] using this
  have hd_star : star (d c) = d c := by
    have : (starRingEnd ℂ) (d c) = d c := (Complex.conj_eq_iff_im).2 hd_im
    simpa [Complex.star_def] using this
  have he_star : star (e c) = e c := by
    have : (starRingEnd ℂ) (e c) = e c := (Complex.conj_eq_iff_im).2 he_im
    simpa [Complex.star_def] using this
  have hf_star : star (f c) = f c := by
    have : (starRingEnd ℂ) (f c) = f c := (Complex.conj_eq_iff_im).2 hf_im
    simpa [Complex.star_def] using this

  have h1 : b c * a c = -(d c * c' c) := by
    have := (prod1 h).1
    simpa [hb_star, hd_star, mul_assoc, mul_comm, mul_left_comm] using this
  have h2 : b c * e c = -(d c * f c) := by
    have := (prod2 h).1
    simpa [hb_star, hd_star, mul_assoc, mul_comm, mul_left_comm] using this
  have h3 : c' c * e c = -(a c * f c) := by
    have := (prod3 h).1
    simpa [ha_star, hc_star, mul_assoc, mul_comm, mul_left_comm] using this

  -- Multiply `h1` by `f` and `h2` by `c'`.
  have h1' : b c * (a c * f c) = -(d c * (c' c * f c)) := by
    calc
      b c * (a c * f c) = (b c * a c) * f c := by ring
      _ = (-(d c * c' c)) * f c := by simpa [h1]
      _ = -(d c * (c' c * f c)) := by ring
  have h2' : b c * (e c * c' c) = -(d c * (f c * c' c)) := by
    calc
      b c * (e c * c' c) = (b c * e c) * c' c := by ring
      _ = (-(d c * f c)) * c' c := by simpa [h2]
      _ = -(d c * (f c * c' c)) := by ring

  -- The RHS of `h1'` and `h2'` coincide by commutativity.
  have hbc : b c * (a c * f c) = b c * (e c * c' c) := by
    -- compare both to the common RHS
    have : -(d c * (c' c * f c)) = -(d c * (f c * c' c)) := by
      ring
    exact by
      calc
        b c * (a c * f c) = -(d c * (c' c * f c)) := h1'
        _ = -(d c * (f c * c' c)) := by simpa [this]
        _ = b c * (e c * c' c) := by simpa [h2']

  have haf_eq : a c * f c = e c * c' c := by
    exact mul_left_cancel₀ hb0 (by simpa [mul_assoc] using hbc)

  -- Use `h3` (and commutativity) to conclude `a*f = -a*f`, hence `a*f = 0`.
  have haf_neg : a c * f c = -(a c * f c) := by
    -- `h3` gives `c'*e = -a*f`.
    have : e c * c' c = -(a c * f c) := by simpa [mul_comm, mul_assoc] using h3
    simpa [haf_eq] using this

  have : a c * f c + a c * f c = 0 := (eq_neg_iff_add_eq_zero).1 haf_neg
  exact (add_self_eq_zero).1 this

/-- The subsystem has no complex solution. -/
theorem no_solution : ¬ ∃ c : Fin 10 → ℂ, System c := by
  intro h
  rcases h with ⟨c, hc⟩

  -- Nonzero amplitudes.
  have hnz : a c ≠ 0 ∧ b c ≠ 0 ∧ c' c ≠ 0 ∧ d c ≠ 0 ∧ e c ≠ 0 ∧ f c ≠ 0 := six_ne_zero hc
  have hb0 : b c ≠ 0 := hnz.2.1

  -- Fix the global phase so that `b` becomes real and positive.
  let ω : ℂ := phaseFix (b c)
  have hω : Complex.normSq ω = 1 := normSq_phaseFix (b := b c) hb0
  let c₁ : Fin 10 → ℂ := scale ω c
  have hc₁ : System c₁ := scale_system hc (ω := ω) hω

  have hb_real : b c₁ = (Real.sqrt (Complex.normSq (b c)) : ℂ) := by
    -- `b c₁ = ω * b c`.
    have : b c₁ = ω * b c := rfl
    -- and `ω * b = √(normSq b)`.
    simpa [c₁, scale, ω, phaseFix_mul_self] using (by rfl : ω * b c = ω * b c)

  have hb₁_im : (b c₁).im = 0 := by
    -- `b c₁` is a real number.
    simpa [hb_real]

  have hb₁0 : b c₁ ≠ 0 := by
    -- `b c₁ = √(normSq (b c))` and `b c ≠ 0`.
    have hbns : Complex.normSq (b c) ≠ 0 := by
      intro h0
      apply hb0
      exact (Complex.normSq_eq_zero).1 h0
    have hs : Real.sqrt (Complex.normSq (b c)) ≠ 0 :=
      (Real.sqrt_ne_zero (Complex.normSq_nonneg (b c))).2 hbns
    -- coe to `ℂ`
    simpa [hb_real] using (show (Real.sqrt (Complex.normSq (b c)) : ℂ) ≠ 0 from by
      -- `simp` knows `((r:ℂ)=0) ↔ r=0` for reals
      simpa using congrArg (fun r : ℝ => (r : ℂ)) hs)

  -- In this gauge, all six special amplitudes are real.
  have hims : (a c₁).im = 0 ∧ (c' c₁).im = 0 ∧ (d c₁).im = 0 ∧ (e c₁).im = 0 ∧ (f c₁).im = 0 :=
    six_im_eq_zero_of_b_real hc₁ hb₁_im hb₁0

  have ha_im : (a c₁).im = 0 := hims.1
  have hc_im : (c' c₁).im = 0 := hims.2.1
  have hd_im : (d c₁).im = 0 := hims.2.2.1
  have he_im : (e c₁).im = 0 := hims.2.2.2.1
  have hf_im : (f c₁).im = 0 := hims.2.2.2.2

  have haf0 : a c₁ * f c₁ = 0 :=
    af_eq_zero_of_real_gauge hc₁ ha_im hb₁_im hc_im hd_im he_im hf_im hb₁0

  -- Contradiction with `a ≠ 0` and `f ≠ 0`.
  have hnz₁ : a c₁ ≠ 0 ∧ b c₁ ≠ 0 ∧ c' c₁ ≠ 0 ∧ d c₁ ≠ 0 ∧ e c₁ ≠ 0 ∧ f c₁ ≠ 0 :=
    six_ne_zero hc₁
  have ha0 : a c₁ ≠ 0 := hnz₁.1
  have hf0 : f c₁ ≠ 0 := hnz₁.2.2.2.2.2
  have : a c₁ = 0 ∨ f c₁ = 0 := (mul_eq_zero).1 haf0
  exact (this.elim ha0 hf0)

end System

/-- There is no `c : Fin 10 → ℂ` satisfying the 17 equations in `System`. -/
theorem no_solution : ¬ ∃ c : Fin 10 → ℂ, System c :=
  System.no_solution

end Examples.D3.NoGo.BD16_1112226
