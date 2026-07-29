import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure BanachSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  normedAddCommGroupClosed : B.normedAddCommGroup
  completeClosed : B.complete

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.normedAddCommGroup ∧ B.complete

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.normedAddCommGroupClosed E.completeClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse