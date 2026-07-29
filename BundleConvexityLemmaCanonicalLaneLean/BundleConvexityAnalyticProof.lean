import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure BundleConvexityAnalyticCertificate where
  convexFunctionDefined : Prop
  epigraphClosed : Prop
  lowerSemicontinuous : Prop
  convexConjugateFormula : Prop
  convexFunctionDefinedClosed : convexFunctionDefined
  epigraphClosedClosed : epigraphClosed
  lowerSemicontinuousClosed : lowerSemicontinuous
  convexConjugateFormulaClosed : convexConjugateFormula

def BundleConvexityAnalyticCertificateClosed
    (C : BundleConvexityAnalyticCertificate) : Prop :=
  C.convexFunctionDefined ∧ C.epigraphClosed ∧
  C.lowerSemicontinuous ∧ C.convexConjugateFormula

theorem bundle_convexity_analytic_certificate_closed
    (C : BundleConvexityAnalyticCertificate) :
    BundleConvexityAnalyticCertificateClosed C := by
  exact And.intro C.convexFunctionDefinedClosed
    (And.intro C.epigraphClosedClosed
      (And.intro C.lowerSemicontinuousClosed C.convexConjugateFormulaClosed))

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse