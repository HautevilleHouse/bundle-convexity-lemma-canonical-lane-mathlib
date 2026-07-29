import BundleConvexityLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityLemmaPackage where
  totalSpace : Type u
  baseSpace : Type v
  projection : totalSpace -> baseSpace
  fiber : baseSpace -> Type w
  section : baseSpace -> totalSpace
  convexCombination : totalSpace -> totalSpace -> ℝ -> totalSpace
  fiberConvex : Prop
  sectionConvex : Prop
  fiberConvexClosed : fiberConvex
  sectionConvexClosed : sectionConvex

structure BundleConvexityEvidence (B : BundleConvexityLemmaPackage) where
  fiberConvexClosed : B.fiberConvex
  sectionConvexClosed : B.sectionConvex

def BundleConvexityClosed (B : BundleConvexityLemmaPackage) : Prop :=
  B.fiberConvex ∧ B.sectionConvex

theorem bundle_convexity_closed_from_evidence (B : BundleConvexityLemmaPackage) (E : BundleConvexityEvidence B) : BundleConvexityClosed B :=
  And.intro E.fiberConvexClosed E.sectionConvexClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse