import Examples.D3.NoGo.BD16_0112335_Equations
import Examples.D3.NoGo.BD16_0112335_FromKL

/-!
# BD16 no-go: `a = (0,1,1,2,3,3,5)` (mod 8)

This file glues the two parts of the §17.6 no-go from `BD16_distance3.tex`:

1. `KLSubsys.toSystem`: a small explicit KL subsystem on the SS support `S0`
   implies the 19 explicit quadratic equations (E1)–(E19).
2. `System.no_solution` (exported as `no_solution`): the 19 equations have no solution.

Hence the KL subsystem (and therefore any full distance-3 KL system, which implies this subsystem)
has no solution under the complementary SS ansatz.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_0112335

/-- No solution to the selected KL subsystem (TeX §17.6). -/
theorem no_KLSubsys : ¬ ∃ c : Fin 14 → ℂ, KLSubsys c := by
  rintro ⟨c, hc⟩
  have hsys : System c := KLSubsys.toSystem (c := c) hc
  exact no_solution ⟨c, hsys⟩

end Examples.D3.NoGo.BD16_0112335
