import ECDSAAdd.Framework.Syntax

namespace ECDSAAdd

/-- 写一根线路；所有其他线路保持原值。 -/
def writeBit (bits : BasisState) (w : Wire) (v : Bool) : BasisState :=
  Function.update bits w v

def applyGate (g : Gate) (s : State) : State :=
  match g with
  | .X t => ⟨s.phase, writeBit s.basis t (!s.basis t)⟩
  | .CX c t => ⟨s.phase, writeBit s.basis t (s.basis t ^^ s.basis c)⟩
  | .CCX a b t => ⟨s.phase, writeBit s.basis t (s.basis t ^^ (s.basis a && s.basis b))⟩
  | .Z t => ⟨s.phase ^^ s.basis t, s.basis⟩
  | .CZ a b => ⟨s.phase ^^ (s.basis a && s.basis b), s.basis⟩

def applyCorrection (c : Correction) (s : State) : State :=
  match c with
  | .Z t => ⟨s.phase ^^ s.basis t, s.basis⟩
  | .CZ a b => ⟨s.phase ^^ (s.basis a && s.basis b), s.basis⟩

def correct : List Correction → State → State
  | [], s => s
  | c :: cs, s => correct cs (applyCorrection c s)

/-- X 测量的符号规则：使用清零前的位更新相位，再清零，再立即修正。 -/
def measureAndCorrect (t : Wire) (c₀ c₁ : List Correction) (m : Bool) (s : State) : State :=
  correct (if m then c₁ else c₀)
    ⟨s.phase ^^ (m && s.basis t), writeBit s.basis t false⟩

/-- 对给定的所有测量结果执行程序；输出仍是一个符号相位和位串。 -/
def run : (p : Program) → Outcomes p → State → State
  | [], _, s => s
  | .gate g :: p, m, s => run p m (applyGate g s)
  | .measureX t c₀ c₁ :: p, m, s =>
      run p (fun i => m ⟨i.val + 1, by
        have := i.isLt
        simp only [measurementCount]
        omega⟩)
        (measureAndCorrect t c₀ c₁ (m ⟨0, by simp only [measurementCount]; omega⟩) s)

/-- 对任意修正列表，basis 不变。 -/
@[simp] theorem correct_basis (cs : List Correction) (s : State) :
    (correct cs s).basis = s.basis := by
  induction cs generalizing s with
  | nil => rfl
  | cons c cs ih =>
    simp only [correct, ih]
    cases c <;> rfl

/-- 程序前段对应的测量结果。 -/
def firstOutcomes (p q : Program) (m : Outcomes (p ++ q)) : Outcomes p :=
  fun i => m ⟨i.val, by rw [measurementCount_append]; omega⟩

/-- 程序后段对应的测量结果。 -/
def lastOutcomes (p q : Program) (m : Outcomes (p ++ q)) : Outcomes q :=
  fun i => m ⟨measurementCount p + i.val, by rw [measurementCount_append]; omega⟩

/-- 顺序组合：先执行 p，再把其完整输出交给 q；测量记录依次拆分。 -/
theorem run_append (p q : Program) (m : Outcomes (p ++ q)) (s : State) :
    run (p ++ q) m s =
      run q (lastOutcomes p q m) (run p (firstOutcomes p q m) s) := by
  induction p generalizing s with
  | nil =>
    change run q m s = run q (lastOutcomes [] q m) s
    congr 1
    funext j
    unfold lastOutcomes
    congr 1
    apply Fin.ext
    simp [measurementCount]
  | cons i p ih =>
    cases i with
    | gate g => exact ih m (applyGate g s)
    | measureX t c₀ c₁ =>
      simp only [List.cons_append, run]
      rw [ih]
      congr 1
      · funext j
        simp [lastOutcomes, measurementCount, Nat.add_assoc, Nat.add_comm]

end ECDSAAdd
