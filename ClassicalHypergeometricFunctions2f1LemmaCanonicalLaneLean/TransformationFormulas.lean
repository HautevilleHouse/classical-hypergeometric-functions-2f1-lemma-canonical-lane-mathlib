import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure TransformationFormula where
  a : Complex
  b : Complex
  c : Complex
  z : Complex
  pfaffTransformation : Prop
  eulerTransformation : Prop
  quadraticTransformation : Prop
  transformationClosed : Prop

def transformationFormulaClosed (T : TransformationFormula) : Prop :=
  T.pfaffTransformation ∧ T.eulerTransformation ∧ T.quadraticTransformation ∧ T.transformationClosed

theorem transformation_formula_closed (T : TransformationFormula) : transformationFormulaClosed T :=
  And.intro T.pfaffTransformation (And.intro T.eulerTransformation (And.intro T.quadraticTransformation T.transformationClosed))

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse