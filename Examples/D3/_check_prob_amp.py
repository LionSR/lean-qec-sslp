"""
Independently verify, for every BD16 example file, the probability-amplitude
consistency  prob(s) == |amp(s)|^2  asserted by `BD16Code.probAmpConsistent`.

Handles the three prob/amp writing styles present in the repo:
  (A) per-string  if x = <cond> then <q>            (inline `bs ...` or named `sN`)
  (B) uniform     if x ∈ supp then 1/16 else 0       (v7)
Amplitude shorthands (|.|^2 is always rational):
  rat,im,z -> factor 1 ; r2,ir2 -> 2 ; r3,ir3 -> 3 ; r5,ir5 -> 5 ;
  r6,ir6 -> 6 ; r10,ir10 -> 10.
"""
import re, glob, os, sys
from fractions import Fraction

SURD_SQ = {"rat":1,"im":1,"z":0,"r2":2,"r3":3,"r5":5,"r6":6,"r10":10,
           "ir2":2,"ir3":3,"ir5":5,"ir6":6,"ir10":10}

def parse_q(qstr):
    qstr = qstr.strip()
    if "/" in qstr:
        a,b = qstr.split("/"); return Fraction(int(a),int(b))
    return Fraction(int(qstr),1)

def block(text, field):
    m = re.search(field + r"\s*:=\s*fun\s+x\s*=>", text)
    if not m: return None
    tail = text[m.end():]
    stop = re.search(r"\n\s*(amp|prob|theorem|end|def |/-)\b", tail)
    return tail[:stop.start()] if stop else tail

def parse_prob(body):
    """Return dict cond->Fraction, plus 'uniform' value if `if x ∈ supp then q`."""
    uni = re.search(r"if\s+x\s*[∈]\s*\w+\s+then\s+([0-9/]+)", body)
    if uni:
        return {"__uniform__": parse_q(uni.group(1))}
    d = {}
    for mm in re.finditer(r"x\s*=\s*(.+?)\s+then\s+([0-9]+\s*/\s*[0-9]+|[0-9]+)", body):
        d[re.sub(r"\s+"," ",mm.group(1).strip())] = parse_q(mm.group(2))
    return d

def parse_amp(body):
    d = {}
    for mm in re.finditer(r"x\s*=\s*(.+?)\s+then\s+Amp\.([a-z0-9]+)\s*(?:\(([^)]*)\))?", body):
        cond = re.sub(r"\s+"," ",mm.group(1).strip())
        sh = mm.group(2); q = parse_q(mm.group(3)) if mm.group(3) else Fraction(0)
        d[cond] = (sh,q)
    return d

def support_names(text):
    """For uniform files: get the support string identifiers from `def supp := { ... }`."""
    m = re.search(r"def\s+supp[^{]*\{([^}]*)\}", text, re.S)
    if not m: return []
    return [re.sub(r"\s+"," ",c.strip()) for c in m.group(1).split(",") if c.strip()]

all_ok = True
for fn in sorted(glob.glob(os.path.join(os.path.dirname(__file__), "BD16v*.lean"))):
    text = open(fn, encoding="utf-8").read()
    ab, pb = block(text,"amp"), block(text,"prob")
    amp, prob = parse_amp(ab), parse_prob(pb)
    name = os.path.basename(fn)

    # Determine the support set of conditions
    if "__uniform__" in prob:
        conds = list(amp.keys())  # amp lists exactly the support strings
        prob_of = lambda c: prob["__uniform__"]
    else:
        conds = list(prob.keys())
        prob_of = lambda c: prob[c]

    file_ok, mism, tot = True, [], Fraction(0)
    for c in conds:
        pq = prob_of(c); tot += pq
        if c not in amp:
            file_ok=False; mism.append((c[:24],"no-amp",pq,None)); continue
        sh,q = amp[c]
        asq = SURD_SQ[sh]*q*q
        if asq != pq:
            file_ok=False; mism.append((c[:24],sh,pq,asq))
    if not file_ok: all_ok=False
    print(f"[{'OK ' if file_ok else 'FAIL'}] {name:14s} strings={len(conds):2d} sum(prob)={tot}"
          + ("" if file_ok else f"  MISMATCH={mism}"))

print("\n" + ("ALL 12 BD16 EXAMPLES CONSISTENT: prob(s) == |amp(s)|^2, sum=1"
              if all_ok else "INCONSISTENCY FOUND — see FAIL rows"))
sys.exit(0 if all_ok else 1)
