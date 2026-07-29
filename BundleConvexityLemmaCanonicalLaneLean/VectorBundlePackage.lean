import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure VectorBundlePackage where
  totalSpace : Type u
  baseSpace : Type v
  projection : totalSpace → baseSpace
  fiberType : baseSpace → Type w
  vectorSpaceStructure : ∀ x : baseSpace, VectorSpace ℝ (fiberType x)
  localTrivialization : Prop
  smoothStructure : Prop

def VectorBundleClosed (V : VectorBundlePackage) : Prop :=
  V.localTrivialization ∧ V.smoothStructure

theorem vector_bundle_closed_from_structure (V : VectorBundlePackage)
    (h_local : V.localTrivialization) (h_smooth : V.smoothStructure) :
    VectorBundleClosed V := by
  exact And.intro h_local h_smooth

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse