import canonicalLaneMathlib.AdmissibleClass

/-!
# Implicit Function Theorem Package
-/

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure ImplicitFunctionPackage where
  banachSource : Type u
  banachTarget : Type v
  normedAddCommGroupSource : NormedAddCommGroup banachSource
  normedAddCommGroupTarget : NormedAddCommGroup banachTarget
  completeSource : CompleteSpace banachSource
  completeTarget : CompleteSpace banachTarget
  functionF : banachSource → banachTarget → banachTarget
  frechetDerivativeWrtSecond : banachSource × banachTarget → (banachTarget →L[ℝ] banachTarget)
  invertibilityCondition : Prop
  existenceOfImplicitFunction : Prop
  differentiabilityOfImplicit : Prop
  uniqueness : Prop
  statementClosed : Prop

structure ImplicitFunctionEvidence (I : ImplicitFunctionPackage) where
  invertibilityConditionClosed : I.invertibilityCondition
  existenceOfImplicitFunctionClosed : I.existenceOfImplicitFunction
  differentiabilityOfImplicitClosed : I.differentiabilityOfImplicit
  uniquenessClosed : I.uniqueness

def ImplicitFunctionClosed (I : ImplicitFunctionPackage) : Prop :=
  I.invertibilityCondition ∧ I.existenceOfImplicitFunction ∧ I.differentiabilityOfImplicit ∧ I.uniqueness

theorem implicit_function_closed_from_evidence (I : ImplicitFunctionPackage) (E : ImplicitFunctionEvidence I) :
    ImplicitFunctionClosed I := by
  exact And.intro E.invertibilityConditionClosed
    (And.intro E.existenceOfImplicitFunctionClosed
      (And.intro E.differentiabilityOfImplicitClosed E.uniquenessClosed))

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse