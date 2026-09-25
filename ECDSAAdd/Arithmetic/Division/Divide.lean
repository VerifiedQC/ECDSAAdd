import ECDSAAdd.Arithmetic.ModularInverse.InverseResources
import ECDSAAdd.Arithmetic.ModularMultiplication.MontBorrow

namespace ECDSAAdd.Arithmetic
open Instr

/-- 除法保留分母/分子，只累加到 acc；inner 的历史保存到乘积清理后。
§16.2 的直接门列；完整规格、逐线保持和资源见 DivideSpec/DivideSupport。 -/
structure DivideLayout where
  control : Wire
  denominator : List Wire
  numerator : List Wire
  acc : List Wire
  inner : InverseLoopLayout

namespace DivideLayout

def work (L : DivideLayout) : List Wire := L.inner.wires
def wires (L : DivideLayout) : List Wire :=
  L.control :: L.denominator ++ L.numerator ++ L.acc ++ L.work

def inverseView (L : DivideLayout) : InverseLayout := ⟨L.inner,L.denominator⟩

structure Widths (L : DivideLayout) : Prop where
  inverse : L.inverseView.Widths
  numerator : L.numerator.length=256
  acc : L.acc.length=256

/-- 准备后明确为零的两段，排除仍存活的历史和逆元 a。 -/
def borrow (L : DivideLayout) : List Wire := L.inner.temp ++ L.inner.arithmetic.wires

/-- 位宽条件保证所有索引有效；done 只使坏布局上的定义全域成立。 -/
def borrowedBit (L : DivideLayout) (i : Nat) : Wire := L.borrow.getD i L.inner.first.done

/-- 输出高位为B[0]，Montgomery工作区借用B[1…1827]。 -/
def multiply (L : DivideLayout) : MontLayout :=
  borrowedMont L.borrow L.inner.first.done 1 L.inner.a L.numerator (L.acc++[L.borrowedBit 0])

def vLow (L : DivideLayout) : List Wire := L.inverseView.vLow
def vBit (L : DivideLayout) : Wire := L.vLow.headD L.inner.first.high.v

theorem borrow_length (L : DivideLayout) (hw : L.Widths) : L.borrow.length=2315 := by
  have hb (bs : List ModBit) : (bs.flatMap ModBit.all).length=8*bs.length := by
    induction bs with
    | nil => simp
    | cons b bs ih => simp [ModBit.all,ih]; omega
  have ha : L.inner.arithmetic.width=256 := hw.inverse.arithmetic
  have ht : L.inner.temp.length=257 := hw.inverse.temp
  simp only [borrow, ModLayout.wires, List.length_append, List.length_cons,
    hb, ModLayout.bits, List.length_cons, List.length_nil, ht]
  simp only [ModLayout.width] at ha
  omega

theorem multiply_widths (L : DivideLayout) (hw : L.Widths) : L.multiply.Widths :=
  borrowedMont_widths _ _ _ _ _ _ hw.inverse.a hw.numerator (by simp [hw.acc])

theorem vLow_length (L : DivideLayout) (hw : L.Widths) : L.vLow.length=256 := by
  simp only [vLow,InverseLayout.vLow,List.length_map]
  exact hw.inverse.low

end DivideLayout

/-- 从零内部寄存器装入安全分母 v=(control=1 ? denominator : 1)，同时装入 u=p、s=1。
L.control/denominator 保持；控制为零时也能进行非零分母的求逆，沿用 DivideLayout 的有效布局。 -/
def divideLoad (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow;
  let leastBit := L.vBit;
  let u := L.inner.first.u;
  let s := L.inner.first.s;
  X leastBit;
  CX L.control leastBit;                         -- control=0 时 denominatorCopy=1
  copyRegister(some L.control, L.denominator, denominatorCopy); -- control=1 时复制真实分母
  xorConstant(u, p);                                    -- Kaliski 初值 u=p
  xorConstant(s, 1);                                    -- Kaliski 初值 s=1，其余工作位为零
}

/-- 在内部恢复到安全分母 v、u=p、s=1 后清零这些寄存器，保留 control/denominator。
要求与 divideLoad 装载值匹配；这里只反排无测量装载门。 -/
def divideUnload (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow;
  let leastBit := L.vBit;
  xorConstant(L.inner.first.s, 1);                      -- s: 1 → 0
  xorConstant(L.inner.first.u, p);                      -- u: p → 0
  copyRegister(some L.control, L.denominator, denominatorCopy); -- 清真实分母分支
  CX L.control leastBit;
  X leastBit;                                    -- 清安全分母 1 的分支
}

/-- Proof-facing expansion of the readable program; the instruction sequence is unchanged. -/
theorem divideUnload_program (L : DivideLayout) :
    divideUnload L =
  xorConstant L.inner.first.s 1 ++ xorConstant L.inner.first.u p ++
  copyRegister (some L.control) L.denominator L.vLow ++
  [.CX L.control L.vBit,.X L.vBit] := by
  simp only [divideUnload, List.append_assoc]
  rfl

/-- 受 L.control 控制的模除法累加：acc ← (acc+control·numerator/denominator) mod p。
control=0 时 acc 不变；control=1 时要求 denominator 非零，除法表示乘模 p 逆元。
满足布局/标准代表元范围且工作区初始为零时，control/分子/分母保持，工作区恢复零。 -/
def divideAdd (L : DivideLayout) : Program := prog {
  let inverse := L.inner;    -- 逆元结果保存在 inverse.a；历史由 inverse 一并保留。
  let product := L.multiply; -- 输入为 inverse.a 和 numerator，累加目标是 acc。
  divideLoad(L);                                  -- v = control ? denominator : 1；u=p，s=1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  montMulControlledAdd(L.control, product, p);      -- control=1 时 acc += numerator/denominator
  inverseUncompute(inverse, p);                    -- 逆元与历史恢复到求逆前
  divideUnload(L);                                -- 清 v/u/s，归还全部工作位
}

/-- 受 L.control 控制的模除法累减：acc ← (acc−control·numerator/denominator) mod p。
control=0 时 acc 不变；control=1 时要求 denominator 非零，除法表示乘模 p 逆元。
满足布局/标准代表元范围且工作区初始为零时，control/分子/分母保持，工作区恢复零。 -/
def divideSub (L : DivideLayout) : Program := prog {
  let inverse := L.inner;
  let product := L.multiply; -- 输入为 inverse.a 和 numerator，累减目标是 acc。
  divideLoad(L);                                  -- v = control ? denominator : 1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  montMulControlledSub(L.control, product, p);      -- control=1 时 acc -= numerator/denominator
  inverseUncompute(inverse, p);                    -- 恢复求逆前状态
  divideUnload(L);                                -- 清工作位；分子、分母保持
}

end ECDSAAdd.Arithmetic
