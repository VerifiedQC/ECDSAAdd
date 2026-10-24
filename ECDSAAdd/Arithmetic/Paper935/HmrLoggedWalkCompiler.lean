import ECDSAAdd.Arithmetic.Paper935.HmrScheduledStepRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- Public row schedule and observed allocation journal for one source step. -/
structure HmrWalkStepLog where
  fgWidth : Nat
  vWidth : Nat
  exitWidth : RowWindow
  need : Nat
  log : HmrScheduledStepLog

inductive HmrLoggedWalkPlan where
  | done (arena : Arena) (bank : WindowBank) (record : List Wire)
  | step (head : HmrScheduledStepPlan) (tail : HmrLoggedWalkPlan)

def HmrLoggedWalkPlan.outputArena : HmrLoggedWalkPlan → Arena
  | .done A _ _ => A
  | .step _ Q => Q.outputArena

def HmrLoggedWalkPlan.bank : HmrLoggedWalkPlan → WindowBank
  | .done _ bank _ => bank
  | .step _ Q => Q.bank

def HmrLoggedWalkPlan.record : HmrLoggedWalkPlan → List Wire
  | .done _ _ record => record
  | .step _ Q => Q.record

def HmrLoggedWalkPlan.program (frozen : Wire) (counter timestamp : List Wire)
    (tmin : Nat) : (record : List Wire) → (t : Nat) → HmrLoggedWalkPlan → Program
  | _, _, .done _ _ _ => []
  | record, t, .step P Q => P.program frozen counter timestamp record tmin t ++
      Q.program frozen counter timestamp tmin (P.record record) (t+1)

/-- Every step consumes the arena, row view and history register produced by
its predecessor. No independent output state is supplied by the caller. -/
def compileHmrLoggedWalk (frozen : Wire) (counter timestamp : List Wire) (tmin : Nat) :
    (A : Arena) → (bank : WindowBank) → (record : List Wire) → (t : Nat) →
    List HmrWalkStepLog → Option HmrLoggedWalkPlan
  | A, bank, record, _, [] => some (.done A bank record)
  | A, bank, record, t, spec::rest => do
      let P ← compileHmrScheduledStepLog A bank spec.fgWidth spec.vWidth spec.exitWidth frozen counter timestamp record
        tmin t spec.need spec.log
      let Q ← compileHmrLoggedWalk frozen counter timestamp tmin P.outputArena P.bank (P.record record) (t+1) rest
      pure (.step P Q)

/-- The remaining successful-lane obligations: integer ranges and capacity
of each actual record push. This predicate never assumes a program's output
agrees with pinWalk. -/
def HmrLoggedWalkPlan.Numerical (frozen : Wire) (counter timestamp : List Wire)
    (tmin : Nat) (p x : Int) : (record : List Wire) → (t : Nat) →
    List HmrWalkStepLog → HmrLoggedWalkPlan → State → List Bool → Prop
  | _, _, [], .done _ _ _, _, _ => True
  | record, t, spec::rest, .step P Q, s, m =>
      (RowWindow.mk spec.fgWidth spec.fgWidth spec.vWidth spec.vWidth).Fits (pinWalk tmin p x t).rows ∧
      spec.exitWidth.Fits (pinWalk tmin p x (t+1)).rows ∧
      PayloadFits (counter.length-1) (pinWalk tmin p x (t+1)).rows.z ∧
      P.Capacity frozen counter timestamp record tmin t s m ∧
      Q.Numerical frozen counter timestamp tmin p x (P.record record) (t+1) rest
        (run (P.program frozen counter timestamp record tmin t) m s)
        (m.drop (measurementCount (P.program frozen counter timestamp record tmin t)))
  | _, _, _, _, _, _ => False

end ECDSAAdd.Arithmetic.Paper935
