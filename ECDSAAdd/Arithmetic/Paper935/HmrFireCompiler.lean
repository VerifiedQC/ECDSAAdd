import ECDSAAdd.Arithmetic.Paper935.HmrEqualityCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrChainFire

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrFirePlan where
  equalityArena : Arena
  equalityWork : List Wire
  equality : HmrEqualityPlan
  fireWork : List Wire

def HmrFirePlan.work (P : HmrFirePlan) : Wire := hmrBorrowPorts P.fireWork (0 : Fin 1)

def HmrFirePlan.ports (P : HmrFirePlan) (zf frozen fire : Wire) : Fin 5 → Wire :=
  ![P.equality.top,zf,frozen,fire,P.work]

def HmrFirePlan.program (P : HmrFirePlan) (zf frozen fire : Wire) : Program :=
  hmrChainFire P.equality.stages P.equality.top zf frozen fire P.work

def HmrFirePlan.Geometry (P : HmrFirePlan) (zf frozen fire : Wire) : Prop :=
  [P.equality.top,zf,frozen,fire,P.work].Nodup ∧
  ∀q∈[zf,frozen,fire,P.work],q∉P.equality.head.wire::hmrLadderPorts P.equality.cells

instance hmrFireGeometryDecidable (P : HmrFirePlan) (zf frozen fire : Wire) : Decidable (P.Geometry zf frozen fire) :=
  inferInstanceAs (Decidable (
    [P.equality.top,zf,frozen,fire,P.work].Nodup ∧
    ∀q∈[zf,frozen,fire,P.work],q∉P.equality.head.wire::hmrLadderPorts P.equality.cells))

/-- Equality ladder first, then the single w1 borrowed by source F16. -/
def compileHmrFire (A : Arena) (record : List Wire) (offset : Nat) (zf frozen fire : Wire) :
    Option (Arena × HmrFirePlan) := do
  if [zf,frozen,fire].toFinset⊆A.live then
    let (B,eqWork,eqPlan) ← compileHmrEquality A record offset
    let (C,work) ← B.borrowMany 1
    let P : HmrFirePlan := ⟨B,eqWork,eqPlan,work⟩
    if P.Geometry zf frozen fire then some (C,P) else none
  else none

theorem compileHmrFire_contract (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    (h : compileHmrFire A record offset zf frozen fire=some (C,P)) :
    [zf,frozen,fire].toFinset⊆A.live ∧
    compileHmrEquality A record offset=some (P.equalityArena,P.equalityWork,P.equality) ∧
    P.equalityArena.borrowMany 1=some (C,P.fireWork) ∧ P.Geometry zf frozen fire := by
  unfold compileHmrFire at h
  split at h
  next owned =>
    obtain ⟨⟨B,ew,ep⟩,eqh,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,work⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next geom => cases h; exact ⟨owned,eqh,borrow,geom⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrFire_run (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    (h : compileHmrFire A record offset zf frozen fire=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    run (P.program zf frozen fire) m s=⟨s.phase,writeBit s.basis fire false⟩ := by
  have hc := compileHmrFire_contract A C record offset zf frozen fire P h
  have eqc := compileHmrEquality_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have er := (A.reserve_ready P.equalityArena P.equalityWork.toFinset s.basis ready
    (A.borrowMany_contract _ _ _ eqc.2.1).2.2).1
  have zero := hmrBorrowPorts_clean P.equalityArena C 1 P.fireWork hc.2.2.1 s.basis er (0 : Fin 1)
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
      compileHmrEquality_value A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis] using value
  exact hmrChainFire_run P.equality.stages (P.ports zf frozen fire) nd outside s m
    (compileHmrEquality_ready A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis ready) zero v

end ECDSAAdd.Arithmetic.Paper935
