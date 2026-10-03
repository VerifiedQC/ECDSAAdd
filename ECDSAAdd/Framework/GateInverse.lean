import ECDSAAdd.Framework.Cost

namespace ECDSAAdd

/-- The instruction is a basis-state permutation whose target is distinct
from every control.  Measurement instructions are deliberately excluded. -/
def ProperGate : Instr → Prop
  | .X _ => True
  | .CX c t => c ≠ t
  | .CCX a b t => a ≠ t ∧ b ≠ t
  | .measureX _ _ _ => False

def ProperProgram (p : Program) : Prop := ∀i∈p,ProperGate i

theorem properProgram_append (p q : Program) :
    ProperProgram (p++q) ↔ ProperProgram p ∧ ProperProgram q := by
  constructor
  · intro h
    constructor
    · intro i hi; exact h i (List.mem_append_left q hi)
    · intro i hi; exact h i (List.mem_append_right p hi)
  · rintro ⟨hp,hq⟩ i hi
    rcases List.mem_append.mp hi with hi|hi
    · exact hp i hi
    · exact hq i hi

theorem properProgram_reverse (p : Program) :
    ProperProgram p → ProperProgram p.reverse := by
  intro h i hi
  exact h i (List.mem_reverse.mp hi)

theorem properGate_measurementCount (i : Instr) (h : ProperGate i) :
    measurementCount [i]=0 := by
  cases i <;> simp_all [ProperGate,measurementCount]

theorem properGate_involution (i : Instr) (h : ProperGate i)
    (s : State) (m₁ m₂ : List Bool) :
    run [i] m₂ (run [i] m₁ s)=s := by
  cases i with
  | X t =>
      cases s with
      | mk phase basis =>
        apply congrArg (State.mk phase)
        funext q
        by_cases hq : q=t <;> simp [run,writeBit,hq]
  | CX c t =>
      change c≠t at h
      cases s with
      | mk phase basis =>
        apply congrArg (State.mk phase)
        funext q
        by_cases hq : q=t
        · subst q
          cases hc : basis c <;> cases ht : basis t <;>
            simp [run,writeBit,h,hc,ht]
        · simp [run,writeBit,hq]
  | CCX a b t =>
      cases s with
      | mk phase basis =>
        apply congrArg (State.mk phase)
        funext q
        by_cases hq : q=t
        · subst q
          cases ha : basis a <;> cases hb : basis b <;> cases ht : basis t <;>
            simp [ProperGate] at h
          all_goals simp [run,writeBit,h.1,h.2,ha,hb,ht]
        · simp [run,writeBit,hq]
  | measureX t c₀ c₁ => contradiction

theorem properProgram_measurementCount (p : Program)
    (h : ∀i∈p,ProperGate i) : measurementCount p=0 := by
  induction p with
  | nil => rfl
  | cons i p ih =>
      have hi := h i (by simp)
      have hp : ∀j∈p,ProperGate j := by intro j hj; exact h j (by simp [hj])
      cases i <;> simp_all [ProperGate,measurementCount]

theorem measurementCount_reverse (p : Program) :
    measurementCount p.reverse=measurementCount p := by
  induction p with
  | nil => rfl
  | cons i p ih =>
      cases i <;> simp [measurementCount,ih,Nat.add_comm]

theorem toffoliCount_reverse (p : Program) :
    toffoliCount p.reverse=toffoliCount p := by
  induction p with
  | nil => rfl
  | cons i p ih =>
      cases i <;> simp [toffoliCount,ih,Nat.add_comm]

theorem wires_reverse (p : Program) : wires p.reverse=wires p := by
  induction p with
  | nil => rfl
  | cons i p ih =>
      simp [wires,ih,Finset.union_comm]

/-- Reversing a proper gate-only stream gives its exact inverse on the whole
state, including phase.  Since the stream has no measurements, the two record
lists are completely independent. -/
theorem run_reverse_proper (p : Program) (h : ∀i∈p,ProperGate i)
    (s : State) (m₁ m₂ : List Bool) :
    run p.reverse m₂ (run p m₁ s)=s := by
  induction p generalizing s m₁ m₂ with
  | nil => rfl
  | cons i p ih =>
      have hi : ProperGate i := h i (by simp)
      have hp : ∀j∈p,ProperGate j := by intro j hj; exact h j (by simp [hj])
      have pm : measurementCount p=0 := properProgram_measurementCount p hp
      have prm : measurementCount p.reverse=0 := by
        rw [measurementCount_reverse]
        exact pm
      have runCons : run (i::p) m₁ s=run p m₁ (run [i] [] s) := by
        cases i <;> simp_all [ProperGate,run]
      simp only [List.reverse_cons,run_append,prm,List.take_zero,List.drop_zero,runCons]
      rw [ih hp]
      exact properGate_involution i hi s [] m₂

end ECDSAAdd
