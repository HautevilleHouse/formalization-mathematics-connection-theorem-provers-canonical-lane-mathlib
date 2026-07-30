import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure FormalizationConnectionStructure where
  sourceFormalization : Type
  targetTheoremProver : Type
  bridgeConstraint : Prop
  gateConstraint : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop

def bridgeClosed (A : FormalizationConnectionStructure) : Prop :=
  A.bridgeConstraint

def gateClosed (A : FormalizationConnectionStructure) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : FormalizationConnectionStructure) : bridgeClosed A := by
  exact A.bridgeConstraint

theorem gate_from_admissible_class (A : FormalizationConnectionStructure) : gateClosed A := by
  exact A.gateWitness

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse