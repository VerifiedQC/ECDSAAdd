import ECDSAAdd.Arithmetic.ModularAddition.ModularSteps

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL

/-- 模加减主体的逻辑接口：out ^= x±y；辅助参数在 modArithmeticContext 接线。 -/
structure ModArithmeticOps where
  addXor : List Wire → List Wire → List Wire → Program
  subXor : List Wire → List Wire → List Wire → Program
  cxorCases : Wire → List Wire → List Wire → List Wire → Program

/-- L 提供固定辅助位；它们须初始为零，调用后恢复，不自动分配或猜测工作区。
carrySum/carryDiff 分别是加/减法进位链；cinSum/cinDiff 是零输入进位。
简写只用于此零进位环境，普通 addXor 的非零 cin 接口保持不变。 -/
def modArithmeticContext (L : ModLayout) : CircuitDSL.Context ModArithmeticOps := {
  operations := {
    addXor := fun x y out => addXor x y out (L.reg .carrySum) L.cinSum
    subXor := fun x y out => subXor x y out (L.reg .carryDiff) L.cinDiff
    -- 互补 CXor 共用原选择电路，每位仍只用一个 Toffoli。
    cxorCases := fun flag out whenZero whenOne => chooseXorFitted flag whenZero whenOne out
  }
}

/-- 后端工作区，不含逻辑输入输出。total/diff/modulus 保存和、差、常数；
borrow 是 diff 的最高位，不额外分配比较器；两个进位链分别供加法和减法使用。 -/
structure ModReductionWorkspace where
  total : List Wire
  modulus : List Wire
  diff : List Wire
  carrySum : List Wire
  carryDiff : List Wire
  cinSum : Wire
  cinDiff : Wire
  borrow : Wire

abbrev ModLayout.reductionWorkspace (L : ModLayout) : ModReductionWorkspace :=
  ⟨L.reg .total, L.reg .modulus, L.reg .diff, L.reg .carrySum,
    L.reg .carryDiff, L.cinSum, L.cinDiff, L.high.diff⟩

structure ModReductionOps where
  reduceAdd : List Wire → List Wire → List Wire → Nat → Program
  reduceSub : List Wire → List Wire → List Wire → Nat → Program

/-- 固定配方：计算一次候选，共用 diff 最高位和原选择电路，最后恢复全部工作位。
中间寄存器保持 n+1 位；仅写 out 时取低 out.length 位，不提前截断 x+y。 -/
def modReductionContext (W : ModReductionWorkspace) : CircuitDSL.Context ModReductionOps := {
  operations := {
    reduceAdd := fun x y out q =>
      let load := xorConstant W.modulus q
      let sum := addXor x y W.total W.carrySum W.cinSum
      let diff := subXor W.total W.modulus W.diff W.carryDiff W.cinDiff
      load ++ sum ++ diff ++
        chooseXor W.borrow (W.diff.take out.length) (W.total.take out.length) out ++
        diff ++ sum ++ load
    reduceSub := fun x y out q =>
      let load := xorConstant W.modulus q
      let diff := subXor x y W.diff W.carryDiff W.cinDiff
      let corrected := addXor W.diff W.modulus W.total W.carrySum W.cinSum
      load ++ diff ++ corrected ++
        chooseXor W.borrow (W.diff.take out.length) (W.total.take out.length) out ++
        corrected ++ diff ++ load
  }
}

/- 后端证明只连接电路与分支结果，不引用 modAdd_spec/modSub_spec，
也不使用 addResult_correct/subResult_correct 的取模结论。 -/
namespace ModReductionBackend

def addCircuit (L : ModLayout) (q : Nat) : Program :=
  (modReductionContext L.reductionWorkspace).operations.reduceAdd L.x L.y (L.lowReg .out) q

def subCircuit (L : ModLayout) (q : Nat) : Program :=
  (modReductionContext L.reductionWorkspace).operations.reduceSub L.x L.y (L.lowReg .out) q

end ModReductionBackend

private theorem registerAdderBits_map (bs : List ModBit) (a b target c : ModField) :
    registerAdderBits (bs.map (·.get a)) (bs.map (·.get b))
      (bs.map (·.get target)) (bs.map (·.get c)) =
      bs.map (fun bit => ⟨bit.get a, bit.get b, bit.get target, bit.get c⟩) := by
  induction bs with
  | nil => rfl
  | cons bit bs ih =>
    simpa [registerAdderBits] using congrArg (AddBit.mk (bit.get a) (bit.get b) (bit.get target) (bit.get c) :: ·) ih

private theorem take_reg (L : ModLayout) (f : ModField) :
    (L.reg f).take L.width = L.lowReg f := by
  simp [ModLayout.reg, ModLayout.bits, ModLayout.width, ModLayout.lowReg]

private theorem selector_map (bs : List ModBit) :
    List.zipWith (fun ab o => SelectBit.mk ab.1 ab.2 o)
      ((bs.map (·.diff)).zip (bs.map (·.total))) (bs.map (·.out)) =
      bs.map (fun b => ⟨b.diff, b.total, b.out⟩) := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp [ih]

/-- 供证明使用的展开式；算法阅读可跳过。 -/
theorem ModReductionBackend.add_program (L : ModLayout) (q : Nat) : ModReductionBackend.addCircuit L q =
  let load := xorConstant (L.reg .modulus) q
  let sum := add (L.adder .x .y .total .carrySum L.cinSum)
  let difference := sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)
  load ++ sum ++ difference ++ selectXor L.selector L.high.diff ++ difference ++ sum ++ load := by
  simp only [ModReductionBackend.addCircuit, modReductionContext, show (L.lowReg .out).length = L.width from List.length_map .., take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [registerAdderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

/-- 供证明使用的展开式；算法阅读可跳过。 -/
theorem ModReductionBackend.sub_program (L : ModLayout) (q : Nat) : ModReductionBackend.subCircuit L q =
  let load := xorConstant (L.reg .modulus) q
  let difference := sub (L.adder .x .y .diff .carryDiff L.cinDiff)
  let correction := add (L.adder .diff .modulus .total .carrySum L.cinSum)
  load ++ difference ++ correction ++ selectXor L.selector L.high.diff ++ correction ++ difference ++ load := by
  simp only [ModReductionBackend.subCircuit, modReductionContext, show (L.lowReg .out).length = L.width from List.length_map .., take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [registerAdderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

def ModValues.clean (X Y O : Nat) : ModField → Nat
  | .x => X | .y => Y | .out => O | _ => 0

theorem ModValues.clean_iff (L : ModLayout) (X Y O : Nat) (st : BasisState) :
    ModValues L (ModValues.clean X Y O) st ↔
      (((regValue L.x st = X ∧ regValue L.y st = Y) ∧ regValue L.out st = O) ∧
        regValue L.work st = 0) := by
  constructor
  · intro hv
    refine ⟨⟨⟨hv.1 .x, hv.1 .y⟩, hv.1 .out⟩, (regValue_zero _ _).mpr ?_⟩
    intro w hw
    simp only [ModLayout.work, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hw
    rcases hw with ((((ht | hm) | hd) | hcs) | hcd) | hci | hci
    · exact (regValue_zero _ _).mp (hv.1 .total) w ht
    · exact (regValue_zero _ _).mp (hv.1 .modulus) w hm
    · exact (regValue_zero _ _).mp (hv.1 .diff) w hd
    · exact (regValue_zero _ _).mp (hv.1 .carrySum) w hcs
    · exact (regValue_zero _ _).mp (hv.1 .carryDiff) w hcd
    · subst w; exact hv.2.1
    · subst w; exact hv.2.2
  · rintro ⟨⟨⟨hx, hy⟩, ho⟩, hw⟩
    have hz := (regValue_zero _ _).mp hw
    refine ⟨?_, hz L.cinSum (by simp [ModLayout.work]), hz L.cinDiff (by simp [ModLayout.work])⟩
    intro f
    cases f
    · exact hx
    · exact hy
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · exact ho
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])

private theorem ModReductionBackend.add_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    Triple (ModValues L (ModValues.clean X Y O)) (ModReductionBackend.addCircuit L q)
      (ModValues L (ModValues.clean X Y (O ^^^ (ModReductionAlgorithm.addResult X Y q)))) := by
  let S := X+Y
  let D := (S + 2^(L.width+1) - q) % 2^(L.width+1)
  let R := ModReductionAlgorithm.addResult X Y q
  have hS : X+Y < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hq' : q < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hchoose : (if 2^L.width ≤ D then S else D) = R :=
    (addReduction_branches S q L.width hq0 hq (by dsimp [S]; omega)).2
  let v0 := ModValues.clean X Y O
  let v1 := Function.update v0 .modulus q
  let v2 := Function.update v1 .total S
  let v3 := Function.update v2 .diff D
  let v4 := Function.update v3 .out (O ^^^ R)
  let v5 := Function.update v4 .diff 0
  let v6 := Function.update v5 .total 0
  let v7 := Function.update v6 .modulus 0
  have h0 : Triple (ModValues L v0) (xorConstant (L.reg .modulus) q) (ModValues L v1) := by
    simpa [v1, v0, ModValues.clean] using constant_modValues L hnd v0 .modulus q hq'
  have h1 : Triple (ModValues L v1) (add (L.adder .x .y .total .carrySum L.cinSum)) (ModValues L v2) := by
    simpa [v2, v1, v0, ModValues.clean, S, Nat.mod_eq_of_lt hS] using
      add_modValues L hnd v1 .x .y .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v1, v0, ModValues.clean])
  have h2 : Triple (ModValues L v2) (sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)) (ModValues L v3) := by
    simpa [v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v2 .total .modulus .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v2, v1, v0, ModValues.clean])
  have h3 : Triple (ModValues L v3) (selectXor L.selector L.high.diff) (ModValues L v4) := by
    simpa [v4, v3, v2, v1, v0, ModValues.clean, hchoose] using select_modValues L hnd v3 (by
      simpa [v3, v2, v1, v0, ModValues.clean, hchoose] using
        (lt_trans (ModReductionAlgorithm.addResult_lt X Y q hXY) hq : R < 2^L.width))
  have h4 : Triple (ModValues L v4) (sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)) (ModValues L v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v4 .total .modulus .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v4, v3, v2, v1, v0, ModValues.clean])
  have h5 : Triple (ModValues L v5) (add (L.adder .x .y .total .carrySum L.cinSum)) (ModValues L v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModValues.clean, S, Nat.mod_eq_of_lt hS] using
      add_modValues L hnd v5 .x .y .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v5, v4, v3, v2, v1, v0, ModValues.clean])
  have h6 : Triple (ModValues L v6) (xorConstant (L.reg .modulus) q) (ModValues L v7) := by
    simpa [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean] using constant_modValues L hnd v6 .modulus q hq'
  have hv7 : v7 = ModValues.clean X Y (O ^^^ R) := by
    funext f; cases f <;> simp [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq h6)))))
  simpa only [ModReductionBackend.add_program, List.append_assoc, hv7, v0, R, S] using h

private theorem ModReductionBackend.sub_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    Triple (ModValues L (ModValues.clean X Y O)) (ModReductionBackend.subCircuit L q)
      (ModValues L (ModValues.clean X Y (O ^^^ (ModReductionAlgorithm.subResult X Y q)))) := by
  let D := (X + 2^(L.width+1) - Y) % 2^(L.width+1)
  let S := (D+q) % 2^(L.width+1)
  let R := ModReductionAlgorithm.subResult X Y q
  have hq' : q < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hchoose : (if 2^L.width ≤ D then S else D) = R :=
    (subReduction_branches X Y q L.width hq0 hq hX hY).2
  let v0 := ModValues.clean X Y O
  let v1 := Function.update v0 .modulus q
  let v2 := Function.update v1 .diff D
  let v3 := Function.update v2 .total S
  let v4 := Function.update v3 .out (O ^^^ R)
  let v5 := Function.update v4 .total 0
  let v6 := Function.update v5 .diff 0
  let v7 := Function.update v6 .modulus 0
  have h0 : Triple (ModValues L v0) (xorConstant (L.reg .modulus) q) (ModValues L v1) := by
    simpa [v1, v0, ModValues.clean] using constant_modValues L hnd v0 .modulus q hq'
  have h1 : Triple (ModValues L v1) (sub (L.adder .x .y .diff .carryDiff L.cinDiff)) (ModValues L v2) := by
    simpa [v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v1 .x .y .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v1, v0, ModValues.clean])
  have h2 : Triple (ModValues L v2) (add (L.adder .diff .modulus .total .carrySum L.cinSum)) (ModValues L v3) := by
    simpa [v3, v2, v1, v0, ModValues.clean, S] using
      add_modValues L hnd v2 .diff .modulus .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v2, v1, v0, ModValues.clean])
  have h3 : Triple (ModValues L v3) (selectXor L.selector L.high.diff) (ModValues L v4) := by
    simpa [v4, v3, v2, v1, v0, ModValues.clean, hchoose] using select_modValues L hnd v3 (by
      simpa [v3, v2, v1, v0, ModValues.clean, hchoose] using
        (lt_trans (ModReductionAlgorithm.subResult_lt X Y q hX hY) hq : R < 2^L.width))
  have h4 : Triple (ModValues L v4) (add (L.adder .diff .modulus .total .carrySum L.cinSum)) (ModValues L v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModValues.clean, S] using
      add_modValues L hnd v4 .diff .modulus .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v4, v3, v2, v1, v0, ModValues.clean])
  have h5 : Triple (ModValues L v5) (sub (L.adder .x .y .diff .carryDiff L.cinDiff)) (ModValues L v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v5 .x .y .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v5, v4, v3, v2, v1, v0, ModValues.clean])
  have h6 : Triple (ModValues L v6) (xorConstant (L.reg .modulus) q) (ModValues L v7) := by
    simpa [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean] using constant_modValues L hnd v6 .modulus q hq'
  have hv7 : v7 = ModValues.clean X Y (O ^^^ R) := by
    funext f; cases f <;> simp [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq h6)))))
  simpa only [ModReductionBackend.sub_program, List.append_assoc, hv7, v0, R] using h

/-- 后端实现算法层的模加分支，恢复工作区和相位；尚未使用“等于模加”的结论。 -/
theorem ModReductionBackend.add_refines (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} addCircuit L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ModReductionAlgorithm.addResult X Y q), L.work = 0 }} :=
  Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (add_values L hnd q hq0 hq X Y O hXY)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ModReductionAlgorithm.addResult X Y q) st).mp h)

/-- 后端实现算法层的模减分支；借位线随候选差一起清理。 -/
theorem ModReductionBackend.sub_refines (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} subCircuit L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ModReductionAlgorithm.subResult X Y q), L.work = 0 }} :=
  Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (sub_values L hnd q hq0 hq X Y O hX hY)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ModReductionAlgorithm.subResult X Y q) st).mp h)

end ECDSAAdd.Arithmetic
