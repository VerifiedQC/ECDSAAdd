import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBankGeometry
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrFrontResizeLogs where
  entry : List (List Wire)
  headroom : List (List Wire)
  exit : List (List Wire)

structure HmrFrontAllocationLog where
  rows : HmrFrontResizeLogs
  sigma : List Wire
  branch : List Wire
  flag : List Wire
  carry : List Wire
  first : List Wire
  second : List Wire
  counter : List Wire

/-- Check the complete arithmetic-front allocation log. This uses the same
source gate-program definition as the original front and selects no addresses. -/
def compileHmrSourceFrontLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (logs : HmrFrontAllocationLog) : Option HmrSourceFront := do
  if ¬HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter then none else do
    let pairWidth : RowWindow := ⟨fgWidth,fgWidth,vWidth,vWidth⟩
    let headWidth : RowWindow := ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩
    let (B,pair,pad) ← compileHmrBankResizeLog .entry A bank pairWidth logs.rows.entry
    let S ← B.checkBorrow 1 logs.sigma
    let sigma := hmrBorrowPorts logs.sigma (0 : Fin 1)
    let V ← S.checkBorrow 1 logs.branch
    let branch := hmrBorrowPorts logs.branch (0 : Fin 1)
    let (H,head,room) ← compileHmrBankResizeLog .headroom V pair headWidth logs.rows.headroom
    let arithmetic ← compileHmrHybridF4Log H sigma branch head.f.wires head.g.wires head.fv.wires head.gv.wires
      logs.flag logs.carry logs.first logs.second
    let K ← compileHmrCounterStepLog H early (hmrFrontCounterControl early sigma frozen) counter logs.counter
    let (C,out,shrink) ← compileHmrBankResizeLog .exit H head exitWidth logs.rows.exit
    pure ⟨B,pair,pad,S,logs.sigma,V,logs.branch,H,head,room,arithmetic,K,logs.counter,C,out,shrink⟩

/-- Static checked-plan evidence. Scratch addresses belong to the returned
plan; the row logs witness its three resize transitions. No execution result
or arithmetic correctness is assumed by this structure. -/
structure HmrSourceFront.Logged (P : HmrSourceFront) (logs : HmrFrontResizeLogs)
    (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat) (exitWidth : RowWindow)
    (early : Bool) (frozen : Wire) (counter : List Wire) : Prop where
  entry : HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter
  padding : compileHmrBankResizeLog .entry A bank ⟨fgWidth,fgWidth,vWidth,vWidth⟩ logs.entry=
    some (P.pairArena,P.pairBank,P.padding)
  sigmaBorrow : P.pairArena.checkBorrow 1 P.sigmaWork=some P.sigmaArena
  branchBorrow : P.sigmaArena.checkBorrow 1 P.branchWork=some P.branchArena
  headroom : compileHmrBankResizeLog .headroom P.branchArena P.pairBank
    ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩ logs.headroom=some (P.headArena,P.headBank,P.headroom)
  arithmetic : P.arithmetic.Logged P.headArena P.sigma P.branch
    P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires
  counter : compileHmrCounterStepLog P.headArena early (hmrFrontCounterControl early P.sigma frozen)
    counter P.counterWork=some P.counterArena
  shrinking : compileHmrBankResizeLog .exit P.headArena P.headBank exitWidth logs.exit=
    some (P.exitArena,P.exitBank,P.shrinking)

theorem compileHmrSourceFrontLog_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (logs : HmrFrontAllocationLog) (P : HmrSourceFront)
    (h : compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth early frozen counter logs=some P) :
    P.Logged logs.rows A bank fgWidth vWidth exitWidth early frozen counter := by
  unfold compileHmrSourceFrontLog at h
  split at h
  next bad => simp at h
  next good =>
    obtain ⟨⟨B,pair,pad⟩,hp,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨S,hs,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨V,hb,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨H,head,room⟩,hh,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨arith,ha,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨K,hk,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨C,out,shrink⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨not_not.mp good,hp,hs,hb,hh,
      compileHmrHybridF4Log_contract _ _ _ _ _ _ _ _ _ _ _ _ ha,hk,hc⟩

end ECDSAAdd.Arithmetic.Paper935
