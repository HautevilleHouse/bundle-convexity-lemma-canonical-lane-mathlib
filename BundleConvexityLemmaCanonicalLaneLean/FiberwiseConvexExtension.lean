import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure FiberwiseConvexExtension {B : BundleConvexityStructure} where
  fiberSpace : Type v
  fiberNorm : fiberSpace → ℝ
  extensionOperator : (B.normedSpace → fiberSpace) → (B.normedSpace → fiberSpace)
  convexityPreserved : ∀ (f g : B.normedSpace → fiberSpace) (t : ℝ), 0 ≤ t → t ≤ 1 → extensionOperator (λ x => B.convexCombination t (f x) (g x)) = B.convexCombination t (extensionOperator f) (extensionOperator g)

structure FiberwiseConvexExtensionEvidence {B : BundleConvexityStructure} (F : FiberwiseConvexExtension B) where
  convexityPreservedClosed : F.convexityPreserved

def FiberwiseConvexExtensionClosed {B : BundleConvexityStructure} (F : FiberwiseConvexExtension B) : Prop :=
  F.convexityPreserved

theorem fiberwise_convex_extension_closed_from_evidence {B : BundleConvexityStructure} (F : FiberwiseConvexExtension B) (E : FiberwiseConvexExtensionEvidence F) : FiberwiseConvexExtensionClosed F :=
  by
  exact E.convexityPreservedClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse