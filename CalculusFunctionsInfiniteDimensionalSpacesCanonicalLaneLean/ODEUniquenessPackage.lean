import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.FrechetDerivativePackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure ODEUniquenessPackage where
  vectorField : Type u
  timeDomain : Type v
  lipschitzCondition : Prop
  localExistence : Prop
  uniqueness : Prop
  smoothDependence : Prop

def ODEUniquenessClosed (O : ODEUniquenessPackage) : Prop :=
  O.localExistence ∧ O.uniqueness ∧ O.smoothDependence

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse