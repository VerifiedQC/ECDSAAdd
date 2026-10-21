import ECDSAAdd.Arithmetic.Paper935.HmrEqualityCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrChainAndKeep

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrUnfreezePlan where
  equalityArena : Arena
  equalityWork : List Wire
  equality : HmrEqualityPlan
  fireWork : List Wire

def HmrUnfreezePlan.fire (P : HmrUnfreezePlan) : Wire := hmrBorrowPorts P.fireWork (0 : Fin 1)

def HmrUnfreezePlan.mint (P : HmrUnfreezePlan) (frozen : Wire) : Program :=
  hmrChainAndKeep P.equality.stages P.equality.top frozen P.fire

def compileHmrUnfreeze (A : Arena) (record : List Wire) (offset : Nat) (frozen : Wire) :
    Option (Arena × HmrUnfreezePlan) := do
  if frozen∈A.live then
    let (B,eqWork,eqPlan) ← compileHmrEquality A record offset
    let (C,work) ← B.borrowMany 1
    let P : HmrUnfreezePlan := ⟨B,eqWork,eqPlan,work⟩
    if [P.equality.top,frozen,P.fire].Nodup ∧
        (∀q∈[frozen,P.fire],q∉P.equality.head.wire::hmrLadderPorts P.equality.cells) then
      some (C,P)
    else none
  else none

theorem compileHmrUnfreeze_contract (A C : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreeze A record offset frozen=some (C,P)) :
    frozen∈A.live ∧
    compileHmrEquality A record offset=some (P.equalityArena,P.equalityWork,P.equality) ∧
    P.equalityArena.borrowMany 1=some (C,P.fireWork) ∧
    [P.equality.top,frozen,P.fire].Nodup ∧
    (∀q∈[frozen,P.fire],q∉P.equality.head.wire::hmrLadderPorts P.equality.cells) := by
  unfold compileHmrUnfreeze at h
  split at h
  next owned =>
    obtain ⟨⟨B,ew,ep⟩,eqh,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,work⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next checks => cases h; exact ⟨owned,eqh,borrow,checks⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrUnfreeze_mint (A C : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreeze A record offset frozen=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (P.mint frozen) m s=
      ⟨s.phase,writeBit s.basis P.fire (decide (regValue record s.basis=offset) && s.basis frozen)⟩ := by
  have hc := compileHmrUnfreeze_contract A C record offset frozen P h
  have eqc := compileHmrEquality_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have er := (A.reserve_ready P.equalityArena P.equalityWork.toFinset s.basis ready
    (A.borrowMany_contract _ _ _ eqc.2.1).2.2).1
  have zero := hmrBorrowPorts_clean P.equalityArena C 1 P.fireWork hc.2.2.1 s.basis er (0 : Fin 1)
  have outside (q : Wire) (hq : q∈[frozen,P.fire]) : HmrAndOutside P.equality.stages q :=
    hmrLadder_outside P.equality.head P.equality.cells q (hc.2.2.2.2 q hq)
  have result := hmrChainAndKeep_run P.equality.stages P.equality.top frozen P.fire hc.2.2.2.1
    (outside frozen (by simp)) (outside P.fire (by simp)) s m
    (compileHmrEquality_ready A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis ready) zero
  simpa only [compileHmrEquality_value A P.equalityArena record offset P.equalityWork P.equality hc.2.1 s.basis]
    using result

end ECDSAAdd.Arithmetic.Paper935
