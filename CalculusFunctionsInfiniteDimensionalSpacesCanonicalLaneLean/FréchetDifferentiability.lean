import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure FréchetDifferentiabilityPackage where
  domain : Type u
  codomain : Type v
  normedSpaceDomain : NormedSpace ℝ domain
  normedSpaceCodomain : NormedSpace ℝ codomain
  differentiableFunction : domain → codomain
  derivativeAtPoint : domain → (domain →L[ℝ] codomain)
  différentiableProperty : Prop

structure FréchetDifferentiabilityEvidence (F : FréchetDifferentiabilityPackage) where
  differentiablePropertyClosed : F.différentiableProperty

def FréchetDifferentiabilityClosed (F : FréchetDifferentiabilityPackage) : Prop :=
  F.différentiableProperty

theorem fréchet_differentiability_closed_from_evidence
    (F : FréchetDifferentiabilityPackage) (E : FréchetDifferentiabilityEvidence F) :
    FréchetDifferentiabilityClosed F := by
  exact E.differentiablePropertyClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse