import ECDSAAdd.Arithmetic.Paper935.HmrReadRecoverRelease

namespace ECDSAAdd.Arithmetic.Paper935

/-- The old branch measurement must precede entry to the reverse block.
New local measurements cannot justify a reference to a future old record. -/
theorem HmrReadPlan.recover_wellFormed (P : HmrReadPlan) (L : HmrReadLayout)
    (early : Bool) (parity fire : Wire) (work : List Wire) (ordinal cursor : Nat)
    (earlier : ordinal < cursor) :
    RecordedWellFormedAt cursor (P.recover L early parity fire work ordinal) := by
  simp only [HmrReadPlan.recover,RecordedWellFormedAt_append,embedRecorded_wellFormed,
    and_true,true_and]
  apply hmrRecordFixup_wellFormed
  omega

theorem HmrReadPlan.recoverRelease_wellFormed (P : HmrReadPlan) (L : HmrReadLayout)
    (early : Bool) (parity fire : Wire) (work : List Wire) (ordinal cursor : Nat)
    (earlier : ordinal < cursor) :
    RecordedWellFormedAt cursor (P.recoverRelease L early parity fire work ordinal) := by
  rw [HmrReadPlan.recoverRelease,RecordedWellFormedAt_append]
  exact ⟨P.recover_wellFormed L early parity fire work ordinal cursor earlier,
    embedRecorded_wellFormed _ _⟩

end ECDSAAdd.Arithmetic.Paper935
