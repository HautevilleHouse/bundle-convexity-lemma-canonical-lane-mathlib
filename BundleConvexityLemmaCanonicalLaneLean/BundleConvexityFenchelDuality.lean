import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure FenchelDualityPackage where
  conjugateFunctionDefined : Prop
  biconjugateTheorem : Prop
  dualityGapClosed : Prop
  subgradientCondition : Prop

structure FenchelDualityEvidence (F : FenchelDualityPackage) where
  conjugateFunctionDefinedClosed : F.conjugateFunctionDefined
  biconjugateTheoremClosed : F.biconjugateTheorem
  dualityGapClosedClosed : F.dualityGapClosed
  subgradientConditionClosed : F.subgradientCondition

def FenchelDualityClosed (F : FenchelDualityPackage) : Prop :=
  F.conjugateFunctionDefined ∧ F.biconjugateTheorem ∧
  F.dualityGapClosed ∧ F.subgradientCondition

theorem fenchel_duality_closed_from_evidence (F : FenchelDualityPackage)
    (E : FenchelDualityEvidence F) : FenchelDualityClosed F := by
  exact And.intro E.conjugateFunctionDefinedClosed
    (And.intro E.biconjugateTheoremClosed
      (And.intro E.dualityGapClosedClosed E.subgradientConditionClosed))

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse