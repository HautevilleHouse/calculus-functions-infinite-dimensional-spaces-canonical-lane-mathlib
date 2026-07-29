import CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

def ConstrainedInfiniteDimensionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_dimensional_endgame (A : AdmissibleClass) :
    ConstrainedInfiniteDimensionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse