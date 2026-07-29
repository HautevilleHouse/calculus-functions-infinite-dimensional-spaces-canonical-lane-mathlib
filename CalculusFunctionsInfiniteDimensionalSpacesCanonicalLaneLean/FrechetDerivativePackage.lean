import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure FrechetDerivativePackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  completeDomain : CompleteSpace domain
  derivativeDefined : Prop
  chainRuleHolds : Prop
  linearity : Prop

def FrechetDerivativeClosed (F : FrechetDerivativePackage) : Prop :=
  F.derivativeDefined ∧ F.chainRuleHolds ∧ F.linearity

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse