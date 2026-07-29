import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexDomain

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBundleTensor (B : BundleConvexPackage) where
  tensorCovariant : Type u
  tensorContravariant : Type v
  convexTensorProduct : Prop
  tensorConvexPreserving : Prop
  tensorSmoothStructure : Prop

structure ConvexBundleTensorEvidence (B : BundleConvexPackage) (T : ConvexBundleTensor B) where
  convexTensorProductClosed : T.convexTensorProduct
  tensorConvexPreservingClosed : T.tensorConvexPreserving
  tensorSmoothStructureClosed : T.tensorSmoothStructure

def ConvexBundleTensorClosed (B : BundleConvexPackage) (T : ConvexBundleTensor B) : Prop :=
  T.convexTensorProduct ∧ T.tensorConvexPreserving ∧ T.tensorSmoothStructure

theorem convex_bundle_tensor_closed_from_evidence (B : BundleConvexPackage) (T : ConvexBundleTensor B)
    (E : ConvexBundleTensorEvidence B T) : ConvexBundleTensorClosed B T := by
  exact And.intro E.convexTensorProductClosed
    (And.intro E.tensorConvexPreservingClosed E.tensorSmoothStructureClosed)

end HautevilleHouse
end BundleConvexityLemmaCanonicalLaneLean