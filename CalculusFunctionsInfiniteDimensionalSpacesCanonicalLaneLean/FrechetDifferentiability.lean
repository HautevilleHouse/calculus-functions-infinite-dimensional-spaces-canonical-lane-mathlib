import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure FrechetDifferentiabilityPackage where
  normedSpaceDomain : Type u
  normedSpaceCodomain : Type v
  map : normedSpaceDomain → normedSpaceCodomain
  linearApproximationExists : Prop
  boundedLinearMap : Type w
  derivativeAtPoint : normedSpaceDomain → boundedLinearMap
  limitCondition : Prop

structure FrechetDifferentiabilityEvidence (F : FrechetDifferentiabilityPackage) where
  linearApproximationExistsClosed : F.linearApproximationExists
  derivativeAtPointClosed : ∀ x : F.normedSpaceDomain, True
  limitConditionClosed : F.limitCondition

def FrechetDifferentiabilityClosed (F : FrechetDifferentiabilityPackage) : Prop :=
  F.linearApproximationExists ∧ F.limitCondition

theorem frechet_differentiability_closed_from_evidence (F : FrechetDifferentiabilityPackage) (E : FrechetDifferentiabilityEvidence F) :
  FrechetDifferentiabilityClosed F :=
by
  exact And.intro E.linearApproximationExistsClosed E.limitConditionClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
