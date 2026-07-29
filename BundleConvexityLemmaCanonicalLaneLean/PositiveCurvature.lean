import BundleConvexityLemmaCanonicalLaneLean.JacobiFields

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure PositiveCurvaturePackage {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} where
  sectionalCurvaturePositive : Prop
  ricciCurvaturePositive : Prop
  bonnetMyersDiameter : Prop
  conjugateRadiusPositive : Prop
  conjugateRadiusPositiveClosed : conjugateRadiusPositive
  bonnetMyersDiameterClosed : bonnetMyersDiameter
  ricciCurvaturePositiveClosed : ricciCurvaturePositive
  sectionalCurvaturePositiveClosed : sectionalCurvaturePositive

structure PositiveCurvatureEvidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} (P : PositiveCurvaturePackage C E J) where
  conjugateRadiusPositiveClosed : P.conjugateRadiusPositive
  bonnetMyersDiameterClosed : P.bonnetMyersDiameter
  ricciCurvaturePositiveClosed : P.ricciCurvaturePositive
  sectionalCurvaturePositiveClosed : P.sectionalCurvaturePositive

def PositiveCurvatureClosed {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} (P : PositiveCurvaturePackage C E J) : Prop :=
  P.conjugateRadiusPositive ∧ P.bonnetMyersDiameter ∧ P.ricciCurvaturePositive ∧ P.sectionalCurvaturePositive

theorem positive_curvature_closed_from_evidence {C : AffineConnectionPackage} {E : ExponentialMapPackage C} {J : JacobiFieldPackage C E} (P : PositiveCurvaturePackage C E J) (Ev : PositiveCurvatureEvidence P) : PositiveCurvatureClosed P :=
  And.intro Ev.conjugateRadiusPositiveClosed (And.intro Ev.bonnetMyersDiameterClosed (And.intro Ev.ricciCurvaturePositiveClosed Ev.sectionalCurvaturePositiveClosed))

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse