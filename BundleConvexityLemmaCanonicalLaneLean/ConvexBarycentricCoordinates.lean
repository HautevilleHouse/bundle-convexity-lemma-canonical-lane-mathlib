import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexBarycentricCoordinateSystem where
  pointSet : Type u
  dimension : Nat
  convexHullClosed : Prop
  barycentricCoordinatesExist : Prop

structure ConvexBarycentricCoordinateEvidence (C : ConvexBarycentricCoordinateSystem) where
  convexHullClosedClosed : C.convexHullClosed
  barycentricCoordinatesExistClosed : C.barycentricCoordinatesExist

def ConvexBarycentricCoordinateClosed (C : ConvexBarycentricCoordinateSystem) : Prop :=
  C.convexHullClosed ∧ C.barycentricCoordinatesExist

theorem convex_barycentric_coordinate_closed_from_evidence
    (C : ConvexBarycentricCoordinateSystem) (E : ConvexBarycentricCoordinateEvidence C) :
    ConvexBarycentricCoordinateClosed C := by
  exact And.intro E.convexHullClosedClosed E.barycentricCoordinatesExistClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse