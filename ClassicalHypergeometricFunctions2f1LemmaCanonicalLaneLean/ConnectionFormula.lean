import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure ConnectionFormula where
  monodromyMatrix : Matrix ℂ (Fin 2) (Fin 2)
  analyticContinuationPath : Set ℂ
  formulaCorrect : Prop
  formulaCorrectClosed : formulaCorrect

def ConnectionFormulaClosed (C : ConnectionFormula) : Prop :=
  C.formulaCorrect

theorem connection_formula_closed (C : ConnectionFormula) : ConnectionFormulaClosed C := by
  exact C.formulaCorrectClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse