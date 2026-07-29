import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.Classical2F1Transformations
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.Classical2F1PfaffEuler

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

def Constrained2F1Closure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_2f1_endgame (A : AdmissibleClass) : Constrained2F1Closure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse