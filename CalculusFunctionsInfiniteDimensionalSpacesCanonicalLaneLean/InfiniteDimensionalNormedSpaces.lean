import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure InfiniteDimensionalNormedPackage where
  space : Type u
  norm : space → ℝ
  innerProduct : Type v
  completeness : Prop
  infiniteDimensional : Prop
  normedSpaceProperties : Prop
  infiniteDimensionalTerm : infiniteDimensional
  normedSpacePropertiesTerm : normedSpaceProperties

structure InfiniteDimensionalNormedEvidence (N : InfiniteDimensionalNormedPackage) where
  infiniteDimensionalClosed : N.infiniteDimensional
  normedSpacePropertiesClosed : N.normedSpaceProperties

def InfiniteDimensionalNormedClosed (N : InfiniteDimensionalNormedPackage) : Prop :=
  N.infiniteDimensional ∧ N.normedSpaceProperties

theorem infinite_dimensional_normed_closed_from_evidence
    (N : InfiniteDimensionalNormedPackage) (E : InfiniteDimensionalNormedEvidence N) :
    InfiniteDimensionalNormedClosed N := by
  exact And.intro E.infiniteDimensionalClosed E.normedSpacePropertiesClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse