import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexitySpace where
  base : Type
  fiber : Type
  topology : TopologicalSpace base
  vectorBundleStructure : Prop

structure BundleConvexityAdmittedObject where
  space : BundleConvexitySpace
  convexFunctionDefined : Prop
  convexityConditionSatisfied : Prop
  conclusion : convexityConditionSatisfied

structure BundleConvexityEndgameState where
  object : BundleConvexityAdmittedObject

def BundleConvexityWitnessClosed (O : BundleConvexityAdmittedObject) : Prop :=
  O.convexityConditionSatisfied

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse