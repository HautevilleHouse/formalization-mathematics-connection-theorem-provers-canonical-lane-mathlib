import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure AxiomReductionPackage where
  originalAxioms : List String
  reducedAxioms : List String
  equivalenceProof : Prop
  minimality : Prop

structure AxiomReductionEvidence (A : AxiomReductionPackage) where
  equivalenceProofClosed : A.equivalenceProof
  minimalityClosed : A.minimality

def AxiomReductionClosed (A : AxiomReductionPackage) : Prop :=
  A.equivalenceProof ∧ A.minimality

theorem axiom_reduction_closed_from_evidence (A : AxiomReductionPackage)
    (E : AxiomReductionEvidence A) : AxiomReductionClosed A :=
  And.intro E.equivalenceProofClosed E.minimalityClosed

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse