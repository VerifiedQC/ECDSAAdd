import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.ModularInverse.CertifiedSpecs

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- XOR 模逆元；证书要求 Kaliski 初态已准备好，结束时恢复该初态。 -/
def inverseLoop (L : InverseLoopLayout) (q : Nat) : CheckedProgram :=
  certified {
    L.out ^= inverse(L.first.v) mod q;
  } using (Arithmetic.inverseLoop L q)
    by (fun hnd hn hw hl hm ha ht hout => CertifiedSpecs.inverseLoop L hnd hn hw hl hm ha ht hout q)

end ECDSAAdd.Arithmetic.Certified
