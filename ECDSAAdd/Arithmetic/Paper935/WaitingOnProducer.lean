import ECDSAAdd.Arithmetic.Paper935.HmrSourceCallPorts
import ECDSAAdd.Arithmetic.Paper935.HmrLifecycleInput

namespace ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer

attribute [local irreducible] placedRowFold placedMagnitude s2HmrSourceLayout
  s2HmrSourceUnpark

/-- Producer data confirmed by Lamport db355cbb. Short/empty tapes are supported
by the interpreter; this condition orders absolute cursors only. -/
def unparkRecords2 (_tape : List Bool) (start cursor : Nat) : Prop :=
  start ≤ cursor

/-- Explicit lifecycle premise, not the desired execution conclusion.
Producer confirmation: d55887e4 and data expression db355cbb; task #50. -/
def unparkPre2 (call : FusedCall) (original : State)
    (tape : List Bool) (cursor : Nat) (current : State) : Prop :=
  HmrRowMulPre s2HmrSourceLayout call original ∧
  ∃ start, unparkRecords2 tape start cursor ∧
    HmrUnparkBoundary s2HmrSourceLayout original tape start current

/-- U2 preserves its own input phase. This does not discharge earlier K2 debt.
Producer data confirmation: db355cbb. -/
def unparkPhaseDebt2 (_tape : List Bool) (_cursor : Nat) (_current : State) : Bool :=
  false

theorem unparkRecords2_actualCursor (tape : List Bool) (start count : Nat) :
    unparkRecords2 tape start (start + count) := Nat.le_add_right _ _

theorem unparkRecords2_nonempty (tape : List Bool) (start : Nat) :
    ∃ cursor, unparkRecords2 tape start cursor := ⟨start, Nat.le_refl _⟩

theorem unpark2_wellFormed (cursor : Nat) :
    RecordedWellFormedAt cursor s2HmrSourceUnpark := by
  unfold s2HmrSourceUnpark
  exact embedRecorded_wellFormed _ _

/-- TEMPORARY proof obligation. Producer: task #50, Lamport.
Feasibility confirmation: d55887e4; data clarification: db355cbb.
Consumer: PR215. Replace with the physical placement/support proof.
No program, layout or predicate is produced by this admission. -/
theorem unpark2_support :
    recordedWires s2HmrSourceUnpark ⊆ s2HmrSourceLayout.support := by
  sorry

/-- TEMPORARY proof obligation. Producer: task #50, Lamport.
Feasibility confirmation: d55887e4; data clarification: db355cbb.
Consumer: PR215. Replace with inverse-fold/inverse-lift execution and transport.
This statement preserves current.phase, not the original pre-K2 phase. -/
theorem unpark2_run (call : FusedCall) (original current : State)
    (tape : List Bool) (cursor : Nat)
    (pre : unparkPre2 call original tape cursor current) :
    let result := runWithTape s2HmrSourceUnpark tape cursor current
    (∀ q ∈ s2HmrSourceLayout.row.wires, result.basis q = original.basis q) ∧
    (∀ q ∈ s2HmrSourceLayout.y, result.basis q = false) ∧
    (∀ q ∈ s2HmrSourceLayout.out, result.basis q = current.basis q) ∧
    (∀ q ∈ s2HmrSourceLayout.scratch, result.basis q = false) ∧
    result.phase = xor current.phase (unparkPhaseDebt2 tape cursor current) := by
  sorry

/-- Assembly only: all data fields are explicit and only the two named Prop
obligations above are admitted. Producer task #50; d55887e4; consumer PR215. -/
def unpark2 : HmrRowUnparkSpec s2HmrSourceLayout s2HmrSourceUnpark where
  pre := unparkPre2
  wellFormed := fun _call _original _tape cursor _current _pre =>
    @unpark2_wellFormed cursor
  support := unpark2_support
  phaseDebt := unparkPhaseDebt2
  run := unpark2_run

/-- Direct packaging of the confirmed lifecycle premise; no extra admission.
Producer task #50; d55887e4/db355cbb; consumer PR215. -/
def unparkRule2 : HmrUnparkInputRule s2HmrSourceLayout s2HmrSourceUnpark unpark2 where
  records := unparkRecords2
  accepts := fun _ _ _ start _ _ pre records boundary =>
    ⟨pre, start, records, boundary⟩

end ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer
