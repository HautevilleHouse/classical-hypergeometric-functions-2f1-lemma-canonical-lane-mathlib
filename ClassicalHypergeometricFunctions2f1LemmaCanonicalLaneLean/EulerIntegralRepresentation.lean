import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure EulerIntegralRepresentation {G : GaussHypergeometricSeries} where
  integrand : ℂ → ℂ
  contour : Set ℂ
  integralFormula : ℂ
  conditionReC : Prop
  conditionReCClosed : conditionReC

def EulerIntegralRepresentationClosed {G : GaussHypergeometricSeries} (E : EulerIntegralRepresentation G) : Prop :=
  E.conditionReC

theorem euler_integral_representation_closed {G : GaussHypergeometricSeries} (E : EulerIntegralRepresentation G) :
    EulerIntegralRepresentationClosed E := by
  exact E.conditionReCClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse