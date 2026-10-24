import ECDSAAdd.Arithmetic.Paper935.HmrArmAllocation

namespace ECDSAAdd.Arithmetic.Paper935

inductive HmrSourceStepLog where
  | early (log : HmrEarlyStepLog)
  | arm (metadata : HmrFreezeMetadata) (log : HmrArmedStepLog)
  | armed (log : HmrArmedStepLog)

inductive HmrSourceStepPlan where
  | early (plan : HmrEarlyStepPlan)
  | armed (metadata : HmrFreezeMetadata) (plan : HmrArmedStepPlan)

def HmrSourceStepPlan.outputArena : HmrSourceStepPlan → Arena
  | .early P => P.control.outputArena
  | .armed _ P => P.control.outputArena

def HmrSourceStepPlan.bank : HmrSourceStepPlan → WindowBank
  | .early P => P.bank
  | .armed _ P => P.bank

def HmrSourceStepPlan.record (record : List Wire) : HmrSourceStepPlan → List Wire
  | .early P => record++P.control.log.recordFresh
  | .armed _ _ => record

def HmrSourceStepPlan.metadata : HmrSourceStepPlan → Option HmrFreezeMetadata
  | .early _ => none
  | .armed M _ => some M

def HmrSourceStepPlan.program (counter record : List Wire) (tmin t : Nat) : HmrSourceStepPlan → Program
  | .early P => P.program 0 (counter.getLastD 0) counter record
  | .armed M P => P.program M.frozen (counter.getLastD 0) counter M.timestamp record (t+1-tmin)

def HmrSourceStepPlan.Capacity (counter record : List Wire) (tmin t : Nat)
    (s : State) (m : List Bool) : HmrSourceStepPlan → Prop
  | .early P => P.Capacity 0 counter record s m
  | .armed M P => P.Capacity M.frozen counter M.timestamp record (t+1-tmin) s m

/-- Literal source metadata lifetime: no sites before Tmin, one observed
allocation at Tmin before the arithmetic front, then retained sites. -/
def compileHmrSourceStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (counter record : List Wire) (width tmin t need : Nat) :
    Option HmrFreezeMetadata → HmrSourceStepLog → Option HmrSourceStepPlan
  | none, .early log => if t<tmin then
      (compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth 0 counter record need log).map .early
    else none
  | none, .arm M log => if t=tmin then do
      let B ← compileHmrArmLog A width M
      let P ← compileHmrChronologicalStepLog B bank fgWidth vWidth exitWidth M.frozen counter M.timestamp record (t+1-tmin) need log
      pure (.armed M P)
    else none
  | some M, .armed log => if tmin≤t then
      (compileHmrChronologicalStepLog A bank fgWidth vWidth exitWidth M.frozen counter M.timestamp record (t+1-tmin) need log).map (.armed M)
    else none
  | _, _ => none

end ECDSAAdd.Arithmetic.Paper935
