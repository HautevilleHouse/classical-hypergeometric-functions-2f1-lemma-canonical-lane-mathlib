import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure HypergeometricSeriesPackage where
  seriesDefinition : Prop
  radiusOfConvergence : Prop
  analyticContinuation : Prop
  differentialEquation : Prop

structure HypergeometricSeriesEvidence (H : HypergeometricSeriesPackage) where
  seriesDefinitionClosed : H.seriesDefinition
  radiusOfConvergenceClosed : H.radiusOfConvergence
  analyticContinuationClosed : H.analyticContinuation
  differentialEquationClosed : H.differentialEquation

def HypergeometricSeriesClosed (H : HypergeometricSeriesPackage) : Prop :=
  H.seriesDefinition ∧ H.radiusOfConvergence ∧ H.analyticContinuation ∧ H.differentialEquation

theorem hypergeometric_series_closed_from_evidence (H : HypergeometricSeriesPackage)
    (E : HypergeometricSeriesEvidence H) : HypergeometricSeriesClosed H := by
  exact And.intro E.seriesDefinitionClosed (And.intro E.radiusOfConvergenceClosed
    (And.intro E.analyticContinuationClosed E.differentialEquationClosed))

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse