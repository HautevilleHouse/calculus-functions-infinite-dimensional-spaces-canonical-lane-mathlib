import canonicalLaneMathlib.AdmissibleClass

/-!
# Differentiability Package (Fréchet and Gâteaux derivatives)
-/

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure DifferentiabilityPackage where
  banachSpace : Type u
  normedAddCommGroup : NormedAddCommGroup banachSpace
  complete : CompleteSpace banachSpace
  frechetDerivative : (banachSpace → banachSpace) → banachSpace → (banachSpace →L[ℝ] banachSpace)
  chainRule : Prop
  linearity : Prop
  frechetDifferentiableOn : Set (banachSpace → banachSpace) → Prop
  gateauxDerivative : (banachSpace → banachSpace) → banachSpace → (banachSpace →L[ℝ] banachSpace)
  gateauxImpliesFrechet : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  chainRuleClosed : D.chainRule
  linearityClosed : D.linearity
  gateauxImpliesFrechetClosed : D.gateauxImpliesFrechet

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.chainRule ∧ D.linearity ∧ D.gateauxImpliesFrechet

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage) (E : DifferentiabilityEvidence D) :
    DifferentiabilityClosed D := by
  exact And.intro E.chainRuleClosed (And.intro E.linearityClosed E.gateauxImpliesFrechetClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse