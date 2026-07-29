import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.ConvexBundleTensor

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityLemmaPackage (B : BundleConvexPackage) (T : ConvexBundleTensor B) where
  fiberwiseConvexToGlobalConvex : Prop
  globalConvexStructure : Set (B.domain.totalSpace)
  lemmaStatement : Prop

structure BundleConvexityLemmaEvidence (B : BundleConvexPackage) (T : ConvexBundleTensor B)
    (L : BundleConvexityLemmaPackage B T) where
  fiberwiseConvexToGlobalConvexClosed : L.fiberwiseConvexToGlobalConvex
  lemmaStatementClosed : L.lemmaStatement

def BundleConvexityLemmaClosed (B : BundleConvexPackage) (T : ConvexBundleTensor B)
    (L : BundleConvexityLemmaPackage B T) : Prop :=
  L.fiberwiseConvexToGlobalConvex ∧ L.lemmaStatement

theorem bundle_convexity_lemma_closed_from_evidence (B : BundleConvexPackage) (T : ConvexBundleTensor B)
    (L : BundleConvexityLemmaPackage B T) (E : BundleConvexityLemmaEvidence B T L) :
    BundleConvexityLemmaClosed B T L := by
  exact And.intro E.fiberwiseConvexToGlobalConvexClosed E.lemmaStatementClosed

end HautevilleHouse
end BundleConvexityLemmaCanonicalLaneLean