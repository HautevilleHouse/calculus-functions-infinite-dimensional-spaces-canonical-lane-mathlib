import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure InverseFunctionTheoremPackage {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} where
  function : F.domain → F.codomain
  point : F.domain
  derivativeInvertible : Prop
  localInverseExists : Prop
  derivativeInvertibleTerm : derivativeInvertible
  localInverseExistsTerm : localInverseExists

structure InverseFunctionTheoremEvidence {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} (I : InverseFunctionTheoremPackage F) where
  derivativeInvertibleClosed : I.derivativeInvertible
  localInverseExistsClosed : I.localInverseExists

def InverseFunctionTheoremClosed {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} (I : InverseFunctionTheoremPackage F) : Prop :=
  I.derivativeInvertible ∧ I.localInverseExists

theorem inverse_function_theorem_closed_from_evidence
    {N : InfiniteDimensionalNormedPackage} {F : FrechetDerivativePackage N}
    (I : InverseFunctionTheoremPackage F) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeInvertibleClosed E.localInverseExistsClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse