import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- Public row schedule and observed allocation journal for one source step. -/
structure HmrSourceWalkStepLog where
  fgWidth : Nat
  vWidth : Nat
  exitWidth : RowWindow
  need : Nat
  log : HmrSourceStepLog

inductive HmrSourceWalkPlan where
  | done (arena : Arena) (bank : WindowBank) (record : List Wire) (metadata : Option HmrFreezeMetadata)
  | step (head : HmrSourceStepPlan) (tail : HmrSourceWalkPlan)

def HmrSourceWalkPlan.outputArena : HmrSourceWalkPlan → Arena
  | .done A _ _ _ => A
  | .step _ Q => Q.outputArena

def HmrSourceWalkPlan.bank : HmrSourceWalkPlan → WindowBank
  | .done _ bank _ _ => bank
  | .step _ Q => Q.bank

def HmrSourceWalkPlan.record : HmrSourceWalkPlan → List Wire
  | .done _ _ record _ => record
  | .step _ Q => Q.record

def HmrSourceWalkPlan.metadata : HmrSourceWalkPlan → Option HmrFreezeMetadata
  | .done _ _ _ metadata => metadata
  | .step _ Q => Q.metadata

def HmrSourceWalkPlan.program (counter : List Wire)
    (tmin : Nat) : (record : List Wire) → (t : Nat) → HmrSourceWalkPlan → Program
  | _, _, .done _ _ _ _ => []
  | record, t, .step P Q => P.program counter record tmin t ++
      Q.program counter tmin (P.record record) (t+1)

/-- Every step consumes the arena, row view and history register produced by
its predecessor. No independent output state is supplied by the caller. -/
def compileHmrSourceWalk (counter : List Wire) (width tmin : Nat) :
    (metadata : Option HmrFreezeMetadata) → (A : Arena) → (bank : WindowBank) → (record : List Wire) → (t : Nat) →
    List HmrSourceWalkStepLog → Option HmrSourceWalkPlan
  | metadata, A, bank, record, _, [] => some (.done A bank record metadata)
  | metadata, A, bank, record, t, spec::rest => do
      let P ← compileHmrSourceStepLog A bank spec.fgWidth spec.vWidth spec.exitWidth counter record
        width tmin t spec.need metadata spec.log
      let Q ← compileHmrSourceWalk counter width tmin P.metadata P.outputArena P.bank (P.record record) (t+1) rest
      pure (.step P Q)

/-- The remaining successful-lane obligations: integer ranges and capacity
of each actual record push. This predicate never assumes a program's output
agrees with pinWalk. -/
def HmrSourceWalkPlan.Numerical (counter : List Wire)
    (tmin : Nat) (p x : Int) : (record : List Wire) → (t : Nat) →
    List HmrSourceWalkStepLog → HmrSourceWalkPlan → State → List Bool → Prop
  | _, _, [], .done _ _ _ _, _, _ => True
  | record, t, spec::rest, .step P Q, s, m =>
      (RowWindow.mk spec.fgWidth spec.fgWidth spec.vWidth spec.vWidth).Fits (pinWalk tmin p x t).rows ∧
      spec.exitWidth.Fits (pinWalk tmin p x (t+1)).rows ∧
      PayloadFits (counter.length-1) (pinWalk tmin p x (t+1)).rows.z ∧
      P.Capacity counter record tmin t s m ∧
      Q.Numerical counter tmin p x (P.record record) (t+1) rest
        (run (P.program counter record tmin t) m s)
        (m.drop (measurementCount (P.program counter record tmin t)))
  | _, _, _, _, _, _ => False

end ECDSAAdd.Arithmetic.Paper935
