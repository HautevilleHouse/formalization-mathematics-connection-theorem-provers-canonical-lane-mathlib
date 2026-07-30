import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure FormalizationProofCertificate where
  formalizationComplete : Prop
  connectionEstablished : Prop
  theoremProven : Prop
  formalizationCompleteTerm : formalizationComplete
  connectionEstablishedTerm : connectionEstablished
  theoremProvenTerm : theoremProven

def FormalizationProofCertificateClosed (C : FormalizationProofCertificate) : Prop :=
  C.formalizationComplete ∧ C.connectionEstablished ∧ C.theoremProven

theorem formalization_proof_certificate_closed
    (C : FormalizationProofCertificate) : FormalizationProofCertificateClosed C := by
  exact And.intro C.formalizationCompleteTerm (And.intro C.connectionEstablishedTerm C.theoremProvenTerm)

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse