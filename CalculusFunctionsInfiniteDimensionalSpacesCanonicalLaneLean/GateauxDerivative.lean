import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean.InfiniteDimensionalNormedSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure GateauxDerivativePackage {N : InfiniteDimensionalNormedPackage} where
  domain : N.space
  codomain : N.space
  function : domain → codomain
  directionalDerivative : domain → domain → codomain
  linearityInDirection : Prop
  relationToFrechet : Prop
  linearityInDirectionTerm : linearityInDirection
  relationToFrechetTerm : relationToFrechet

structure GateauxDerivativeEvidence {N : InfiniteDimensionalNormedPackage}
    (G : GateauxDerivativePackage N) where
  linearityInDirectionClosed : G.linearityInDirection
  relationToFrechetClosed : G.relationToFrechet

def GateauxDerivativeClosed {N : InfiniteDimensionalNormedPackage}
    (G : GateauxDerivativePackage N) : Prop :=
  G.linearityInDirection ∧ G.relationToFrechet

theorem gateaux_derivative_closed_from_evidence
    {N : InfiniteDimensionalNormedPackage} (G : GateauxDerivativePackage N)
    (E : GateauxDerivativeEvidence G) : GateauxDerivativeClosed G := by
  exact And.intro E.linearityInDirectionClosed E.relationToFrechetClosed

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse