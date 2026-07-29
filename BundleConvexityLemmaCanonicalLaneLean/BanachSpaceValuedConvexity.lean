import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BanachSpaceValuedConvexity (B : BundleConvexityStructure) where
  banachSpace : Type w
  banachNorm : banachSpace → ℝ
  valuedConvexCombination : ℝ → B.normedSpace → banachSpace → banachSpace → banachSpace
  valuedConvexClosed : ∀ (t : ℝ) (x : B.normedSpace) (y z : banachSpace), 0 ≤ t → t ≤ 1 → banachNorm (valuedConvexCombination t x y z) ≤ (1 - t) * banachNorm y + t * banachNorm z

structure BanachSpaceValuedConvexityEvidence {B : BundleConvexityStructure} (V : BanachSpaceValuedConvexity B) where
  valuedConvexClosed : V.valuedConvexClosed

def BanachSpaceValuedConvexityClosed {B : BundleConvexityStructure} (V : BanachSpaceValuedConvexity B) : Prop :=
  V.valuedConvexClosed

theorem banach_space_valued_convexity_closed_from_evidence {B : BundleConvexityStructure} (V : BanachSpaceValuedConvexity B) (E : BanachSpaceValuedConvexityEvidence V) : BanachSpaceValuedConvexityClosed V :=
  by
  exact E.valuedConvexClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse