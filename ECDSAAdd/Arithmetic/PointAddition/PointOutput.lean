import ECDSAAdd.Arithmetic.PointAddition.PointClassification
import ECDSAAdd.Arithmetic.PointAddition.PointFlagLayout
import ECDSAAdd.Arithmetic.RegisterXor.MaskedConstant

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- c=1 时 r 的点编码 ^= 经典点 C 的编码，c=0 时 r 不变，c 保持。
分别更新 finite/x/y，O 编码为全零；这是按位 XOR，不是曲线点加，要求有效互异点寄存器布局。 -/
def maskedPointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  maskedConstant(c, [r.finite], (pointFinite C).toNat);  -- c=1 时 r.finite ^= C 的有限点标志。
  maskedConstant(c, r.x, (pointX C));  -- c=1 时 r.x ^= C 的横坐标编码。
  maskedConstant(c, r.y, (pointY C));  -- c=1 时 r.y ^= C 的纵坐标编码。
}

/-- L.generic=1 时 L.output 的点编码 ^= (有限标志 1,candidateX 的低 256 位,candidateY 的低 256 位)。
generic=0 时输出不变；候选和标志保持，要求有效输出布局，不清除候选历史。 -/
def pointGenericOutput (L : PointAddLayout) : Program := prog {
  CX L.generic L.output.finite;
  copyRegister((some L.generic), (L.candidateX.take 256), L.output.x);  -- generic=1 时 output.x ^= candidateX 的低 256 位。
  copyRegister((some L.generic), (L.candidateY.take 256), L.output.y);  -- generic=1 时 output.y ^= candidateY 的低 256 位。
}

/-- c=0 时 r 的点编码 ^= C 的编码，c=1 时 r 不变，最终 c 恢复。
这是负控制的编码 XOR，不是加上 −C；要求有效互异点寄存器布局。 -/
def negativePointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  X c;
  maskedPointConstant(c, r, C);  -- c 已翻转：原 c=0 时，将 C 的编码 XOR 到 r。
  X c;
}

/-- 在分支标志和候选已正确准备时，将输入点 R 与有限常量 C 的和的编码 XOR 到 L.output。
普通分支用候选，R=C 用 2C，R=O 用 C，R=−C 用全零；输入和中间量保持，清理由调用者完成。 -/
def pointOutput (L : PointAddLayout) (C : Point) : Program := prog {
  pointGenericOutput(L);                              -- 普通分支：输出 XOR 候选坐标
  maskedPointConstant(L.double, L.output, C+C);         -- 输入为 C：输出 XOR 2C
  negativePointConstant(L.input.finite, L.output, C);   -- 输入为 O：输出 XOR C
  -- 输入为 -C 时结果是 O；O 的编码全零，无需写入任何位。
}

/-- 将点寄存器 a 的 finite/x/y 编码按位 XOR 到 b，保留 a；不进行曲线点加。
要求有效等宽且互异的点寄存器布局，只有 b 初始为零时才得到 a 的副本。 -/
def pointCopy (a b : PointReg) : Program := prog {
  CX a.finite b.finite;
  copyRegister(none, a.x, b.x);  -- b.x ^= a.x；保留源坐标 a.x。
  copyRegister(none, a.y, b.y);  -- b.y ^= a.y；保留源坐标 a.y。
}

/-- L.output 的编码 ^= 输入点 L.input 与经典常量点 C 的和的编码；输入点保持。
有效点输入、布局和零工作区条件下，工作区最终恢复零；输出为零时直接得到 R+C。
有限 C 时先计算安全候选，再选择正确分支并清理；C=O 时直接 XOR 输入点编码。 -/
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
