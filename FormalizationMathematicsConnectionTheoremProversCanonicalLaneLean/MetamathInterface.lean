import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure MetamathDatabase where
  statements : List String
  proofs : List String
  verifierSoundness : Prop

structure MetamathDatabaseEvidence (M : MetamathDatabase) where
  verifierSoundnessClosed : M.verifierSoundness

def MetamathDatabaseClosed (M : MetamathDatabase) : Prop :=
  M.verifierSoundness

theorem metamath_database_closed_from_evidence (M : MetamathDatabase)
    (E : MetamathDatabaseEvidence M) : MetamathDatabaseClosed M :=
  E.verifierSoundnessClosed

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse