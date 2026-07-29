import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure LinearInterpolationSpace where
  baseSpace : Type u
  interpolationFunction : Type v
  convexCombinationClosed : Prop
  linearInterpolationExists : Prop

structure LinearInterpolationEvidence (L : LinearInterpolationSpace) where
  convexCombinationClosedClosed : L.convexCombinationClosed
  linearInterpolationExistsClosed : L.linearInterpolationExists

def LinearInterpolationClosed (L : LinearInterpolationSpace) : Prop :=
  L.convexCombinationClosed ∧ L.linearInterpolationExists

theorem linear_interpolation_closed_from_evidence
    (L : LinearInterpolationSpace) (E : LinearInterpolationEvidence L) :
    LinearInterpolationClosed L := by
  exact And.intro E.convexCombinationClosedClosed E.linearInterpolationExistsClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse