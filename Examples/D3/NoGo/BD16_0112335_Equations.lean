import Mathlib

/-!
# BD16 no-go: $a = (0,1,1,2,3,3,5)$ (mod $8$) — the 19 quadratic equations (E1–E19)

This file formalizes the "Lean-friendly analytic no-go" from `BD16_distance3.tex`,
§17.6 (`subsec:lean-nogo-19eq`).

We work with $14$ complex amplitudes indexed by the $14$ bitstrings of $S_0$
(in the order listed in the TeX), and encode a sufficient subsystem of the
weight-$\le 2$ Knill–Laflamme equations as **19 explicit quadratic equations**:

* (E1) normalization,
* (E2)–(E8) the seven $Z_i$ diagonal constraints,
* (E9) the $Y_1$ diagonal constraint,
* (E10)–(E19) bilinear off-diagonal constraints.

We then prove that this 19-equation system has **no** solution.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_0112335

noncomputable section

open scoped ComplexConjugate

/-- The probability $p_k = |c_k|^2$. -/
def p (c : Fin 14 → ℂ) (k : Fin 14) : ℝ := Complex.normSq (c k)

/-- Nonnegativity of probabilities. -/
lemma p_nonneg (c : Fin 14 → ℂ) (k : Fin 14) : 0 ≤ p c k :=
  Complex.normSq_nonneg _

-- Convenience abbreviations `p0` … `p13`.
abbrev p0  (c : Fin 14 → ℂ) : ℝ := p c 0
abbrev p1  (c : Fin 14 → ℂ) : ℝ := p c 1
abbrev p2  (c : Fin 14 → ℂ) : ℝ := p c 2
abbrev p3  (c : Fin 14 → ℂ) : ℝ := p c 3
abbrev p4  (c : Fin 14 → ℂ) : ℝ := p c 4
abbrev p5  (c : Fin 14 → ℂ) : ℝ := p c 5
abbrev p6  (c : Fin 14 → ℂ) : ℝ := p c 6
abbrev p7  (c : Fin 14 → ℂ) : ℝ := p c 7
abbrev p8  (c : Fin 14 → ℂ) : ℝ := p c 8
abbrev p9  (c : Fin 14 → ℂ) : ℝ := p c 9
abbrev p10 (c : Fin 14 → ℂ) : ℝ := p c 10
abbrev p11 (c : Fin 14 → ℂ) : ℝ := p c 11
abbrev p12 (c : Fin 14 → ℂ) : ℝ := p c 12
abbrev p13 (c : Fin 14 → ℂ) : ℝ := p c 13

/-- The 19-equation subsystem (E1)–(E19) from `BD16_distance3.tex`, §17.6. -/
structure System (c : Fin 14 → ℂ) : Prop where
  /- (E1) normalization -/
  norm :
      p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c +
        p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = 1

  /- (E2)–(E8) the seven `Z_i` diagonal constraints -/
  z1 : p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = (1 : ℝ) / 2
  z2 : p5 c + p6 c + p12 c + p13 c = (1 : ℝ) / 2
  z3 : p4 c + p6 c + p11 c + p13 c = (1 : ℝ) / 2
  z4 : p3 c + p4 c + p5 c + p10 c + p11 c + p12 c = (1 : ℝ) / 2
  z5 : p2 c + p3 c + p6 c + p9 c + p10 c + p13 c = (1 : ℝ) / 2
  z6 : p1 c + p3 c + p6 c + p8 c + p10 c + p13 c = (1 : ℝ) / 2
  z7 : p1 c + p2 c + p4 c + p5 c + p8 c + p9 c + p11 c + p12 c = (1 : ℝ) / 2

  /- (E9) the `Y_1` diagonal constraint -/
  y1 :
      (star (c 0) * c 7).im + (star (c 1) * c 8).im + (star (c 2) * c 9).im
        + (star (c 3) * c 10).im + (star (c 4) * c 11).im + (star (c 5) * c 12).im
        + (star (c 6) * c 13).im = 0

  /- (E10)–(E12) off-diagonal KL from `X_2`, `X_2 Z_1`, `X_2 Z_3` -/
  x2_z0 : (star (c 5) * c 13).re + (star (c 6) * c 12).re = 0
  x2_ze1 : (star (c 5) * c 13).im + (star (c 6) * c 12).im = 0
  x2_ze3 : (star (c 5) * c 13).im - (star (c 6) * c 12).im = 0

  /- (E13)–(E15) off-diagonal KL from `X_3`, `X_3 Z_1`, `X_3 Z_2` -/
  x3_z0 : (star (c 4) * c 13).re + (star (c 6) * c 11).re = 0
  x3_ze1 : (star (c 4) * c 13).im + (star (c 6) * c 11).im = 0
  x3_ze2 : (star (c 4) * c 13).im - (star (c 6) * c 11).im = 0

  /- (E16)–(E17) off-diagonal KL from `X_1 X_2`, `X_1 X_2 Z_1` -/
  x12_z0 : (star (c 12) * c 13).re + (star (c 5) * c 6).re = 0
  x12_ze1 : (star (c 12) * c 13).re - (star (c 5) * c 6).re = 0

  /- (E18)–(E19) off-diagonal KL from `X_1 X_3`, `X_1 X_3 Z_1` -/
  x13_z0 : (star (c 11) * c 13).re + (star (c 4) * c 6).re = 0
  x13_ze1 : (star (c 11) * c 13).re - (star (c 4) * c 6).re = 0

/-!
## Helper lemmas (inequalities + gauge)
-/

/-- A convenient bound (Step 9):
$$|\Im(\overline{x}y)| \le (\|x\|^2+\|y\|^2)/2.$$ -/
lemma abs_im_star_mul_le (x y : ℂ) :
    |(star x * y).im| ≤ (Complex.normSq x + Complex.normSq y) / 2 := by
  -- `|Im z| ≤ ‖z‖`.
  have h₁ : |(star x * y).im| ≤ ‖star x * y‖ := Complex.abs_im_le_norm _
  -- `‖conj x * y‖ = ‖x‖ * ‖y‖`.
  have h₂ : ‖star x * y‖ = ‖x‖ * ‖y‖ := by
    simpa [norm_mul, Complex.norm_conj, Complex.star_def]
  -- AM–GM: `‖x‖*‖y‖ ≤ (‖x‖^2+‖y‖^2)/2`.
  have h₃ : ‖x‖ * ‖y‖ ≤ (‖x‖ ^ 2 + ‖y‖ ^ 2) / 2 := by
    have h := two_mul_le_add_sq ‖x‖ ‖y‖
    -- divide by 2
    linarith
  have h₄ : |(star x * y).im| ≤ (‖x‖ ^ 2 + ‖y‖ ^ 2) / 2 := by
    have : |(star x * y).im| ≤ ‖x‖ * ‖y‖ := by
      -- rewrite `h₁` using `h₂`
      simpa [h₂] using h₁
    exact le_trans this h₃
  -- rewrite `‖z‖^2` as `normSq z`.
  simpa [Complex.normSq_eq_norm_sq] using h₄

/-- If `normSq ω = 1`, then `star ω * ω = 1` (as a complex number). -/
lemma star_mul_self_of_normSq_eq_one (ω : ℂ) (hω : Complex.normSq ω = 1) : star ω * ω = (1 : ℂ) := by
  have h : star ω * ω = (Complex.normSq ω : ℂ) := by
    simpa [Complex.star_def] using (Complex.normSq_eq_conj_mul_self (z := ω)).symm
  simpa [hω] using h

/-- The gauge choice used in Step 7:
`(star z / ‖z‖) * z = ‖z‖`.

(We prove it by cases on `z = 0`, so no nonzero assumption is needed.)
-/
lemma gaugeFactor_mul_self (z : ℂ) : (star z / (‖z‖ : ℂ)) * z = (‖z‖ : ℂ) := by
  by_cases hz : z = 0
  · subst hz
    simp
  · have hnorm : (‖z‖ : ℂ) ≠ 0 := by
      -- `‖z‖ ≠ 0` since `z ≠ 0`.
      have : (‖z‖ : ℝ) ≠ 0 := by
        intro h
        apply hz
        exact (norm_eq_zero).1 h
      exact_mod_cast this
    field_simp [hnorm]
    -- goal: `star z * z = (‖z‖ : ℂ)^2`
    calc
      star z * z = (Complex.normSq z : ℂ) := by
        simpa [Complex.star_def] using (Complex.normSq_eq_conj_mul_self (z := z)).symm
      _ = (‖z‖ : ℂ) ^ 2 := by
        -- `normSq z = ‖z‖^2`
        simpa [Complex.normSq_eq_norm_sq, pow_two]

namespace System

variable {c : Fin 14 → ℂ}

/-!
## Step 1: pair sums from linear elimination of the `Z`-system
-/

lemma pair07 (h : System c) : p0 c + p7 c = (1 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair18 (h : System c) : p1 c + p8 c = (1 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair29 (h : System c) : p2 c + p9 c = (1 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair310 (h : System c) : p3 c + p10 c = (1 : ℝ) / 8 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair411 (h : System c) : p4 c + p11 c = (3 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair512 (h : System c) : p5 c + p12 c = (3 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

lemma pair613 (h : System c) : p6 c + p13 c = (5 : ℝ) / 16 := by
  linarith [h.norm, h.z1, h.z2, h.z3, h.z4, h.z5, h.z6, h.z7]

/-!
## Step 2–3: multiplicative identities from the `x=e₂` and `x=e₃` blocks
-/

lemma im_star_mul_513 (h : System c) : (star (c 5) * c 13).im = 0 := by
  nlinarith [h.x2_ze1, h.x2_ze3]

lemma im_star_mul_612 (h : System c) : (star (c 6) * c 12).im = 0 := by
  nlinarith [h.x2_ze1, h.x2_ze3]

lemma im_star_mul_413 (h : System c) : (star (c 4) * c 13).im = 0 := by
  nlinarith [h.x3_ze1, h.x3_ze2]

lemma im_star_mul_611 (h : System c) : (star (c 6) * c 11).im = 0 := by
  nlinarith [h.x3_ze1, h.x3_ze2]

/-- (Step 2) From (E10)–(E12): $p_5 p_{13} = p_6 p_{12}$. -/
lemma mult513 (h : System c) : p5 c * p13 c = p6 c * p12 c := by
  have hre : (star (c 5) * c 13).re = - (star (c 6) * c 12).re := by
    linarith [h.x2_z0]
  have hcomp : star (c 5) * c 13 = - (star (c 6) * c 12) := by
    apply Complex.ext
    · -- real parts
      simpa using hre
    · -- imaginary parts
      have him513 : (star (c 5) * c 13).im = 0 := im_star_mul_513 h
      have him612 : (star (c 6) * c 12).im = 0 := im_star_mul_612 h
      have him612_neg : - (star (c 6) * c 12).im = 0 := by
        have := congrArg (fun t : ℝ => -t) him612
        simpa using this
      calc
        (star (c 5) * c 13).im = 0 := him513
        _ = - (star (c 6) * c 12).im := by
          simpa using him612_neg.symm
        _ = (- (star (c 6) * c 12)).im := by
          simpa using (Complex.neg_im (star (c 6) * c 12)).symm
  have := congrArg Complex.normSq hcomp
  simpa [p, Complex.normSq_mul] using this

/-- (Step 3) From (E13)–(E15): $p_4 p_{13} = p_6 p_{11}$. -/
lemma mult413 (h : System c) : p4 c * p13 c = p6 c * p11 c := by
  have hre : (star (c 4) * c 13).re = - (star (c 6) * c 11).re := by
    linarith [h.x3_z0]
  have hcomp : star (c 4) * c 13 = - (star (c 6) * c 11) := by
    apply Complex.ext
    · -- real parts
      simpa using hre
    · -- imaginary parts
      have him413 : (star (c 4) * c 13).im = 0 := im_star_mul_413 h
      have him611 : (star (c 6) * c 11).im = 0 := im_star_mul_611 h
      have him611_neg : - (star (c 6) * c 11).im = 0 := by
        have := congrArg (fun t : ℝ => -t) him611
        simpa using this
      calc
        (star (c 4) * c 13).im = 0 := him413
        _ = - (star (c 6) * c 11).im := by
          simpa using him611_neg.symm
        _ = (- (star (c 6) * c 11)).im := by
          simpa using (Complex.neg_im (star (c 6) * c 11)).symm
  have := congrArg Complex.normSq hcomp
  simpa [p, Complex.normSq_mul] using this

/-!
## Step 4: linearization using the pair sums
-/

lemma p12_eq (h : System c) : p12 c = (3 : ℝ) / 5 * p13 c := by
  have hp5 : p5 c = (3 : ℝ) / 16 - p12 c := by linarith [pair512 h]
  have hp6 : p6 c = (5 : ℝ) / 16 - p13 c := by linarith [pair613 h]
  have h' : ((3 : ℝ) / 16 - p12 c) * p13 c = ((5 : ℝ) / 16 - p13 c) * p12 c := by
    simpa [hp5, hp6] using mult513 h
  nlinarith

lemma p11_eq (h : System c) : p11 c = (3 : ℝ) / 5 * p13 c := by
  have hp4 : p4 c = (3 : ℝ) / 16 - p11 c := by linarith [pair411 h]
  have hp6 : p6 c = (5 : ℝ) / 16 - p13 c := by linarith [pair613 h]
  have h' : ((3 : ℝ) / 16 - p11 c) * p13 c = ((5 : ℝ) / 16 - p13 c) * p11 c := by
    simpa [hp4, hp6] using mult413 h
  nlinarith

lemma p4_eq (h : System c) : p4 c = (3 : ℝ) / 5 * p6 c := by
  have hp4 : p4 c = (3 : ℝ) / 16 - p11 c := by linarith [pair411 h]
  have hp6 : p6 c = (5 : ℝ) / 16 - p13 c := by linarith [pair613 h]
  nlinarith [hp4, hp6, p11_eq h]

lemma p5_eq (h : System c) : p5 c = (3 : ℝ) / 5 * p6 c := by
  have hp5 : p5 c = (3 : ℝ) / 16 - p12 c := by linarith [pair512 h]
  have hp6 : p6 c = (5 : ℝ) / 16 - p13 c := by linarith [pair613 h]
  nlinarith [hp5, hp6, p12_eq h]

/-!
## Step 5: uniform bounds on `p13` and `p6`
-/

lemma p13_le (h : System c) : p13 c ≤ (5 : ℝ) / 22 := by
  -- from `z1`:
  have hp7 : p7 c = (1 : ℝ) / 2 - (p8 c + p9 c + p10 c + p11 c + p12 c + p13 c) := by
    linarith [h.z1]
  have hp7n : 0 ≤ p7 c := p_nonneg c 7
  have hsum_le : p8 c + p9 c + p10 c + p11 c + p12 c + p13 c ≤ (1 : ℝ) / 2 := by
    linarith [hp7, hp7n]

  have hp8n : 0 ≤ p8 c := p_nonneg c 8
  have hp9n : 0 ≤ p9 c := p_nonneg c 9
  have hp10n : 0 ≤ p10 c := p_nonneg c 10

  have htail : p11 c + p12 c + p13 c = (11 : ℝ) / 5 * p13 c := by
    nlinarith [p11_eq h, p12_eq h]
  have htail_le : p11 c + p12 c + p13 c ≤ (1 : ℝ) / 2 := by
    have : p11 c + p12 c + p13 c ≤ p8 c + p9 c + p10 c + p11 c + p12 c + p13 c := by
      linarith [hp8n, hp9n, hp10n]
    exact le_trans this hsum_le
  have : (11 : ℝ) / 5 * p13 c ≤ (1 : ℝ) / 2 := by
    linarith [htail, htail_le]
  nlinarith

lemma p6_ge (h : System c) : (15 : ℝ) / 176 ≤ p6 c := by
  have hp6 : p6 c = (5 : ℝ) / 16 - p13 c := by linarith [pair613 h]
  have hp13le : p13 c ≤ (5 : ℝ) / 22 := p13_le h
  nlinarith [hp6, hp13le]

lemma p13_ge (h : System c) : (15 : ℝ) / 176 ≤ p13 c := by
  -- Express `p0` via the `z1` equation and the pair sum `p0+p7 = 1/16`.
  have hp7 : p7 c = (1 : ℝ) / 2 - (p8 c + p9 c + p10 c + p11 c + p12 c + p13 c) := by
    linarith [h.z1]
  have hp0 : p0 c = (p8 c + p9 c + p10 c + p11 c + p12 c + p13 c) - (7 : ℝ) / 16 := by
    have hp0' : p0 c = (1 : ℝ) / 16 - p7 c := by linarith [pair07 h]
    nlinarith [hp0', hp7]
  have hp0n : 0 ≤ p0 c := p_nonneg c 0
  have hsum_ge : (7 : ℝ) / 16 ≤ p8 c + p9 c + p10 c + p11 c + p12 c + p13 c := by
    linarith [hp0, hp0n]

  -- Upper bound the first three terms using pair sums + nonnegativity.
  have hp8_le : p8 c ≤ (1 : ℝ) / 16 := by
    have hp1n : 0 ≤ p1 c := p_nonneg c 1
    linarith [pair18 h, hp1n]
  have hp9_le : p9 c ≤ (1 : ℝ) / 16 := by
    have hp2n : 0 ≤ p2 c := p_nonneg c 2
    linarith [pair29 h, hp2n]
  have hp10_le : p10 c ≤ (1 : ℝ) / 8 := by
    have hp3n : 0 ≤ p3 c := p_nonneg c 3
    linarith [pair310 h, hp3n]
  have hhead_le : p8 c + p9 c + p10 c ≤ (1 : ℝ) / 4 := by
    nlinarith [hp8_le, hp9_le, hp10_le]

  have htail : p11 c + p12 c + p13 c = (11 : ℝ) / 5 * p13 c := by
    nlinarith [p11_eq h, p12_eq h]

  have htail_ge : (3 : ℝ) / 16 ≤ p11 c + p12 c + p13 c := by
    nlinarith [hsum_ge, hhead_le]

  have : (3 : ℝ) / 16 ≤ (11 : ℝ) / 5 * p13 c := by
    linarith [htail, htail_ge]
  nlinarith

lemma p13_pos (h : System c) : 0 < p13 c := by
  have : (0 : ℝ) < (15 : ℝ) / 176 := by norm_num
  exact lt_of_lt_of_le this (p13_ge h)

lemma p6_pos (h : System c) : 0 < p6 c := by
  have : (0 : ℝ) < (15 : ℝ) / 176 := by norm_num
  exact lt_of_lt_of_le this (p6_ge h)

/-!
## Step 6: real-part vanishings from (E16)–(E19)
-/

lemma re_star_mul_1213 (h : System c) : (star (c 12) * c 13).re = 0 := by
  nlinarith [h.x12_z0, h.x12_ze1]

lemma re_star_mul_56 (h : System c) : (star (c 5) * c 6).re = 0 := by
  nlinarith [h.x12_z0, h.x12_ze1]

lemma re_star_mul_1113 (h : System c) : (star (c 11) * c 13).re = 0 := by
  nlinarith [h.x13_z0, h.x13_ze1]

lemma re_star_mul_46 (h : System c) : (star (c 4) * c 6).re = 0 := by
  nlinarith [h.x13_z0, h.x13_ze1]

/-!
## Step 7: global phase invariance
-/

/-- Multiply all coefficients by a global scalar `ω`. -/
def scale (ω : ℂ) (c : Fin 14 → ℂ) : Fin 14 → ℂ := fun k => ω * c k

/-- Global phase invariance for the basic bilinear terms: if `star ω * ω = 1`, then
`star (ω*x) * (ω*y) = star x * y`. -/
lemma star_mul_gauge (ω x y : ℂ) (hω : star ω * ω = (1 : ℂ)) :
    star (ω * x) * (ω * y) = star x * y := by
  -- Expand conjugation and reassociate until the factor `star ω * ω` appears.
  calc
    star (ω * x) * (ω * y) = star x * (star ω * (ω * y)) := by
      simp [StarMul.star_mul, mul_assoc]
    _ = star x * ((star ω * ω) * y) := by
      -- rewrite `star ω * (ω*y)` as `(star ω*ω)*y` (associativity, backwards)
      rw [← mul_assoc (star ω) ω y]
    _ = star x * ((1 : ℂ) * y) := by
      rw [hω]
    _ = star x * y := by
      simp [mul_assoc]

/-- Scaling by `ω` with `|ω| = 1` preserves the whole system. -/
lemma scale_system (h : System c) {ω : ℂ} (hω : Complex.normSq ω = 1) : System (scale ω c) := by
  have hω' : star ω * ω = (1 : ℂ) := star_mul_self_of_normSq_eq_one ω hω

  have hp : ∀ k : Fin 14, p (scale ω c) k = p c k := by
    intro k
    simp [p, scale, Complex.normSq_mul, hω]

  have hstar : ∀ i j : Fin 14, star (scale ω c i) * scale ω c j = star (c i) * c j := by
    intro i j
    -- `scale ω c i = ω * c i`.
    simpa [scale] using (star_mul_gauge (ω := ω) (x := c i) (y := c j) hω')

  refine {
    norm := ?_, z1 := ?_, z2 := ?_, z3 := ?_, z4 := ?_, z5 := ?_, z6 := ?_, z7 := ?_,
    y1 := ?_,
    x2_z0 := ?_, x2_ze1 := ?_, x2_ze3 := ?_,
    x3_z0 := ?_, x3_ze1 := ?_, x3_ze2 := ?_,
    x12_z0 := ?_, x12_ze1 := ?_,
    x13_z0 := ?_, x13_ze1 := ?_ }
  · simpa [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, hp] using h.norm
  · simpa [p7, p8, p9, p10, p11, p12, p13, hp] using h.z1
  · simpa [p5, p6, p12, p13, hp] using h.z2
  · simpa [p4, p6, p11, p13, hp] using h.z3
  · simpa [p3, p4, p5, p10, p11, p12, hp] using h.z4
  · simpa [p2, p3, p6, p9, p10, p13, hp] using h.z5
  · simpa [p1, p3, p6, p8, p10, p13, hp] using h.z6
  · simpa [p1, p2, p4, p5, p8, p9, p11, p12, hp] using h.z7

  · -- y1
    have h07 : (star (scale ω c 0) * scale ω c 7).im = (star (c 0) * c 7).im :=
      congrArg Complex.im (hstar 0 7)
    have h18 : (star (scale ω c 1) * scale ω c 8).im = (star (c 1) * c 8).im :=
      congrArg Complex.im (hstar 1 8)
    have h29 : (star (scale ω c 2) * scale ω c 9).im = (star (c 2) * c 9).im :=
      congrArg Complex.im (hstar 2 9)
    have h3_10 : (star (scale ω c 3) * scale ω c 10).im = (star (c 3) * c 10).im :=
      congrArg Complex.im (hstar 3 10)
    have h4_11 : (star (scale ω c 4) * scale ω c 11).im = (star (c 4) * c 11).im :=
      congrArg Complex.im (hstar 4 11)
    have h5_12 : (star (scale ω c 5) * scale ω c 12).im = (star (c 5) * c 12).im :=
      congrArg Complex.im (hstar 5 12)
    have h6_13 : (star (scale ω c 6) * scale ω c 13).im = (star (c 6) * c 13).im :=
      congrArg Complex.im (hstar 6 13)

    rw [h07, h18, h29, h3_10, h4_11, h5_12, h6_13]
    exact h.y1

  · -- x2_z0
    have h513 : (star (scale ω c 5) * scale ω c 13).re = (star (c 5) * c 13).re :=
      congrArg Complex.re (hstar 5 13)
    have h612 : (star (scale ω c 6) * scale ω c 12).re = (star (c 6) * c 12).re :=
      congrArg Complex.re (hstar 6 12)
    rw [h513, h612]
    exact h.x2_z0

  · -- x2_ze1
    have h513 : (star (scale ω c 5) * scale ω c 13).im = (star (c 5) * c 13).im :=
      congrArg Complex.im (hstar 5 13)
    have h612 : (star (scale ω c 6) * scale ω c 12).im = (star (c 6) * c 12).im :=
      congrArg Complex.im (hstar 6 12)
    rw [h513, h612]
    exact h.x2_ze1

  · -- x2_ze3
    have h513 : (star (scale ω c 5) * scale ω c 13).im = (star (c 5) * c 13).im :=
      congrArg Complex.im (hstar 5 13)
    have h612 : (star (scale ω c 6) * scale ω c 12).im = (star (c 6) * c 12).im :=
      congrArg Complex.im (hstar 6 12)
    rw [h513, h612]
    exact h.x2_ze3

  · -- x3_z0
    have h413 : (star (scale ω c 4) * scale ω c 13).re = (star (c 4) * c 13).re :=
      congrArg Complex.re (hstar 4 13)
    have h611 : (star (scale ω c 6) * scale ω c 11).re = (star (c 6) * c 11).re :=
      congrArg Complex.re (hstar 6 11)
    rw [h413, h611]
    exact h.x3_z0

  · -- x3_ze1
    have h413 : (star (scale ω c 4) * scale ω c 13).im = (star (c 4) * c 13).im :=
      congrArg Complex.im (hstar 4 13)
    have h611 : (star (scale ω c 6) * scale ω c 11).im = (star (c 6) * c 11).im :=
      congrArg Complex.im (hstar 6 11)
    rw [h413, h611]
    exact h.x3_ze1

  · -- x3_ze2
    have h413 : (star (scale ω c 4) * scale ω c 13).im = (star (c 4) * c 13).im :=
      congrArg Complex.im (hstar 4 13)
    have h611 : (star (scale ω c 6) * scale ω c 11).im = (star (c 6) * c 11).im :=
      congrArg Complex.im (hstar 6 11)
    rw [h413, h611]
    exact h.x3_ze2

  · -- x12_z0
    have h1213 : (star (scale ω c 12) * scale ω c 13).re = (star (c 12) * c 13).re :=
      congrArg Complex.re (hstar 12 13)
    have h56 : (star (scale ω c 5) * scale ω c 6).re = (star (c 5) * c 6).re :=
      congrArg Complex.re (hstar 5 6)
    rw [h1213, h56]
    exact h.x12_z0

  · -- x12_ze1
    have h1213 : (star (scale ω c 12) * scale ω c 13).re = (star (c 12) * c 13).re :=
      congrArg Complex.re (hstar 12 13)
    have h56 : (star (scale ω c 5) * scale ω c 6).re = (star (c 5) * c 6).re :=
      congrArg Complex.re (hstar 5 6)
    rw [h1213, h56]
    exact h.x12_ze1

  · -- x13_z0
    have h1113 : (star (scale ω c 11) * scale ω c 13).re = (star (c 11) * c 13).re :=
      congrArg Complex.re (hstar 11 13)
    have h46 : (star (scale ω c 4) * scale ω c 6).re = (star (c 4) * c 6).re :=
      congrArg Complex.re (hstar 4 6)
    rw [h1113, h46]
    exact h.x13_z0

  · -- x13_ze1
    have h1113 : (star (scale ω c 11) * scale ω c 13).re = (star (c 11) * c 13).re :=
      congrArg Complex.re (hstar 11 13)
    have h46 : (star (scale ω c 4) * scale ω c 6).re = (star (c 4) * c 6).re :=
      congrArg Complex.re (hstar 4 6)
    rw [h1113, h46]
    exact h.x13_ze1

/-!
## Main theorem: no solution
-/

set_option maxHeartbeats 1000000 in
/-- The 19-equation system has no complex solution. -/
theorem no_solution : ¬ ∃ c : Fin 14 → ℂ, System c := by
  classical
  rintro ⟨c, hc⟩

  -- Step 5 bounds (in particular `p13 > 0`), needed for the gauge.
  have hp13pos : 0 < p13 c := p13_pos hc
  have hc13_ne : c 13 ≠ 0 := (Complex.normSq_pos).1 (by simpa [p, p13] using hp13pos)

  -- Gauge rotate so that `c13` becomes real and positive.
  let ω : ℂ := star (c 13) / (‖c 13‖ : ℂ)
  have hω : Complex.normSq ω = 1 := by
    have hnorm_ne : (‖c 13‖ : ℝ) ≠ 0 := (norm_ne_zero_iff).2 hc13_ne
    have hmul_ne : (‖c 13‖ * ‖c 13‖ : ℝ) ≠ 0 := mul_ne_zero hnorm_ne hnorm_ne
    calc
      Complex.normSq ω
          = Complex.normSq (star (c 13)) / Complex.normSq (‖c 13‖ : ℂ) := by
            simp [ω, Complex.normSq_div]
      _ = Complex.normSq (c 13) / Complex.normSq (‖c 13‖ : ℂ) := by
            simp [Complex.normSq_conj]
      _ = (‖c 13‖ * ‖c 13‖) / (‖c 13‖ * ‖c 13‖) := by
            simp [Complex.normSq_ofReal, (Complex.norm_mul_self_eq_normSq (c 13)).symm]
      _ = 1 := by
            simp [hmul_ne]

  let c' : Fin 14 → ℂ := scale ω c
  have hc' : System c' := scale_system (c := c) hc (ω := ω) hω

  -- Gauge consequence: `c'13 = ‖c13‖` is real and positive.
  have hc13_gauge : c' 13 = (‖c 13‖ : ℂ) := by
    -- `c' 13 = ω * c 13`.
    have : c' 13 = ω * c 13 := rfl
    -- use `gaugeFactor_mul_self`.
    simpa [c', scale, ω, mul_assoc] using (gaugeFactor_mul_self (c 13))

  have hc13_im : (c' 13).im = 0 := by
    simpa [hc13_gauge]

  have hc13_re_pos : 0 < (c' 13).re := by
    have : 0 < ‖c 13‖ := (norm_pos_iff).2 hc13_ne
    simpa [hc13_gauge] using this

  have hc13_re_ne : (c' 13).re ≠ 0 := by
    linarith [hc13_re_pos]

  -- Step 7 (continued): deduce reality / imaginarity constraints.
  have hc5_im : (c' 5).im = 0 := by
    have him513 : (star (c' 5) * c' 13).im = 0 := im_star_mul_513 hc'
    have : (-(c' 5).im) * (c' 13).re = 0 := by
      simpa [Complex.mul_im, hc13_im, sub_eq_add_neg] using him513
    rcases (mul_eq_zero).1 this with h | h
    · simpa using (neg_eq_zero).1 h
    · exact (hc13_re_ne h).elim

  have hc4_im : (c' 4).im = 0 := by
    have him413 : (star (c' 4) * c' 13).im = 0 := im_star_mul_413 hc'
    have : (-(c' 4).im) * (c' 13).re = 0 := by
      simpa [Complex.mul_im, hc13_im, sub_eq_add_neg] using him413
    rcases (mul_eq_zero).1 this with h | h
    · simpa using (neg_eq_zero).1 h
    · exact (hc13_re_ne h).elim

  -- Real-part vanishings from (E16)–(E19) under the gauge.
  have hre1213 : (star (c' 12) * c' 13).re = 0 := re_star_mul_1213 hc'
  have hre1113 : (star (c' 11) * c' 13).re = 0 := re_star_mul_1113 hc'
  have hre56 : (star (c' 5) * c' 6).re = 0 := re_star_mul_56 hc'

  have hc12_re : (c' 12).re = 0 := by
    have : (c' 12).re * (c' 13).re = 0 := by
      simpa [Complex.mul_re, hc13_im, sub_eq_add_neg] using hre1213
    rcases (mul_eq_zero).1 this with h | h
    · exact h
    · exact (hc13_re_ne h).elim

  have hc11_re : (c' 11).re = 0 := by
    have : (c' 11).re * (c' 13).re = 0 := by
      simpa [Complex.mul_re, hc13_im, sub_eq_add_neg] using hre1113
    rcases (mul_eq_zero).1 this with h | h
    · exact h
    · exact (hc13_re_ne h).elim

  -- Positivity of `p6` gives `c'6.im ≠ 0` once we know `c'6.re = 0`.
  have hp6pos' : 0 < p6 c' := p6_pos hc'
  have hp4pos' : 0 < p4 c' := by
    have : 0 < (3 : ℝ) / 5 := by norm_num
    nlinarith [p4_eq hc', hp6pos']
  have hp5pos' : 0 < p5 c' := by
    have : 0 < (3 : ℝ) / 5 := by norm_num
    nlinarith [p5_eq hc', hp6pos']

  have hc5_re_ne : (c' 5).re ≠ 0 := by
    -- `p5 = (c5.re)^2` since `c5.im = 0`.
    have hp5sq : p5 c' = (c' 5).re ^ 2 := by
      simp [p5, p, Complex.normSq_apply, hc5_im, pow_two]
    have : 0 < (c' 5).re ^ 2 := by
      simpa [hp5sq] using hp5pos'
    exact (sq_pos_iff).1 this

  have hc6_re : (c' 6).re = 0 := by
    have : (c' 5).re * (c' 6).re = 0 := by
      simpa [Complex.mul_re, hc5_im, sub_eq_add_neg] using hre56
    rcases (mul_eq_zero).1 this with h | h
    · exact (hc5_re_ne h).elim
    · exact h

  have hc6_im_ne : (c' 6).im ≠ 0 := by
    have hp6sq : p6 c' = (c' 6).im ^ 2 := by
      simp [p6, p, Complex.normSq_apply, hc6_re, pow_two]
    have : 0 < (c' 6).im ^ 2 := by
      simpa [hp6sq] using hp6pos'
    exact (sq_pos_iff).1 this

  /-
  Step 8–10: split the `Y1` equation and derive the contradiction.
  -/

  -- Define `U` and `T` as in the TeX proof.
  let U : ℝ :=
      (star (c' 0) * c' 7).im + (star (c' 1) * c' 8).im + (star (c' 2) * c' 9).im
        + (star (c' 3) * c' 10).im

  let T : ℝ :=
      (star (c' 4) * c' 11).im + (star (c' 5) * c' 12).im + (star (c' 6) * c' 13).im

  have hUT : U + T = 0 := by
    have :
        (star (c' 0) * c' 7).im + (star (c' 1) * c' 8).im + (star (c' 2) * c' 9).im
          + (star (c' 3) * c' 10).im + (star (c' 4) * c' 11).im + (star (c' 5) * c' 12).im
          + (star (c' 6) * c' 13).im = 0 := hc'.y1
    -- Only reassociate (no commutativity needed), to avoid expensive simp.
    simpa [U, T, add_assoc] using this

  have h_abs_eq : |T| = |U| := by
    have hTU : T = -U := by linarith [hUT]
    -- `|T| = |-U| = |U|`.
    simpa [hTU, abs_neg] using congrArg abs hTU

  -- Solve for `c'12.im` and `c'11.im` from (E10) and (E13) in the gauge.
  have hc12_im_eq : (c' 12).im = -((c' 5).re * (c' 13).re) / (c' 6).im := by
    have hE10simp : (c' 5).re * (c' 13).re + (c' 6).im * (c' 12).im = 0 := by
      -- expand real parts of `x2_z0`
      have : (star (c' 5) * c' 13).re + (star (c' 6) * c' 12).re = 0 := hc'.x2_z0
      simpa [Complex.mul_re, hc5_im, hc13_im, hc6_re, hc12_re, sub_eq_add_neg, add_assoc, add_comm,
        add_left_comm] using this
    have hmul : (c' 6).im * (c' 12).im = -((c' 5).re * (c' 13).re) := by
      linarith [hE10simp]
    have : (c' 12).im = -((c' 5).re * (c' 13).re) / (c' 6).im := by
      exact (eq_div_iff hc6_im_ne).2 (by simpa [mul_comm, mul_left_comm, mul_assoc] using hmul)
    simpa using this

  have hc11_im_eq : (c' 11).im = -((c' 4).re * (c' 13).re) / (c' 6).im := by
    have hE13simp : (c' 4).re * (c' 13).re + (c' 6).im * (c' 11).im = 0 := by
      have : (star (c' 4) * c' 13).re + (star (c' 6) * c' 11).re = 0 := hc'.x3_z0
      simpa [Complex.mul_re, hc4_im, hc13_im, hc6_re, hc11_re, sub_eq_add_neg, add_assoc, add_comm,
        add_left_comm] using this
    have hmul : (c' 6).im * (c' 11).im = -((c' 4).re * (c' 13).re) := by
      linarith [hE13simp]
    have : (c' 11).im = -((c' 4).re * (c' 13).re) / (c' 6).im := by
      exact (eq_div_iff hc6_im_ne).2 (by simpa [mul_comm, mul_left_comm, mul_assoc] using hmul)
    simpa using this

  -- Exact formula for `T`.
  have hT_exact :
      T = -((c' 13).re / (c' 6).im) * (p4 c' + p5 c' + p6 c') := by
    -- First rewrite the three imag-parts using the gauge constraints.
    have h1 : (star (c' 4) * c' 11).im = (c' 4).re * (c' 11).im := by
      simp [Complex.mul_im, hc4_im, hc11_re, sub_eq_add_neg]
    have h2 : (star (c' 5) * c' 12).im = (c' 5).re * (c' 12).im := by
      simp [Complex.mul_im, hc5_im, hc12_re, sub_eq_add_neg]
    have h3 : (star (c' 6) * c' 13).im = - (c' 6).im * (c' 13).re := by
      simp [Complex.mul_im, hc6_re, hc13_im, sub_eq_add_neg, mul_assoc]

    have hT'' :
        T = (c' 4).re * (c' 11).im + (c' 5).re * (c' 12).im + (-(c' 6).im * (c' 13).re) := by
      -- Expand `T` and simplify using the gauge conditions.
      simp [T, Complex.mul_im, hc4_im, hc11_re, hc5_im, hc12_re, hc6_re, hc13_im, add_assoc]

    have hT' :
        T = (c' 4).re * (c' 11).im + (c' 5).re * (c' 12).im - (c' 6).im * (c' 13).re := by
      simpa [sub_eq_add_neg, add_assoc] using hT''

    -- Rewrite `p4,p5,p6` as squares under the gauge.
    have hp4sq : p4 c' = (c' 4).re ^ 2 := by
      dsimp [p4, p]
      rw [Complex.normSq_apply]
      simp [hc4_im, pow_two]
    have hp5sq : p5 c' = (c' 5).re ^ 2 := by
      dsimp [p5, p]
      rw [Complex.normSq_apply]
      simp [hc5_im, pow_two]
    have hp6sq : p6 c' = (c' 6).im ^ 2 := by
      dsimp [p6, p]
      rw [Complex.normSq_apply]
      simp [hc6_re, pow_two]

    -- Substitute the solved values of `c11.im` and `c12.im`.
    have hpoly :
        T = -((c' 13).re / (c' 6).im) *
            ((c' 4).re ^ 2 + (c' 5).re ^ 2 + (c' 6).im ^ 2) := by
      have hsub :
          T =
              (c' 4).re * (-( (c' 4).re * (c' 13).re) / (c' 6).im)
            + (c' 5).re * (-( (c' 5).re * (c' 13).re) / (c' 6).im)
            - (c' 6).im * (c' 13).re := by
        simpa [hT', hc11_im_eq, hc12_im_eq]
      -- Clear denominators (using `c'6.im ≠ 0`) and finish with ring algebra.
      rw [hsub]
      field_simp [hc6_im_ne]
      ring

    -- Replace the squares by `p4,p5,p6`.
    simpa [hp4sq.symm, hp5sq.symm, hp6sq.symm] using hpoly

  -- Convert the exact formula for `T` into the `sqrt(p6*p13)` form.
  have hT_abs : |T| = (11 : ℝ) / 5 * Real.sqrt (p6 c' * p13 c') := by
    have hsum : p4 c' + p5 c' + p6 c' = (11 : ℝ) / 5 * p6 c' := by
      nlinarith [p4_eq hc', p5_eq hc']

    have hp6n : 0 ≤ p6 c' := p_nonneg c' 6
    have hconst : 0 ≤ (11 : ℝ) / 5 := by norm_num
    have hsum_nonneg : 0 ≤ (11 : ℝ) / 5 * p6 c' := mul_nonneg hconst hp6n

    -- Rewrite `|T|` from `hT_exact`.
    have hT_abs' : |T| = |(c' 13).re / (c' 6).im| * ((11 : ℝ) / 5 * p6 c') := by
      have h' : T = -((c' 13).re / (c' 6).im) * ((11 : ℝ) / 5 * p6 c') := by
        simpa [hsum, mul_assoc] using hT_exact
      have := congrArg abs h'
      -- simplify `abs` of a product, dropping `abs` of the nonnegative factor
      simpa [abs_mul, abs_neg, abs_of_nonneg hsum_nonneg, mul_assoc] using this

    -- `|re/c6.im| = sqrt(p13)/sqrt(p6)` in the gauge.
    have hp13sq : p13 c' = (c' 13).re ^ 2 := by
      simp [p13, p, Complex.normSq_apply, hc13_im, pow_two]
    have hp6sq : p6 c' = (c' 6).im ^ 2 := by
      simp [p6, p, Complex.normSq_apply, hc6_re, pow_two]

    have habs_ratio : |(c' 13).re / (c' 6).im| = Real.sqrt (p13 c') / Real.sqrt (p6 c') := by
      have habs_re : |(c' 13).re| = Real.sqrt (p13 c') := by
        simpa [hp13sq] using (Real.sqrt_sq_eq_abs ((c' 13).re)).symm
      have habs_im : |(c' 6).im| = Real.sqrt (p6 c') := by
        simpa [hp6sq] using (Real.sqrt_sq_eq_abs ((c' 6).im)).symm
      calc
        |(c' 13).re / (c' 6).im| = |(c' 13).re| / |(c' 6).im| := by
          simpa using (abs_div ((c' 13).re) ((c' 6).im))
        _ = Real.sqrt (p13 c') / Real.sqrt (p6 c') := by
          simpa [habs_re, habs_im]

    -- finish by rewriting `p6 / sqrt p6 = sqrt p6`.
    calc
      |T| = (Real.sqrt (p13 c') / Real.sqrt (p6 c')) * ((11 : ℝ) / 5 * p6 c') := by
        simpa [habs_ratio] using hT_abs'
      _ = (11 : ℝ) / 5 * (Real.sqrt (p13 c') / Real.sqrt (p6 c') * p6 c') := by
        ring
      _ = (11 : ℝ) / 5 * (Real.sqrt (p13 c') * Real.sqrt (p6 c')) := by
        -- `a/√p6 * p6 = a * √p6`
        have : (Real.sqrt (p13 c') / Real.sqrt (p6 c')) * p6 c' =
            Real.sqrt (p13 c') * Real.sqrt (p6 c') := by
          -- `(a/b)*c = a*(c/b)` and `c/√c = √c`.
          calc
            (Real.sqrt (p13 c') / Real.sqrt (p6 c')) * p6 c'
                = Real.sqrt (p13 c') * (p6 c' / Real.sqrt (p6 c')) := by
                  simp [div_mul_eq_mul_div, mul_div_assoc]
            _ = Real.sqrt (p13 c') * Real.sqrt (p6 c') := by
                  simp [Real.div_sqrt]
        simpa [this, mul_assoc]
      _ = (11 : ℝ) / 5 * Real.sqrt (p6 c' * p13 c') := by
        -- `√p13 * √p6 = √(p6*p13)`
        have hmul : Real.sqrt (p6 c' * p13 c') = Real.sqrt (p6 c') * Real.sqrt (p13 c') :=
          (Real.sqrt_mul (p_nonneg c' 6) (p13 c'))
        -- use commutativity
        simpa [mul_comm, mul_left_comm, mul_assoc, hmul] 

  -- Lower bound for `|T|` (Step 8).
  have hT_lower : (3 : ℝ) / 16 ≤ |T| := by
    have hp6_ge' : (15 : ℝ) / 176 ≤ p6 c' := p6_ge hc'
    have hp13_ge' : (15 : ℝ) / 176 ≤ p13 c' := p13_ge hc'

    have hmul : ((15 : ℝ) / 176) ^ 2 ≤ p6 c' * p13 c' := by
      -- Multiply the two lower bounds.
      have h0 : (0 : ℝ) ≤ (15 : ℝ) / 176 := by norm_num
      have hp6n : 0 ≤ p6 c' := p_nonneg c' 6
      have hmul' := mul_le_mul hp6_ge' hp13_ge' h0 hp6n
      -- rewrite `(15/176)*(15/176)` as `(15/176)^2`
      simpa [pow_two, mul_assoc, mul_left_comm, mul_comm] using hmul'

    have hsqrt : (15 : ℝ) / 176 ≤ Real.sqrt (p6 c' * p13 c') := by
      have := Real.sqrt_le_sqrt hmul
      have hnonneg : (0 : ℝ) ≤ (15 : ℝ) / 176 := by norm_num
      simpa [Real.sqrt_sq hnonneg] using this

    have hconst : (0 : ℝ) ≤ (11 : ℝ) / 5 := by norm_num
    have hmulconst : (11 : ℝ) / 5 * ((15 : ℝ) / 176) = (3 : ℝ) / 16 := by norm_num
    have h' : (3 : ℝ) / 16 ≤ (11 : ℝ) / 5 * Real.sqrt (p6 c' * p13 c') := by
      have := mul_le_mul_of_nonneg_left hsqrt hconst
      simpa [hmulconst, mul_assoc] using this
    simpa [hT_abs] using h'

  -- Upper bound for `|U|` (Step 9).
  have hU_upper : |U| ≤ (5 : ℝ) / 32 := by
    -- bound each term by `(p_i+p_j)/2`.
    have h0 : |(star (c' 0) * c' 7).im| ≤ (p0 c' + p7 c') / 2 := by
      simpa [p0, p7, p] using abs_im_star_mul_le (c' 0) (c' 7)
    have h1 : |(star (c' 1) * c' 8).im| ≤ (p1 c' + p8 c') / 2 := by
      simpa [p1, p8, p] using abs_im_star_mul_le (c' 1) (c' 8)
    have h2 : |(star (c' 2) * c' 9).im| ≤ (p2 c' + p9 c') / 2 := by
      simpa [p2, p9, p] using abs_im_star_mul_le (c' 2) (c' 9)
    have h3 : |(star (c' 3) * c' 10).im| ≤ (p3 c' + p10 c') / 2 := by
      simpa [p3, p10, p] using abs_im_star_mul_le (c' 3) (c' 10)

    have hp07' : p0 c' + p7 c' = (1 : ℝ) / 16 := pair07 hc'
    have hp18' : p1 c' + p8 c' = (1 : ℝ) / 16 := pair18 hc'
    have hp29' : p2 c' + p9 c' = (1 : ℝ) / 16 := pair29 hc'
    have hp310' : p3 c' + p10 c' = (1 : ℝ) / 8 := pair310 hc'

    have h0' : |(star (c' 0) * c' 7).im| ≤ (1 : ℝ) / 32 := by
      have h0'' : |(star (c' 0) * c' 7).im| ≤ ((1 : ℝ) / 16) / 2 := by
        simpa [hp07'] using h0
      have : ((1 : ℝ) / 16) / 2 = (1 : ℝ) / 32 := by norm_num
      simpa [this.symm] using h0''

    have h1' : |(star (c' 1) * c' 8).im| ≤ (1 : ℝ) / 32 := by
      have h1'' : |(star (c' 1) * c' 8).im| ≤ ((1 : ℝ) / 16) / 2 := by
        simpa [hp18'] using h1
      have : ((1 : ℝ) / 16) / 2 = (1 : ℝ) / 32 := by norm_num
      simpa [this.symm] using h1''

    have h2' : |(star (c' 2) * c' 9).im| ≤ (1 : ℝ) / 32 := by
      have h2'' : |(star (c' 2) * c' 9).im| ≤ ((1 : ℝ) / 16) / 2 := by
        simpa [hp29'] using h2
      have : ((1 : ℝ) / 16) / 2 = (1 : ℝ) / 32 := by norm_num
      simpa [this.symm] using h2''

    have h3' : |(star (c' 3) * c' 10).im| ≤ (1 : ℝ) / 16 := by
      have h3'' : |(star (c' 3) * c' 10).im| ≤ ((1 : ℝ) / 8) / 2 := by
        simpa [hp310'] using h3
      have : ((1 : ℝ) / 8) / 2 = (1 : ℝ) / 16 := by norm_num
      simpa [this.symm] using h3''

    -- triangle inequality
    have htri : |U| ≤
        |(star (c' 0) * c' 7).im| + |(star (c' 1) * c' 8).im| +
          |(star (c' 2) * c' 9).im| + |(star (c' 3) * c' 10).im| := by
      -- Abbreviate the four terms and apply the triangle inequality repeatedly.
      let a0 : ℝ := (star (c' 0) * c' 7).im
      let a1 : ℝ := (star (c' 1) * c' 8).im
      let a2 : ℝ := (star (c' 2) * c' 9).im
      let a3 : ℝ := (star (c' 3) * c' 10).im

      have h01 : |a0 + a1| ≤ |a0| + |a1| := abs_add_le a0 a1

      have h012 : |a0 + a1 + a2| ≤ |a0| + |a1| + |a2| := by
        have h' : |(a0 + a1) + a2| ≤ |a0 + a1| + |a2| := abs_add_le (a0 + a1) a2
        have h'' : |a0 + a1 + a2| ≤ |a0 + a1| + |a2| := by
          simpa [add_assoc] using h'
        linarith [h'', h01]

      have h0123 : |a0 + a1 + a2 + a3| ≤ |a0| + |a1| + |a2| + |a3| := by
        have h' : |(a0 + a1 + a2) + a3| ≤ |a0 + a1 + a2| + |a3| := abs_add_le (a0 + a1 + a2) a3
        have h'' : |a0 + a1 + a2 + a3| ≤ |a0 + a1 + a2| + |a3| := by
          simpa [add_assoc] using h'
        linarith [h'', h012]

      simpa [U, a0, a1, a2, a3, add_assoc] using h0123
    -- Finish by bounding the RHS of the triangle inequality.
    have hsum :
        |(star (c' 0) * c' 7).im| + |(star (c' 1) * c' 8).im| +
          |(star (c' 2) * c' 9).im| + |(star (c' 3) * c' 10).im| ≤ (5 : ℝ) / 32 := by
      linarith [h0', h1', h2', h3']
    exact le_trans htri hsum

  -- Final contradiction: `|T| = |U|` but `|T| ≥ 3/16 > 5/32 ≥ |U|`.
  have : False := by
    have hU_lower : (3 : ℝ) / 16 ≤ |U| := by
      -- rewrite using `|T| = |U|`
      simpa [h_abs_eq] using hT_lower
    nlinarith [hU_lower, hU_upper]

  exact this

end System

/-- There is no `c : Fin 14 → ℂ` satisfying `System c`. -/
theorem no_solution : ¬ ∃ c : Fin 14 → ℂ, System c :=
  System.no_solution

/-- Package `v : Fin 28 → ℝ` into `c : Fin 14 → ℂ` by pairing consecutive coordinates:
`c k = v(2k) + i·v(2k+1)`.

This is useful when stating the no-go as a purely real (28-variable) quadratic system,
as in \ref{subsec:lean-nogo-19eq} of `BD16_distance3.tex`.
-/
def cFromV (v : Fin 28 → ℝ) : Fin 14 → ℂ :=
  fun k =>
    ⟨v ⟨2 * k.val, by
        fin_cases k <;> decide⟩,
      v ⟨2 * k.val + 1, by
        fin_cases k <;> decide⟩⟩

/-- No real solution to the 28-real-variable packaging of the 19-equation system.

(This is an immediate corollary of `no_solution`.) -/
theorem no_solution_real : ¬ ∃ v : Fin 28 → ℝ, System (cFromV v) := by
  rintro ⟨v, hv⟩
  exact no_solution ⟨cFromV v, hv⟩

end

end Examples.D3.NoGo.BD16_0112335
