import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic
open scoped ECDSAAdd.CircuitDSL

namespace ExpressionRecipes

private def bit (i : Nat) : ModBit :=
  ⟨8*i, 8*i+1, 8*i+2, 8*i+3, 8*i+4, 8*i+5, 8*i+6, 8*i+7⟩
private def small : ModLayout := ⟨[bit 0, bit 1, bit 2], bit 3, 32, 33⟩

-- 三位模 7 的边界：跨越 2^n 的和必须保留高位；任意相位/测量记录由 Triple 全称量化。
example :
    {{ small.x = 6, small.y = 6, small.out = 3, small.work = 0 }}
      modAddOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 6, small.y = 6, small.out = 6, small.work = 0 }} := by
  simpa using modAddOn_spec small (by decide) 7 (by decide) (by decide)
    6 6 3 (by decide) (by decide)

example (O : Nat) :
    {{ small.x = 1, small.y = 2, small.out = O, small.work = 0 }}
      modAddOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 1, small.y = 2, small.out = (O ^^^ 3), small.work = 0 }} := by
  simpa using modAddOn_spec small (by decide) 7 (by decide) (by decide)
    1 2 O (by decide) (by decide)

example (O : Nat) :
    {{ small.x = 3, small.y = 4, small.out = O, small.work = 0 }}
      modAddOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 3, small.y = 4, small.out = O, small.work = 0 }} := by
  simpa using modAddOn_spec small (by decide) 7 (by decide) (by decide)
    3 4 O (by decide) (by decide)

example (O : Nat) :
    {{ small.x = 1, small.y = 6, small.out = O, small.work = 0 }}
      modSubOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 1, small.y = 6, small.out = (O ^^^ 2), small.work = 0 }} := by
  simpa using modSubOn_spec small (by decide) 7 (by decide) (by decide)
    1 6 O (by decide) (by decide)

example (O : Nat) :
    {{ small.x = 6, small.y = 1, small.out = O, small.work = 0 }}
      modSubOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 6, small.y = 1, small.out = (O ^^^ 5), small.work = 0 }} := by
  simpa using modSubOn_spec small (by decide) 7 (by decide) (by decide)
    6 1 O (by decide) (by decide)

example (O : Nat) :
    {{ small.x = 6, small.y = 6, small.out = O, small.work = 0 }}
      modSubOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 6, small.y = 6, small.out = O, small.work = 0 }} := by
  simpa using modSubOn_spec small (by decide) 7 (by decide) (by decide)
    6 6 O (by decide) (by decide)

-- 参数真正进入配方，不得忽略输入、目标、模数或使用另一份工作区。
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modAddOn x y out q W =
      xorConstant W.modulus q ++ addXor x y W.total W.carrySum W.cinSum ++
      subXor W.total W.modulus W.diff W.carryDiff W.cinDiff ++
      chooseXor W.borrow (W.diff.take out.length) (W.total.take out.length) out ++
      subXor W.total W.modulus W.diff W.carryDiff W.cinDiff ++
      addXor x y W.total W.carrySum W.cinSum ++ xorConstant W.modulus q := rfl

example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modSubOn x y out q W =
      xorConstant W.modulus q ++ subXor x y W.diff W.carryDiff W.cinDiff ++
      addXor W.diff W.modulus W.total W.carrySum W.cinSum ++
      chooseXor W.borrow (W.diff.take out.length) (W.total.take out.length) out ++
      addXor W.diff W.modulus W.total W.carrySum W.cinSum ++
      subXor x y W.diff W.carryDiff W.cinDiff ++ xorConstant W.modulus q := rfl

example (L : ModLayout) (q : Nat) :
    modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace = modAdd L q := rfl
example (L : ModLayout) (q : Nat) :
    modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace = modSub L q := rfl

-- 比较模板也先归一化 if；与旧写法（包括混用）生成完全相同的电路。
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modAddOn x y out q W = (prog using (modReductionContext W) {
      let borrow := (x + y) < const(q);
      control (borrow XOR 1) { out ^= ((x + y) - const(q)); };
      control borrow { out ^= (x + y); };
    }) := rfl
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modSubOn x y out q W = (prog using (modReductionContext W) {
      let borrow := x < y;
      control (borrow XOR 1) { out ^= (x - y); };
      control borrow { out ^= ((x - y) + const(q)); };
    }) := rfl
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modAddOn x y out q W = (prog using (modReductionContext W) {
      let borrow := (x + y) < const(q);
      if (borrow XOR 1) { out ^= ((x + y) - const(q)); };
      control borrow { out ^= (x + y); };
    }) := rfl
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modSubOn x y out q W = (prog using (modReductionContext W) {
      let borrow := x < y;
      control (borrow XOR 1) { out ^= (x - y); };
      if borrow { out ^= ((x - y) + const(q)); };
    }) := rfl

-- 作用域准确插入恢复电路，既不倒转门列，也不从 prepare 猜测 restore。
example (a b c : Wire) :
    (prog {
      with temp := (CircuitDSL.Computed.mk b [Instr.CCX a c b]
        [Instr.measureX b [] [.CZ a c]]) {
        Instr.CX temp c;
      };
    }) = [Instr.CCX a c b, Instr.CX b c, Instr.measureX b [] [.CZ a c]] := rfl

example (a b c d : Wire) :
    (prog {
      with outer := (CircuitDSL.Computed.mk a [Instr.X a] [Instr.X a]) {
        with inner := (CircuitDSL.Computed.mk b [Instr.CX outer b] [Instr.CX outer b]) {
          Instr.CCX outer inner c;
        };
      };
      Instr.X d;
    }) = [Instr.X a, Instr.CX a b, Instr.CCX a b c, Instr.CX a b, Instr.X a, Instr.X d] := rfl

example (M : MontLayout) (x y out : List Wire) (q : Nat) :
    (prog using (montOutputContext M) {
      with product := (x * y) mod q { out ^= product; };
    }) = montMulCompute { M with x := x, y := y } q ++
      copyRegister none M.product out ++ montMulUncompute { M with x := x, y := y } q := rfl

example (L : MontStageLayout) (target : List Wire) (k : Nat) :
    (prog using (montArithmeticContext L) { target += const(k); }) =
      xorConstant L.table k ++ addInPlace L.table target L.carry L.cin ++ xorConstant L.table k := rfl
example (L : ModAddCoreLayout) (target : List Wire) (k : Nat) :
    (prog using (modAddCoreContext L) { target -= const(k); }) =
      xorConstant L.constant k ++ subInPlace L.constant target L.carry L.cin ++
      xorConstant L.constant k := rfl
example (L : PointAddLayout) (x out : List Wire) (k q : Nat) :
    (prog using (pointConstantContext L) { out ^= (x - const(k)) mod q; }) =
      xorConstant L.constant k ++ modSub (poolSub L.poolWire x L.constant out) q ++
      xorConstant L.constant k := rfl
example (L : PointAddLayout) (x out : List Wire) (q : Nat) :
    (prog using (pointCandidateContext L) { out ^= (x ^ 2) mod q; }) =
      copyRegister none x L.constant ++
      montMulXor (poolMul L.poolWire x (L.constant.take 256) out) q ++
      copyRegister none x L.constant := rfl
example (L : ControlledPointLayout) (c : Wire) (out : List Wire) (k q : Nat) :
    (prog using (pointConstantAddContext L) {
      if c { out = (const(k) + out) mod q; };
    }) = maskedConstant c (L.inPlaceConstant out).a k ++
      modAddInPlace (L.inPlaceConstant out) q ++ maskedConstant c (L.inPlaceConstant out).a k := rfl

-- 不等宽：短源不清零目标高位，长源不使用超出目标宽度的位。
example : (prog { [3, 4, 5] ^= [1]; }) = [Instr.CX 1 3] := rfl
example : (prog { [3] ^= [0, 1, 2]; }) = [Instr.CX 0 3] := rfl
example (c : Wire) : (prog { if c { [3, 4, 5] ^= [1]; }; }) = [Instr.CCX c 1 3] := rfl
example (c : Wire) : (prog { if c { [3] ^= [0, 1, 2]; }; }) = [Instr.CCX c 0 3] := rfl

example (L : ModLayout) :
    (prog using (modArithmeticContext L) {
      if (0 XOR 1) { [4, 5] ^= [1]; };
      if 0 { [4, 5] ^= [2, 3]; };
    }) = [Instr.CX 1 4, Instr.CCX 0 1 4, Instr.CCX 0 2 4, Instr.CCX 0 3 5] := rfl
example (L : ModLayout) :
    (prog using (modArithmeticContext L) {
      if (0 XOR 1) { [4, 5] ^= [1, 2]; };
      if 0 { [4, 5] ^= [3]; };
    }) = [Instr.CX 1 4, Instr.CX 2 5, Instr.CCX 0 1 4, Instr.CCX 0 2 5, Instr.CCX 0 3 4] := rfl
example (c : Wire) (a b o : List Wire) (ha : a.length = o.length) (hb : b.length = o.length) :
    chooseXorFitted c a b o = chooseXor c a b o := chooseXorFitted_equal c a b o ha hb

-- 新关键字不能污染普通 Lean 名字；临时值在作用域外不可见。
example (as : Nat) : as = as := rfl
example : True := by
  fail_if_success
    have _bad : Program := prog { with temp := (3 : Nat) { Instr.X temp; }; }
  fail_if_success
    have _bad : Program := prog {
      with temp := (CircuitDSL.Computed.mk 1 [Instr.X 1] [Instr.X 1]) { Instr.X temp; };
      Instr.X temp;
    }
  trivial

-- 模板必须严格匹配：错误条件、错误目标、错误源/常数、额外操作均拒绝。
example (_W : ModReductionWorkspace) (_x _y _z _out : List Wire) (_q : Nat) : True := by
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := (_x + _y) < const(_q);
      if (borrow XOR 1) { _out ^= ((_x + _z) - const(_q)); };
      if borrow { _out ^= (_x + _y); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := (_x + _y) < const(_q);
      if (borrow XOR 1) { _out ^= ((_x + _y) - const(_q+1)); };
      if borrow { _out ^= (_x + _y); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := (_x + _y) < const(_q);
      if (borrow XOR 1) { _out ^= ((_x + _y) - const(_q)); };
      if borrow { _z ^= (_x + _y); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := (_x + _y) < const(_q);
      if (borrow XOR 1) { _out ^= ((_x + _y) - const(_q)); };
      if borrow { _out ^= (_x + _y); };
      Instr.X 0;
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := _x < _y;
      if (borrow XOR 1) { _out ^= (_y - _x); };
      if borrow { _out ^= ((_x - _y) + const(_q)); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := (_x + _y) < const(_q);
      if (borrow XOR 1) { _out ^= ((_x + _y) - const(_q)); };
      if 0 { _out ^= (_x + _y); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := _x < _y;
      if (borrow XOR 2) { _out ^= (_x - _y); };
      if borrow { _out ^= ((_x - _y) + const(_q)); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) {
      let borrow := _x < _y;
      if borrow { _out ^= ((_x - _y) + const(_q)); };
      if (borrow XOR 1) { _out ^= (_x - _y); };
    }
  fail_if_success
    have _bad : Program := prog using (modReductionContext _W) { let borrow := _x < _y; Instr.X borrow; }
  fail_if_success
    have _bad : Program := prog { with product := (_x * _y) mod _q { _out ^= product; }; }
  trivial

example (_L : PointAddLayout) (_x _out : List Wire) : True := by
  fail_if_success
    have _bad : Program := prog using (pointCandidateContext _L) { _out ^= (_x ^ 3) mod 7; }
  fail_if_success
    have _bad : Program := prog using (pointCandidateContext _L) { _out ^= (_x ^ 2) mod _x; }
  trivial

end ExpressionRecipes
