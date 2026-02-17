# Distance-2/3 Presentation Outline — Reference for Presenter Agent

## Talk Overview
- **Title**: Formal Verification of Quantum Codes with Transversal Diagonal Gates in Lean 4
- **Context**: Seminar-style talk (~40 slides) about OUR Lean 4 formalization work
- **Our repo**: lean-qec (Lean 4 project)
- **Background papers**: 
  - Zhang+Zeng et al. (arXiv:2504.20847) — proposed the SSLP framework
  - Our paper (arXiv:2510.20728, "CDQC") — distance-2 catalogue using SSLP

## Key Math Content to Present

### 1. Quantum Error Correction Setup
- Code parameters ((n,K,d)): n physical qubits, K-dim codespace, distance d
- Knill-Laflamme conditions for distance d: ⟨j_L|E†E'|j'_L⟩ = λ_{E,E'} δ_{jj'}
- For distance 2: detect all single-qubit Pauli errors

### 2. Transversal Diagonal Gates
- Physical gate: U(w,m) = ⊗ᵢ diag(1, e^{2πi wᵢ/m})
- Angle vector: a = (a₁,...,aₙ) ∈ (ℤ_m)^n
- Logical action: U|j_L⟩ = ω_m^{Sⱼ} |j_L⟩ when supp(|j_L⟩) ⊆ C_{Sⱼ}

### 3. SSLP Pipeline (from Zhang+Zeng 2504.20847)
- **Step 1 (Subset-Sum)**: Support of |j_L⟩ in residue class C_{Sⱼ} = {x : ⟨a,x⟩ ≡ Sⱼ mod m}
- **Step 2 (LP)**: Z-type KL → linear constraints on probabilities p_{j,x} = |c_{j,x}|²
- **Step 3 (Full KL)**: Solve remaining X/Y constraints (nonlinear)

### 4. Residue-Shift Screen (key innovation in our paper)
- S_j - S_k ≢ ±wᵢ (mod m) ∀i, j≠k → union distance ≥ 2
- Kills ALL X/Y-type KL constraints for distance 2
- Makes distance-2 verification purely combinatorial + LP

### 5. Our Results (CDQC paper)
- 14,116 certified distance-2 codes for K∈{2,3,4}, n≤6
- Analytical families (Family I with explicit closed-form probabilities)
- ((6,4,2)) residue-degenerate controlled-phase code

### 6. What We Formalized in Lean 4
The Lean 4 codebase (lean-qec) formalizes:
- **SS condition**: DiagonalAction.Dact_eq_global_of_SS — proves support in residue class ⇒ eigenstate
- **Residue-shift screen**: ResidueShiftScreen, no_hamming1_neighbor_of_screen
- **Z-type KL**: ZTypeKL, ZTypeKL_iff_exists_target  
- **Family I verification**: FamilyI.familyI_OK — full proof for the closed-form family
- **Lambda families**: FamilyA through FamilyE with ex_ok theorems
- **Concrete examples**: ((5,2,2)) and ((6,2,2)) verified by native_decide
- **Distance-3 extension** (recent): 
  - Pauli.lean, FullKL.lean, Distance3Verify.lean, QSqrt23i.lean, FullKLEval.lean
  - First ((7,2,3)) BD16 code fully verified (all weight-≤-2 KL constraints)

### 7. Key Lean Techniques
- BitString n := Fin n → Bool (finite, enumerable)
- Decidable instances for all verification predicates
- native_decide for one-line proofs
- ExampleData.OK bundles all checks (SS + screen + normalization + Z-KL)
- QSqrt235i: exact arithmetic in ℚ(√2,√3,√5,i) for distance-3

### 8. Codebase Stats
- ~4254 lines across ~30 Lean files
- 17 modules in SS/ directory
- Full lake build: 3090 jobs, 0 errors, 0 warnings

## Suggested Slide Structure (20 slides)

1. Title slide
2. Motivation: why transversal gates matter for fault tolerance
3. Background: ((n,K,d)) codes, KL conditions
4. Transversal diagonal gates and the eigenstate condition
5. SSLP Pipeline overview (3 steps)
6. Step 1: Subset-sum support partition
7. Step 2: Z-type KL as LP
8. Residue-shift screen (our key tool for distance 2)
9. BD symmetry and complementary convention
10. Our catalogue: 14,116 distance-2 codes
11. Analytical families (Family I)
12. Worked example: ((5,2,2)) code step by step
13. Why formalize? Motivation for Lean verification
14. Lean architecture: modules and data flow
15. Key formalization: SS condition theorem
16. Key formalization: Residue-shift screen theorem  
17. Key formalization: Z-KL and concrete verification
18. Extension to distance 3: new modules
19. Distance-3 example: BD16 ((7,2,3)) code
20. Summary and future directions

## Important Notes for Presenter
- This is about OUR work — we are the authors of the Lean formalization and the CDQC paper
- Zhang+Zeng (2504.20847) is CITED background work that proposed SSLP
- The talk should emphasize the formalization contribution, not just the math
- Use standard Beamer with a clean theme
- Include key equations but keep slides readable
