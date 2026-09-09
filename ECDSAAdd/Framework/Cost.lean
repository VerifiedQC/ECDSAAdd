import ECDSAAdd.Framework.Semantics
import Mathlib.Data.Finset.Card

namespace ECDSAAdd

def toffoliCount : Program → Nat
  | [] => 0
  | .gate (.CCX _ _ _) :: p => 1 + toffoliCount p
  | _ :: p => toffoliCount p

def Gate.wires : Gate → Finset Wire
  | .X t | .Z t => {t}
  | .CX c t | .CZ c t => {c, t}
  | .CCX a b t => {a, b, t}

def Correction.wires : Correction → Finset Wire
  | .Z t => {t}
  | .CZ a b => {a, b}

def correctionWires : List Correction → Finset Wire
  | [] => ∅
  | c :: cs => c.wires ∪ correctionWires cs

def Instr.wires : Instr → Finset Wire
  | .gate g => g.wires
  | .measureX t c₀ c₁ => {t} ∪ correctionWires c₀ ∪ correctionWires c₁

/-- 包含两条修正列表的静态线路并集；不是逐指令线路数的和。 -/
def wires : Program → Finset Wire
  | [] => ∅
  | i :: p => i.wires ∪ wires p

/-- 程序声明支持集的不同线路数；不声称最大同时存活数。 -/
def qubitCount (p : Program) : Nat := (wires p).card

@[simp] theorem toffoliCount_append (p q : Program) :
    toffoliCount (p ++ q) = toffoliCount p + toffoliCount q := by
  induction p with
  | nil => simp [toffoliCount]
  | cons i p ih =>
    cases i with
    | gate g => cases g <;> simp [toffoliCount, ih, Nat.add_assoc]
    | measureX t c₀ c₁ => simp [toffoliCount, ih]

@[simp] theorem wires_append (p q : Program) : wires (p ++ q) = wires p ∪ wires q := by
  induction p with
  | nil => simp [wires]
  | cons i p ih => simp [wires, ih, Finset.union_assoc]

private theorem gate_preserves_outside (g : Gate) (s : State) (w : Wire)
    (hw : w ∉ g.wires) : (applyGate g s).basis w = s.basis w := by
  cases g <;> simp_all [Gate.wires, applyGate, writeBit, Function.update]

private theorem measure_preserves_outside (t : Wire) (c₀ c₁ : List Correction)
    (m : Bool) (s : State) (w : Wire) (hw : w ≠ t) :
    (measureAndCorrect t c₀ c₁ m s).basis w = s.basis w := by
  simp [measureAndCorrect, writeBit, hw]

/-- 对任意测量结果，声明线路集合以外的每一位都保持原值。 -/
theorem run_preserves_outside (p : Program) (m : Outcomes p) (s : State) (w : Wire)
    (hw : w ∉ wires p) : (run p m s).basis w = s.basis w := by
  induction p generalizing s with
  | nil => rfl
  | cons i p ih =>
    have hi : w ∉ i.wires := fun h => hw (Finset.mem_union_left _ h)
    have hp : w ∉ wires p := fun h => hw (Finset.mem_union_right _ h)
    cases i with
    | gate g =>
      simp only [run]
      rw [ih _ _ hp]
      exact gate_preserves_outside g s w hi
    | measureX t c₀ c₁ =>
      simp only [run]
      rw [ih _ _ hp]
      apply measure_preserves_outside
      simpa [Instr.wires] using (fun h : w = t => hi (by simp [Instr.wires, h]))

end ECDSAAdd
