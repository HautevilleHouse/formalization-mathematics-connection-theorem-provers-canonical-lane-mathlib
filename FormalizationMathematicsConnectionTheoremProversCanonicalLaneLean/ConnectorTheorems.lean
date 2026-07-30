import canonicalLaneMathlib.AdmissibleClass
import FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean.FormalizationBridge
import FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean.ProofCarrier

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure ConnectorTheoremPackage (F : FormalizationPackage) (P : ProofCarrierPackage) where
  bridgeConsistent : bridgeClosed P.connectionToAdmissibleClass ↔ FormalizationClosed F
  gateConsistent : gateClosed P.connectionToAdmissibleClass ↔ P.theorem ∧ P.proofTerm

def ConnectorTheoremClosed {F : FormalizationPackage} {P : ProofCarrierPackage}
    (C : ConnectorTheoremPackage F P) : Prop :=
  C.bridgeConsistent ∧ C.gateConsistent

theorem connector_theorem_closed_from_evidence {F : FormalizationPackage} {P : ProofCarrierPackage}
    (C : ConnectorTheoremPackage F P) (bridge_ev : FormalizationClosed F) (gate_ev : P.theorem ∧ P.proofTerm) :
    ConnectorTheoremClosed C := by
  apply And.intro
  · intro h
    exact bridge_ev
  · intro h
    exact gate_ev

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse