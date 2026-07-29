import BundleConvexityLemmaCanonicalLaneLean.ExponentialMap

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure JacobiFieldPackage {C : AffineConnectionPackage} {E : ExponentialMapPackage C} where
  jacobiEquation : Type u
  initialConditions : Type v
  linearizationOfGeodesics : Prop
  conjugatePoints : Prop
  linearizationClosed : linearizationOfGeodesics
  conjugatePointsClosed : conjugatePoints

structure JacobiFieldEvidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} (J : JacobiFieldPackage C E) where
  linearizationClosed : J.linearizationOfGeodesics
  conjugatePointsClosed : J.conjugatePoints

def JacobiFieldClosed {C : AffineConnectionPackage} {E : ExponentialMapPackage C} (J : JacobiFieldPackage C E) : Prop :=
  J.linearizationOfGeodesics ∧ J.conjugatePoints

theorem jacobi_field_closed_from_evidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} (J : JacobiFieldPackage C E) (Ev : JacobiFieldEvidence J) : JacobiFieldClosed J :=
  And.intro Ev.linearizationClosed Ev.conjugatePointsClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse