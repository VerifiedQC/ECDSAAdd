import ECDSAAdd.Arithmetic.Paper935.HmrFireDrop
import ECDSAAdd.Arithmetic.Paper935.HmrKeeperClear

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrFreezeEndPlan where
  fire : HmrFirePlan
  zero : List HmrBlockFreePlan

def HmrFreezeEndPlan.program (P : HmrFreezeEndPlan) (zf frozen fire : Wire) : Program :=
  P.fire.program zf frozen fire ++ hmrBlockedDropProgram P.zero

/-- Source F16 retires fire and its equality trail before freeing the
retained g-zero-test keepers in reverse block order. -/
def compileHmrFreezeEnd (A : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (ps : List HmrBlockPlan) : Option (Arena × HmrFreezeEndPlan) := do
  let (B,F) ← compileHmrFireDrop A record offset zf frozen fire
  let (C,qs) ← compileHmrBlockedDrop B ps
  pure (C,⟨F,qs⟩)

theorem compileHmrFreezeEnd_run (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (ps : List HmrBlockPlan) (P : HmrFreezeEndPlan)
    (h : compileHmrFreezeEnd A record offset zf frozen fire ps=some (C,P))
    (ordered : HmrKeeperOrdered ps)
    (away : ∀R∈ps,fire∉R.keeper::R.literals.map HmrLiteral.wire)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (keepers : HmrKeeperValues ps s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    run (P.program zf frozen fire) m s=
      ⟨s.phase,hmrClearKeepers ps (writeBit s.basis fire false)⟩ ∧
    C.Ready (hmrClearKeepers ps (writeBit s.basis fire false)) := by
  unfold compileHmrFreezeEnd at h
  obtain ⟨⟨B,F⟩,fh,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨⟨D,qs⟩,qh,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  have fr := compileHmrFireDrop_run A B record offset zf frozen fire F fh s m ready value
  have values : HmrKeeperValues ps (writeBit s.basis fire false) := by
    apply hmrKeeperValues_frame ps s.basis _ keepers
    intro R hR q hq
    have ne : q≠fire := fun eq => away R hR (eq ▸ hq)
    simp [writeBit,ne]
  have br : B.Ready (writeBit s.basis fire false) := by
    simpa only [fr.1] using fr.2.2
  have qr := compileHmrBlockedDrop_run B C ps qs qh ordered
    ⟨s.phase,writeBit s.basis fire false⟩
    (m.drop (measurementCount (F.program zf frozen fire))) br values
  refine ⟨?_,qr.2⟩
  rw [HmrFreezeEndPlan.program,run_append,run_take,fr.1]
  exact qr.1

end ECDSAAdd.Arithmetic.Paper935
