import ECDSAAdd.Arithmetic.Paper935.HmrFreezeRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- The retained zero-test ladder can be retired after an intervening program
that preserves its keeper and input ports. The fire bit is deliberately not
retired by this theorem; its source equality-test witness is separate. -/
theorem HmrFreezePlan.Compiled.cleanup_after (P : HmrFreezePlan) (A C D : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat)
    (compiled : P.Compiled A C bits frozen record offset)
    (qs : List HmrBlockFreePlan) (drop : compileHmrBlockedDrop C P.zeroPlans=some (D,qs))
    (body : Program) (owned : wires body⊆C.live)
    (frame : ∀R∈P.zeroPlans,∀q∈R.keeper::R.literals.map HmrLiteral.wire,q∉wires body)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let first := run (P.program frozen record offset) m s
    let tailTape := m.drop (measurementCount (P.program frozen record offset))
    let mid := run body tailTape first
    run (P.program frozen record offset ++ body ++ hmrBlockedDropProgram qs) m s =
      ⟨mid.phase,hmrClearKeepers P.zeroPlans mid.basis⟩ ∧
      D.Ready (hmrClearKeepers P.zeroPlans mid.basis) := by
  dsimp only
  let first := run (P.program frozen record offset) m s
  let tailTape := m.drop (measurementCount (P.program frozen record offset))
  let mid := run body tailTape first
  have initial := compiled.run_spec P A C bits frozen record offset s m ready
  have midReady : C.Ready mid.basis := C.run_ready body first tailTape initial.2.2.2.2.1 owned
  have midValues : HmrKeeperValues P.zeroPlans mid.basis := by
    apply hmrKeeperValues_frame P.zeroPlans first.basis mid.basis initial.2.2.2.2.2.1
    intro R hR q hq
    exact run_preserves_outside body tailTape first q (frame R hR q hq)
  have zc := compileHmrZero_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have ordered := (compileHmrBlocked_order A P.zeroArena none _ P.zeroPlans zc.2.1).2
  have result := compileHmrBlockedDrop_run C D P.zeroPlans qs drop ordered mid
    (tailTape.drop (measurementCount body)) midReady midValues
  refine ⟨?_,result.2⟩
  rw [List.append_assoc,run_append,run_take,run_append,run_take]
  exact result.1

end ECDSAAdd.Arithmetic.Paper935
