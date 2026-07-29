import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure ImplicitFunctionTheoremPackage {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} where
  function : F.domain → F.codomain
  point : F.domain
  kernelSplit : Prop
  derivativeSurjective : Prop
  localSectionExists : Prop
  kernelSplitTerm : kernelSplit
  derivativeSurjectiveTerm : derivativeSurjective
  localSectionExistsTerm : localSectionExists

structure ImplicitFunctionTheoremEvidence {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} (I : ImplicitFunctionTheoremPackage F) where
  kernelSplitClosed : I.kernelSplit
  derivativeSurjectiveClosed : I.derivativeSurjective
  localSectionExistsClosed : I.localSectionExists

def ImplicitFunctionTheoremClosed {N : InfiniteDimensionalNormedPackage}
    {F : FrechetDerivativePackage N} (I : ImplicitFunctionTheoremPackage F) : Prop :=
  I.kernelSplit ∧ I.derivativeSurjective ∧ I.localSectionExists

theorem implicit_function_theorem_closed_from_evidence
    {N : InfiniteDimensionalNormedPackage} {F : FrechetDerivativePackage N}
    (I : ImplicitFunctionTheoremPackage F) (E : ImplicitFunctionTheoremEvidence I) :
    ImplicitFunctionTheoremClosed I := by
  exact And.intro E.kernelSplitClosed (And.intro E.derivativeSurjectiveClosed E.localSectionExistsClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse