import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk000
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk001
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk002
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk003
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk004
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk005
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk006
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk007
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk008
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk009
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk010
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk011
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk012
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk013
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk014
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk015
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk016
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk017
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk018
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk019
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk020
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk021
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk022
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk023
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk024
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk025
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk026
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk027
import search.distance2_catalogue.lean_certification.packed.Chunks.Chunk028

namespace Catalogue

/-- The entire distance-2 catalogue is certified: every chunk's `chunk_all_ok` holds,
    hence all 14116 codes satisfy `ExampleData.OK`. -/
theorem catalogue_all_ok :
    Catalogue.Chunk000.checks.all id = true ∧
    Catalogue.Chunk001.checks.all id = true ∧
    Catalogue.Chunk002.checks.all id = true ∧
    Catalogue.Chunk003.checks.all id = true ∧
    Catalogue.Chunk004.checks.all id = true ∧
    Catalogue.Chunk005.checks.all id = true ∧
    Catalogue.Chunk006.checks.all id = true ∧
    Catalogue.Chunk007.checks.all id = true ∧
    Catalogue.Chunk008.checks.all id = true ∧
    Catalogue.Chunk009.checks.all id = true ∧
    Catalogue.Chunk010.checks.all id = true ∧
    Catalogue.Chunk011.checks.all id = true ∧
    Catalogue.Chunk012.checks.all id = true ∧
    Catalogue.Chunk013.checks.all id = true ∧
    Catalogue.Chunk014.checks.all id = true ∧
    Catalogue.Chunk015.checks.all id = true ∧
    Catalogue.Chunk016.checks.all id = true ∧
    Catalogue.Chunk017.checks.all id = true ∧
    Catalogue.Chunk018.checks.all id = true ∧
    Catalogue.Chunk019.checks.all id = true ∧
    Catalogue.Chunk020.checks.all id = true ∧
    Catalogue.Chunk021.checks.all id = true ∧
    Catalogue.Chunk022.checks.all id = true ∧
    Catalogue.Chunk023.checks.all id = true ∧
    Catalogue.Chunk024.checks.all id = true ∧
    Catalogue.Chunk025.checks.all id = true ∧
    Catalogue.Chunk026.checks.all id = true ∧
    Catalogue.Chunk027.checks.all id = true ∧
    Catalogue.Chunk028.checks.all id = true :=
  ⟨Catalogue.Chunk000.chunk_all_ok, Catalogue.Chunk001.chunk_all_ok, Catalogue.Chunk002.chunk_all_ok, Catalogue.Chunk003.chunk_all_ok, Catalogue.Chunk004.chunk_all_ok, Catalogue.Chunk005.chunk_all_ok, Catalogue.Chunk006.chunk_all_ok, Catalogue.Chunk007.chunk_all_ok, Catalogue.Chunk008.chunk_all_ok, Catalogue.Chunk009.chunk_all_ok, Catalogue.Chunk010.chunk_all_ok, Catalogue.Chunk011.chunk_all_ok, Catalogue.Chunk012.chunk_all_ok, Catalogue.Chunk013.chunk_all_ok, Catalogue.Chunk014.chunk_all_ok, Catalogue.Chunk015.chunk_all_ok, Catalogue.Chunk016.chunk_all_ok, Catalogue.Chunk017.chunk_all_ok, Catalogue.Chunk018.chunk_all_ok, Catalogue.Chunk019.chunk_all_ok, Catalogue.Chunk020.chunk_all_ok, Catalogue.Chunk021.chunk_all_ok, Catalogue.Chunk022.chunk_all_ok, Catalogue.Chunk023.chunk_all_ok, Catalogue.Chunk024.chunk_all_ok, Catalogue.Chunk025.chunk_all_ok, Catalogue.Chunk026.chunk_all_ok, Catalogue.Chunk027.chunk_all_ok, Catalogue.Chunk028.chunk_all_ok⟩

end Catalogue
