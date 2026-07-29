import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure GaussContiguousRelationsPackage where
  contiguousIndices : Nat → Nat → Prop
  relationA : Prop
  relationB : Prop
  relationC : Prop
  relationD : Prop

structure GaussContiguousRelationsEvidence (G : GaussContiguousRelationsPackage) where
  relationAClosed : G.relationA
  relationBClosed : G.relationB
  relationCClosed : G.relationC
  relationDClosed : G.relationD

def GaussContiguousRelationsClosed (G : GaussContiguousRelationsPackage) : Prop :=
  G.relationA ∧ G.relationB ∧ G.relationC ∧ G.relationD

theorem gauss_contiguous_relations_closed_from_evidence (G : GaussContiguousRelationsPackage)
    (E : GaussContiguousRelationsEvidence G) : GaussContiguousRelationsClosed G := by
  exact And.intro E.relationAClosed (And.intro E.relationBClosed (And.intro E.relationCClosed E.relationDClosed))

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse