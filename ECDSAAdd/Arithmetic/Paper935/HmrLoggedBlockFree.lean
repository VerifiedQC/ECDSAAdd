import ECDSAAdd.Arithmetic.Paper935.HmrBlockFreeCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrBlockFreeLog (A : Arena) (literals : List HmrLiteral) (keeper : Wire) (work : List Wire) :
    Option (Arena × List Wire × HmrBlockFreePlan) := do
  if (keeper::literals.map HmrLiteral.wire).toFinset⊆A.live then
    let B ← A.checkBorrow (literals.length-2) work
    let plan ← hmrFreePlanFor literals keeper work
    if plan.Valid ∧ plan.literals=literals ∧ plan.keeper=keeper ∧
      plan.targets.toFinset⊆work.toFinset then some (B,work,plan) else none
  else none

theorem compileHmrBlockFreeLog_work (A B : Arena) (literals : List HmrLiteral)
    (keeper : Wire) (work actual : List Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFreeLog A literals keeper work=some (B,actual,P)) : actual=work := by
  unfold compileHmrBlockFreeLog at h
  split at h
  next owned =>
    obtain ⟨C,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨Q,_,h⟩ := Option.bind_eq_some_iff.mp h
    split at h
    next valid => cases h; rfl
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrBlockFreeLog_contract (A B : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (work : List Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFreeLog A literals keeper work=some (B,work,P)) :
    (keeper::literals.map HmrLiteral.wire).toFinset⊆A.live ∧
    A.checkBorrow (literals.length-2) work=some B ∧
    P.Valid ∧ P.literals=literals ∧ P.keeper=keeper ∧ P.targets.toFinset⊆work.toFinset := by
  unfold compileHmrBlockFreeLog at h
  split at h
  next owned =>
    obtain ⟨C,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨Q,_,h⟩ := Option.bind_eq_some_iff.mp h
    split at h
    next valid =>
      cases h
      exact ⟨owned,borrow,valid⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrBlockFreeLog_run (A B : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (work : List Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFreeLog A literals keeper work=some (B,work,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis keeper=literals.all (fun l => l.value s.basis)) :
    run P.program m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  have hc := compileHmrBlockFreeLog_contract A B literals keeper work P h
  have borrow := A.checkBorrow_contract B (literals.length-2) work hc.2.1
  have clean := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have runeq := P.run hc.2.2.1 s m (fun q hq => clean q (hc.2.2.2.2.2 (List.mem_toFinset.mpr hq)))
    (by simpa only [hc.2.2.2.1,hc.2.2.2.2.1] using value)
  simpa only [hc.2.2.2.2.1] using runeq

end ECDSAAdd.Arithmetic.Paper935
