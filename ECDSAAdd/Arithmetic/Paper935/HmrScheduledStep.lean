import ECDSAAdd.Arithmetic.Paper935.HmrStepCapacity
import ECDSAAdd.Arithmetic.Paper935.PinInvariants

namespace ECDSAAdd.Arithmetic.Paper935

inductive HmrScheduledStepLog where
  | early (log : HmrEarlyStepLog)
  | armed (log : HmrArmedStepLog)

inductive HmrScheduledStepPlan where
  | early (plan : HmrEarlyStepPlan)
  | armed (plan : HmrArmedStepPlan)

def HmrScheduledStepPlan.outputArena : HmrScheduledStepPlan → Arena
  | .early P => P.control.outputArena
  | .armed P => P.control.outputArena

def HmrScheduledStepPlan.bank : HmrScheduledStepPlan → WindowBank
  | .early P => P.bank
  | .armed P => P.bank

def HmrScheduledStepPlan.record (record : List Wire) : HmrScheduledStepPlan → List Wire
  | .early P => record++P.control.log.recordFresh
  | .armed _ => record

def HmrScheduledStepPlan.program (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t : Nat) : HmrScheduledStepPlan → Program
  | .early P => P.program frozen (counter.getLastD 0) counter record
  | .armed P => P.program frozen (counter.getLastD 0) counter timestamp record (t+1-tmin)

def HmrScheduledStepPlan.Capacity (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t : Nat) (s : State) (m : List Bool) : HmrScheduledStepPlan → Prop
  | .early P => P.Capacity frozen counter record s m
  | .armed P => P.Capacity frozen counter timestamp record (t+1-tmin) s m

/-- The public step index selects the early or armed source compiler; the
log must be tagged for that same phase. -/
def compileHmrScheduledStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t need : Nat) : HmrScheduledStepLog → Option HmrScheduledStepPlan
  | .early log => if t<tmin then
      (compileHmrEarlyPinnedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record need log).map .early
    else none
  | .armed log => if tmin≤t then
      (compileHmrChronologicalStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log).map .armed
    else none

/-- Physical encoding of all row and freeze fields, independent of any
compiled-program success statement. -/
def HmrPinEncoding (A : Arena) (bank : WindowBank) (frozen : Wire)
    (counter timestamp : List Wire) (s : State) (old : PinState) : Prop :=
  A.Ready s.basis ∧ bank.Encodes s.basis old.rows ∧ signedRegValue counter s.basis=old.rows.z ∧
  s.basis frozen=old.frozen ∧ regValue timestamp s.basis=old.offset

end ECDSAAdd.Arithmetic.Paper935
