import BundleConvexityLemmaCanonicalLaneLean.AffineConnections

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ExponentialMapPackage {C : AffineConnectionPackage} where
  geodesicFlow : Type u
  exponentialMap : C.manifold -> Type v -> C.manifold
  domainStarShaped : Prop
  strongConvexityRadius : Prop
  domainStarShapedClosed : domainStarShaped
  strongConvexityRadiusClosed : strongConvexityRadius

structure ExponentialMapEvidence {C : AffineConnectionPackage} (E : ExponentialMapPackage C) where
  domainStarShapedClosed : E.domainStarShaped
  strongConvexityRadiusClosed : E.strongConvexityRadius

def ExponentialMapClosed {C : AffineConnectionPackage} (E : ExponentialMapPackage C) : Prop :=
  E.domainStarShaped ∧ E.strongConvexityRadius

theorem exponential_map_closed_from_evidence {C : AffineConnectionPackage} (E : ExponentialMapPackage C) (Ev : ExponentialMapEvidence E) : ExponentialMapClosed E :=
  And.intro Ev.domainStarShapedClosed Ev.strongConvexityRadiusClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse