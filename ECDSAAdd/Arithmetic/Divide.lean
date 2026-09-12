import ECDSAAdd.Arithmetic.InverseResources
import ECDSAAdd.Arithmetic.MulAdapterResources

namespace ECDSAAdd.Arithmetic

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

/-- §16.6 的固定分割：输出高位0、临时积1…257、scratch258…1029。 -/
def multiply (L : DivideLayout) : MulAdapterLayout :=
  ⟨L.inner.a,L.numerator,L.acc++[L.borrowedBit 0],
    ⟨(L.borrow.drop 1).take 256,L.borrowedBit 257,
      (L.borrow.drop 258).take 257,(L.borrow.drop 515).take 256,L.borrowedBit 771,
      (L.borrow.drop 772).take 257,L.borrowedBit 1029⟩⟩

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

theorem multiply_width (L : DivideLayout) (hw : L.Widths) : L.multiply.width=256 := by
  simp [multiply,MulAdapterLayout.width,L.borrow_length hw]

theorem multiply_widths (L : DivideLayout) (hw : L.Widths) : L.multiply.Widths := by
  change L.multiply.core.Widths L.multiply.width ∧ L.multiply.out.length=L.multiply.width+1
  rw [L.multiply_width hw]
  constructor
  · constructor
    · exact hw.inverse.a
    · exact hw.numerator
    · constructor <;> simp [multiply,MulAdapterLayout.core,L.borrow_length hw]
  · simp [multiply,hw.acc]

theorem vLow_length (L : DivideLayout) (hw : L.Widths) : L.vLow.length=256 := by
  simp only [vLow,InverseLayout.vLow,List.length_map]
  exact hw.inverse.low

end DivideLayout

/-- 将安全分母直接写入 Kaliski v：控制为假时写1，不另占Dsafe字。 -/
def divideLoad (L : DivideLayout) : Program :=
  [.X L.vBit,.CX L.control L.vBit] ++
  copyRegister (some L.control) L.denominator L.vLow ++
  xorConstant L.inner.first.u p ++ xorConstant L.inner.first.s 1

/-- 恢复阶段归还同一分母后才能卸载；这里只反排无测量的装载门。 -/
def divideUnload (L : DivideLayout) : Program :=
  xorConstant L.inner.first.s 1 ++ xorConstant L.inner.first.u p ++
  copyRegister (some L.control) L.denominator L.vLow ++
  [.CX L.control L.vBit,.X L.vBit]

/-- acc 加上受控分子/分母；准备、乘积清理、恢复均为显式前向程序。 -/
def divideAdd (L : DivideLayout) : Program :=
  divideLoad L ++ inverseCompute L.inner p ++ mulInto L.multiply.core p ++
  controlledModAdd L.control L.multiply.addView p ++ mulClear L.multiply.core p ++
  inverseUncompute L.inner p ++ divideUnload L

/-- acc 减去受控分子/分母；只替换累加中段，不倒放带测量的除法。 -/
def divideSub (L : DivideLayout) : Program :=
  divideLoad L ++ inverseCompute L.inner p ++ mulInto L.multiply.core p ++
  controlledModSub L.control L.multiply.addView p ++ mulClear L.multiply.core p ++
  inverseUncompute L.inner p ++ divideUnload L

end ECDSAAdd.Arithmetic
