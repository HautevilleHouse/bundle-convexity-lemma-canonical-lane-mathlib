import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexityLemma

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse