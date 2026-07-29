import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure ChainRulePackage where
  intermediateSpace : Type u
  domainSpace : Type v
  codomainSpace : Type w
  firstMap : domainSpace → intermediateSpace
  secondMap : intermediateSpace → codomainSpace
  composition : domainSpace → codomainSpace
  firstDifferentiableAtPoint : Prop
  secondDifferentiableAtImage : Prop
  compositionDerivativeFormula : Prop

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.firstDifferentiableAtPoint ∧ C.secondDifferentiableAtImage ∧ C.compositionDerivativeFormula

structure ChainRuleEvidence (C : ChainRulePackage) where
  firstDifferentiableAtPointClosed : C.firstDifferentiableAtPoint
  secondDifferentiableAtImageClosed : C.secondDifferentiableAtImage
  compositionDerivativeFormulaClosed : C.compositionDerivativeFormula

theorem chain_rule_closed_from_evidence (C : ChainRulePackage) (E : ChainRuleEvidence C) :
  ChainRuleClosed C :=
by
  exact And.intro E.firstDifferentiableAtPointClosed (
    And.intro E.secondDifferentiableAtImageClosed E.compositionDerivativeFormulaClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
