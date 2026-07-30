import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProvers

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FormalizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FormalizationMathematicsConnectionTheoremProvers
end HautevilleHouse
