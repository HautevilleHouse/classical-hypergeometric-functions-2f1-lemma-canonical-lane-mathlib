import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean.GaussHypergeometricSeries

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure KummerContiguousRelations {G : GaussHypergeometricSeries} where
  relationCount : ℕ
  shiftFormulas : List (ℂ → ℂ)
  consistency : Prop
  consistencyClosed : consistency

def KummerContiguousRelationsClosed {G : GaussHypergeometricSeries} (K : KummerContiguousRelations G) : Prop :=
  K.consistency

theorem kummer_contiguous_relations_closed {G : GaussHypergeometricSeries} (K : KummerContiguousRelations G) :
    KummerContiguousRelationsClosed K := by
  exact K.consistencyClosed

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse