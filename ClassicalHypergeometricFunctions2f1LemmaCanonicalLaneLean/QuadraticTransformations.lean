import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure QuadraticTransformationsPackage where
  transformationEntry : Prop
  pfaffTransformation : Prop
  eulerTransformation : Prop
  quadraticRelation : Prop

structure QuadraticTransformationsEvidence (Q : QuadraticTransformationsPackage) where
  transformationEntryClosed : Q.transformationEntry
  pfaffTransformationClosed : Q.pfaffTransformation
  eulerTransformationClosed : Q.eulerTransformation
  quadraticRelationClosed : Q.quadraticRelation

def QuadraticTransformationsClosed (Q : QuadraticTransformationsPackage) : Prop :=
  Q.transformationEntry ∧ Q.pfaffTransformation ∧ Q.eulerTransformation ∧ Q.quadraticRelation

theorem quadratic_transformations_closed_from_evidence (Q : QuadraticTransformationsPackage)
    (E : QuadraticTransformationsEvidence Q) : QuadraticTransformationsClosed Q := by
  exact And.intro E.transformationEntryClosed (And.intro E.pfaffTransformationClosed
    (And.intro E.eulerTransformationClosed E.quadraticRelationClosed))

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse