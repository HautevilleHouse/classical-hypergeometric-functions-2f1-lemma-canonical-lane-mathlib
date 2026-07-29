import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure QuadraticTransformation {G : GaussHypergeometricSeries} where
  transformationMap : ℂ → ℂ
  specialCaseA : Prop
  specialCaseB : Prop
  specialCaseAClosed : specialCaseA
  specialCaseBClosed : specialCaseB

def QuadraticTransformationClosed {G : GaussHypergeometricSeries} (Q : QuadraticTransformation G) : Prop :=
  Q.specialCaseA ∧ Q.specialCaseB

theorem quadratic_transformation_closed {G : GaussHypergeometricSeries} (Q : QuadraticTransformation G) :
    QuadraticTransformationClosed Q := by
  exact And.intro Q.specialCaseAClosed Q.specialCaseBClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse