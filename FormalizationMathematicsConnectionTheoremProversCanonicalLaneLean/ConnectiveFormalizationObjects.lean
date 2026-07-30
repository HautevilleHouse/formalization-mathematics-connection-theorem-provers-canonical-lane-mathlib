import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProvers

structure FormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProvableObject where
  space : FormalizationSpace
  formalTheory : Prop
  proofWitness : Prop
  conclusion : proofWitness

structure FormalizationEndgameState where
  object : ProvableObject

def FormalizationWitnessClosed (O : ProvableObject) : Prop :=
  O.proofWitness

end FormalizationMathematicsConnectionTheoremProvers
end HautevilleHouse
