import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BundleConvexityLemmaCanonicalLaneLean.BundleConvexStructure

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexityEndpointPackage (P : BundleConvexityPackage) where
  endpointBundle : Type
  endpointBase : Type
  convexEndpointCondition : Prop
  endpointMatchesLemma : Prop

structure ConvexityEndpointEvidence (P : BundleConvexityPackage) (Epkg : ConvexityEndpointPackage P) where
  convexEndpointConditionClosed : Epkg.convexEndpointCondition
  endpointMatchesLemmaClosed : Epkg.endpointMatchesLemma

def ConvexityEndpointClosed (P : BundleConvexityPackage) (Epkg : ConvexityEndpointPackage P) : Prop :=
  Epkg.convexEndpointCondition ∧ Epkg.endpointMatchesLemma

theorem convexity_endpoint_closed_from_evidence (P : BundleConvexityPackage) (Epkg : ConvexityEndpointPackage P) (E : ConvexityEndpointEvidence P Epkg) : ConvexityEndpointClosed P Epkg :=
  And.intro E.convexEndpointConditionClosed E.endpointMatchesLemmaClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse