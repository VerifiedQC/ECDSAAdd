import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic
open scoped ECDSAAdd.CircuitDSL

namespace ArithmeticPrograms

example (L : PointAddLayout) (x y out : List Wire) (q : Nat) :
    (prog using (pointCandidateContext L) { out ^= (x - y) mod q; }) =
      modSub (poolSub L.poolWire x y out) q := rfl
example (L : PointAddLayout) (x y out : List Wire) (q : Nat) :
    (prog using (pointCandidateContext L) { out ^= (x * y) mod q; }) =
      montMulXor (poolMul L.poolWire x y out) q := rfl

-- 构造层表达式必须逐项保留操作数、模数和工作区，不能只在注释里解释。
example (L : ModLayout) (x y out : List Wire) (q : Nat) :
    (prog using (modArithmeticContext L) {
      out ^= (x + y); out ^= (x - y); out ^= const(q);
    }) = addXor x y out (L.reg .carrySum) L.cinSum ++
      subXor x y out (L.reg .carryDiff) L.cinDiff ++ xorConstant out q := rfl

example (L : ModAddCoreLayout) (x y : List Wire) :
    (prog using (modAddCoreContext L) { y += x; y -= x; }) =
      addInPlace x y L.carry L.cin ++ subInPlace x y L.carry L.cin := rfl

example (x out : List Wire) : (prog { out ^= x; }) = copyRegister none x out := rfl
example (c : Wire) (x out : List Wire) :
    (prog { control c { out ^= x; }; }) = copyRegister (some c) x out := rfl
example (c : Wire) (x out : List Wire) :
    (prog { control (c XOR 1) { out ^= x; }; }) =
      copyRegister none x out ++ copyRegister (some c) x out := rfl
example (c : Wire) (out : List Wire) (q : Nat) :
    (prog { control (c XOR 1) { out ^= const(q); }; }) =
      xorConstant out q ++ maskedConstant c out q := rfl

-- 整块先降级，互补控制仍走原单-Toffoli/位的选择器。
example (L : ModLayout) (c : Wire) (x y out : List Wire) :
    (prog using (modArithmeticContext L) {
      control (c XOR 1) { out ^= x; };
      control c { out ^= y; };
    }) = chooseXor c x y out := rfl

example (L : ModLayout) (c d : Wire) (x y out : List Wire) :
    (prog using (modArithmeticContext L) {
      control (c XOR 1) { out ^= x; };
      control d { out ^= y; };
    }) = copyRegister none x out ++ copyRegister (some c) x out ++
      copyRegister (some d) y out := rfl

example (L : ModLayout) (c : Wire) (x y out : List Wire) (q : Nat) :
    (prog using (modArithmeticContext L) {
      out ^= const(q);
      let target := out;
      control (c XOR 1) { target ^= x; };
      control c { target ^= y; };
      out ^= const(q);
    }) = xorConstant out q ++ (chooseXor c x y out ++ xorConstant out q) := rfl

-- 控制块只把条件交给有名的具体实现，不对任意 Program 加控制。
example (L : RoundDataLayout) (c : Wire) (x y : List Wire) :
    (prog using (roundArithmeticContext L) { control c { y += x; y -= x; }; }) =
      measuredMaskedAddInPlace c x (L.reg .y) y ((L.reg .carry).take (L.width-1)) L.cin ++
      measuredMaskedSubInPlace c x (L.reg .y) y ((L.reg .carry).take (L.width-1)) L.cin := rfl

example (L : ModUnaryLayout) (c : Wire) (y : List Wire) (q : Nat) :
    (prog using (modUnaryContext L) {
      control c { y += const(q) using maskedAddConstLow; };
    }) = maskedAddConst c (L.constant.take L.low.length) y
      (L.carry.take (L.low.length-1)) L.cin q := rfl

example (L : ModInPlaceLayout) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { y = (x + y) mod q; }) =
      modAddInPlace { L with a := x, low := y } q := rfl
example (L : ModInPlaceLayout) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { y = (y - x) mod q; }) =
      modSubInPlace { L with a := x, low := y } q := rfl
example (L : ModInPlaceLayout) (c : Wire) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { control c { y = (x + y) mod q; }; }) =
      controlledModAdd c { L with a := x, low := y } q := rfl
example (L : ModInPlaceLayout) (c : Wire) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { control c { y = (y - x) mod q; }; }) =
      controlledModSub c { L with a := x, low := y } q := rfl
example (L : ModInPlaceLayout) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { y = (x + y) mod q using modAddAssign; }) =
      modAddInPlace { L with a := x, low := y } q := rfl
example (L : ModInPlaceLayout) (x y : List Wire) (q : Nat) :
    (prog using (modAssignContext L) { y = (y - x) mod q using modSubAssign; }) =
      modSubInPlace { L with a := x, low := y } q := rfl

example (L : DivideLayout) (c : Wire) (x y out : List Wire) (q : Nat) :
    (prog using (divisionProductContext L) {
      control c { out = (out + x * y) mod q; };
    }) = montMulControlledAdd c
      (borrowedMont L.borrow L.inner.first.done 1 x y (out++[L.borrowedBit 0])) q := rfl
example (L : DivideLayout) (c : Wire) (x y out : List Wire) (q : Nat) :
    (prog using (divisionProductContext L) {
      control c { out = (out - x * y) mod q; };
    }) = montMulControlledSub c
      (borrowedMont L.borrow L.inner.first.done 1 x y (out++[L.borrowedBit 0])) q := rfl

example (L : ControlledPointLayout) (x y out : List Wire) (q : Nat) :
    (prog using (pointProductContext L) {
      out = (out + x * y) mod q using productAdd;
    }) = montMulAdd (borrowedMont L.inPlaceBorrow L.control 2
      (x++[L.inPlaceBit 0]) y (out++[L.inPlaceBit 1])) q := rfl
example (L : ControlledPointLayout) (x y out : List Wire) (q : Nat) :
    (prog using (pointProductContext L) {
      out = (out - x * y) mod q using squareSub;
    }) = montMulSub (borrowedMont L.inPlaceBorrow L.control 258
      (x++[L.inPlaceBit 256]) y (out++[L.inPlaceBit 257])) q := rfl

-- 所有循环在构造期展开，既有 gate/let 写法仍可混用。
example (L : ModAddCoreLayout) (x y : List Wire) (k : Nat) :
    (prog using (modAddCoreContext L) {
      for i in range(k) { let source := x; y += source; };
    }) = (List.ofFn (fun (_i : Fin k) => addInPlace x y L.carry L.cin)).flatten := rfl
example (L : ModAddCoreLayout) (x y : List Wire) (k : Nat) :
    (prog using (modAddCoreContext L) {
      for i in reversed(range(k)) { y -= x; };
    }) = (List.ofFn (fun (_i : Fin k) => subInPlace x y L.carry L.cin)).reverse.flatten := rfl
example (cs : List Wire) (x y : List Wire) :
    (prog { for c in cs { control c { y ^= x; }; }; }) =
      cs.flatMap (fun c => copyRegister (some c) x y) := rfl
example : (prog { control 0 {}; }) = ([] : Program) := rfl
example : (prog { let control := 0; Instr.X control; }) = [Instr.X 0] := rfl
example : (prog { ([] : List Wire) ^= const(3); }) = ([] : Program) := rfl

-- 新旧主体严格同门列（任意布局，不把有效布局条件变成构造器参数）。
example (M : MontLayout) (q : Nat) : montMulAdd M q =
    montMulCompute M q ++ modAddInPlace M.addView q ++ montMulUncompute M q := rfl
example (M : MontLayout) (q : Nat) : montMulSub M q =
    montMulCompute M q ++ modSubInPlace M.addView q ++ montMulUncompute M q := rfl
example (M : MontLayout) (c : Wire) (q : Nat) : montMulControlledAdd c M q =
    montMulCompute M q ++ controlledModAdd c M.addView q ++ montMulUncompute M q := rfl
example (M : MontLayout) (c : Wire) (q : Nat) : montMulControlledSub c M q =
    montMulCompute M q ++ controlledModSub c M.addView q ++ montMulUncompute M q := rfl
example (L : ControlledPointLayout) (r : List Wire) (k : Fp) :
    pointInPlaceConstantAdd L r k =
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val ++
      modAddInPlace (L.inPlaceConstant r) p ++
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val :=
  pointInPlaceConstantAdd_program L r k
example (L : ControlledPointLayout) (cx cy lambdaStar : Fp) :
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
      pointInPlaceConstantAdd L L.point.y (-cy) := rfl

-- 构造层的默认模加与上一版 certified direct 实现确实是同一电路。
example {n : Nat} (op : ArithmeticLanguage.ModAdd n) (w : ModAddLanguage.Workspace n)
    (hv : op.Valid) (hnd : (w.core op).wires.Nodup) :
    (prog using (modAssignContext ⟨w.core op, [], w.cin⟩) {
      op.target.wires = ((w.core op).a + op.target.wires) mod op.modulus;
    }) = (ModAddLanguage.direct op w hv hnd).circuit := rfl

-- 不能用不支持的表达式、错误参数、未知实现或任意子程序悄悄生成电路。
example (_L : ModInPlaceLayout) (_x _y _z : List Wire) : True := by
  fail_if_success
    have _bad : Program := prog using (modAssignContext _L) { _y = (_x + _z) mod 7; }
  fail_if_success
    have _bad : Program := prog using (modAssignContext _L) { _y = (_z - _x) mod 7; }
  fail_if_success
    have _bad : Program := prog using (modAssignContext _L) { _y = (_x + _y) mod 7 using missing; }
  fail_if_success
    have _bad : Program := prog using (modAssignContext _L) { _y = (_x + _y) mod _z; }
  fail_if_success
    have _bad : Program := prog { _y ^= const(_x); }
  fail_if_success
    have _bad : Program := prog { _y ^= (_x + _z); }
  fail_if_success
    have _bad : Program := prog { control (0 XOR 2) { _y ^= _x; }; }
  trivial

example (_L : ControlledPointLayout) (_x _y _z : List Wire) : True := by
  fail_if_success
    have _bad : Program := prog using (pointProductContext _L) {
      _y = (_z + _x * _z) mod 7 using productAdd;
    }
  fail_if_success
    have _bad : Program := prog using (pointProductContext _L) {
      _y = (_z - _x * _z) mod 7 using productSub;
    }
  trivial

-- 这些非法形式在解析阶段就拒绝；因此直接检查解析器，而非让测试文件本身解析失败。
run_cmd do
  let env ← Lean.getEnv
  match Lean.Parser.runParserCategory env `term "prog { y += x; }" with
  | .ok _ => pure ()
  | .error e => throwError "合法算术语句未能解析：{e}"
  for source in ["prog using ctx { y = 3; }",
      "prog { control 0 { copyRegister none x y; }; }"] do
    match Lean.Parser.runParserCategory env `term source with
    | .error _ => pure ()
    | .ok _ => throwError "不支持的语句不应被解析：{source}"

end ArithmeticPrograms
