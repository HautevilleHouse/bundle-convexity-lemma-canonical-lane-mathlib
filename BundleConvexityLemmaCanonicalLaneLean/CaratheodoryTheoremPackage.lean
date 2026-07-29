import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure CaratheodoryTheoremPackage where
  pointSet : Type u
  dimension : Nat
  convexHullDimensionBound : Prop
  extremePointRepresentation : Prop

structure CaratheodoryTheoremEvidence (C : CaratheodoryTheoremPackage) where
  convexHullDimensionBoundClosed : C.convexHullDimensionBound
  extremePointRepresentationClosed : C.extremePointRepresentation

def CaratheodoryTheoremClosed (C : CaratheodoryTheoremPackage) : Prop :=
  C.convexHullDimensionBound ∧ C.extremePointRepresentation

theorem caratheodory_theorem_closed_from_evidence
    (C : CaratheodoryTheoremPackage) (E : CaratheodoryTheoremEvidence C) :
    CaratheodoryTheoremClosed C := by
  exact And.intro E.convexHullDimensionBoundClosed E.extremePointRepresentationClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse