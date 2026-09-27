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

/-- 从零装入安全分母 v=(L.control=1 ? L.denominator : 1)，以及求逆初值 u=p、s=1。 -/
def divideLoad (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow; -- 用于保存安全分母。
  let leastBit := L.vBit; -- 安全分母的最低位。
  let u := L.inner.first.u; -- 求逆所用的数据寄存器 u。
  let s := L.inner.first.s; -- 求逆所用的系数寄存器 s。
  CX (L.control XOR 1) leastBit;                 -- control=0 时 denominatorCopy=1。
  CXor L.control denominatorCopy L.denominator; -- control=1 时 denominatorCopy=denominator。
  xorConstant(u, p);                                    -- u = p
  xorConstant(s, 1);                                    -- s = 1
}

/-- 清零 divideLoad 装入的 v、u、s；要求它们已恢复到装载时的值。 -/
def divideUnload (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow; -- 保存已恢复的安全分母。
  let leastBit := L.vBit; -- 安全分母的最低位。
  xorConstant(L.inner.first.s, 1);                      -- 清零 s。
  xorConstant(L.inner.first.u, p);                      -- 清零 u。
  CXor L.control denominatorCopy L.denominator; -- control=1 时清零分母副本。
  CX (L.control XOR 1) leastBit;                 -- control=0 时清零常量 1。
}

/-- Proof-facing expansion of the readable program; the instruction sequence is unchanged. -/
theorem divideUnload_program (L : DivideLayout) :
    divideUnload L =
  xorConstant L.inner.first.s 1 ++ xorConstant L.inner.first.u p ++
  copyRegister (some L.control) L.denominator L.vLow ++
  [.X L.vBit,.CX L.control L.vBit] := by
  simp only [divideUnload, List.append_assoc]
  rfl

/-- 除法内部的受控乘积累加/累减：参数为 control、两个输入和目标。 -/
structure DivisionProductOps where
  controlledMulAdd : Wire → List Wire → List Wire → List Wire → Program
  controlledMulSub : Wire → List Wire → List Wire → List Wire → Program

/-- L 提供求逆后可借用的零工作位，不借走仍存活的逆元及历史。
borrow[0] 是累加目标的零扩展高位，borrow[1…1827] 是原 Montgomery 工作区；模数固定为 p。 -/
def divisionProductContext (L : DivideLayout) : CircuitDSL.Context DivisionProductOps := {
  operations := {
    controlledMulAdd := fun control x y out =>
      montMulControlledAdd control
        (borrowedMont L.borrow L.inner.first.done 1 x y (out++[L.borrowedBit 0])) p
    controlledMulSub := fun control x y out =>
      montMulControlledSub control
        (borrowedMont L.borrow L.inner.first.done 1 x y (out++[L.borrowedBit 0])) p
  }
}

/-- L.control=1 时 L.acc ← (L.acc+L.numerator/L.denominator) mod p，为 0 时不变。
p 是 secp256k1 坐标域的模数；除法表示乘模逆元，启用时要求分母非零，输入值均在 [0,p)。 -/
def divideAdd (L : DivideLayout) : Program := prog using (divisionProductContext L) {
  let inverse := L.inner;    -- inverse.a 用于保存逆元。
  divideLoad(L);                                  -- v = control ? denominator : 1；u=p，s=1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  controlledMulAdd L.control inverse.a L.numerator L.acc; -- control=1 时 acc += numerator/denominator (mod p)。
  inverseUncompute(inverse, p);                    -- 清零逆元，恢复求逆初态。
  divideUnload(L);                                -- 清零 v/u/s。
}

/-- L.control=1 时 L.acc ← (L.acc−L.numerator/L.denominator) mod p，为 0 时不变。
p 是 secp256k1 坐标域的模数；除法表示乘模逆元，启用时要求分母非零，输入值均在 [0,p)。 -/
def divideSub (L : DivideLayout) : Program := prog using (divisionProductContext L) {
  let inverse := L.inner; -- inverse.a 用于保存逆元。
  divideLoad(L);                                  -- v = control ? denominator : 1；u=p，s=1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  controlledMulSub L.control inverse.a L.numerator L.acc; -- control=1 时 acc -= numerator/denominator (mod p)。
  inverseUncompute(inverse, p);                    -- 清零逆元，恢复求逆初态。
  divideUnload(L);                                -- 清零 v/u/s。
}

/-- 接线简写与原有布局接口生成相同门列；供下游规格与资源证明展开。 -/
theorem divideAdd_program (L : DivideLayout) :
    divideAdd L = divideLoad L ++ inverseCompute L.inner p ++
      montMulControlledAdd L.control L.multiply p ++ inverseUncompute L.inner p ++
      divideUnload L := rfl

theorem divideSub_program (L : DivideLayout) :
    divideSub L = divideLoad L ++ inverseCompute L.inner p ++
      montMulControlledSub L.control L.multiply p ++ inverseUncompute L.inner p ++
      divideUnload L := rfl

end ECDSAAdd.Arithmetic
