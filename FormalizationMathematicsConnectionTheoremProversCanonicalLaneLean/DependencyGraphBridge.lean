import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

structure DependencyGraph where
  nodes : List String
  edges : List (String × String)
  acyclic : Prop

structure DependencyGraphEvidence (G : DependencyGraph) where
  acyclicClosed : G.acyclic

def DependencyGraphClosed (G : DependencyGraph) : Prop :=
  G.acyclic

theorem dependency_graph_closed_from_evidence (G : DependencyGraph)
    (E : DependencyGraphEvidence G) : DependencyGraphClosed G :=
  E.acyclicClosed

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse