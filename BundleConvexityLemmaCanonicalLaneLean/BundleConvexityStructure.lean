import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityStructure where
  normedSpace : Type u
  norm : normedSpace → ℝ
  convexCombination : ℝ → normedSpace → normedSpace → normedSpace
  convexCombinationClosed : convexCombination = λ t x y => (1 - t) • x + t • y
  normConvex : ∀ (t : ℝ) (x y : normedSpace), 0 ≤ t → t ≤ 1 → norm (convexCombination t x y) ≤ (1 - t) * norm x + t * norm y

structure BundleConvexityEvidence (B : BundleConvexityStructure) where
  normConvexClosed : B.normConvex

def BundleConvexityClosed (B : BundleConvexityStructure) : Prop :=
  B.normConvex

theorem bundle_convexity_closed_from_evidence (B : BundleConvexityStructure) (E : BundleConvexityEvidence B) : BundleConvexityClosed B :=
  by
  exact E.normConvexClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse