import Lake
open Lake DSL

package ss where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4"

@[default_target]
lean_lib SS where

lean_lib Examples where

/-- Full distance-2 catalogue, packed into a single theorem.
    `lake build Catalogue` compiles the 29 packed chunks (each certifying 500
    codes via one `chunk_all_ok`) and the umbrella `catalogue_all_ok`, which
    entails that all 14,116 deduplicated distance-2 codes satisfy `ExampleData.OK`.
    Not a default target (≈5 min); build it explicitly. -/
lean_lib Catalogue where
  srcDir := "."
  roots := #[`search.distance2_catalogue.lean_certification.packed.AllOk]
  globs := #[.submodules `search.distance2_catalogue.lean_certification.packed]
