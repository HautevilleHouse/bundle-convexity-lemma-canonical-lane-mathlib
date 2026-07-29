import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexityLemma

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityPackage where
  baseManifold : Type
  totalSpace : Type
  projection : totalSpace → baseManifold
  convexInFiber : Prop
  fiberwiseConvex : Prop
  localTrivializationConvex : Prop
  globalConvexity : Prop

structure BundleConvexityEvidence (P : BundleConvexityPackage) where
  convexInFiberClosed : P.convexInFiber
  fiberwiseConvexClosed : P.fiberwiseConvex
  localTrivializationConvexClosed : P.localTrivializationConvex
  globalConvexityClosed : P.globalConvexity

def BundleConvexityClosed (P : BundleConvexityPackage) : Prop :=
  P.convexInFiber ∧ P.fiberwiseConvex ∧ P.localTrivializationConvex ∧ P.globalConvexity

theorem bundle_convexity_closed_from_evidence (P : BundleConvexityPackage) (E : BundleConvexityEvidence P) : BundleConvexityClosed P :=
  And.intro E.convexInFiberClosed (And.intro E.fiberwiseConvexClosed (And.intro E.localTrivializationConvexClosed E.globalConvexityClosed))

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse