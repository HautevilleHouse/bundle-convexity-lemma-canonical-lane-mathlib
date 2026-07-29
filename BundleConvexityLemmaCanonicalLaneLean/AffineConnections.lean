import BundleConvexityLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure AffineConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  torsionFree : Prop
  metricCompatible : Prop
  parallelTransport : Type w
  curvatureTensor : Type x
  torsionFreeClosed : torsionFree
  metricCompatibleClosed : metricCompatible

structure AffineConnectionEvidence (C : AffineConnectionPackage) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible

def AffineConnectionClosed (C : AffineConnectionPackage) : Prop :=
  C.torsionFree ∧ C.metricCompatible

theorem affine_connection_closed_from_evidence (C : AffineConnectionPackage) (E : AffineConnectionEvidence C) : AffineConnectionClosed C :=
  And.intro E.torsionFreeClosed E.metricCompatibleClosed

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse