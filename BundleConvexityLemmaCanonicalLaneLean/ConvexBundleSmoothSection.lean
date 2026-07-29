import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexDomain

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBundleSmoothSection (B : BundleConvexPackage) where
  sectionMap : (x : B.domain.baseM) -> B.domain.fiber x
  smooth : Prop
  preservesConvex : (x : B.domain.baseM) -> sectionMap x ∈ B.domain.convexStructure x

structure ConvexBundleSmoothSectionEvidence (B : BundleConvexPackage) (S : ConvexBundleSmoothSection B) where
  smoothClosed : S.smooth
  preservesConvexClosed : (x : B.domain.baseM) -> S.sectionMap x ∈ B.domain.convexStructure x

def ConvexBundleSmoothSectionClosed (B : BundleConvexPackage) (S : ConvexBundleSmoothSection B) : Prop :=
  S.smooth ∧ (∀ x : B.domain.baseM, S.sectionMap x ∈ B.domain.convexStructure x)

theorem convex_bundle_smooth_section_closed_from_evidence (B : BundleConvexPackage)
    (S : ConvexBundleSmoothSection B) (E : ConvexBundleSmoothSectionEvidence B S) :
    ConvexBundleSmoothSectionClosed B S := by
  exact And.intro E.smoothClosed E.preservesConvexClosed

end HautevilleHouse
end BundleConvexityLemmaCanonicalLaneLean