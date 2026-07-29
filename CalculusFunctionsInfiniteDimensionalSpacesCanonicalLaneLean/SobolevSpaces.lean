import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure SobolevEmbeddingPackage where
  domainDimension : Nat
  sobolevExponent : ℝ
  targetSpace : Type u
  embeddingExists : Prop
  compactness : Prop

def SobolevEmbeddingClosed (P : SobolevEmbeddingPackage) : Prop :=
  P.embeddingExists ∧ P.compactness

structure SobolevEmbeddingEvidence (P : SobolevEmbeddingPackage) where
  embeddingExistsClosed : P.embeddingExists
  compactnessClosed : P.compactness

theorem sobolev_embedding_closed_from_evidence
    (P : SobolevEmbeddingPackage) (E : SobolevEmbeddingEvidence P) :
    SobolevEmbeddingClosed P := by
  exact And.intro E.embeddingExistsClosed E.compactnessClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse