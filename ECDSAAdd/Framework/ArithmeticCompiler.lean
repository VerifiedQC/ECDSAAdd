import ECDSAAdd.Framework.ArithmeticLanguage

namespace ECDSAAdd.ArithmeticLanguage

/-- 资源绑定到同一具体门列；support 是静态线路集合，不是峰值存活数。 -/
structure Resources where
  toffoli : Nat
  measurements : Nat
  support : Finset Wire

/-- 一个满足指定原地模加规格的实现；证明是接口的一部分。 -/
structure Implementation {n : Nat} (op : ModAdd n) where
  circuit : Program
  workspace : List Wire
  valid : op.Valid
  workspace_disjoint : ∀ w ∈ workspace, w ∉ op.target.wires
  correct : ∀ (s : State) (m : List Bool), op.Pre s.basis → Clean workspace s.basis →
    (run circuit m s).phase = s.phase ∧ op.Effect s.basis (run circuit m s).basis
  resources : Resources
  toffoli_eq : toffoliCount circuit = resources.toffoli
  measurements_eq : measurementCount circuit = resources.measurements
  support_eq : wires circuit = resources.support

/-- 显式注册某个操作的已接线实现；不自动分配或猜测工作区。 -/
structure Binding (n : Nat) where
  name : String
  operation : ModAdd n
  implementation : Implementation operation

structure Config (n : Nat) where
  defaultImplementation : String
  bindings : List (Binding n)

def lookup {n : Nat} (name : String) (op : ModAdd n) :
    List (Binding n) → Option (Implementation op)
  | [] => none
  | entry :: rest =>
    if entry.name = name then
      if h : entry.operation = op then some (h ▸ entry.implementation)
      else lookup name op rest
    else lookup name op rest

/-- 与高层代码逐句对应的已接线实现，不改变源代码中的数学操作。 -/
inductive Lowering {n : Nat} : Code n → Type where
  | nil : Lowering []
  | cons {step : Statement n} {rest : Code n}
      (implementation : Implementation step.operation) (tail : Lowering rest) :
      Lowering (step :: rest)

namespace Lowering

def circuit {n : Nat} {code : Code n} : Lowering code → Program
  | .nil => []
  | .cons impl tail => impl.circuit ++ tail.circuit

/-- 每次调用的数值范围和零工作区义务；不是编译器擅自加入的运行时检查。 -/
def Ready {n : Nat} {code : Code n} : Lowering code → BasisState → Prop
  | .nil, _ => True
  | @cons _ step _ impl tail, s =>
    step.operation.Pre s ∧ Clean impl.workspace s ∧
      ∀ t, step.operation.Effect s t → tail.Ready t

def resources {n : Nat} {code : Code n} : Lowering code → Resources
  | .nil => ⟨0, 0, ∅⟩
  | .cons impl tail => ⟨impl.resources.toffoli + tail.resources.toffoli,
      impl.resources.measurements + tail.resources.measurements,
      impl.resources.support ∪ tail.resources.support⟩

/-- 门数相加，实际静态线路取并集，因此复用工作区不会重复计数。 -/
theorem resources_correct {n : Nat} {code : Code n} (plan : Lowering code) :
    toffoliCount plan.circuit = plan.resources.toffoli ∧
    measurementCount plan.circuit = plan.resources.measurements ∧
    wires plan.circuit = plan.resources.support := by
  induction plan with
  | nil => exact ⟨rfl, rfl, rfl⟩
  | cons impl tail ih =>
    simp only [circuit, resources, toffoliCount_append, measurementCount_append, wires_append,
      impl.toffoli_eq, impl.measurements_eq, impl.support_eq, ih.1, ih.2.1, ih.2.2, and_self]

/-- 所有测量记录都实现同一高层执行，且恢复初始相位。 -/
theorem run_correct {n : Nat} {code : Code n} (plan : Lowering code)
    (s : State) (m : List Bool) (h : plan.Ready s.basis) :
    (run plan.circuit m s).phase = s.phase ∧
    Executes code s.basis (run plan.circuit m s).basis := by
  induction plan generalizing s m with
  | nil => exact ⟨rfl, .nil _⟩
  | cons impl tail ih =>
    obtain ⟨hp, he⟩ := impl.correct s (m.take (measurementCount impl.circuit)) h.1 h.2.1
    obtain ⟨hp', he'⟩ := ih (run impl.circuit (m.take (measurementCount impl.circuit)) s)
      (m.drop (measurementCount impl.circuit)) (h.2.2 _ he)
    rw [circuit, run_append]
    exact ⟨hp'.trans hp, .cons h.1 he he'⟩

/-- 高层规格加上调用前提，推出原有 Framework.Triple；不引入新公理。 -/
theorem sound {n : Nat} {code : Code n} (plan : Lowering code)
    {P Q : BasisState → Prop} (spec : Spec P code Q) :
    Triple (fun s => P s ∧ plan.Ready s) plan.circuit Q := by
  intro s m h
  obtain ⟨hp, he⟩ := plan.run_correct s m h.2
  exact ⟨hp, spec _ _ h.1 he⟩

end Lowering

/-- 交付接口必须同时提供算法规格和所有调用前提，不能只交付一次成功的编译。 -/
structure Verified {n : Nat} (code : Code n) (P Q : BasisState → Prop) where
  plan : Lowering code
  specification : Spec P code Q
  ready : ∀ s, P s → plan.Ready s

theorem Verified.correct {n : Nat} {code : Code n} {P Q : BasisState → Prop}
    (verified : Verified code P Q) : Triple P verified.plan.circuit Q :=
  (verified.plan.sound verified.specification).conseq
    (fun s h => ⟨h, verified.ready s h⟩) (fun _ h => h)

/-- 显式选择优先于默认配置；缺少匹配的已认证实现时返回错误，不静默回退。 -/
def compile {n : Nat} (config : Config n) : (code : Code n) → Except String (Lowering code)
  | [] => .ok .nil
  | step :: rest => do
    let name := step.implementation.getD config.defaultImplementation
    let some impl := lookup name step.operation config.bindings
      | .error s!"没有匹配的已认证原地模加实现：{name}（请核对寄存器、模数和接线配置）"
    return .cons impl (← compile config rest)

/-- 两次调用可以使用不同实现，共用初始为零且与目标分离的工作池。 -/
theorem twice_ready {n : Nat} (op : ModAdd n) (first second : Option String)
    (a b : Implementation op) (work : List Wire)
    (ha : ∀ w ∈ a.workspace, w ∈ work) (hb : ∀ w ∈ b.workspace, w ∈ work)
    (hd : ∀ w ∈ work, w ∉ op.target.wires)
    (s : BasisState) (hp : op.Pre s) (hc : Clean work s) :
    (Lowering.cons (step := ⟨op, first⟩) a
      (.cons (step := ⟨op, second⟩) b .nil)).Ready s := by
  refine ⟨hp, (fun w hw => hc w (ha w hw)), ?_⟩
  intro t he
  exact ⟨he.pre a.valid hp, fun w hw => he.clean work hd hc w (hb w hw), fun _ _ => True.intro⟩

/-- 两次模加的端到端证明，与具体实现和是否共用布局无关。 -/
theorem twice_correct {n : Nat} (op : ModAdd n) (first second : Option String)
    (a b : Implementation op) (work : List Wire)
    (ha : ∀ w ∈ a.workspace, w ∈ work) (hb : ∀ w ∈ b.workspace, w ∈ work)
    (hd : ∀ w ∈ work, w ∉ op.target.wires)
    (X Y : Nat) (hX : X < op.modulus) (hY : Y < op.modulus) :
    Triple (fun s => op.source.value s = X ∧ op.target.value s = Y ∧ Clean work s)
      (Lowering.cons (step := ⟨op, first⟩) a
        (.cons (step := ⟨op, second⟩) b .nil)).circuit
      (fun s => op.source.value s = X ∧
        op.target.value s = (X + (X + Y) % op.modulus) % op.modulus ∧ Clean work s) := by
  apply (Lowering.sound _ (twice_spec op first second X Y work hd)).conseq ?_ (fun _ h => h)
  intro s h
  exact ⟨h, twice_ready op first second a b work ha hb hd s
    ⟨h.1 ▸ hX, h.2.1 ▸ hY⟩ h.2.2⟩

end ECDSAAdd.ArithmeticLanguage
