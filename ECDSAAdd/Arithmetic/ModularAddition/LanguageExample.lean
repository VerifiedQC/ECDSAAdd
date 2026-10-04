import ECDSAAdd.Framework.ArithmeticSyntax
import ECDSAAdd.Arithmetic.ModularAddition.LanguageAdapter
import ECDSAAdd.Arithmetic.ModularAddition.LanguageControlledAdapter

namespace ECDSAAdd.Arithmetic.ModAddLanguage.Example
open ArithmeticLanguage

/-- 三位数据，模数 7；线路 0–5 是输入输出，6–15 是复用工作区。 -/
def x : QReg 3 := ⟨[0, 1, 2], by decide, by decide⟩
def y : QReg 3 := ⟨[3, 4, 5], by decide, by decide⟩
def q : Nat := 7

def workspace : Workspace 3 := {
  sourceHigh := 6
  targetHigh := 7
  constant := ⟨[8, 9, 10, 11], by decide, by decide⟩
  carry := ⟨[12, 13, 14], by decide, by decide⟩
  cin := 15
}

def operation : ModAdd 3 := ⟨x, y, q⟩
def implementation : Implementation operation := direct operation workspace (by decide) (by decide)

def maskedWorkspace : ControlledWorkspace 3 := {
  workspace with
  mask := ⟨[16, 17, 18, 19], by decide, by decide⟩
  flag := 20
  enable := 21
}

def maskedImplementation : Implementation operation :=
  viaControlled operation maskedWorkspace (by decide) (by decide)

def arithmetic : Config 3 := {
  defaultImplementation := "direct"
  bindings := [⟨"direct", operation, implementation⟩,
    ⟨"masked", operation, maskedImplementation⟩]
}

/-- y 连续加两次 x（模 q）；算法中不出现进位链和辅助高位。 -/
def algorithm : Request 3 := arith using arithmetic {
  y = (x + y) mod q;
  y = (x + y) mod q;
}

def plan : Lowering algorithm.code := .cons implementation (.cons implementation .nil)

/-- 实际编译结果就是下方验证和资源计数使用的计划。 -/
theorem compiles : algorithm.compile = .ok plan := rfl

def initial (X Y : Nat) (s : BasisState) : Prop :=
  x.value s = X ∧ y.value s = Y ∧ Clean workspace.wires s

def finalState (X Y : Nat) (s : BasisState) : Prop :=
  x.value s = X ∧ y.value s = (X + (X + Y) % q) % q ∧ Clean workspace.wires s

/-- 证明规格及工作区复用；未满足范围或零工作区时不能取得此交付接口。 -/
def verified (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Verified algorithm.code (initial X Y) (finalState X Y) := {
  plan := plan
  specification := twice_spec operation none none X Y workspace.wires
    implementation.workspace_disjoint
  ready := fun s h => twice_ready operation none none implementation implementation
    workspace.wires (fun _ hw => hw) (fun _ hw => hw)
    implementation.workspace_disjoint s ⟨h.1 ▸ hX, h.2.1 ▸ hY⟩ h.2.2
}

theorem correct (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (initial X Y) plan.circuit (finalState X Y) :=
  (verified X Y hX hY).correct

/-- 对任意测量记录，所有目标寄存器之外的 wire 保持原值。 -/
theorem frame (X Y : Nat) (hX : X < q) (hY : Y < q)
    (s : State) (m : List Bool) (h : initial X Y s.basis)
    (w : Wire) (hw : w ∉ y.wires) : (run plan.circuit m s).basis w = s.basis w := by
  obtain ⟨_, he⟩ := plan.run_correct s m ((verified X Y hX hY).ready _ h)
  cases he with
  | cons _ h₁ tail =>
    cases tail with
    | cons _ h₂ tail =>
      cases tail
      exact (h₂.2.2 w hw).trans (h₁.2.2 w hw)

/-- 两次调用各用 11 个 Toffoli 和 11 次测量，共用 16 根实际静态线路。 -/
theorem resources : toffoliCount plan.circuit = 22 ∧
    measurementCount plan.circuit = 22 ∧ qubitCount plan.circuit = 16 := by
  simpa only [plan, Lowering.circuit, List.append_nil] using
    direct_twice_resources operation workspace (by decide) (by decide)

/-- 只改默认配置，算法代码保持相同。 -/
def maskedAlgorithm : Request 3 := {
  config := { arithmetic with defaultImplementation := "masked" }
  code := algorithm.code
}

def maskedPlan : Lowering maskedAlgorithm.code :=
  .cons maskedImplementation (.cons maskedImplementation .nil)

theorem masked_compiles : maskedAlgorithm.compile = .ok maskedPlan := rfl

/-- 局部 using 只覆盖第二次调用。 -/
def mixedAlgorithm : Request 3 := arith using arithmetic {
  y = (x + y) mod q;
  y = (x + y) mod q using masked;
}

def mixedPlan : Lowering mixedAlgorithm.code :=
  .cons implementation (.cons maskedImplementation .nil)

theorem mixed_compiles : mixedAlgorithm.compile = .ok mixedPlan := rfl

def extendedInitial (X Y : Nat) (s : BasisState) : Prop :=
  x.value s = X ∧ y.value s = Y ∧ Clean maskedWorkspace.wires s

def extendedFinal (X Y : Nat) (s : BasisState) : Prop :=
  x.value s = X ∧ y.value s = (X + (X + Y) % q) % q ∧ Clean maskedWorkspace.wires s

/-- 两种实现混用时仍使用同一个算法证明，只需核对各自的工作区。 -/
def mixedVerified (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Verified mixedAlgorithm.code (extendedInitial X Y) (extendedFinal X Y) := {
  plan := mixedPlan
  specification := twice_spec operation none (some "masked") X Y maskedWorkspace.wires
    maskedImplementation.workspace_disjoint
  ready := fun s h => twice_ready operation none (some "masked") implementation maskedImplementation
    maskedWorkspace.wires
    (fun _ hw => by
      change _ ∈ workspace.wires ++ maskedWorkspace.mask.wires ++ [maskedWorkspace.flag, maskedWorkspace.enable]
      exact List.mem_append_left _ (List.mem_append_left _ hw))
    (fun _ hw => hw) maskedImplementation.workspace_disjoint s ⟨h.1 ▸ hX, h.2.1 ▸ hY⟩ h.2.2
}

theorem mixed_correct (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (extendedInitial X Y) mixedPlan.circuit (extendedFinal X Y) :=
  (mixedVerified X Y hX hY).correct

theorem masked_correct (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (extendedInitial X Y) maskedPlan.circuit (extendedFinal X Y) :=
  twice_correct operation none none maskedImplementation maskedImplementation maskedWorkspace.wires
    (fun _ hw => hw) (fun _ hw => hw) maskedImplementation.workspace_disjoint X Y hX hY

/-- 默认切换后：门数 34/22，静态线路 20；与 direct 不是同一门列。 -/
theorem masked_resources : toffoliCount maskedPlan.circuit = 34 ∧
    measurementCount maskedPlan.circuit = 22 ∧ qubitCount maskedPlan.circuit = 20 := by
  have h := maskedPlan.resources_correct
  refine ⟨h.1.trans (by decide), h.2.1.trans (by decide), ?_⟩
  change (wires maskedPlan.circuit).card = 20
  rw [h.2.2]
  decide

/-- 混用时线路取并集：不是 16+20，而是 21。 -/
theorem mixed_resources : toffoliCount mixedPlan.circuit = 28 ∧
    measurementCount mixedPlan.circuit = 22 ∧ qubitCount mixedPlan.circuit = 21 := by
  have h := mixedPlan.resources_correct
  refine ⟨h.1.trans (by decide), h.2.1.trans (by decide), ?_⟩
  change (wires mixedPlan.circuit).card = 21
  rw [h.2.2]
  decide

theorem implementations_differ : implementation.circuit ≠ maskedImplementation.circuit := by
  intro h
  have hT := congrArg toffoliCount h
  rw [implementation.toffoli_eq, maskedImplementation.toffoli_eq] at hT
  contradiction

end ECDSAAdd.Arithmetic.ModAddLanguage.Example
