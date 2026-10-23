import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyStep

namespace ECDSAAdd.Arithmetic.Paper935

local instance hmrEarlyStepDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

structure HmrEarlyStepLog where
  front : HmrFrontAllocationLog
  moves : List (Wire × Wire)
  control : HmrEarlyControlLog

structure HmrEarlyStepPlan where
  front : HmrSourceFront
  movedArena : Arena
  control : HmrEarlyControlPlan
  moves : List (Wire × Wire)

def HmrEarlyStepPlan.bank (P : HmrEarlyStepPlan) : WindowBank := P.front.exitBank.repacked P.moves

def HmrEarlyStepPlan.program (P : HmrEarlyStepPlan) (frozen sign : Wire) (counter record : List Wire) : Program :=
  (P.front.program true frozen counter++repack P.moves)++
    P.control.program sign P.front.sigma P.bank.fv.second
      (P.bank.fv.payload[2]?.getD P.bank.fv.sign)
      (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
      (P.bank.fv.payload[4]?.getD P.bank.fv.sign) P.front.branch record

/-- One logged early forward step. No addresses are chosen by this checker. -/
def compileHmrEarlyStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire) (need : Nat)
    (log : HmrEarlyStepLog) : Option HmrEarlyStepPlan := do
  let F ← compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth true frozen counter log.front
  let C ← F.exitArena.checkRepack log.moves
  let out := F.exitBank.repacked log.moves
  if (∀p∈log.moves,p.1∉F.branch::F.sigma::counter) ∧ out.fv.payload≠[] ∧
      (out.rows.flatMap WindowRow.wires++counter).toFinset⊆C.live ∧
      List.Disjoint (out.rows.flatMap WindowRow.wires++counter) (F.sigma::F.branch::record) then
    let Q ← compileHmrEarlyControlLog C counter record (counter.getLastD 0) F.sigma out.fv.second
      (out.fv.payload[2]?.getD out.fv.sign) (out.fv.payload[3]?.getD out.fv.sign)
      (out.fv.payload[4]?.getD out.fv.sign) F.branch need log.control
    pure ⟨F,C,Q,log.moves⟩
  else none

structure HmrEarlyStepPlan.Logged (P : HmrEarlyStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire)
    (need : Nat) (log : HmrEarlyStepLog) : Prop where
  front : P.front.Logged log.front.rows A bank fgWidth vWidth exitWidth true frozen counter
  moves : P.moves=log.moves
  repacked : P.front.exitArena.checkRepack P.moves=some P.movedArena
  away : ∀p∈P.moves,p.1∉P.front.branch::P.front.sigma::counter
  nonempty : P.bank.fv.payload≠[]
  owned : (P.bank.rows.flatMap WindowRow.wires++counter).toFinset⊆P.movedArena.live
  apart : List.Disjoint (P.bank.rows.flatMap WindowRow.wires++counter) (P.front.sigma::P.front.branch::record)
  control : P.control.Logged P.movedArena counter record (counter.getLastD 0) P.front.sigma P.bank.fv.second
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) P.front.branch need

theorem compileHmrEarlyStepLog_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire) (need : Nat)
    (log : HmrEarlyStepLog) (P : HmrEarlyStepPlan)
    (h : compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth frozen counter record need log=some P) :
    P.Logged A bank fgWidth vWidth exitWidth frozen counter record need log := by
  unfold compileHmrEarlyStepLog at h
  obtain ⟨F,hf,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨C,hc,h⟩ := Option.bind_eq_some_iff.mp h
  dsimp only at h
  split at h
  next valid =>
    obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨compileHmrSourceFrontLog_contract _ _ _ _ _ _ _ _ _ _ hf,rfl,hc,
      valid.1,valid.2.1,valid.2.2.1,valid.2.2.2,
      (compileHmrEarlyControlLog_contract _ _ _ _ _ _ _ _ _ _ _ _ _ hq).2⟩
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
