import ECDSAAdd.Arithmetic.PointAddition.PointClassification
import ECDSAAdd.Arithmetic.PointAddition.PointFlagLayout
import ECDSAAdd.Arithmetic.RegisterXor.MaskedConstant

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- 经典点编码只在非零常量位上施 CX。 -/
def maskedPointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  maskedConstant(c, [r.finite], (pointFinite C).toNat);  -- c=1 时 r.finite ^= C 的有限点标志。
  maskedConstant(c, r.x, (pointX C));  -- c=1 时 r.x ^= C 的横坐标编码。
  maskedConstant(c, r.y, (pointY C));  -- c=1 时 r.y ^= C 的纵坐标编码。
}

/-- 普通结果按低 256 位复制，有限位直接异或分支标志。 -/
def pointGenericOutput (L : PointAddLayout) : Program := prog {
  CX L.generic L.output.finite;
  copyRegister((some L.generic), (L.candidateX.take 256), L.output.x);  -- generic=1 时 output.x ^= candidateX 的低 256 位。
  copyRegister((some L.generic), (L.candidateY.take 256), L.output.y);  -- generic=1 时 output.y ^= candidateY 的低 256 位。
}

def negativePointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  X c;
  maskedPointConstant(c, r, C);  -- c 已翻转：原 c=0 时，将 C 的编码 XOR 到 r。
  X c;
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
  CX a.finite b.finite;
  copyRegister(none, a.x, b.x);  -- b.x ^= a.x；保留源坐标 a.x。
  copyRegister(none, a.y, b.y);  -- b.y ^= a.y；保留源坐标 a.y。
}

/-- 完整点加的具体门列。有限常量总是执行安全候选计算，然后选择结果并清理。 -/
def pointAddOut (L : PointAddLayout) (C : Point) : Program :=
  match C with
  | .zero => pointCopy L.input L.output -- C=O：output 的编码 ^= 输入点编码。
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => prog {
      pointFlagsCompute(L, cx, cy);  -- 有限输入时检测 x=cx、y=-cy，再计算普通/倍点分支标志。
      pointCandidateCompute(L, cx, cy);  -- 以安全分母计算 slope 和普通点加候选坐标；保留中间量供清理。
      pointOutput(L, C);  -- 将选中分支的 R+C 编码 XOR 到 output。
      pointCandidateClear(L, cx, cy);  -- 重算各 XOR 结果，清零候选坐标、斜率及其余中间量。
      pointFlagsClear(L, cx, cy);  -- 输入未变，重算并清零判等与分支标志。
    }

end ECDSAAdd.Arithmetic
