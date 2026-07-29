import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure HypergeometricDifferentialEquation where
  a : ℂ
  b : ℂ
  c : ℂ
  operator : ℂ → ℂ
  solutionSpaceDimension : ℕ
  singularPoints : Set ℂ

structure HypergeometricDifferentialEquationEvidence (H : HypergeometricDifferentialEquation) where
  solutionSpaceDimensionClosed : H.solutionSpaceDimension = 2
  singularPointsClosed : H.singularPoints = {0,1,∞}

def HypergeometricDifferentialEquationClosed (H : HypergeometricDifferentialEquation) : Prop :=
  H.solutionSpaceDimension = 2 ∧ H.singularPoints = {0,1,∞}

theorem hypergeometric_differential_equation_closed_from_evidence
    (H : HypergeometricDifferentialEquation) (E : HypergeometricDifferentialEquationEvidence H) :
    HypergeometricDifferentialEquationClosed H := by
  exact And.intro E.solutionSpaceDimensionClosed E.singularPointsClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse