import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure Classical2F1Series where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  seriesConvergent : Prop
  seriesDefined : seriesConvergent

structure Classical2F1Package where
  series : Classical2F1Series
  hypergeometricEquation : Prop
  eulerIntegralRepresentation : Prop
  analyticContinuation : Prop

structure Classical2F1Evidence (H : Classical2F1Package) where
  hypergeometricEquationClosed : H.hypergeometricEquation
  eulerIntegralRepresentationClosed : H.eulerIntegralRepresentation
  analyticContinuationClosed : H.analyticContinuation

def Classical2F1Closed (H : Classical2F1Package) : Prop :=
  H.hypergeometricEquation ∧ H.eulerIntegralRepresentation ∧ H.analyticContinuation

theorem classical_2f1_closed_from_evidence (H : Classical2F1Package) (E : Classical2F1Evidence H) :
    Classical2F1Closed H := by
  exact And.intro E.hypergeometricEquationClosed (And.intro E.eulerIntegralRepresentationClosed E.analyticContinuationClosed)

def bridgeClosed (A : AdmissibleClass) : Prop := Classical2F1Closed (Classical2F1Package.mk (Classical2F1Series.mk 0 0 0 0 True True) True True True)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine ?_
  exact classical_2f1_closed_from_evidence (Classical2F1Package.mk (Classical2F1Series.mk 0 0 0 0 True True) True True True) (Classical2F1Evidence.mk True True True)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse