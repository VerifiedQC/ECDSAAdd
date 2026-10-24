import ECDSAAdd.Arithmetic.Paper935.HmrFreezeEnd
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFireDrop
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockedDrop

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source F16 retires fire and its equality trail before freeing the
retained g-zero-test keepers in reverse block order. -/
def compileHmrFreezeEndLog (A : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (ps : List HmrBlockPlan) (eqLog fireLog : List Wire) (logs : List (List Wire)) : Option (Arena × HmrFreezeEndPlan) := do
  let (B,F) ← compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog
  let (C,qs) ← compileHmrBlockedDropLog B ps logs
  pure (C,⟨F,qs⟩)

theorem compileHmrFreezeEndLog_run (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (ps : List HmrBlockPlan) (P : HmrFreezeEndPlan)
    {eqLog fireLog : List Wire} {logs : List (List Wire)}
    (h : compileHmrFreezeEndLog A record offset zf frozen fire ps eqLog fireLog logs=some (C,P))
    (ordered : HmrKeeperOrdered ps)
    (away : ∀R∈ps,fire∉R.keeper::R.literals.map HmrLiteral.wire)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (keepers : HmrKeeperValues ps s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    run (P.program zf frozen fire) m s=
      ⟨s.phase,hmrClearKeepers ps (writeBit s.basis fire false)⟩ ∧
    C.Ready (hmrClearKeepers ps (writeBit s.basis fire false)) := by
  unfold compileHmrFreezeEndLog at h
  obtain ⟨⟨B,F⟩,fh,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨⟨D,qs⟩,qh,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  have fr := compileHmrFireDropLog_run A B record offset zf frozen fire F fh s m ready value
  have values : HmrKeeperValues ps (writeBit s.basis fire false) := by
    apply hmrKeeperValues_frame ps s.basis _ keepers
    intro R hR q hq
    have ne : q≠fire := fun eq => away R hR (eq ▸ hq)
    simp [writeBit,ne]
  have br : B.Ready (writeBit s.basis fire false) := by
    simpa only [fr.1] using fr.2.2
  have qr := compileHmrBlockedDropLog_run B C ps qs qh ordered
    ⟨s.phase,writeBit s.basis fire false⟩
    (m.drop (measurementCount (F.program zf frozen fire))) br values
  refine ⟨?_,qr.2⟩
  rw [HmrFreezeEndPlan.program,run_append,run_take,fr.1]
  exact qr.1

end ECDSAAdd.Arithmetic.Paper935
