import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure InfiniteDimensionalSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedSpace : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure InfiniteDimensionalAdmittedObject where
  space : InfiniteDimensionalSpace
  property : Prop
  conclusion : property

def InfiniteDimensionalWitnessClosed (O : InfiniteDimensionalAdmittedObject) : Prop :=
  O.conclusion

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse