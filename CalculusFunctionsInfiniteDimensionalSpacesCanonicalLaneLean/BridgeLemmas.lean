import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InfiniteDimensionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse