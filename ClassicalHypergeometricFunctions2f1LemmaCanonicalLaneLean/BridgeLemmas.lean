import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HypergeometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalHypergeometricFunctions2f1LemmaCanonicalLaneLean
end HautevilleHouse