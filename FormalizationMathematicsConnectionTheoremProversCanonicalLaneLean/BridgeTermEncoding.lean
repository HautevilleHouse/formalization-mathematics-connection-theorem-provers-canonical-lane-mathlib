import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean

inductive TermEncoding where
  | var (name : String)
  | app (fn : TermEncoding) (arg : TermEncoding)
  | lam (var : String) (body : TermEncoding)
  | num (value : Nat)
  | bool (value : Prop)
deriving Repr, DecidableEq

structure EncodingBridge where
  sourceTerm : TermEncoding
  targetTerm : TermEncoding
  encodingCorrect : Prop
  encodingCorrectTerm : encodingCorrect

def EncodingBridgeClosed (E : EncodingBridge) : Prop :=
  E.encodingCorrect

theorem encoding_bridge_closed (E : EncodingBridge) : EncodingBridgeClosed E := by
  exact E.encodingCorrectTerm

end FormalizationMathematicsConnectionTheoremProversCanonicalLaneLean
end HautevilleHouse