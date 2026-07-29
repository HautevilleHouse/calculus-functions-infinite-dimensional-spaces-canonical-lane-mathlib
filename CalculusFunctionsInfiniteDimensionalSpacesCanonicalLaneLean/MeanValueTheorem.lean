import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure MeanValueTheoremPackage where
  normedSpaceDomain : Type u
  normedSpaceCodomain : Type v
  map : normedSpaceDomain → normedSpaceCodomain
  differentiableOnInterval : Prop
  derivativeBound : Prop
  inequalityConclusion : Prop

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.differentiableOnInterval ∧ M.derivativeBound ∧ M.inequalityConclusion

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  differentiableOnIntervalClosed : M.differentiableOnInterval
  derivativeBoundClosed : M.derivativeBound
  inequalityConclusionClosed : M.inequalityConclusion

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage) (E : MeanValueTheoremEvidence M) :
  MeanValueTheoremClosed M :=
by
  exact And.intro E.differentiableOnIntervalClosed (
    And.intro E.derivativeBoundClosed E.inequalityConclusionClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
