import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.InfiniteDimensionalNormedSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure FrechetDerivativePackage {N : InfiniteDimensionalNormedPackage} where
  domain : N.space
  codomain : N.space
  function : domain → codomain
  derivativeAtPoint : domain → (domain → ℝ) → codomain
  linearity : Prop
  boundedness : Prop
  chainRule : Prop
  linearityTerm : linearity
  boundednessTerm : boundedness
  chainRuleTerm : chainRule

structure FrechetDerivativeEvidence {N : InfiniteDimensionalNormedPackage}
    (F : FrechetDerivativePackage N) where
  linearityClosed : F.linearity
  boundednessClosed : F.boundedness
  chainRuleClosed : F.chainRule

def FrechetDerivativeClosed {N : InfiniteDimensionalNormedPackage}
    (F : FrechetDerivativePackage N) : Prop :=
  F.linearity ∧ F.boundedness ∧ F.chainRule

theorem frechet_derivative_closed_from_evidence
    {N : InfiniteDimensionalNormedPackage} (F : FrechetDerivativePackage N)
    (E : FrechetDerivativeEvidence F) : FrechetDerivativeClosed F := by
  exact And.intro E.linearityClosed (And.intro E.boundednessClosed E.chainRuleClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse