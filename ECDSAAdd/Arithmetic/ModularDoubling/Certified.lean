import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.ModularDoubling.ModDouble

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- 原地模倍增；证书保留奇模数、位宽、输入范围和零工作区条件。 -/
def dblInPlace (U : ModUnaryLayout) (p : Nat) : CheckedProgram :=
  prog {
    U.z = (const(2) * U.z) mod p using (Arithmetic.dblInPlace U p) by (fun n Z => dblInPlace_spec U n p Z);
  }

end ECDSAAdd.Arithmetic.Certified
