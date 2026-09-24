import ECDSAAdd.Arithmetic.PointAddition.PointClassification
import ECDSAAdd.Arithmetic.PointAddition.PointFlagLayout
import ECDSAAdd.Arithmetic.RegisterXor.MaskedConstant

namespace ECDSAAdd.Arithmetic
open Secp256k1

/-- 经典点编码只在非零常量位上施 CX。 -/
def maskedPointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  maskedConstant(c, [r.finite], (pointFinite C).toNat);
  maskedConstant(c, r.x, (pointX C));
  maskedConstant(c, r.y, (pointY C));
}

/-- 普通结果按低 256 位复制，有限位直接异或分支标志。 -/
def pointGenericOutput (L : PointAddLayout) : Program := prog {
  Instr.CX(L.generic, L.output.finite);
  copyRegister((some L.generic), (L.candidateX.take 256), L.output.x);
  copyRegister((some L.generic), (L.candidateY.take 256), L.output.y);
}

def negativePointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  Instr.X(c);
  maskedPointConstant(c, r, C);
  Instr.X(c);
}

/-- 三个互斥的输出贡献；互逆点不写入任何位。 -/
def pointOutput (L : PointAddLayout) (C : Point) : Program := prog {
  pointGenericOutput(L);                              -- 普通分支：输出 XOR 候选坐标
  maskedPointConstant(L.double, L.output, C+C);         -- 输入为 C：输出 XOR 2C
  negativePointConstant(L.input.finite, L.output, C);   -- 输入为 O：输出 XOR C
  -- 输入为 -C 时结果是 O；O 的编码全零，无需写入任何位。
}

/-- C=O 的构造期分支仅复制输入。 -/
def pointCopy (a b : PointReg) : Program := prog {
  Instr.CX(a.finite, b.finite);
  copyRegister(none, a.x, b.x);
  copyRegister(none, a.y, b.y);
}

/-- 完整点加的具体门列。有限常量总是执行安全候选计算，然后选择结果并清理。 -/
def pointAddOut (L : PointAddLayout) (C : Point) : Program :=
  match C with
  | .zero => pointCopy L.input L.output
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => prog {
      pointFlagsCompute(L, cx, cy);
      pointCandidateCompute(L, cx, cy);
      pointOutput(L, C);
      pointCandidateClear(L, cx, cy);
      pointFlagsClear(L, cx, cy);
    }

end ECDSAAdd.Arithmetic
