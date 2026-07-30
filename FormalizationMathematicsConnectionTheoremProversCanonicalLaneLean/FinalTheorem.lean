import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

def ConstrainedFormalizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_formalization_closed (A : AdmissibleClass) :
    ConstrainedFormalizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse
