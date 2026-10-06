import ECDSAAdd.Arithmetic.ModularAddition.ModularTranslation

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL

/- 阅读顺序：本文件的 prog → ModularAlgorithm 的两个分支证明 → 下方最终规格。
工作区及门列细节集中在 ModularBackend；最终规格不作为后端连接的前提。 -/

/-- out ^= (x+y) mod q；n=out.length，0<q<2^n、x,y<q。
x/y 含零扩展高位；W 只决定辅助接线，完整布局条件见 modAdd_spec。
< 表示逐基态比较，不测量；中间和按 n+1 位计算。 -/
abbrev modAddOn (x y out : List Wire) (q : Nat)
    (W : ModReductionWorkspace) : Program := prog {
  let borrow := (x + y) < const(q) using (ModAddPrepare W) by modAddPrepare_correct;

  {
    if (borrow XOR 1) { out ^= ((x + y) - const(q)); };
    if borrow { out ^= (x + y); };
  } using (ModAddSelectAndClear W) by modAddSelectAndClear_correct;
}

/-- out ^= (x−y) mod q；位宽和工作区条件同 modAddOn。
减法是 n+1 位补码运算；借位分支加回 q，不是 Nat 的截断减法。 -/
abbrev modSubOn (x y out : List Wire) (q : Nat)
    (W : ModReductionWorkspace) : Program := prog {
  let borrow := x < y using (ModSubPrepare W) by modSubPrepare_correct;

  {
    if (borrow XOR 1) { out ^= (x - y); };
    if borrow { out ^= ((x - y) + const(q)); };
  } using (ModSubSelectAndClear W) by modSubSelectAndClear_correct;
}

/-- 兼容布局接口；可读算法见 modAddOn，n=L.width。 -/
def modAdd (L : ModLayout) (q : Nat) : Program :=
  modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace

/-- 兼容布局接口；可读算法见 modSubOn，n=L.width。 -/
def modSub (L : ModLayout) (q : Nat) : Program :=
  modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace

/-- 逐句认证后仍生成原门列；两个受控表达式共用一次准备和清理。 -/
theorem modAddOn_backend (x y out : List Wire) (q : Nat) (W : ModReductionWorkspace) :
    modAddOn x y out q W = (modReductionContext W).operations.reduceAdd x y out q := by
  simp only [modAddOn, reductionProgram, ModAddPrepare, ModAddSelectAndClear,
    ModReductionBackend.addPrepare, ModReductionBackend.addFinish, modReductionContext,
    List.append_assoc]

theorem modSubOn_backend (x y out : List Wire) (q : Nat) (W : ModReductionWorkspace) :
    modSubOn x y out q W = (modReductionContext W).operations.reduceSub x y out q := by
  simp only [modSubOn, reductionProgram, ModSubPrepare, ModSubSelectAndClear,
    ModReductionBackend.subPrepare, ModReductionBackend.subFinish, modReductionContext,
    List.append_assoc]

/-- 实际 prog 实现数学层的 if 分支，并恢复输入、工作区与相位。 -/
theorem modAddOn_refines (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ModReductionAlgorithm.addResult X Y q), L.work = 0 }} := by
  exact Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (reductionProgram_correct .add (ModAddPrepare L.reductionWorkspace) modAddPrepare_correct
      (ModAddSelectAndClear L.reductionWorkspace) modAddSelectAndClear_correct
      L rfl hnd q hq0 hq X Y O hXY)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ModReductionAlgorithm.addResult X Y q) st).mp h)

theorem modSubOn_refines (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ModReductionAlgorithm.subResult X Y q), L.work = 0 }} := by
  exact Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (reductionProgram_correct .sub (ModSubPrepare L.reductionWorkspace) modSubPrepare_correct
      (ModSubSelectAndClear L.reductionWorkspace) modSubSelectAndClear_correct
      L rfl hnd q hq0 hq X Y O ⟨hX, hY⟩)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ModReductionAlgorithm.subResult X Y q) st).mp h)

/-- 保留原分支规格：直接来自电路连接，不再引用旧 modAdd_spec。 -/
theorem modAddOn_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y,
       L.out = (O ^^^ (if X+Y < q then X+Y else X+Y-q)), L.work = 0 }} := by
  exact modAddOn_refines L hnd q hq0 hq X Y O (by omega)

theorem modSubOn_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y,
       L.out = (O ^^^ (if X < Y then X+q-Y else X-Y)), L.work = 0 }} := by
  exact modSubOn_refines L hnd q hq0 hq X Y O hX hY

/-- 完整模加规格 = 实际电路实现分支 + 两个分支都给出模加结果。
这里只使用算法定理，不展开进位、临时寄存器或门列。 -/
theorem modAddOn_mod_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }} := by
  have hSum : X + Y < 2*q := by omega
  have branches := modAddOn_refines L hnd q hq0 hq X Y O hSum
  simpa only [ModReductionAlgorithm.addResult_correct X Y q hSum] using branches

/-- 完整模减规格：有借位时加回 q，无借位时保留差。 -/
theorem modSubOn_mod_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }}
      modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+q-Y)%q)), L.work = 0 }} := by
  have branches := modSubOn_refines L hnd q hq0 hq X Y O hX hY
  simpa only [ModReductionAlgorithm.subResult_correct X Y q hX hY] using branches

/- 以下保留旧接口，供既有调用者和资源证明使用；它们现在由上面的分层证明推出。 -/

theorem modAdd_program (L : ModLayout) (q : Nat) : modAdd L q =
  let load := xorConstant (L.reg .modulus) q
  let sum := add (L.adder .x .y .total .carrySum L.cinSum)
  let difference := sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)
  load ++ sum ++ difference ++ selectXor L.selector L.high.diff ++ difference ++ sum ++ load := by
  rw [modAdd, modAddOn_backend]
  exact ModReductionBackend.add_program L q

theorem modSub_program (L : ModLayout) (q : Nat) : modSub L q =
  let load := xorConstant (L.reg .modulus) q
  let difference := sub (L.adder .x .y .diff .carryDiff L.cinDiff)
  let correction := add (L.adder .diff .modulus .total .carrySum L.cinSum)
  load ++ difference ++ correction ++ selectXor L.selector L.high.diff ++ correction ++ difference ++ load := by
  rw [modSub, modSubOn_backend]
  exact ModReductionBackend.sub_program L q

theorem modAdd_bounded_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modAdd L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }} := by
  have branches := modAddOn_refines L hnd q hq0 hq X Y O hXY
  simpa only [ModReductionAlgorithm.addResult_correct X Y q hXY] using branches

theorem modAdd_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modAdd L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }} :=
  modAddOn_mod_spec L hnd q hq0 hq X Y O hX hY

theorem modSub_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modSub L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+q-Y)%q)), L.work = 0 }} :=
  modSubOn_mod_spec L hnd q hq0 hq X Y O hX hY

end ECDSAAdd.Arithmetic
