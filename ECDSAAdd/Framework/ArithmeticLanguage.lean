import ECDSAAdd.Framework.Hoare

namespace ECDSAAdd.ArithmeticLanguage

/-- n 位小端寄存器视图；只引用已有线路，不分配 qubit。 -/
structure QReg (n : Nat) where
  wires : List Wire
  width : wires.length = n
  distinct : wires.Nodup
  deriving DecidableEq

def QReg.value {n : Nat} (r : QReg n) (s : BasisState) : Nat := regValue r.wires s

/-- 工作区的逐线零条件，不执行清零操作。 -/
def Clean (work : List Wire) (s : BasisState) : Prop := ∀ w ∈ work, s w = false

/-- 原地模加的逻辑操作：target ← (source+target) mod modulus。 -/
structure ModAdd (n : Nat) where
  source : QReg n
  target : QReg n
  modulus : Nat
  deriving DecidableEq

namespace ModAdd

def Valid {n : Nat} (op : ModAdd n) : Prop :=
  0 < op.modulus ∧ op.modulus < 2^n ∧ (op.source.wires ++ op.target.wires).Nodup

instance {n : Nat} (op : ModAdd n) : Decidable op.Valid := inferInstanceAs
  (Decidable (0 < op.modulus ∧ op.modulus < 2^n ∧
    (op.source.wires ++ op.target.wires).Nodup))

def Pre {n : Nat} (op : ModAdd n) (s : BasisState) : Prop :=
  op.source.value s < op.modulus ∧ op.target.value s < op.modulus

/-- 只改变目标寄存器的数值；目标之外每一根 wire 都保持。 -/
def Effect {n : Nat} (op : ModAdd n) (s t : BasisState) : Prop :=
  op.source.value t = op.source.value s ∧
  op.target.value t = (op.source.value s + op.target.value s) % op.modulus ∧
  ∀ w, w ∉ op.target.wires → t w = s w

theorem Effect.pre {n : Nat} {op : ModAdd n} {s t : BasisState}
    (hv : op.Valid) (hp : op.Pre s) (he : op.Effect s t) : op.Pre t := by
  exact ⟨he.1 ▸ hp.1, he.2.1 ▸ Nat.mod_lt _ hv.1⟩

theorem Effect.clean {n : Nat} {op : ModAdd n} {s t : BasisState}
    (he : op.Effect s t) (work : List Wire)
    (hd : ∀ w ∈ work, w ∉ op.target.wires) (hc : Clean work s) : Clean work t := by
  intro w hw
  exact (he.2.2 w (hd w hw)).trans (hc w hw)

end ModAdd

/-- 实现名称只影响编译选择，不改变数学语义。 -/
structure Statement (n : Nat) where
  operation : ModAdd n
  implementation : Option String := none

abbrev Code (n : Nat) := List (Statement n)

/-- 高层执行关系；没有门、工作区分配或测量分支。 -/
inductive Executes {n : Nat} : Code n → BasisState → BasisState → Prop where
  | nil (s : BasisState) : Executes [] s s
  | cons {step : Statement n} {rest : Code n} {s t u : BasisState}
      (pre : step.operation.Pre s) (effect : step.operation.Effect s t)
      (tail : Executes rest t u) : Executes (step :: rest) s u

def Spec {n : Nat} (P : BasisState → Prop) (code : Code n) (Q : BasisState → Prop) : Prop :=
  ∀ s t, P s → Executes code s t → Q t

/-- 同一模加执行两次；两次可以选择不同实现。 -/
def twice {n : Nat} (op : ModAdd n) (first second : Option String := none) : Code n :=
  [⟨op, first⟩, ⟨op, second⟩]

/-- 算法证明只用高层操作含义，不展开任何模加电路。 -/
theorem twice_spec {n : Nat} (op : ModAdd n) (first second : Option String)
    (X Y : Nat) (work : List Wire) (hd : ∀ w ∈ work, w ∉ op.target.wires) :
    Spec (fun s => op.source.value s = X ∧ op.target.value s = Y ∧ Clean work s)
      (twice op first second)
      (fun s => op.source.value s = X ∧
        op.target.value s = (X + (X + Y) % op.modulus) % op.modulus ∧ Clean work s) := by
  intro s t hp hx
  cases hx with
  | cons _ he₁ ht =>
    cases ht with
    | cons _ he₂ ht =>
      cases ht
      exact ⟨he₂.1.trans (he₁.1.trans hp.1),
        by rw [he₂.2.1, he₁.1, he₁.2.1, hp.1, hp.2.1],
        he₂.clean work hd (he₁.clean work hd hp.2.2)⟩

end ECDSAAdd.ArithmeticLanguage
