import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure IntegralRepresentationPackage where
  a : ℚ
  b : ℚ
  c : ℚ
  integrand : ℚ → ℚ
  contour : Type u
  representationFormula : Prop
  convergenceCondition : Prop
  analyticContinuation : Prop

structure IntegralRepresentationEvidence (P : IntegralRepresentationPackage) where
  representationFormulaClosed : P.representationFormula
  convergenceConditionClosed : P.convergenceCondition
  analyticContinuationClosed : P.analyticContinuation

def IntegralRepresentationClosed (P : IntegralRepresentationPackage) : Prop :=
  P.representationFormula ∧ P.convergenceCondition ∧ P.analyticContinuation

theorem integral_representation_closed_from_evidence (P : IntegralRepresentationPackage)
    (E : IntegralRepresentationEvidence P) : IntegralRepresentationClosed P :=
  And.intro E.representationFormulaClosed
    (And.intro E.convergenceConditionClosed E.analyticContinuationClosed)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse
