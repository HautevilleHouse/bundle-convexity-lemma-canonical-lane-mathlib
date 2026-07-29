import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexFiberStructure (V : VectorBundlePackage) where
  convexFiber : ∀ x : V.baseSpace, Set (V.fiberType x)
  convexCondition : ∀ x : V.baseSpace, Convex (convexFiber x)
  fiberInclusion : ∀ x : V.baseSpace, convexFiber x ⊆ Set.univ

def ConvexFiberClosed {V : VectorBundlePackage} (C : ConvexFiberStructure V) : Prop :=
  ∀ x : V.baseSpace, Convex (C.convexFiber x)

theorem convex_fiber_closed_from_structure {V : VectorBundlePackage}
    (C : ConvexFiberStructure V) : ConvexFiberClosed C := by
  intro x
  exact C.convexCondition x

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse