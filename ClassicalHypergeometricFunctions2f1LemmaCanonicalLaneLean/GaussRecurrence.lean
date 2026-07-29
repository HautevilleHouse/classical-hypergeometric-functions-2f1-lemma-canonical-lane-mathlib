import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure GaussRecurrenceRelation where
  a : Complex
  b : Complex
  c : Complex
  z : Complex
  contiguousRelation : Prop
  threeTermRelation : Prop
  recurrenceClosed : Prop

def gaussRecurrenceClosed (G : GaussRecurrenceRelation) : Prop :=
  G.contiguousRelation ∧ G.threeTermRelation ∧ G.recurrenceClosed

theorem gauss_recurrence_closed (G : GaussRecurrenceRelation) : gaussRecurrenceClosed G :=
  And.intro G.contiguousRelation (And.intro G.threeTermRelation G.recurrenceClosed)

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse