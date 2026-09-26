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
L.control/denominator 保持；控制为零时也能进行非零分母的求逆，沿用 DivideLayout 的有效布局。

参数：

- `L`：除法布局：control 是外部使能，numerator/denominator 是保留的分子/分母寄存器，acc 是原地累加或累减目标，inner 保存逆元、历史及工作位。
-/
def divideLoad (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow; -- 求逆用的安全分母副本，初始为零；控制关时写 1、开时写真实分母。
  let leastBit := L.vBit; -- 安全分母副本的最低位，用来构造控制关闭时的常数 1。
  let u := L.inner.first.u; -- Kaliski 数据寄存器 u，初始为零，装入模数 p。
  let s := L.inner.first.s; -- Kaliski 系数寄存器 s，初始为零，装入 1。
  X leastBit;
  CX L.control leastBit;                         -- control=0 时 denominatorCopy=1
  copyRegister(some L.control, L.denominator, denominatorCopy); -- control=1 时复制真实分母
  xorConstant(u, p);                                    -- Kaliski 初值 u=p
  xorConstant(s, 1);                                    -- Kaliski 初值 s=1，其余工作位为零
}

/-- 在内部恢复到安全分母 v、u=p、s=1 后清零这些寄存器，保留 control/denominator。
要求与 divideLoad 装载值匹配；这里只反排无测量装载门。

参数：

- `L`：除法布局：control 是外部使能，numerator/denominator 是保留的分子/分母寄存器，acc 是原地累加或累减目标，inner 保存逆元、历史及工作位。
-/
def divideUnload (L : DivideLayout) : Program := prog {
  let denominatorCopy := L.vLow; -- 已恢复到求逆前初值的安全分母副本，接下来清零。
  let leastBit := L.vBit; -- 安全分母副本最低位，撤销控制关闭时的常数 1。
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

/-- 受 L.control 控制的模除法累加：acc ← (acc+control·numerator/denominator) mod p。
control=0 时 acc 不变；control=1 时要求 denominator 非零，除法表示乘模 p 逆元。
满足布局/标准代表元范围且工作区初始为零时，control/分子/分母保持，工作区恢复零。

参数：

- `L`：除法布局：control 是外部使能，numerator/denominator 是保留的分子/分母寄存器，acc 是原地累加或累减目标，inner 保存逆元、历史及工作位。
-/
def divideAdd (L : DivideLayout) : Program := prog using (divisionProductContext L) {
  let inverse := L.inner;    -- 逆元结果保存在 inverse.a；历史由 inverse 一并保留。
  divideLoad(L);                                  -- v = control ? denominator : 1；u=p，s=1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  controlledMulAdd L.control inverse.a L.numerator L.acc; -- control=1 时 acc += numerator/denominator
  inverseUncompute(inverse, p);                    -- 逆元与历史恢复到求逆前
  divideUnload(L);                                -- 清 v/u/s，归还全部工作位
}

/-- 受 L.control 控制的模除法累减：acc ← (acc−control·numerator/denominator) mod p。
control=0 时 acc 不变；control=1 时要求 denominator 非零，除法表示乘模 p 逆元。
满足布局/标准代表元范围且工作区初始为零时，control/分子/分母保持，工作区恢复零。

参数：

- `L`：除法布局：control 是外部使能，numerator/denominator 是保留的分子/分母寄存器，acc 是原地累加或累减目标，inner 保存逆元、历史及工作位。
-/
def divideSub (L : DivideLayout) : Program := prog using (divisionProductContext L) {
  let inverse := L.inner; -- 求逆布局：a 保存逆元，其他区域保存计算历史及零工作位。
  divideLoad(L);                                  -- v = control ? denominator : 1
  inverseCompute(inverse, p);                      -- inverse.a = 1/v mod p
  controlledMulSub L.control inverse.a L.numerator L.acc; -- control=1 时 acc -= numerator/denominator
  inverseUncompute(inverse, p);                    -- 恢复求逆前状态
  divideUnload(L);                                -- 清工作位；分子、分母保持
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
