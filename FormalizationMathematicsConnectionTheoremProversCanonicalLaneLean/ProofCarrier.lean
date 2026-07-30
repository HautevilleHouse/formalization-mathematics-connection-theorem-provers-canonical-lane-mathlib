import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure ProofCarrierPackage where
  theorem : Prop
  proofTerm : Prop
  connectionToAdmissibleClass : AdmissibleClass
  bridgeClosedProof : bridgeClosed connectionToAdmissibleClass
  gateClosedProof : gateClosed connectionToAdmissibleClass

structure ProofCarrierEvidence (P : ProofCarrierPackage) where
  theoremClosed : P.theorem
  proofTermClosed : P.proofTerm

def ProofCarrierClosed (P : ProofCarrierPackage) : Prop :=
  P.theorem ∧ P.proofTerm

theorem proof_carrier_closed_from_evidence (P : ProofCarrierPackage) (E : ProofCarrierEvidence P) :
    ProofCarrierClosed P := by
  exact And.intro E.theoremClosed E.proofTermClosed

theorem proof_carrier_yields_constrained_closure (P : ProofCarrierPackage) :
    bridgeClosed (P.connectionToAdmissibleClass) ∧ gateClosed (P.connectionToAdmissibleClass) := by
  exact And.intro P.bridgeClosedProof P.gateClosedProof

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse