import Examples.D3.BD16v1Kernel
import Examples.D3.BD16v2Kernel
import Examples.D3.BD16v3aKernel
import Examples.D3.BD16v3bKernel
import Examples.D3.BD16v3cKernel
import Examples.D3.BD16v4Kernel
import Examples.D3.BD16v5Kernel
import Examples.D3.BD16v6aKernel
import Examples.D3.BD16v7Kernel
import Examples.D3.BD16v8Kernel
import Examples.D3.BD16v9Kernel
import Examples.D3.BD16v10Kernel
import Examples.D2.Ex642ControlledPhase
import Examples.D3.NoGo.BD16_1112226_FromKL
import Examples.D3.NoGo.BD16_0112335
import SS.FamilyI.Main
import SS.FamilyII

/-!
# Axiom audit for the kernel-only certificates outside the distance-2 catalogue

The catalogue's own audit lives in
`search/distance2_catalogue/lean_certification/pure/axioms/`, one report per
chunk.  This file covers the results that are *not* catalogue records: the twelve
distance-3 constructions, the residue-degenerate `((6,4,2))` controlled-phase
code, and the two distance-3 no-go theorems.

A clean report reads

    depends on axioms: [propext, Classical.choice, Quot.sound]

Anything containing `Lean.ofReduceBool` or `Lean.trustCompiler` would mean the
statement was closed by `native_decide` somewhere in its dependency chain, and so
by the Lean compiler rather than by the kernel.  Checking that the audit is clean
is therefore one grep:

    grep -c 'ofReduceBool\|trustCompiler' Examples/AxiomAudit.txt   # 0

The archived output is `Examples/AxiomAudit.txt`.  To regenerate it from a fresh
clone, run from the repository root:

    lake env lean Examples/AxiomAudit.lean > Examples/AxiomAudit.txt
-/

-- Distance-3: the twelve constructions, certified in the kernel alone.
#print axioms BD16v1Kernel.qec_kernel
#print axioms BD16v2Kernel.qec_kernel
#print axioms BD16v3aKernel.qec_kernel
#print axioms BD16v3bKernel.qec_kernel
#print axioms BD16v3cKernel.qec_kernel
#print axioms BD16v4Kernel.qec_kernel
#print axioms BD16v5Kernel.qec_kernel
#print axioms BD16v6aKernel.qec_kernel
#print axioms BD16v7Kernel.qec_kernel
#print axioms BD16v8Kernel.qec_kernel
#print axioms BD16v9Kernel.qec_kernel
#print axioms BD16v10Kernel.qec_kernel

-- The same twelve, at the level of the packaged distance-3 statement.
#print axioms BD16v1Kernel.isDistance3_kernel
#print axioms BD16v2Kernel.isDistance3_kernel
#print axioms BD16v3aKernel.isDistance3_kernel
#print axioms BD16v3bKernel.isDistance3_kernel
#print axioms BD16v3cKernel.isDistance3_kernel
#print axioms BD16v4Kernel.isDistance3_kernel
#print axioms BD16v5Kernel.isDistance3_kernel
#print axioms BD16v6aKernel.isDistance3_kernel
#print axioms BD16v7Kernel.isDistance3_kernel
#print axioms BD16v8Kernel.isDistance3_kernel
#print axioms BD16v9Kernel.isDistance3_kernel
#print axioms BD16v10Kernel.isDistance3_kernel

-- The residue-degenerate ((6,4,2)) controlled-phase code.
#print axioms Ex642ControlledPhase.hasDistance_kernel
#print axioms Ex642ControlledPhase.detects_kernel
#print axioms Ex642ControlledPhase.normalized

-- The two distance-3 no-go theorems, stated at the Knill-Laflamme level.
#print axioms Examples.D3.NoGo.BD16_1112226.no_KL_state
#print axioms Examples.D3.NoGo.BD16_0112335.no_KL_state

-- The two analytical families, as theorems quantified over admissible parameters.
#print axioms SS.FamilyI.familyI_OK
#print axioms SS.FamilyII.detects
