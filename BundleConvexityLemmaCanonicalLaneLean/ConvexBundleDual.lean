import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexDomain

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBundleDual (B : BundleConvexPackage) where
  dualFiber : B.domain.baseM -> Type v
  dualConvexStructure : (x : B.domain.baseM) -> Set (dualFiber x)
  pairing : (x : B.domain.baseM) -> B.domain.fiber x -> dualFiber x -> ℝ
  pairingBilinear : (x : B.domain.baseM) -> BilinearMap ℝ (B.domain.fiber x) (dualFiber x) ℝ
  pairingConvexPreserving : Prop

structure ConvexBundleDualEvidence (B : BundleConvexPackage) (D : ConvexBundleDual B) where
  pairingBilinearClosed : (x : B.domain.baseM) -> BilinearMap ℝ (B.domain.fiber x) (D.dualFiber x) ℝ
  pairingConvexPreservingClosed : D.pairingConvexPreserving

def ConvexBundleDualClosed (B : BundleConvexPackage) (D : ConvexBundleDual B) : Prop :=
  (∀ x : B.domain.baseM, BilinearMap ℝ (B.domain.fiber x) (D.dualFiber x) ℝ) ∧ D.pairingConvexPreserving

theorem convex_bundle_dual_closed_from_evidence (B : BundleConvexPackage) (D : ConvexBundleDual B)
    (E : ConvexBundleDualEvidence B D) : ConvexBundleDualClosed B D := by
  exact And.intro E.pairingBilinearClosed E.pairingConvexPreservingClosed

end HautevilleHouse
end BundleConvexityLemmaCanonicalLaneLean