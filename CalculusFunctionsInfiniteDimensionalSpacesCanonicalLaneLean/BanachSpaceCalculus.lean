import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure BanachSpaceCalculusPackage (X Y Z : Type u)
    [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z] where
  f : X → Y
  g : Y → Z
  h : X → Z
  chainRule : Prop
  productRule : Prop
  linearity : Prop

structure BanachSpaceCalculusEvidence (C : BanachSpaceCalculusPackage X Y Z) where
  chainRuleClosed : C.chainRule
  productRuleClosed : C.productRule
  linearityClosed : C.linearity

def BanachSpaceCalculusClosed (C : BanachSpaceCalculusPackage X Y Z) : Prop :=
  C.chainRule ∧ C.productRule ∧ C.linearity

theorem banach_space_calculus_closed_from_evidence
    (C : BanachSpaceCalculusPackage X Y Z) (E : BanachSpaceCalculusEvidence C) :
    BanachSpaceCalculusClosed C := by
  exact And.intro E.chainRuleClosed (And.intro E.productRuleClosed E.linearityClosed)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse