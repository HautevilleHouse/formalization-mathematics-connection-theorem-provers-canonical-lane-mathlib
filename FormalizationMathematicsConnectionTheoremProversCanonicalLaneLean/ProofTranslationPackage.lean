import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure ProofTranslationSource where
  sourceSystem : String
  targetSystem : String
  translationMapping : Type
  soundness : Prop
  completeness : Prop

structure ProofTranslationEvidence (T : ProofTranslationSource) where
  soundnessClosed : T.soundness
  completenessClosed : T.completeness

def ProofTranslationClosed (T : ProofTranslationSource) : Prop :=
  T.soundness ∧ T.completeness

theorem proof_translation_closed_from_evidence (T : ProofTranslationSource)
    (E : ProofTranslationEvidence T) : ProofTranslationClosed T :=
  And.intro E.soundnessClosed E.completenessClosed

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse