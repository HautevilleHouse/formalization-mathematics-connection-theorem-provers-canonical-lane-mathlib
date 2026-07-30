import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure LogicalFrameworkProofPackage where
  logicType : String
  axiomSystem : Prop
  deductionRules : Prop
  soundness : Prop
  completeness : Prop
  frameworkProof : axiomSystem ∧ deductionRules ∧ soundness ∧ completeness

def LogicalFrameworkClosed (L : LogicalFrameworkProofPackage) : Prop :=
  L.frameworkProof

theorem logical_framework_closed (L : LogicalFrameworkProofPackage) :
    LogicalFrameworkClosed L := by
  exact L.frameworkProof

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse
