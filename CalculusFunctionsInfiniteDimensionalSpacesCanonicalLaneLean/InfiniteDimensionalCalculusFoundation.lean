import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.BanachSpace
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure InfiniteDimensionalCalculusFoundation where
  banach : BanachSpacePackage
  banachEvidence : BanachSpaceEvidence banach
  derivative : FrechetDerivativePackage (fun (x : banach.carrier) => x) 0
  derivativeEvidence : FrechetDerivativeEvidence derivative

def InfiniteDimensionalCalculusFoundationClosed (F : InfiniteDimensionalCalculusFoundation) : Prop :=
  BanachSpaceClosed F.banach ∧ FrechetDerivativeClosed F.derivative

theorem infinite_dimensional_calculus_foundation_closed_from_evidence
    (F : InfiniteDimensionalCalculusFoundation) :
    InfiniteDimensionalCalculusFoundationClosed F := by
  exact And.intro
    (banach_space_closed_from_evidence F.banach F.banachEvidence)
    (frechet_derivative_closed_from_evidence F.derivative F.derivativeEvidence)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse