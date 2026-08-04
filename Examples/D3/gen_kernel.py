"""Generate a kernel-only certificate module for a BD16 distance-3 code.

The Lean kernel cannot reduce `Rat`, so every check is mirrored over the
integers: amplitudes are scaled by D, probabilities by D^2.  The rational
statements follow from the integer ones by the transport lemmas in
`SS/ZFullKLEval.lean`.
"""
import io, re, sys
from fractions import Fraction

SLOT = {  # constructor -> (which QSqrt23i half, component index)
    "rat": (0, 0), "r2": (0, 1), "r3": (0, 2), "r6": (0, 3),
    "im": (0, 4), "ir2": (0, 5), "ir3": (0, 6), "ir6": (0, 7),
    "r5": (1, 0), "r10": (1, 1), "ir5": (1, 4), "ir10": (1, 5),
}

def zlit(half, idx, k):
    u = ["0"] * 8; v = ["0"] * 8
    (u if half == 0 else v)[idx] = str(k)
    return "⟨⟨%s⟩, ⟨%s⟩⟩" % (", ".join(u), ", ".join(v))

def parse_chain(text, field):
    """Return (list of (cond, value_expr), default) for `field := fun x => ...`."""
    i = text.find("  %s := fun x =>" % field)
    j = text.find("\n  amp :=" if field == "prob" else "\n\n", i)
    body = text[i:j]
    body = re.sub(r"--[^\n]*", "", body)                 # strip comments
    parts = re.findall(r"if (x = [^\n]*?) then ([^\n]*?)(?=\s*\n\s*else|\s*$)", body)
    dflt = re.search(r"else\s+([^\n]+?)\s*$", body.strip())
    def qual(c):
        return re.sub("= (s[0-9]+)" + chr(92) + "b",
                      lambda m: "= " + NAME + "." + m.group(1), c.strip())
    return [(qual(c), v.strip()) for c, v in parts], dflt.group(1).strip()

name = sys.argv[1]
NAME = name
src = io.open("Examples/D3/%s.lean" % name, encoding="utf-8").read()
amp_chain, amp_dflt = parse_chain(src, "amp")
prob_chain, prob_dflt = parse_chain(src, "prob")

# scale factors
def val(expr):
    m = re.match(r"Amp\.(\w+) \((-?\d+)/(\d+)\)", expr) or re.match(r"Amp\.(\w+) \((-?\d+)\)", expr)
    if not m: return None
    g = m.groups()
    return g[0], Fraction(int(g[1]), int(g[2]) if len(g) > 2 else 1)
amps = [val(v) for _, v in amp_chain]
assert all(amps), [v for _, v in amp_chain if val(v) is None]
D = 1
for _, q in amps: D = D * q.denominator // __import__("math").gcd(D, q.denominator)
probs = [Fraction(v) if "/" not in v else Fraction(*map(int, v.split("/"))) for _, v in prob_chain]
D2 = D * D
for p in probs: assert (p * D2).denominator == 1, (p, D2)
for _, q in amps: assert (q * D).denominator == 1, (q, D)

SUPP = "%s.code.supp" % name
L = []; A = L.append
A("import Examples.D3.%s" % name)
A("import SS.ZFullKLEval")
A("")
A("/-!")
A("# %s certified with the kernel as the only trusted base" % name)
A("")
A("Amplitudes lie in `(1/%d) · ℤ[√2,√3,√5,i]` and probabilities in `(1/%d) · ℤ`," % (D, D2))
A("so every check is decided by the kernel over the integers and transported by")
A("the lemmas of `SS/ZFullKLEval.lean`.  No `native_decide`.")
A("-/")
A("")
A("namespace %sKernel" % name)
A("")
A("open SS SS.Verify SS.BD16")
A("")
A("set_option maxRecDepth 4000000")
A("set_option maxHeartbeats 2000000")
A("")
A("namespace AmpZ")
for c in sorted({a[0] for a in amps} | {"rat"}):
    h, i2 = SLOT[c]
    A("def %s (k : Int) : SS.ZSqrt235i := %s" % (c, zlit(h, i2, "k")))
A("end AmpZ")
A("")
A("/-- Integer mirror of the amplitudes (scaled by %d). -/" % D)
A("def ampZ : SS.BitString 7 → SS.ZSqrt235i := fun x =>")
for n, ((cond, v), (c, q)) in enumerate(zip(amp_chain, amps)):
    A("  %s%s then AmpZ.%s (%d)" % ("if " if n == 0 else "else if ", cond, c, q * D))
A("  else SS.ZSqrt235i.zero")
A("")
A("/-- Integer mirror of the probabilities (scaled by %d). -/" % D2)
A("def probZ : SS.BitString 7 → Int := fun x =>")
for n, ((cond, _), p) in enumerate(zip(prob_chain, probs)):
    A("  %s%s then (%d)" % ("if " if n == 0 else "else if ", cond, p * D2))
A("  else 0")
A("")
A("/-- The scaling map back to the declared amplitudes. -/")
A("def scaleD (z : SS.ZSqrt235i) : QSqrt235i := QSqrt235i.smul (1/%d) (SS.ZSqrt235i.toQ z)" % D)
A("")
SIMP = ("scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,\n"
        "    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,\n"
        "    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero")
seen = set()
for c, q in amps:
    if (c, q) in seen: continue
    seen.add((c, q))
    k = q * D
    lit = ("%d" % k) if k >= 0 else "(%d)" % k
    qs = ("%d/%d" % (q.numerator, q.denominator)) if q.denominator != 1 else "%d" % q.numerator
    A("@[simp] lemma sc_%s_%s : scaleD (AmpZ.%s %s) = Amp.%s (%s) := by"
      % (c, str(k).replace("-", "neg"), c, lit, c, qs))
    A("  simp [AmpZ.%s, Amp.%s, %s]" % (c, c, SIMP))
    A("  all_goals norm_num")
    A("")
A("@[simp] lemma sc_zero : scaleD SS.ZSqrt235i.zero = Amp.z := by")
A("  simp only [scaleD, Amp.z, QSqrt235i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,")
A("    SS.ZSqrt235i.zero, SS.ZSqrt23i.zero, Int.cast_zero, QSqrt23i.smul_def,")
A("    QSqrt23i.smul, mul_zero]")
A("  rfl")
A("")
A("lemma amp_eq : %s.code.amp = fun s => scaleD (ampZ s) := by" % name)
A("  funext s")
A("  show %s.code.amp s = scaleD (ampZ s)" % name)
A("  unfold %s.code ampZ" % name)
A("  simp only [apply_ite scaleD, %s]"
  % ", ".join(sorted({"sc_%s_%s" % (c, str(q * D).replace("-", "neg")) for c, q in amps}) + ["sc_zero"]))
A("")
A("/-- Rescaling of the integer probabilities. -/")
A("def probQ (k : Int) : ℚ := (k : ℚ) / %d" % D2)
A("")
pseen = []
for p in probs:
    k = int(p * D2)
    if k in pseen: continue
    pseen.append(k)
    qs = ("%d/%d" % (p.numerator, p.denominator)) if p.denominator != 1 else "%d" % p.numerator
    A("@[simp] lemma pq_%s : probQ (%s) = %s := by norm_num [probQ]"
      % (str(k).replace("-", "neg"), k, qs))
A("@[simp] lemma pq_zero : probQ 0 = 0 := by norm_num [probQ]")
A("")
A("lemma prob_eq : %s.code.prob = fun s => probQ (probZ s) := by" % name)
A("  funext s")
A("  show %s.code.prob s = probQ (probZ s)" % name)
A("  unfold %s.code probZ" % name)
A("  simp only [apply_ite probQ, %s]"
  % ", ".join(["pq_%s" % str(k).replace("-", "neg") for k in pseen] + ["pq_zero"]))
A("")
A("/-! ## Integer facts, decided by the kernel -/")
A("")
A("theorem probZ_off : ∀ x, x ∉ %s → probZ x = 0 := by decide" % SUPP)
A("theorem probZ_nonneg : ∀ x ∈ %s, 0 ≤ probZ x := by decide" % SUPP)
A("theorem probZ_sum : (∑ x ∈ %s, probZ x) = %d := by decide" % (SUPP, D2))
A("theorem zbal_int : ∀ i : Fin 7,")
A("    (∑ x ∈ %s, probZ x * (if x i = true then -1 else 1)) = 0 := by decide" % SUPP)
A("theorem probamp_int : ∀ s ∈ %s," % SUPP)
A("    SS.ZSqrt235i.mul (SS.ZSqrt235i.conj (ampZ s)) (ampZ s) = AmpZ.rat (probZ s) := by")
A("  decide")
A("theorem ampZ_off : ∀ s, s ∉ %s → ampZ s = SS.ZSqrt235i.zero := by decide" % SUPP)
A("theorem allKLZ : SS.allKLSatisfiedZ %s ampZ 2 = true := by decide" % SUPP)
A("")
A("")
A("/-! ## The rational statements -/")
A("")
A("/-- **Layer 1, certified without `native_decide`.** -/")
A("theorem layer1_kernel : %s.code.layer1OK := by" % name)
A("  simp only [BD16Code.layer1OK, Distance3Data.Layer1OK, BD16Code.toD3Data, prob_eq]")
A("  refine ⟨by decide, ?_, ⟨?_, ?_, ?_⟩, ?_⟩")
A("  · simp [BDAngleCondition, %s.code]; decide" % name)
A("  · intro x hx; simp [probZ_off x hx]")
A("  · intro x hx")
A("    have h := probZ_nonneg x hx")
A("    simp only [probQ]")
A("    exact div_nonneg (by exact_mod_cast h) (by norm_num)")
A("  · simp only [probQ, ← Finset.sum_div]")
A("    rw [show (∑ x ∈ %s, ((probZ x : ℚ))) = ((%d : Int) : ℚ) by" % (SUPP, D2))
A("      rw [← probZ_sum]; push_cast; ring]")
A("    norm_num")
A("  · intro i")
A("    simp only [zExpectation, zSign, probQ]")
A("    have h : ∀ x ∈ %s, ((probZ x : ℚ)) / %d * (((if x i = true then (-1 : Int) else 1) : Int) : ℚ)" % (SUPP, D2))
A("        = ((((probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)) / %d := by" % D2)
A("      intro x _; push_cast; ring")
A("    rw [Finset.sum_congr rfl h, ← Finset.sum_div]")
A("    rw [show (∑ x ∈ %s, ((((probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)))" % SUPP)
A("        = ((((∑ x ∈ %s, probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)) by" % SUPP)
A("      push_cast; ring, zbal_int i]")
A("    norm_num")
A("")
A("/-- **Probability-amplitude consistency, certified without `native_decide`.** -/")
A("theorem probamp_kernel : %s.code.probAmpConsistent := by" % name)
A("  intro s hs")
A("  have hz := probamp_int s hs")
A("  rw [amp_eq, prob_eq]")
A("  simp only [scaleD, QSqrt235i.conj_smul, QSqrt235i.mul_smul_smul,")
A("    ← SS.ZSqrt235i.toQ_conj, ← SS.ZSqrt235i.toQ_mul, hz]")
A("  simp [AmpZ.rat, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero, QSqrt235i.smul,")
A("    QSqrt23i.smul, QSqrt235i.ofRat, QSqrt23i.ofRat, probQ,")
A("    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]")
A("  ring")
A("")
A("/-- **Layer 2, certified without `native_decide`.** -/")
A("theorem layer2_kernel : %s.code.layer2OK 2 := by" % name)
A("  have h := SS.allKLSatisfied_of_Z_smul %s ampZ 2 (q := 1/%d) (by norm_num) allKLZ" % (SUPP, D))
A("  rw [BD16Code.layer2OK, amp_eq]")
A("  exact h")
A("")
A("/-- **The full distance-3 certificate.** -/")
A("theorem isDistance3_kernel : %s.code.isDistance3 :=" % name)
A("  ⟨probamp_kernel, layer1_kernel, layer2_kernel⟩")
A("")
A("theorem amp_vanish_kernel :")
A("    ∀ s, s ∉ %s.code.supp → %s.code.amp s = SS.QSqrt235i.zero := by" % (name, name))
A("  intro s hs")
A("  rw [amp_eq]")
A("  simp [ampZ_off s hs, Amp.z]")
A("  rfl")
A("")
A("/-- **Quantum statement, with the kernel as the only trusted base.** -/")
A("theorem qec_kernel (P : SS.PauliString 7) (hw : P.wt ≤ 2) :")
A("    SS.innerC (SS.BD16.state0 %s.code) (SS.pauliAct P (SS.BD16.state1 %s.code)) = 0" % (name, name))
A("      ∧ SS.innerC (SS.BD16.state1 %s.code) (SS.pauliAct P (SS.BD16.state1 %s.code))" % (name, name))
A("          = SS.innerC (SS.BD16.state0 %s.code) (SS.pauliAct P (SS.BD16.state0 %s.code)) :=" % (name, name))
A("  SS.BD16.detects_weight2 %s.code isDistance3_kernel amp_vanish_kernel P hw" % name)
A("")
A("end %sKernel" % name)
io.open("Examples/D3/%sKernel.lean" % name, "w", encoding="utf-8", newline="\n").write("\n".join(L) + "\n")
print("%s: D=%d, D^2=%d, 支撑 %d, 常量引理 %d 条" % (name, D, D2, len(amp_chain), len(seen)))
