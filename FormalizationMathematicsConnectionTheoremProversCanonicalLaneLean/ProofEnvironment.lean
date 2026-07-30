import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure ProofEnvironmentProofPackage where
  codingLanguage : String
  proofAssistant : String
  formalizationFramework : String
  kernelTrust : Prop
  typeSafety : Prop
  correctnessProof : kernelTrust ∧ typeSafety

def ProofEnvironmentClosed (E : ProofEnvironmentProofPackage) : Prop :=
  E.correctnessProof

theorem proof_environment_closed (E : ProofEnvironmentProofPackage) :
    ProofEnvironmentClosed E := by
  exact E.correctnessProof

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse
