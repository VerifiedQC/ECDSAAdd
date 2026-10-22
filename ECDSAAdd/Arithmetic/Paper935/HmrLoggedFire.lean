import ECDSAAdd.Arithmetic.Paper935.HmrFireCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEquality

namespace ECDSAAdd.Arithmetic.Paper935

/-- Equality ladder first, then the single w1 borrowed by source F16. -/
def compileHmrFireLog (A : Arena) (record : List Wire) (offset : Nat) (zf frozen fire : Wire) (eqLog fireLog : List Wire) :
    Option (Arena × HmrFirePlan) := do
  if [zf,frozen,fire].toFinset⊆A.live then
    let (B,eqWork,eqPlan) ← compileHmrEqualityLog A record offset eqLog
    let C ← B.checkBorrow 1 fireLog
    let P : HmrFirePlan := ⟨B,eqWork,eqPlan,fireLog⟩
    if P.Geometry zf frozen fire then some (C,P) else none
  else none

theorem compileHmrFireLog_contract (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    {eqLog fireLog : List Wire} (h : compileHmrFireLog A record offset zf frozen fire eqLog fireLog=some (C,P)) :
    [zf,frozen,fire].toFinset⊆A.live ∧
    compileHmrEqualityLog A record offset P.equalityWork=some (P.equalityArena,P.equalityWork,P.equality) ∧
    P.equalityArena.checkBorrow 1 P.fireWork=some C ∧ P.Geometry zf frozen fire := by
  unfold compileHmrFireLog at h
  split at h
  next owned =>
    obtain ⟨⟨B,ew,ep⟩,eqh,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨D,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next geom =>
      have eq := compileHmrEqualityLog_work A B record offset eqLog ew ep eqh
      subst ew
      cases h
      exact ⟨owned,eqh,borrow,geom⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrFireLog_run (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    {eqLog fireLog : List Wire} (h : compileHmrFireLog A record offset zf frozen fire eqLog fireLog=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    run (P.program zf frozen fire) m s=⟨s.phase,writeBit s.basis fire false⟩ := by
  have hc := compileHmrFireLog_contract A C record offset zf frozen fire P h
  have eqc := compileHmrEqualityLog_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have er := (A.reserve_ready P.equalityArena P.equalityWork.toFinset s.basis ready
    (A.checkBorrow_contract _ _ _ eqc.2.1).2.2).1
  have zero := hmrLoggedPorts_clean P.equalityArena C 1 P.fireWork hc.2.2.1 s.basis er (0 : Fin 1)
  have nd : Function.Injective (P.ports zf frozen fire) := by
    have distinct := hc.2.2.2.1
    intro i j eq
    fin_cases i <;> fin_cases j <;> simp_all [HmrFirePlan.ports,List.nodup_cons]
  have outside (i : Fin 5) (hi : i≠0) : HmrAndOutside P.equality.stages (P.ports zf frozen fire i) := by
    apply hmrLadder_outside
    apply hc.2.2.2.2
    fin_cases i <;> simp_all [HmrFirePlan.ports]
  have v : s.basis (P.ports zf frozen fire 3)=
      ((hmrAndAdvance P.equality.stages s.basis (P.ports zf frozen fire 0) &&
        s.basis (P.ports zf frozen fire 1)) && s.basis (P.ports zf frozen fire 2)) := by
    simpa only [HmrFirePlan.ports,Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_succ,
      compileHmrEqualityLog_value A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis] using value
  exact hmrChainFire_run P.equality.stages (P.ports zf frozen fire) nd outside s m
    (compileHmrEqualityLog_ready A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis ready) zero v

end ECDSAAdd.Arithmetic.Paper935
