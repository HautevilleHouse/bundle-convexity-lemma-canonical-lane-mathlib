import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexityLemma

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BundleConvexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.endpointCondition

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse