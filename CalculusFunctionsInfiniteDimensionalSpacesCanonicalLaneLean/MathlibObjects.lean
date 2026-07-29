import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure InfiniteDimensionalSpace where
  carrier : Type u
  norm : Norm carrier
  topology : TopologicalSpace carrier

structure InfiniteDimensionalAdmittedObject where
  space : InfiniteDimensionalSpace
  banachSpace : Prop
  functionalCalculusDefined : Prop
  endpointModel : Type v
  endpointTopology : TopologicalSpace endpointModel
  propertyDesired : Prop
  conclusion : propertyDesired

def InfiniteDimensionalWitnessClosed (O : InfiniteDimensionalAdmittedObject) : Prop :=
  O.propertyDesired

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse