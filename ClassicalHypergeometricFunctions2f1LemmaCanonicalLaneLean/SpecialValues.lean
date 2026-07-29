import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure SpecialValue where
  a : Complex
  b : Complex
  c : Complex
  z : Complex
  gaussSum : Prop
  chVandermonde : Prop
  kummerTheorem : Prop
  specialValueClosed : Prop

def specialValueClosed (S : SpecialValue) : Prop :=
  S.gaussSum ∧ S.chVandermonde ∧ S.kummerTheorem ∧ S.specialValueClosed

theorem special_value_closed (S : SpecialValue) : specialValueClosed S :=
  And.intro S.gaussSum (And.intro S.chVandermonde (And.intro S.kummerTheorem S.specialValueClosed))

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse