namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  domain : String
  codomain : String
  statement : String

def sourceTheoremStatement : TheoremStatement :=
  { theoremName := "Calculus Functions Infinite Dimensional Spaces",
    domain := "BanachSpace",
    codomain := "FunctionSpace",
    statement := "The Frechet derivative is closed under chain rule and inversion." }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.theoremName = "Calculus Functions Infinite Dimensional Spaces" := by
  rfl

end CalculusFunctionsInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse