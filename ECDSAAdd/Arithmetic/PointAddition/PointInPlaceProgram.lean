import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceAnnotations

namespace ECDSAAdd.Arithmetic
open Instr Secp256k1 CertifiedTranslation
open scoped CircuitDSL

/-- r ← (r+generic·k.val) mod p，k 是经典域元素，要求 r<p。 -/
def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program := prog {
  if L.core.generic { r = (r + const(k.val)) mod p; } using (pointInPlaceConstantAddKernel L r k) by (pointConstantAdd_annotation L r k);
}

theorem pointInPlaceConstantAdd_program (L : ControlledPointLayout) (r : List Wire) (k : Fp) :
    pointInPlaceConstantAdd L r k =
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val ++
      modAddInPlace (L.inPlaceConstant r) p ++
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val := rfl

/-- generic=1 时 x ← −x mod p，为 0 时不变。 -/
def pointInPlaceNegate (L : ControlledPointLayout) : Program := prog {
  if L.core.generic { L.point.x = (const(0) - L.point.x) mod p; } using (pointInPlaceNegateKernel L) by (pointNegate_annotation L);
}

theorem pointInPlaceNegate_program (L : ControlledPointLayout) :
    pointInPlaceNegate L = controlledModSub L.core.generic L.inPlaceNegate p ++
      swapRegisters L.core.generic L.point.x L.inPlaceNegate.low ++
      controlledModAdd L.core.generic L.inPlaceNegate p := by
  change pointInPlaceNegateKernel L = _
  exact pointInPlaceNegateKernel_program L

/-- generic=1 时清零 slope：x≠0 时减去 y/x，否则 XOR 例外斜率 lambdaStar；generic=0 时不变。 -/
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : Program := prog {
  let point := L.point;
  let generic := L.core.generic;
  let slope := L.inPlaceSlope; -- 待清零的斜率。
  with xIsZero := isZero(point.x) {
    if generic AND (xIsZero XOR 1) { slope = field(slope - point.y / point.x) mod p; } using ((clearSlopeContext L).operations.ccsub generic xIsZero true slope point.y point.x) by (pointClearQuotient_annotation L);
    if generic AND xIsZero { slope ^= const(lambdaStar.val); } using ((clearSlopeContext L).operations.ccxor generic xIsZero false slope lambdaStar) by (pointClearConstant_annotation L lambdaStar);
  } using (pointZeroValue L point.x) by (pointZero_prepare L, pointZero_restore L);
}

/-- 独立判零、双控制减商、双控制常量 XOR，最后清除判零位。 -/
theorem pointInPlaceClearSlope_program (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlope L lambdaStar =
  zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
  divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
  maskedConstant L.core.equalNegY L.inPlaceSlope lambdaStar.val ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
  zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero := by
  simp only [pointInPlaceClearSlope, clearSlopeContext, ControlledPointLayout.inPlaceXZero,
    ControlledPointLayout.inPlaceDivide, List.append_assoc]

/-- 将独立配方规格转到同门列的可读原函数，供后续点加步骤使用。 -/
theorem pointClearSlope_step (L : ControlledPointLayout) (k : Fp)
    (hw : L.Widths) (hn : L.wires.Nodup) (X Y A : Fp) (G : Bool)
    (hY : G=true → Y=A*X) (hk : G=true → X=0 → A=k) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G false false initial) :
    Triple (fun s => s=initial) (pointInPlaceClearSlope L k)
      (fun t => (calculation { if L.core.generic { L.inPlaceSlope = const(0); }; }) initial t ∧
        PointInPlaceValues L X Y (if G then 0 else A) G false false t) := by
  intro s m hs
  subst initial
  have result := pointClearSlope_annotation L k hw hn X Y A G hY hk s m ⟨hv,hv.generic,hv.slope⟩
  rw [pointInPlaceClearSlopeKernel_program] at result
  rw [pointInPlaceClearSlope_program]
  refine ⟨result.1,?_,result.2.1⟩
  cases G <;> simpa only [hv.generic,hv.slope,Bool.false_eq_true,ite_false,ite_true] using result.2.2

/-- generic=1 时将 (x,y) 更新为 (x′,y′)：λ=(y−cy)/(x−cx)，x′=λ²−x−cx，y′=λ*(x−x′)−y，均 mod p。
(cx,cy) 是经典常量点坐标，要求 x≠cx；lambdaStar 用于清除例外分支斜率。generic=0 时不变。 -/
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : Program := prog {
  let x := L.point.x;
  let y := L.point.y;
  let generic := L.core.generic;
  let slope := L.inPlaceSlope; -- 用于保存斜率。

  if generic { x = (x + const((-cx).val)) mod p; } using (pointInPlaceConstantAdd L x (-cx)) by (pointConstantAdd_annotation L x (-cx));
  if generic { y = (y + const((-cy).val)) mod p; } using (pointInPlaceConstantAdd L y (-cy)) by (pointConstantAdd_annotation L y (-cy));
  if generic { slope = field(slope + y / x) mod p; } using (divideAdd (L.inPlaceDivide generic x y)) by (pointDivideAdd_annotation L);
  y = field(y - slope * x) mod p using (montMulSub L.inPlaceMultiply p) by (pointProductSub_annotation L);
  x = field(x - slope * slope) mod p using (copyRegister none slope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none slope L.inPlaceSquare.y) by (pointSquareSub_annotation L);
  if generic { x = (x + const((3*cx).val)) mod p; } using (pointInPlaceConstantAdd L x (3*cx)) by (pointConstantAdd_annotation L x (3*cx));
  y = field(y + slope * x) mod p using (montMulAdd L.inPlaceMultiply p) by (pointProductAdd_annotation L);
  if generic { slope = const(0); } using (pointInPlaceClearSlope L lambdaStar) by (pointClearSlope_step L lambdaStar);
  if generic { x = (const(0) - x) mod p; } using (pointInPlaceNegate L) by (pointNegate_annotation L);
  if generic { x = (x + const(cx.val)) mod p; } using (pointInPlaceConstantAdd L x cx) by (pointConstantAdd_annotation L x cx);
  if generic { y = (y + const((-cy).val)) mod p; } using (pointInPlaceConstantAdd L y (-cy)) by (pointConstantAdd_annotation L y (-cy));
}

/-- 两种乘积工作区的显式选择保持原来的电路及调用顺序。 -/
theorem pointInPlaceGeneric_program (L : ControlledPointLayout) (cx cy lambdaStar : Fp) :
    pointInPlaceGeneric L cx cy lambdaStar =
      pointInPlaceConstantAdd L L.point.x (-cx) ++
      pointInPlaceConstantAdd L L.point.y (-cy) ++
      divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y) ++
      montMulSub L.inPlaceMultiply p ++
      copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
      montMulSub L.inPlaceSquare p ++
      copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
      pointInPlaceConstantAdd L L.point.x (3*cx) ++
      montMulAdd L.inPlaceMultiply p ++ pointInPlaceClearSlope L lambdaStar ++
      pointInPlaceNegate L ++ pointInPlaceConstantAdd L L.point.x cx ++
      pointInPlaceConstantAdd L L.point.y (-cy) := by
  simp only [pointInPlaceGeneric, List.append_assoc]

/-- L.core.generic ^= L.control XOR infinitySelect XOR doubleSelect XOR genericSelect。
三个 select 分别表示输入为 O、C、−C 的互斥分支；O 是无穷远点。 -/
def pointInPlaceGenericFlag (L : ControlledPointLayout) : Program := prog {
  CX L.control L.core.generic;
  CX L.infinitySelect L.core.generic;
  CX L.doubleSelect L.core.generic;
  CX L.genericSelect L.core.generic;
}

/-- L.core.double ^= L.control AND [cy≠−cy]，cy 是经典常量点的纵坐标。 -/
def pointInPlaceDoubleEnable (L : ControlledPointLayout) (cy : Fp) : Program :=
  if cy≠-cy then [.CX L.control L.core.double] else []

/-- 在分支标志已准备好时，将 L.point 的三个特殊分支分别更新为 O→C、C→2C、−C→O。
C 是经典有限点，O 是无穷远点。 -/
def pointInPlaceCorners (L : ControlledPointLayout) (C : Point) : Program := prog {
  CPointXor L.infinitySelect L.point C;   -- 输入为 O：point 编码 ^= C → C。
  CPointXor L.doubleSelect L.point C;     -- 输入为 C：point 编码 ^= C → O。
  CPointXor L.doubleSelect L.point (C+C); -- 输入为 C：point 编码 ^= 2C → 2C。
  CPointXor L.genericSelect L.point (-C); -- 输入为 -C：point 编码 ^= -C → O。
}

/-- L.control=1 时 L.point ← L.point+C，为 0 时不变。
C 是坐标为 (cx,cy) 的经典有限曲线点。 -/
def pointInPlaceFinite (L : ControlledPointLayout) (C : Point) (cx cy : Fp) : Program := prog {
  let enabled := L.control;
  let pointBits := L.inPlacePointZero; -- 整个点编码的判等接线。
  let isInfinity := L.infinitySelect; -- 用于标记输入为 O 的分支。
  let isDouble := L.doubleSelect; -- 用于标记输入为 C 的分支。
  let isInverse := L.genericSelect;    -- 用于标记输入为 -C 的分支；不是普通分支。
  let doubleEnabled := L.core.double; -- 用于保存 enabled AND [C≠-C]。
  pointInPlaceDoubleEnable(L, cy);     -- doubleEnabled = enabled AND [C≠-C]
  equalConstant(enabled, isInfinity, pointBits, pointCode 0);  -- isInfinity = enabled AND [point=O]
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode C);  -- isDouble = doubleEnabled AND [point=C]
  equalConstant(enabled, isInverse, pointBits, pointCode (-C));  -- isInverse = enabled AND [point=-C]
  pointInPlaceGenericFlag(L);          -- generic = enabled XOR 三个特殊分支标志。
  pointInPlaceGeneric(L, cx, cy, exceptionalSlope C); -- 普通分支 point ← point+C。
  pointInPlaceCorners(L, C);           -- 特殊分支 O→C、C→2C、-C→O。
  pointInPlaceGenericFlag(L);          -- 清零 generic。
  -- 用输出侧条件重算旧标志。
  equalConstant(enabled, isInfinity, pointBits, pointCode C);  -- 清零 isInfinity。
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode (C+C));  -- 清零 isDouble。
  equalConstant(enabled, isInverse, pointBits, pointCode 0);  -- 清零 isInverse。
  pointInPlaceDoubleEnable(L, cy);     -- 清零 doubleEnabled。
}

end ECDSAAdd.Arithmetic
