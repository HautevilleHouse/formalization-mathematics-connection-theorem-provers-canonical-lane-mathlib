import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure ProverPass where
  name : String
  description : String
  passCondition : Prop
  passConditionTerm : passCondition

def ProverPassClosed (P : ProverPass) : Prop :=
  P.passCondition

theorem prover_pass_closed (P : ProverPass) : ProverPassClosed P := by
  exact P.passConditionTerm

structure ProverPipeline where
  passes : List ProverPass
  pipelineComplete : Prop
  pipelineCompleteTerm : pipelineComplete

def ProverPipelineClosed (P : ProverPipeline) : Prop :=
  P.pipelineComplete

theorem prover_pipeline_closed (P : ProverPipeline) : ProverPipelineClosed P := by
  exact P.pipelineCompleteTerm

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse