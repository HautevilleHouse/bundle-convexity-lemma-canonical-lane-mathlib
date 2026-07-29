import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexDomain where
  baseM : Type u
  fiber : baseM -> Type v
  totalSpace : Type w
  projection : totalSpace -> baseM
  convexStructure : (x : baseM) -> Set (fiber x)
  convexOnFiber : (x : baseM) -> Convex ℝ (convexStructure x)
  bundleSmooth : Prop

structure BundleConvexPackage where
  domain : BundleConvexDomain
  convexCombinationLaw : Prop
  linearStructureCompatible : Prop
  closedUnderLimits : Prop

structure BundleConvexEvidence (B : BundleConvexPackage) where
  convexCombinationLawClosed : B.convexCombinationLaw
  linearStructureCompatibleClosed : B.linearStructureCompatible
  closedUnderLimitsClosed : B.closedUnderLimits

def BundleConvexClosed (B : BundleConvexPackage) : Prop :=
  B.convexCombinationLaw ∧ B.linearStructureCompatible ∧ B.closedUnderLimits

theorem bundle_convex_closed_from_evidence (B : BundleConvexPackage) (E : BundleConvexEvidence B) :
    BundleConvexClosed B := by
  exact And.intro E.convexCombinationLawClosed
    (And.intro E.linearStructureCompatibleClosed E.closedUnderLimitsClosed)

end HautevilleHouse
end BundleConvexityLemmaCanonicalLaneLean