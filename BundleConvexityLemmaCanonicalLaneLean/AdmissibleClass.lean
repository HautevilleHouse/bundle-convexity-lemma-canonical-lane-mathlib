import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityAdmittedObject where
  bundle : Type u
  totalSpace : TopologicalSpace bundle
  projection : bundle → Type v
  fiberType : Type w
  fiberTopology : TopologicalSpace fiberType
  fiberConvex : Prop
  bundleConvex : Prop
  conclusion : bundleConvex
  fiberConvexTerm : fiberConvex
  bundleConvexTerm : conclusion

structure AdmissibleClass where
  object : BundleConvexityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BundleConvexityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse