import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure GaussHypergeometricSeries where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radiusOfConvergence : ℂ
  seriesTerms : ℕ → ℂ
  sumFormula : ℂ

structure GaussHypergeometricSeriesEvidence (G : GaussHypergeometricSeries) where
  radiusOfConvergenceClosed : G.radiusOfConvergence = 1
  sumFormulaClosed : G.sumFormula = G.seriesTerms 0

def GaussHypergeometricSeriesClosed (G : GaussHypergeometricSeries) : Prop :=
  G.radiusOfConvergence = 1 ∧ G.sumFormula = G.seriesTerms 0

theorem gauss_hypergeometric_series_closed_from_evidence (G : GaussHypergeometricSeries) (E : GaussHypergeometricSeriesEvidence G) :
    GaussHypergeometricSeriesClosed G := by
  exact And.intro E.radiusOfConvergenceClosed E.sumFormulaClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse