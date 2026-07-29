import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvexBustleClosed (A.object : ConvexBustlePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse