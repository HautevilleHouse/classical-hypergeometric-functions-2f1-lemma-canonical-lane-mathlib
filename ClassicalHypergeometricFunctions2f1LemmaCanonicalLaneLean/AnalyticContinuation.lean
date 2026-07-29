import canonicalLaneMathlib.HypergeometricAdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure AnalyticContinuationPackage where
  integralRepresentation : Prop
  continuationToLeftHalfPlane : Prop
  reflectionFormula : Prop
  integralRepresentationClosed : integralRepresentation
  continuationToLeftHalfPlaneClosed : continuationToLeftHalfPlane
  reflectionFormulaClosed : reflectionFormula

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  integralRepresentationClosed : A.integralRepresentation
  continuationToLeftHalfPlaneClosed : A.continuationToLeftHalfPlane
  reflectionFormulaClosed : A.reflectionFormula

structure AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop where
  integralRepresentationClosed : A.integralRepresentation
  continuationToLeftHalfPlaneClosed : A.continuationToLeftHalfPlane
  reflectionFormulaClosed : A.reflectionFormula

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact {
    integralRepresentationClosed := E.integralRepresentationClosed
    continuationToLeftHalfPlaneClosed := E.continuationToLeftHalfPlaneClosed
    reflectionFormulaClosed := E.reflectionFormulaClosed
  }

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse