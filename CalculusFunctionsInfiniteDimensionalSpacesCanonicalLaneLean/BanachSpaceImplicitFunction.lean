import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure BanachSpaceImplicitFunctionPackage where
  banachDomain : Type u
  banachCodomain : Type v
  map : banachDomain → banachCodomain
  fixedPoint : banachDomain
  contractivity : Prop
  implicitFunction : banachCodomain → banachDomain

structure BanachSpaceImplicitFunctionEvidence (B : BanachSpaceImplicitFunctionPackage) where
  contractivityClosed : B.contractivity

def BanachSpaceImplicitFunctionClosed (B : BanachSpaceImplicitFunctionPackage) : Prop :=
  B.contractivity

theorem banach_space_implicit_function_closed_from_evidence
    (B : BanachSpaceImplicitFunctionPackage) (E : BanachSpaceImplicitFunctionEvidence B) :
    BanachSpaceImplicitFunctionClosed B := by
  exact E.contractivityClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse