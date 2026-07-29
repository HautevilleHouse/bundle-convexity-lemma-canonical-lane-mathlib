import BundleConvexityLemmaCanonicalLaneLean.BundleConvexityCore

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure SubgradientEvidence where
  subgradientExists : Prop
  monotoneOperator : Prop
  resolventWellDefined : Prop
  subgradientExistsClosed : subgradientExists
  monotoneOperatorClosed : monotoneOperator
  resolventWellDefinedClosed : resolventWellDefined

def SubgradientEvidenceClosed (E : SubgradientEvidence) : Prop :=
  E.subgradientExists ∧ E.monotoneOperator ∧ E.resolventWellDefined

theorem subgradient_evidence_closed (E : SubgradientEvidence) :
    SubgradientEvidenceClosed E := by
  exact And.intro E.subgradientExistsClosed
    (And.intro E.monotoneOperatorClosed E.resolventWellDefinedClosed)

end BundleConvexityLemmaCanonicalLaneLean
end HautevilleHouse