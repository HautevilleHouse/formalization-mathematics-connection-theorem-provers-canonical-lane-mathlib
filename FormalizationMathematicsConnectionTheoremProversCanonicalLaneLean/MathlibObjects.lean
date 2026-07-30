import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProvers

open HautevilleHouse.CanonicalLaneMathlibCore

structure FormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FormalizationAdmittedObject where
  space : FormalizationSpace
  formalTheory : Prop
  proofWitness : Prop
  conclusion : proofWitness

structure FormalizationEndgameState where
  object : FormalizationAdmittedObject

def FormalizationWitnessClosed (O : FormalizationAdmittedObject) : Prop :=
  O.proofWitness

end FormalizationMathematicsConnectionTheoremProvers
end HautevilleHouse
