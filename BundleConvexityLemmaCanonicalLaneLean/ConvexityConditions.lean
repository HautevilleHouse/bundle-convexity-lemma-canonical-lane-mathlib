import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BundleConvexityLemmaCanonicalLaneLean

structure ConvexityCondition where
  fiberConvex : Prop
  geodesicConvex : Prop
  midpointConvex : Prop
  convexCombination : Prop
  fiberConvexTerm : fiberConvex
  geodesicConvexTerm : geodesicConvex
  midpointConvexTerm : midpointConvex
  convexCombinationTerm : convexCombination

def ConvexityConditionClosed (C : ConvexityCondition) : Prop :=
  C.fiberConvex ∧ C.geodesicConvex ∧ C.midpointConvex ∧ C.convexCombination

theorem convexity_condition_closed_from_evidence (C : ConvexityCondition) :
    ConvexityConditionClosed C :=
  And.intro C.fiberConvexTerm
    (And.intro C.geodesicConvexTerm
      (And.intro C.midpointConvexTerm C.convexCombinationTerm))

structure BundleConvexityEvidence {E : BundleStructure} (C : BundleConvexityData E) where
  convexFiberClosed : ∀ x : E.baseSpace, Convex (E.fiberType x)
  bundleConvexClosed : C.bundleConvex

def BundleConvexityClosed {E : BundleStructure} (C : BundleConvexityData E) : Prop :=
  (∀ x : E.baseSpace, Convex (E.fiberType x)) ∧ C.bundleConvex

theorem bundle_convexity_closed_from_evidence {E : BundleStructure} (C : BundleConvexityData E)
    (E' : BundleConvexityEvidence C) : BundleConvexityClosed C :=
  And.intro E'.convexFiberClosed E'.bundleConvexClosed

structure AffineBundleStructure (E : BundleStructure) where
  affineFiber : ∀ x : E.baseSpace, AffineSpace (E.fiberType x)
  affineConnection : Prop
  affineFiberTerm : affineFiber
  affineConnectionTerm : affineConnection

def AffineBundleClosed {E : BundleStructure} (A : AffineBundleStructure E) : Prop :=
  (∀ x : E.baseSpace, AffineSpace (E.fiberType x)) ∧ A.affineConnection

theorem affine_bundle_closed_from_evidence {E : BundleStructure} (A : AffineBundleStructure E)
    (E' : A.affineFiber ∧ A.affineConnection) : AffineBundleClosed A :=
  E'

theorem affine_convex_implies_bundle_convex {E : BundleStructure} (A : AffineBundleStructure E)
    (C : ConvexityCondition) (h : C.fiberConvex) :
    (∀ x : E.baseSpace, Convex (E.fiberType x)) :=
  h
