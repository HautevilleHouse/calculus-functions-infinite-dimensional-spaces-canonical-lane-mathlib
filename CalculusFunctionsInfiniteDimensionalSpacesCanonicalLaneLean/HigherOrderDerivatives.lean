import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure HigherOrderDerivativePackage where
  baseSpace : Type u
  targetSpace : Type v
  map : baseSpace → targetSpace
  frechetDifferentiable : Prop
  firstDerivative : baseSpace → (baseSpace →L[ℝ] targetSpace)
  secondDerivative : baseSpace → (baseSpace →L[ℝ] (baseSpace →L[ℝ] targetSpace))
  higherOrderDerivative : Nat → Prop
  boundedMultilinear : Prop

def HigherOrderDerivativeClosed (H : HigherOrderDerivativePackage) : Prop :=
  H.frechetDifferentiable ∧ H.boundedMultilinear

structure HigherOrderDerivativeEvidence (H : HigherOrderDerivativePackage) where
  frechetDifferentiableClosed : H.frechetDifferentiable
  boundedMultilinearClosed : H.boundedMultilinear

theorem higher_order_derivative_closed_from_evidence (H : HigherOrderDerivativePackage) (E : HigherOrderDerivativeEvidence H) :
  HigherOrderDerivativeClosed H :=
by
  exact And.intro E.frechetDifferentiableClosed E.boundedMultilinearClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
