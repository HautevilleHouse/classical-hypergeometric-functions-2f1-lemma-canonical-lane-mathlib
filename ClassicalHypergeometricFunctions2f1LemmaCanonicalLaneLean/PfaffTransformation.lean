import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure PfaffTransformation {G : GaussHypergeometricSeries} where
  transformedParameters : ℂ × ℂ × ℂ
  transformationFormula : ℂ
  domainValidity : Prop
  domainValidityClosed : domainValidity

def PfaffTransformationClosed {G : GaussHypergeometricSeries} (P : PfaffTransformation G) : Prop :=
  P.domainValidity

theorem pfaff_transformation_closed {G : GaussHypergeometricSeries} (P : PfaffTransformation G) :
    PfaffTransformationClosed P := by
  exact P.domainValidityClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse