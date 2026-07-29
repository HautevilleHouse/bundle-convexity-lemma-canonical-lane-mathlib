import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleStructure where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  totalSpace : Type v
  projection : totalSpace → baseSpace
  fiberType : baseSpace → Type w
  fiberBundle : Prop
  localTriviality : Prop
  fiberBundleTerm : fiberBundle
  localTrivialityTerm : localTriviality

structure BundleMorphism (E F : BundleStructure) where
  baseMap : E.baseSpace → F.baseSpace
  totalMap : E.totalSpace → F.totalSpace
  commutes : ∀ x : E.totalSpace, F.projection (totalMap x) = baseMap (E.projection x)
  continuousBase : Continuous baseMap
  continuousTotal : Continuous totalMap
  commutesTerm : commutes
  continuousBaseTerm : continuousBase
  continuousTotalTerm : continuousTotal

def BundlePullback {E : BundleStructure} (f : E.baseSpace → E.baseSpace) : BundleStructure :=
  let baseSpace' := E.baseSpace
  let totalSpace' := { (x, e) : E.baseSpace × E.totalSpace | f x = E.projection e }
  let projection' : totalSpace' → baseSpace' := fun ⟨(x, _), _⟩ => x
  { baseSpace := baseSpace'
    baseTopology := E.baseTopology
    totalSpace := totalSpace'
    projection := projection'
    fiberType := fun x => E.fiberType (f x)
    fiberBundle := E.fiberBundle
    localTriviality := E.localTriviality
    fiberBundleTerm := E.fiberBundleTerm
    localTrivialityTerm := E.localTrivialityTerm }

structure BundleConvexityData (E : BundleStructure) where
  convexFiber : ∀ x : E.baseSpace, Convex (E.fiberType x)
  metric : ∀ x : E.baseSpace, Metric (E.fiberType x)
  bundleConvex : Prop
  bundleConvexTerm : bundleConvex

theorem bundle_pullback_base (E : BundleStructure) (f : E.baseSpace → E.baseSpace) :
    (BundlePullback f).baseSpace = E.baseSpace := rfl
