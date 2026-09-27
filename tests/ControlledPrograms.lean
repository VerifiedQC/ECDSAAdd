import ECDSAAdd

open ECDSAAdd ECDSAAdd.Instr ECDSAAdd.Arithmetic ECDSAAdd.Secp256k1

-- 参数顺序统一为控制、目标、源；负控制不翻转控制 wire。
example (c : Wire) (src dst : List Wire) :
    (prog { CXor c dst src; }) = copyRegister (some c) src dst := rfl

example (c : Wire) (src dst : List Wire) :
    (prog { CXor (c XOR 1) dst src; }) =
      copyRegister none src dst ++ copyRegister (some c) src dst := rfl

example (c t : Wire) : (prog { CX (c XOR 1) t; }) = [.X t, .CX c t] := rfl
example (c d t : Wire) : (prog { CCX c (d XOR 1) t; }) = [.CX c t, .CCX c d t] := rfl

-- divideUnload 的两门重排保留完整状态效果，而不是声称旧/新门列表相等。
example (c t : Wire) (h : c ≠ t) (s : State) (m : List Bool) :
    run [.X t, .CX c t] m s = run [.CX c t, .X t] m s := by
  simp only [run]
  apply congrArg (State.mk s.phase)
  funext w
  by_cases hw : w = t
  · subst w
    cases hc : s.basis c <;> simp [writeBit, h, hc]
  · simp [writeBit, hw]

example (c : Wire) (dst : List Wire) (k : Nat) :
    (prog { CConst c dst k; }) = maskedConstant c dst k := rfl
example (c : Wire) (dst : List Wire) (k : Nat) :
    (prog { CConst (c XOR 1) dst k; }) = xorConstant dst k ++ maskedConstant c dst k := rfl

-- 无选择配置时保留两段独立控制，不静默更换底层电路。
example (c : Wire) (a b dst : List Wire) :
    (prog { CXor (c XOR 1) dst a; CXor c dst b; }) =
      copyRegister none a dst ++ copyRegister (some c) a dst ++
      copyRegister (some c) b dst := rfl

-- 模加减配置显式启用选择优化，包含前后语句、局部 n 及循环的情形。
example (L : ModLayout) (c : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) {
      CXor (c XOR 1) dst a;
      CXor c dst b;
    }) = chooseXor c a b dst := rfl

example (L : ModLayout) (c t : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) {
      X t;
      let n := L.width;
      CXor (c XOR 1) dst (a.take n);
      CXor c dst (b.take n);
      X t;
    }) = [.X t] ++ (chooseXor c (a.take L.width) (b.take L.width) dst ++ [.X t]) := rfl

example (L : ModLayout) (cs : List Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) {
      for c in cs { CXor (c XOR 1) dst a; CXor c dst b; };
    }) = cs.flatMap (fun c => chooseXor c a b dst) := rfl

example (L : ModLayout) (c : Wire) :
    (prog using (modArithmeticContext L) {
      CXor (c XOR 1) ([] : List Wire) ([] : List Wire);
      CXor c ([] : List Wire) ([] : List Wire);
    }) = [] := rfl

-- 不同控制、不同目标、非相邻、相同极性均不能误合并。
example (L : ModLayout) (c d : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) { CXor (c XOR 1) dst a; CXor d dst b; }) =
      copyRegister none a dst ++ copyRegister (some c) a dst ++
      copyRegister (some d) b dst := rfl

example (L : ModLayout) (c : Wire) (a b dst other : List Wire) :
    (prog using (modArithmeticContext L) { CXor (c XOR 1) dst a; CXor c other b; }) =
      copyRegister none a dst ++ copyRegister (some c) a dst ++
      copyRegister (some c) b other := rfl

example (L : ModLayout) (c t : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) { CXor (c XOR 1) dst a; X t; CXor c dst b; }) =
      ((copyRegister none a dst ++ copyRegister (some c) a dst) ++ [.X t]) ++
      copyRegister (some c) b dst := rfl

example (L : ModLayout) (c : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) { CXor c dst a; CXor c dst b; }) =
      copyRegister (some c) a dst ++ copyRegister (some c) b dst := rfl

-- 优化规则不穿过 let，也不改变后续语句所见的局部名字。
example (L : ModLayout) (c d : Wire) (a b dst : List Wire) :
    (prog using (modArithmeticContext L) {
      CXor (c XOR 1) dst a;
      let c := d;
      CXor c dst b;
    }) = (copyRegister none a dst ++ copyRegister (some c) a dst) ++
      copyRegister (some d) b dst := rfl

example (c : Wire) (r : PointReg) (C : Point) :
    (prog { CPointXor c r C; }) = maskedPointConstant c r C := rfl
example (c : Wire) (r : PointReg) (C : Point) :
    (prog { CPointXor (c XOR 1) r C; }) = negativePointConstant c r C := rfl

-- 不把模加与普通加法混用；具体算术及工作区仍由配置绑定。
example (L : RoundDataLayout) (c : Wire) (src dst : List Wire) :
    (prog using (roundArithmeticContext L) { CAdd c dst src; CSub c dst src; }) =
      measuredMaskedAddInPlace c src (L.reg .y) dst ((L.reg .carry).take (L.width-1)) L.cin ++
      measuredMaskedSubInPlace c src (L.reg .y) dst ((L.reg .carry).take (L.width-1)) L.cin := rfl

example (U : ModUnaryLayout) (c : Wire) (dst : List Wire) (k : Nat) :
    (prog using (modUnaryContext U) { CAddConst c dst k; CAddConstLow c U.low k; }) =
      maskedAddConst c U.constant dst U.carry U.cin k ++
      maskedAddConst c (U.constant.take U.low.length) U.low
        (U.carry.take (U.low.length-1)) U.cin k := rfl

example (L : MontStageLayout) (c : Wire) (k : Nat) :
    (prog using (montArithmeticContext L) { CSubConst c L.acc k; }) =
      maskedSubConst c L.table L.acc L.carry L.cin k := rfl

-- 不等宽/重叠接线不在选择正确性定理的适用范围；不是无条件优化定理。
example (bs : List SelectBit) (c : Wire) (hn : (selectWires bs).Nodup)
    (hc : c ∉ selectWires bs) (s : State) (m : List Bool) :
    run (selectXor bs c) m s = run (prog {
      CXor (c XOR 1) (bs.map SelectBit.out) (bs.map SelectBit.no);
      CXor c (bs.map SelectBit.out) (bs.map SelectBit.yes);
    }) m s := selectXor_controls_equiv bs c hn hc s m

-- 非法条件取反、错误操作数、未配置的算术均报错，不丢弃语句。
example : True := by
  fail_if_success
    have _bad : Program := prog { CXor (0 XOR 2) [1] [2]; }
  fail_if_success
    have _bad : Program := prog { CConst (0 XOR 2) [1] 1; }
  fail_if_success
    have _bad : Program := prog { CPointXor (0 XOR 2) (⟨1, [2], [3]⟩ : PointReg) (0 : Point); }
  fail_if_success
    have _bad : Program := prog { CX (0 XOR 2) 1; }
  fail_if_success
    have _bad : Program := prog { CCX 0 (1 XOR 2) 3; }
  fail_if_success
    have _bad : Program := prog { CXor true [1] [2]; }
  fail_if_success
    have _bad : Program := prog { CAdd 0 [1] [2]; }
  trivial
