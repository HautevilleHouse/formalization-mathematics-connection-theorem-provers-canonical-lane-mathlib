import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure FormalizationPackage where
  formalSystem : Type u
  theoremProverConnection : Prop
  proofTermsConstructed : Prop
  bridgeClosedFromFormalization : bridgeClosed A

structure FormalizationEvidence (F : FormalizationPackage) where
  theoremProverConnectionClosed : F.theoremProverConnection
  proofTermsConstructedClosed : F.proofTermsConstructed

def FormalizationClosed (F : FormalizationPackage) : Prop :=
  F.theoremProverConnection ∧ F.proofTermsConstructed

theorem formalization_closed_from_evidence (F : FormalizationPackage) (E : FormalizationEvidence F) :
    FormalizationClosed F := by
  exact And.intro E.theoremProverConnectionClosed E.proofTermsConstructedClosed

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse