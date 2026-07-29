import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure FrechetDifferentiationPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  derivativeDefined : Prop
  chainRule : Prop
  linearApproximation : Prop

def FrechetDifferentiationClosed (P : FrechetDifferentiationPackage) : Prop :=
  P.derivativeDefined ∧ P.chainRule ∧ P.linearApproximation

structure FrechetDifferentiationEvidence (P : FrechetDifferentiationPackage) where
  derivativeDefinedClosed : P.derivativeDefined
  chainRuleClosed : P.chainRule
  linearApproximationClosed : P.linearApproximation

theorem frechet_differentiation_closed_from_evidence
    (P : FrechetDifferentiationPackage) (E : FrechetDifferentiationEvidence P) :
    FrechetDifferentiationClosed P := by
  exact And.intro E.derivativeDefinedClosed (And.intro E.chainRuleClosed E.linearApproximationClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse