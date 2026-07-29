import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BundleConvexityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse