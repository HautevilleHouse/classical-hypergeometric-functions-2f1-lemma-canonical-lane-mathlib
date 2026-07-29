import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure MonodromyPackage where
  a : ℚ
  b : ℚ
  c : ℚ
  basePoint : ℂ
  representation : Type u
  monodromyMatricesComputed : Prop
  generatorsDefined : Prop
  relationSatisfied : Prop

structure MonodromyEvidence (P : MonodromyPackage) where
  monodromyMatricesComputedClosed : P.monodromyMatricesComputed
  generatorsDefinedClosed : P.generatorsDefined
  relationSatisfiedClosed : P.relationSatisfied

def MonodromyClosed (P : MonodromyPackage) : Prop :=
  P.monodromyMatricesComputed ∧ P.generatorsDefined ∧ P.relationSatisfied

theorem monodromy_closed_from_evidence (P : MonodromyPackage)
    (E : MonodromyEvidence P) : MonodromyClosed P :=
  And.intro E.monodromyMatricesComputedClosed
    (And.intro E.generatorsDefinedClosed E.relationSatisfiedClosed)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse
