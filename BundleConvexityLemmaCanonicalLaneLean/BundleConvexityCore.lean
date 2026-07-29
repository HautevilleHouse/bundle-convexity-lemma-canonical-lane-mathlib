import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityObject where
  baseSpace : Type u
  totalSpace : Type v
  projection : totalSpace → baseSpace
  fiberConvex : baseSpace → Prop
  localTrivializationConvex : Prop
  globalConvexityProperty : Prop
  conclusion : globalConvexityProperty

def BundleConvexityWitnessClosed (O : BundleConvexityObject) : Prop :=
  O.globalConvexityProperty

structure BundleConvexityPackage where
  baseManifold : Type u
  fiberBanach : Type v
  linearConnection : Type w
  curvatureBounded : Prop
  subgradientFlowDefined : Prop

def BundleConvexityPackageClosed (P : BundleConvexityPackage) : Prop :=
  P.curvatureBounded ∧ P.subgradientFlowDefined

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse