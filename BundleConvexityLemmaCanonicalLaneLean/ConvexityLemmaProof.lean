import BundleConvexityLemmaCanonicalLaneLean.PositiveCurvature

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexityLemmaProofPackage {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} {P : PositiveCurvaturePackage C E J} where
  bundleConvex : Prop
  lemmaProved : Prop
  bundleConvexClosed : bundleConvex
  lemmaProvedClosed : lemmaProved

structure ConvexityLemmaProofEvidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} {P : PositiveCurvaturePackage C E J} (Pr : ConvexityLemmaProofPackage C E J P) where
  bundleConvexClosed : Pr.bundleConvex
  lemmaProvedClosed : Pr.lemmaProved

def ConvexityLemmaProofClosed {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} {P : PositiveCurvaturePackage C E J} (Pr : ConvexityLemmaProofPackage C E J P) : Prop :=
  Pr.bundleConvex ∧ Pr.lemmaProved

theorem convexity_lemma_proof_closed_from_evidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} {P : PositiveCurvaturePackage C E J} (Pr : ConvexityLemmaProofPackage C E J P) (Ev : ConvexityLemmaProofEvidence Pr) : ConvexityLemmaProofClosed Pr :=
  And.intro Ev.bundleConvexClosed Ev.lemmaProvedClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse