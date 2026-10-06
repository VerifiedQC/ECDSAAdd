import ECDSAAdd.Arithmetic.PointAddition.CertifiedSpecs

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- 候选点寄存器 a/o 的常数模减 XOR；常数装载和清理属于同一实现。 -/
def pointSubConstant (L : PointAddLayout) (a o : CandidateField) (k : Nat) : CheckedProgram :=
  prog {
    (L.reg o) ^= ((L.reg a) - const(k)) mod p using (Arithmetic.pointSubConstant L (L.reg a) (L.reg o) k) by (fun h hn v G ha ho hak hok hnd hA hK =>
      CertifiedSpecs.pointSubConstant L h hn v G a o ha ho hak hok hnd hA hK k);
  }

def pointSquare (L : PointAddLayout) : CheckedProgram :=
  prog {
    L.square ^= (L.slope * L.slope) mod p using (Arithmetic.pointSquare L) by (CertifiedSpecs.pointSquare L);
  }

def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : CheckedProgram :=
  prog {
    if L.core.generic { r = (r + const(k.val)) mod p; } using (Arithmetic.pointInPlaceConstantAdd L r k) by (fun hw hn hr => CertifiedSpecs.pointInPlaceConstantAdd L hw hn r hr k);
  }

/-- 清零斜率是有条件的可逆清理，不是任意寄存器重置。 -/
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : CheckedProgram :=
  prog {
    if L.core.generic { L.inPlaceSlope = const(0); } using (Arithmetic.pointInPlaceClearSlope L lambdaStar) by (fun hw hn X Y A => CertifiedSpecs.pointInPlaceClearSlope L hw hn X Y A lambdaStar);
  }

/-- 普通点加：先保存输入值，再写新坐标；共享斜率及其清理只执行一次。 -/
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : CheckedProgram :=
  prog {
    {
      let x := L.point.x;
      let y := L.point.y;
      let slope := field((y - const(cy.val)) / (x - const(cx.val))) mod p;
      if L.core.generic {
        L.point.x = field(slope * slope - x - const(cx.val)) mod p;
        L.point.y = field(slope * (x - L.point.x) - y) mod p;
      };
    } using (Arithmetic.pointInPlaceGeneric L cx cy lambdaStar) by (fun hw hn X Y => CertifiedSpecs.pointInPlaceGeneric L hw hn X Y cx cy lambdaStar);
  }

end ECDSAAdd.Arithmetic.Certified
