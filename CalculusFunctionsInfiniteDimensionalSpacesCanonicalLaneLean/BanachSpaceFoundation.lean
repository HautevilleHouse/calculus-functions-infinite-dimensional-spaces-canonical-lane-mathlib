import canonicalLaneMathlib.AdmissibleClass

/-!
# Banach Space Foundation Package
-/

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure BanachSpacePackage where
  spaceType : Type u
  norm : spaceType → ℝ
  normedAddCommGroup : NormedAddCommGroup spaceType
  complete : CompleteSpace spaceType
  dualSpace : Type v
  dualNormed : NormedAddCommGroup dualSpace
  hahnBanach : Prop
  openMappingTheorem : Prop

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  hahnBanachClosed : B.hahnBanach
  openMappingTheoremClosed : B.openMappingTheorem

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.hahnBanach ∧ B.openMappingTheorem

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.hahnBanachClosed E.openMappingTheoremClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse