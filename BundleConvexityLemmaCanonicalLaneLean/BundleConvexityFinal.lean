import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexityBridge
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexityGate

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

def ConstrainedBundleConvexityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bundle_convexity_endgame (A : AdmissibleClass) : ConstrainedBundleConvexityClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse