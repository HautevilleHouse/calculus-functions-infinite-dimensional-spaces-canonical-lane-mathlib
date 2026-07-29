import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.FrechetDerivativePackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure ImplicitFunctionPackage {F : FrechetDerivativePackage} where
  mapping : F.domain → F.codomain
  zeroPreimageNonempty : Prop
  derivativeInvertibleAtPoint : Prop
  localHomeomorphismExists : Prop
  theoremStatement : Prop

def ImplicitFunctionClosed {F : FrechetDerivativePackage} (I : ImplicitFunctionPackage F) : Prop :=
  I.localHomeomorphismExists ∧ I.theoremStatement

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse