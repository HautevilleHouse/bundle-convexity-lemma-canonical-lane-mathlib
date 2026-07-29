import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBundlePackage where
  baseSpace : Type u
  fiberSpace : Type v
  projection : fiberSpace → baseSpace
  convexHullOperator : (baseSpace → ℝ) → (fiberSpace → ℝ)
  recessionCone : baseSpace → Set (fiberSpace)
  supportFunctionDefined : Prop
  convexHullClosed : Prop
  recessionConeClosed : Prop

structure ConvexBundleEvidence (B : ConvexBundlePackage) where
  supportFunctionDefinedClosed : B.supportFunctionDefined
  convexHullClosedClosed : B.convexHullClosed
  recessionConeClosedClosed : B.recessionConeClosed

def ConvexBundleClosed (B : ConvexBundlePackage) : Prop :=
  B.supportFunctionDefined ∧ B.convexHullClosed ∧ B.recessionConeClosed

theorem convex_bundle_closed_from_evidence (B : ConvexBundlePackage) (E : ConvexBundleEvidence B) :
    ConvexBundleClosed B := by
  exact And.intro E.supportFunctionDefinedClosed
    (And.intro E.convexHullClosedClosed E.recessionConeClosedClosed)

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse