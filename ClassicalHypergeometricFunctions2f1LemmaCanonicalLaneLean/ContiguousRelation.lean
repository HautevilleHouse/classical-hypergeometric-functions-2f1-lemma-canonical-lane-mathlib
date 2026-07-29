import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure ContiguousRelationPackage where
  a : ℚ
  b : ℚ
  c : ℚ
  F : ℚ → ℚ → ℚ → ℚ → ℚ
  contiguousIdentity : Prop
  coefficientWellDefined : Prop
  identityHolds : Prop

structure ContiguousRelationEvidence (P : ContiguousRelationPackage) where
  contiguousIdentityClosed : P.contiguousIdentity
  coefficientWellDefinedClosed : P.coefficientWellDefined
  identityHoldsClosed : P.identityHolds

def ContiguousRelationClosed (P : ContiguousRelationPackage) : Prop :=
  P.contiguousIdentity ∧ P.coefficientWellDefined ∧ P.identityHolds

theorem contiguous_relation_closed_from_evidence (P : ContiguousRelationPackage)
    (E : ContiguousRelationEvidence P) : ContiguousRelationClosed P :=
  And.intro E.contiguousIdentityClosed
    (And.intro E.coefficientWellDefinedClosed E.identityHoldsClosed)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse
