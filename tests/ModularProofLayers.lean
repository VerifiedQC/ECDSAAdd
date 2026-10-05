import ECDSAAdd.Arithmetic.ModularAddition.ModularFrame

open ECDSAAdd ECDSAAdd.Arithmetic
open ModReductionAlgorithm

namespace ModularProofLayers

-- 数学层不需要位宽、线路或工作区；两个分支各自给出正确余数。
example (X Y q : Nat) (hSum : X + Y < 2*q) :
    addResult X Y q = (X+Y)%q := addResult_correct X Y q hSum
example (X Y q : Nat) (hX : X < q) (hY : Y < q) :
    subResult X Y q = (X+q-Y)%q := subResult_correct X Y q hX hY
example : addResult 6 6 7 = 5 := by decide
example : addResult 3 4 7 = 0 := by decide
example : addResult 1 2 7 = 3 := by decide
example : subResult 1 6 7 = 2 := by decide
example : subResult 6 1 7 = 5 := by decide
example : subResult 6 6 7 = 0 := by decide
example : addResult 0 0 1 = 0 ∧ subResult 0 0 1 = 0 := by decide

-- 不能省去范围条件、提前截断和，或把有借位的减法当成 Nat 截断减法。
example : addResult 14 1 7 ≠ (14+1)%7 := by decide
example : ((6+6)%8)%7 ≠ (6+6)%7 := by decide
example : (1-6 : Nat)+7 ≠ subResult 1 6 7 := by decide

private def bit (i : Nat) : ModBit :=
  ⟨8*i, 8*i+1, 8*i+2, 8*i+3, 8*i+4, 8*i+5, 8*i+6, 8*i+7⟩
private def small : ModLayout := ⟨[bit 0, bit 1, bit 2], bit 3, 32, 33⟩

-- 端到端规格覆盖任意测量记录和初始相位；输出高位也不应被清零。
example :
    {{ small.x = 6, small.y = 6, small.out = 8, small.work = 0 }}
      modAddOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 6, small.y = 6, small.out = 13, small.work = 0 }} := by
  simpa using modAddOn_mod_spec small (by decide) 7 (by decide) (by decide)
    6 6 8 (by decide) (by decide)
example (O : Nat) :
    {{ small.x = 3, small.y = 4, small.out = O, small.work = 0 }}
      modAddOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 3, small.y = 4, small.out = O, small.work = 0 }} := by
  simpa using modAddOn_mod_spec small (by decide) 7 (by decide) (by decide)
    3 4 O (by decide) (by decide)
example :
    {{ small.x = 1, small.y = 6, small.out = 8, small.work = 0 }}
      modSubOn small.x small.y (small.lowReg .out) 7 small.reductionWorkspace
    {{ small.x = 1, small.y = 6, small.out = 10, small.work = 0 }} := by
  simpa using modSubOn_mod_spec small (by decide) 7 (by decide) (by decide)
    1 6 8 (by decide) (by decide)
example (O : Nat) :
    {{ small.x = 0, small.y = 0, small.out = O, small.work = 0 }}
      modSubOn small.x small.y (small.lowReg .out) 1 small.reductionWorkspace
    {{ small.x = 0, small.y = 0, small.out = O, small.work = 0 }} := by
  simpa using modSubOn_mod_spec small (by decide) 1 (by decide) (by decide)
    0 0 O (by decide) (by decide)

-- 完整运行结论包括不在布局中的任意 wire；不是只有输入寄存器读值保持。
example (L : ModLayout) (hn : L.wires.Nodup) (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width)
    (s : State) (m : List Bool) (hx : regValue L.x s.basis < q) (hy : regValue L.y s.basis < q)
    (hw : regValue L.work s.basis = 0) (w : Wire) (ho : w ∉ L.out) :
    (run (modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) m s).basis w = s.basis w :=
  (modAddOn_correct L hn q hq0 hq s m hx hy hw).2.1 w ho
example (L : ModLayout) (hn : L.wires.Nodup) (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width)
    (s : State) (m : List Bool) (hx : regValue L.x s.basis < q) (hy : regValue L.y s.basis < q)
    (hw : regValue L.work s.basis = 0) :
    (run (modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) m s).phase = s.phase :=
  (modSubOn_correct L hn q hq0 hq s m hx hy hw).1

example (L : ModLayout) (hn : L.wires.Nodup) (q : Nat) :
    toffoliCount (modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 5*L.width+4 ∧
    measurementCount (modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 4*(L.width+1) ∧
    qubitCount (modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 8*L.width+9 :=
  modAdd_resources L hn q
example (L : ModLayout) (hn : L.wires.Nodup) (q : Nat) :
    toffoliCount (modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 5*L.width+4 ∧
    measurementCount (modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 4*(L.width+1) ∧
    qubitCount (modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace) = 8*L.width+9 :=
  modSub_resources L hn q

-- 锁定证明的连接方向：旧规格必须经过新分层证明，不能退回“新规格引用旧规格”。
run_cmd do
  let env ← Lean.getEnv
  for (root, required) in [
      (``modAdd_spec, ``modAddOn_mod_spec),
      (``modSub_spec, ``modSubOn_mod_spec),
      (``modAddOn_mod_spec, ``modAddOn_refines),
      (``modAddOn_mod_spec, ``ModReductionAlgorithm.addResult_correct),
      (``modSubOn_mod_spec, ``modSubOn_refines),
      (``modSubOn_mod_spec, ``ModReductionAlgorithm.subResult_correct),
      (``modAddOn_refines, ``ModReductionBackend.add_refines),
      (``modSubOn_refines, ``ModReductionBackend.sub_refines)] do
    let some info := env.find? root | throwError "找不到证明 {root}"
    let some proof := info.value? | throwError "{root} 没有证明体"
    unless proof.getUsedConstants.contains required do
      throwError "{root} 必须使用 {required}，保持算法证明与后端连接的分层"

-- 检查后端证明的项目内传递依赖，禁止借用任何最终模运算结论来证明分支实现。
run_cmd do
  let env ← Lean.getEnv
  let forbidden := [``modAdd_spec, ``modAdd_bounded_spec, ``modSub_spec,
    ``modAddOn_spec, ``modSubOn_spec, ``modAddOn_mod_spec, ``modSubOn_mod_spec,
    ``ModReductionAlgorithm.addResult_correct, ``ModReductionAlgorithm.subResult_correct]
  let mut pending := [``ModReductionBackend.add_refines, ``ModReductionBackend.sub_refines]
  let mut seen : Lean.NameSet := {}
  while !pending.isEmpty do
    let name := pending.head!
    pending := pending.tail
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.find? name | throwError "找不到依赖 {name}"
    let some proof := info.value? | continue
    for dep in proof.getUsedConstants do
      if forbidden.contains dep then
        throwError "后端 {name} 不得依赖最终模运算结论 {dep}"
      if dep.toString.startsWith "ECDSAAdd." || dep.toString.startsWith "_private.ECDSAAdd." then
        pending := dep :: pending

end ModularProofLayers
