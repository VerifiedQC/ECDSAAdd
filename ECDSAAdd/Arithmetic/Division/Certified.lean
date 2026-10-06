import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.Division.DivideSpec

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- control=1 时累加商；借用求逆/乘法工作区的整体实现只调用一次。 -/
def divideAdd (L : DivideLayout) : CheckedProgram :=
  prog {
    {
      let reciprocal := inverse(L.denominator) mod p;
      if L.control {
        L.acc = (L.acc + reciprocal * L.numerator) mod p;
      };
    } using (Arithmetic.divideAdd L) by (divideAdd_spec L);
  }

/-- control=0 时保持 acc；启用分支必须满足分母非零等原规格条件。 -/
def divideSub (L : DivideLayout) : CheckedProgram :=
  prog {
    {
      let reciprocal := inverse(L.denominator) mod p;
      if L.control {
        L.acc = (L.acc - reciprocal * L.numerator) mod p;
      };
    } using (Arithmetic.divideSub L) by (divideSub_spec L);
  }

end ECDSAAdd.Arithmetic.Certified
