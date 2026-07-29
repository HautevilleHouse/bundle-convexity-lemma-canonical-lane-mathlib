import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityStatement where
  totalSpace : Type u
  baseSpace : Type v
  projectionMap : totalSpace → baseSpace
  fiberConvexityCondition : Prop
  bundleConvexityHolds : Prop

structure BundleConvexityEvidence (B : BundleConvexityStatement) where
  fiberConvexityConditionClosed : B.fiberConvexityCondition
  bundleConvexityHoldsClosed : B.bundleConvexityHolds

def BundleConvexityClosed (B : BundleConvexityStatement) : Prop :=
  B.fiberConvexityCondition ∧ B.bundleConvexityHolds

theorem bundle_convexity_closed_from_evidence
    (B : BundleConvexityStatement) (E : BundleConvexityEvidence B) :
    BundleConvexityClosed B := by
  exact And.intro E.fiberConvexityConditionClosed E.bundleConvexityHoldsClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse