import ECDSAAdd.Arithmetic.Paper935.HmrArmedReadContract
import ECDSAAdd.Arithmetic.Paper935.HmrReadFinalState

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedReadPlan.Compiled.run_state (P : HmrArmedReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) (compiled : P.Compiled A counter sign sigma frozen fire L)
    (recordOwned : L.record.toFinset⊆A.live) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (P.program counter sign sigma frozen fire L) m s
    out.phase=s.phase ∧ P.classRead.readPlan.decoderArena.Ready out.basis ∧
      ∀q∈A.live,q∉L.record → out.basis q=s.basis q := by
  let zeroProgram := hmrZero6Keep (hmrCounterPorts counter P.counterWork)
  let inputs := P.inputs counter sign sigma frozen fire
  let classProgram := hmrAndSweep (hmrClassChain .reverseArmed (hmrAllocatedClassPorts .reverseArmed inputs P.classRead.classWork))
  let u := run zeroProgram m s
  let n := m.drop (measurementCount zeroProgram)
  let v := run classProgram n u
  let readTape := n.drop (measurementCount classProgram)
  let layout := hmrClassReadLayout .reverseArmed inputs P.classRead.classWork L
  have retained := compileHmrCounterRetained_run A P.counterArena P.retainedArena counter P.counterWork
    compiled.counterCompile s m ready
  have classState := compileHmrClass_state P.retainedArena P.classRead.classArena .reverseArmed inputs P.classRead.classWork
    compiled.classCompile.classCompile u n retained.2.2.2.1
  have ac : A.live⊆P.retainedArena.live := by rw [retained.2.2.1];exact Finset.subset_insert _ _
  have classBorrow := (compileHmrClass_contract P.retainedArena P.classRead.classArena .reverseArmed inputs P.classRead.classWork
    compiled.classCompile.classCompile).2.2.2
  have cd : P.retainedArena.live⊆P.classRead.classArena.live := by
    rw [(P.retainedArena.borrowMany_live P.classRead.classArena _ P.classRead.classWork classBorrow).1]
    exact Finset.subset_union_left
  have readCompiled := compileHmrRead_contract P.classRead.classArena layout P.classRead.readPlan compiled.classCompile.readCompile
  have finalState := readCompiled.final_state P.classRead.readPlan P.classRead.classArena layout
    (fun _ h => cd (ac (recordOwned h))) v readTape classState.2.1
  have zeroRun := compileHmrCounter_run A P.counterArena counter P.counterWork retained.1 s m ready
  have zeroPhase : u.phase=s.phase := by
    have result := congrArg State.phase zeroRun
    exact result
  have zeroFrame (q : Wire) (hq : q∈A.live) : u.basis q=s.basis q := by
    have keeper := compileHmrCounter_keeper_mem A P.counterArena counter P.counterWork retained.1
    have borrow := (compileHmrCounter_contract A P.counterArena counter P.counterWork retained.1).2.2.2
    have dis := ((A.reserve_success P.counterWork.toFinset).mp ⟨P.counterArena,(A.borrowMany_contract P.counterArena 6 P.counterWork borrow).2.2⟩).2
    have ne : q≠hmrCounterPorts counter P.counterWork 11 := fun eq => Finset.disjoint_left.mp dis hq (eq ▸ keeper)
    change (run zeroProgram m s).basis q=s.basis q
    rw [zeroRun]
    simp only [writeBit,Function.update_of_ne ne]
  dsimp only
  rw [HmrArmedReadPlan.program,HmrClassReadPlan.program,run_append,run_take,run_append,run_take]
  refine ⟨finalState.1.trans (classState.1.trans zeroPhase),finalState.2.1,?_⟩
  intro q hq apart
  exact (finalState.2.2.1 q (cd (ac hq)) apart).trans ((classState.2.2 q (ac hq)).trans (zeroFrame q hq))

end ECDSAAdd.Arithmetic.Paper935
