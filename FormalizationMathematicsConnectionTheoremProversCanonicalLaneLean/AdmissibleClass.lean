import FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure AdmissibleClass where
  object : FMCTPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FMCTPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse