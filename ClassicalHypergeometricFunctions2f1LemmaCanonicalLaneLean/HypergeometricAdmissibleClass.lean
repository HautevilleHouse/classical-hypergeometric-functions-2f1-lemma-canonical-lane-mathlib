import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

structure HypergeometricAdmittedObject where
  a : ℂ
  b : ℂ
  c : ℂ
  seriesConverges : Prop
  analyticContinuation : Prop
  conclusion : seriesConverges ∧ analyticContinuation

structure AdmissibleClass where
  object : HypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse