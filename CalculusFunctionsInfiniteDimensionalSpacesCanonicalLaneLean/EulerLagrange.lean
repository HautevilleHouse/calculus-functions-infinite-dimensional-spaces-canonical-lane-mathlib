import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure EulerLagrangePackage where
  lagrangian : Type u → Type v
  actionFunctional : Prop
  stationarityCondition : Prop
  minimalExists : Prop

def EulerLagrangeClosed (P : EulerLagrangePackage) : Prop :=
  P.actionFunctional ∧ P.stationarityCondition ∧ P.minimalExists

structure EulerLagrangeEvidence (P : EulerLagrangePackage) where
  actionFunctionalClosed : P.actionFunctional
  stationarityConditionClosed : P.stationarityCondition
  minimalExistsClosed : P.minimalExists

theorem euler_lagrange_closed_from_evidence
    (P : EulerLagrangePackage) (E : EulerLagrangeEvidence P) :
    EulerLagrangeClosed P := by
  exact And.intro E.actionFunctionalClosed (And.intro E.stationarityConditionClosed E.minimalExistsClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse