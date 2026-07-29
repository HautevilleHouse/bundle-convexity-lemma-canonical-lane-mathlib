import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBustlePackage where
  baseSpace : Type u
  bundle : Type v
  fiberwiseConvex : Prop
  localTrivialization : Prop
  globalConvexity : Prop

def ConvexBustleClosed (C : ConvexBustlePackage) : Prop :=
  C.fiberwiseConvex ∧ C.localTrivialization ∧ C.globalConvexity

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse