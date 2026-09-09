import Mathlib.Data.Fin.Basic

/-! 首版语言：测量只能立即选择 Z/CZ 修正，后续计算流程固定。 -/
namespace ECDSAAdd

abbrev Wire := Nat
abbrev BasisState := Wire → Bool

structure State where
  phase : Bool
  basis : BasisState

inductive Gate where
  | X (target : Wire)
  | CX (control target : Wire)
  | CCX (left right target : Wire)
  | Z (target : Wire)
  | CZ (left right : Wire)
  deriving DecidableEq, Repr

/-- 测量结果只控制即时相位修正，不控制后续算术或测量。 -/
inductive Correction where
  | Z (target : Wire)
  | CZ (left right : Wire)
  deriving DecidableEq, Repr

inductive Instr where
  | gate (g : Gate)
  | measureX (target : Wire) (onZero onOne : List Correction)
  deriving DecidableEq, Repr

abbrev Program := List Instr

def measurementCount : Program → Nat
  | [] => 0
  | .gate _ :: p => measurementCount p
  | .measureX _ _ _ :: p => 1 + measurementCount p

/-- 所有测量结果的类型，不依赖输入状态，也不筛选成功路径。 -/
abbrev Outcomes (p : Program) := Fin (measurementCount p) → Bool

def Gate.WellFormed : Gate → Prop
  | .X _ | .Z _ => True
  | .CX c t | .CZ c t => c ≠ t
  | .CCX a b t => a ≠ b ∧ a ≠ t ∧ b ≠ t

def Correction.WellFormed : Correction → Prop
  | .Z _ => True
  | .CZ a b => a ≠ b

def Instr.WellFormed : Instr → Prop
  | .gate g => g.WellFormed
  | .measureX _ c₀ c₁ =>
      (∀ c ∈ c₀, c.WellFormed) ∧ (∀ c ∈ c₁, c.WellFormed)

def WellFormed (p : Program) : Prop := ∀ i ∈ p, i.WellFormed

/-- 顺序连接程序时，测量次数相加。 -/
@[simp] theorem measurementCount_append (p q : Program) :
    measurementCount (p ++ q) = measurementCount p + measurementCount q := by
  induction p with
  | nil => simp [measurementCount]
  | cons i p ih => cases i <;> simp [measurementCount, ih, Nat.add_assoc]

end ECDSAAdd
