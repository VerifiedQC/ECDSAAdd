import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedStep

namespace ECDSAAdd.Arithmetic.Paper935

local instance hmrArmedStepDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

structure HmrArmedStepLog where
  front : HmrFrontAllocationLog
  moves : List (Wire × Wire)
  control : HmrArmedControlLog

structure HmrArmedStepPlan where
  front : HmrSourceFront
  movedArena : Arena
  control : HmrArmedControlPlan
  moves : List (Wire × Wire)

def HmrArmedStepPlan.bank (P : HmrArmedStepPlan) : WindowBank := P.front.exitBank.repacked P.moves

def HmrArmedStepPlan.program (P : HmrArmedStepPlan) (frozen sign : Wire) (counter timestamp record : List Wire) (offset : Nat) : Program :=
  (P.front.program false frozen counter++repack P.moves)++
    P.control.program frozen sign P.front.sigma P.bank.fv.second
      (P.bank.fv.payload[2]?.getD P.bank.fv.sign)
      (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
      (P.bank.fv.payload[4]?.getD P.bank.fv.sign) P.front.branch timestamp record offset

/-- One logged armed forward step. No addresses are chosen by this checker. -/
def compileHmrArmedStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (offset need : Nat)
    (log : HmrArmedStepLog) : Option HmrArmedStepPlan := do
  let F ← compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth false frozen counter log.front
  let C ← F.exitArena.checkRepack log.moves
  let out := F.exitBank.repacked log.moves
  if (∀p∈log.moves,p.1∉F.branch::F.sigma::frozen::counter) ∧ out.fv.payload≠[] ∧
      (out.rows.flatMap WindowRow.wires++counter).toFinset⊆C.live ∧
      List.Disjoint (out.rows.flatMap WindowRow.wires++counter) (F.sigma::F.branch::frozen::(timestamp++record)) then
    let Q ← compileHmrArmedControlLog C out.g.wires counter timestamp record frozen (counter.getLastD 0) F.sigma out.fv.second
      (out.fv.payload[2]?.getD out.fv.sign) (out.fv.payload[3]?.getD out.fv.sign)
      (out.fv.payload[4]?.getD out.fv.sign) F.branch offset need log.control
    pure ⟨F,C,Q,log.moves⟩
  else none

structure HmrArmedStepPlan.Logged (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (offset need : Nat) (log : HmrArmedStepLog) : Prop where
  front : P.front.Logged log.front.rows A bank fgWidth vWidth exitWidth false frozen counter
  moves : P.moves=log.moves
  repacked : P.front.exitArena.checkRepack P.moves=some P.movedArena
  away : ∀p∈P.moves,p.1∉P.front.branch::P.front.sigma::frozen::counter
  nonempty : P.bank.fv.payload≠[]
  owned : (P.bank.rows.flatMap WindowRow.wires++counter).toFinset⊆P.movedArena.live
  apart : List.Disjoint (P.bank.rows.flatMap WindowRow.wires++counter) (P.front.sigma::P.front.branch::frozen::(timestamp++record))
  control : P.control.Logged P.movedArena P.bank.g.wires counter timestamp record frozen (counter.getLastD 0) P.front.sigma P.bank.fv.second
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) P.front.branch offset need

theorem compileHmrArmedStepLog_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (offset need : Nat)
    (log : HmrArmedStepLog) (P : HmrArmedStepPlan)
    (h : compileHmrArmedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log=some P) :
    P.Logged A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log := by
  unfold compileHmrArmedStepLog at h
  obtain ⟨F,hf,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨C,hc,h⟩ := Option.bind_eq_some_iff.mp h
  dsimp only at h
  split at h
  next valid =>
    obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨compileHmrSourceFrontLog_contract _ _ _ _ _ _ _ _ _ _ hf,rfl,hc,
      valid.1,valid.2.1,valid.2.2.1,valid.2.2.2,
      (compileHmrArmedControlLog_contract _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hq).2⟩
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
