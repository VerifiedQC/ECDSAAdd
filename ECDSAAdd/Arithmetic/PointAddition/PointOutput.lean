import ECDSAAdd.Arithmetic.PointAddition.PointClassification
import ECDSAAdd.Arithmetic.PointAddition.PointFlagLayout
import ECDSAAdd.Arithmetic.RegisterXor.MaskedConstant

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- c=1 时 r 的点编码 ^= C 的编码，为 0 时不变；C 是经典常量点。
这是按位 XOR，不是曲线点加。 -/
def maskedPointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  CConst c [r.finite] (pointFinite C).toNat; -- c=1 时 r.finite ^= C 的有限点标志。
  CConst c r.x (pointX C);                  -- c=1 时 r.x ^= C 的横坐标。
  CConst c r.y (pointY C);                  -- c=1 时 r.y ^= C 的纵坐标。
}

/-- L.generic=1 时 L.output 的点编码 ^= (有限标志 1, candidateX 的低 256 位, candidateY 的低 256 位)。 -/
def pointGenericOutput (L : PointAddLayout) : Program := prog {
  CX L.generic L.output.finite;
  CXor L.generic L.output.x (L.candidateX.take 256); -- generic=1 时 output.x ^= candidateX 的低 256 位。
  CXor L.generic L.output.y (L.candidateY.take 256); -- generic=1 时 output.y ^= candidateY 的低 256 位。
}

/-- c=0 时 r 的点编码 ^= 经典点 C 的编码，为 1 时不变；不是加上 −C。 -/
def negativePointConstant (c : Wire) (r : PointReg) (C : Point) : Program := prog {
  X c;
  maskedPointConstant(c, r, C);  -- 原 c=0 时 r 的编码 ^= C 的编码。
  X c;
}

/-- 分支标志和候选已准备好时，L.output 的点编码 ^= (L.input+C) 的编码，C 是经典有限点。 -/
def pointOutput (L : PointAddLayout) (C : Point) : Program := prog {
  pointGenericOutput(L);                              -- 普通分支：output 编码 ^= 候选点。
  CPointXor L.double L.output (C+C);              -- 输入为 C：output 编码 ^= 2C。
  CPointXor (L.input.finite XOR 1) L.output C;    -- 输入为 O：output 编码 ^= C。
  -- 输入为 -C 时结果是 O，编码全零，无需写入。
}

/-- b 的点编码 ^= a 的点编码；b 初始为零时得到 a 的副本，不是曲线点加。 -/
def pointCopy (a b : PointReg) : Program := prog {
  CX a.finite b.finite;
  copyRegister(none, a.x, b.x);  -- b.x ^= a.x
  copyRegister(none, a.y, b.y);  -- b.y ^= a.y
}

/-- L.output 的点编码 ^= (L.input+C) 的编码，C 是经典常量曲线点。 -/
def pointAddOut (L : PointAddLayout) (C : Point) : Program :=
  match C with
  | .zero => pointCopy L.input L.output -- C=O：output 编码 ^= input 编码。
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => prog {
      pointFlagsCompute(L, cx, cy);  -- 准备普通/倍点分支标志。
      pointCandidateCompute(L, cx, cy);  -- 计算斜率及普通点加候选坐标。
      pointOutput(L, C);  -- output 编码 ^= (input+C) 编码。
      pointCandidateClear(L, cx, cy);  -- 清零候选及中间量。
      pointFlagsClear(L, cx, cy);  -- 清零分支标志。
    }

end ECDSAAdd.Arithmetic
