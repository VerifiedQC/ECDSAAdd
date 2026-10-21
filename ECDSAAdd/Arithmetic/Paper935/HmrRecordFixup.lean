import ECDSAAdd.Framework.RecordedSemantics

namespace ECDSAAdd.Arithmetic.Paper935

/-- Literal R11 X/CZ/X, referencing the old forward measurement ordinal. -/
def hmrRecordFixup (ordinal : Nat) (branch j5p : Wire) : RecordedProgram :=
  [.gate (.X j5p),.phaseFromRecord ordinal [.CZ branch j5p],.gate (.X j5p)]

theorem hmrRecordFixup_run (ordinal cursor : Nat) (branch j5p : Wire)
    (distinct : branch≠j5p) (s : State) (tape : List Bool) :
    runWithTape (hmrRecordFixup ordinal branch j5p) tape cursor s=
      ⟨s.phase ^^ (tape.getD ordinal false && (s.basis branch && !s.basis j5p)),s.basis⟩ := by
  cases hb : s.basis branch <;> cases hj : s.basis j5p <;> cases hm : tape[ordinal]?.getD false <;>
    simp [hmrRecordFixup,runWithTape,List.getD,run,correct,writeBit,Function.update,distinct,hb,hj,hm]

theorem hmrRecordFixup_wellFormed (ordinal cursor : Nat) (branch j5p : Wire)
    (earlier : ordinal<cursor) : RecordedWellFormedAt cursor (hmrRecordFixup ordinal branch j5p) := by
  simpa [hmrRecordFixup,RecordedWellFormedAt,measurementCount] using earlier

theorem hmrRecordFixup_counts (ordinal : Nat) (branch j5p : Wire) :
    recordedToffoliCount (hmrRecordFixup ordinal branch j5p)=0 ∧
    recordedMeasurementCount (hmrRecordFixup ordinal branch j5p)=0 := by
  exact ⟨rfl,rfl⟩

end ECDSAAdd.Arithmetic.Paper935
