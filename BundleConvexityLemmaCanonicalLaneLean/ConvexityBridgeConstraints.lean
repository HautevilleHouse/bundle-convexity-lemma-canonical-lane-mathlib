import BundleConvexityLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexityBridgeConstraints where
  curvatureConstraint : Prop
  linearConnectionCompatible : Prop
  subgradientInvariant : Prop

def ConvexityBridgeConstraintsClosed (C : ConvexityBridgeConstraints) : Prop :=
  C.curvatureConstraint ∧ C.linearConnectionCompatible ∧ C.subgradientInvariant

theorem convexity_bridge_constraints_closed_from_evidence
    (C : ConvexityBridgeConstraints)
    (hcurv : C.curvatureConstraint)
    (hconn : C.linearConnectionCompatible)
    (hsub : C.subgradientInvariant) :
    ConvexityBridgeConstraintsClosed C := by
  exact And.intro hcurv (And.intro hconn hsub)

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse