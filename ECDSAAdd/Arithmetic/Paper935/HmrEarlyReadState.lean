import ECDSAAdd.Arithmetic.Paper935.HmrEarlyReadPlan
import ECDSAAdd.Arithmetic.Paper935.HmrArmedReadContract
import ECDSAAdd.Arithmetic.Paper935.HmrReadFinalState

namespace ECDSAAdd.Arithmetic.Paper935

def HmrEarlyReadPlan.inputs (P : HmrEarlyReadPlan) (sign sigma frozen fire : Wire) : List Wire :=
  [sign,P.zeroPlan.top,sigma,frozen,fire]

def HmrEarlyReadPlan.program (P : HmrEarlyReadPlan) (sign sigma frozen fire : Wire) (L : HmrReadLayout) : Program :=
  hmrAndSweep P.zeroPlan.stages ++ P.classRead.program .early (P.inputs sign sigma frozen fire) L

structure HmrEarlyReadPlan.Compiled (P : HmrEarlyReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) : Prop where
  counterCompile : compileHmrEquality A counter 0=some (P.zeroArena,P.zeroWork,P.zeroPlan)
  classCompile : P.classRead.Compiled P.zeroArena .early (P.inputs sign sigma frozen fire) L

theorem compileHmrEarlyRead_contract (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) (P : HmrEarlyReadPlan) (h : compileHmrEarlyRead A counter sign sigma frozen fire L=some P) :
    P.Compiled A counter sign sigma frozen fire L := by
  unfold compileHmrEarlyRead at h
  obtain ⟨⟨B,work,Z⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨hc,compileHmrClassRead_contract B .early _ L Q hq⟩

theorem HmrEarlyReadPlan.Compiled.run_state (P : HmrEarlyReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) (compiled : P.Compiled A counter sign sigma frozen fire L)
    (recordOwned : L.record.toFinset⊆A.live) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (P.program sign sigma frozen fire L) m s
    out.phase=s.phase ∧ P.classRead.readPlan.decoderArena.Ready out.basis ∧
      ∀q∈A.live,q∉L.record → out.basis q=s.basis q := by
  let zeroProgram := hmrAndSweep P.zeroPlan.stages
  let inputs := P.inputs sign sigma frozen fire
  let classProgram := hmrAndSweep (hmrClassChain .early (hmrAllocatedClassPorts .early inputs P.classRead.classWork))
  let u := run zeroProgram m s
  let n := m.drop (measurementCount zeroProgram)
  let v := run classProgram n u
  let readTape := n.drop (measurementCount classProgram)
  let layout := hmrClassReadLayout .early inputs P.classRead.classWork L
  have zeroState := compileHmrEquality_state A P.zeroArena counter 0 P.zeroWork P.zeroPlan
    compiled.counterCompile s m ready
  have classState := compileHmrClass_state P.zeroArena P.classRead.classArena .early inputs P.classRead.classWork
    compiled.classCompile.classCompile u n zeroState.2.1
  have zeroBorrow := (compileHmrEquality_contract A P.zeroArena counter 0 P.zeroWork P.zeroPlan compiled.counterCompile).2.1
  have ac : A.live⊆P.zeroArena.live := by
    rw [(A.borrowMany_live P.zeroArena _ P.zeroWork zeroBorrow).1]
    exact Finset.subset_union_left
  have classBorrow := (compileHmrClass_contract P.zeroArena P.classRead.classArena .early inputs P.classRead.classWork
    compiled.classCompile.classCompile).2.2.2
  have cd : P.zeroArena.live⊆P.classRead.classArena.live := by
    rw [(P.zeroArena.borrowMany_live P.classRead.classArena _ P.classRead.classWork classBorrow).1]
    exact Finset.subset_union_left
  have readCompiled := compileHmrRead_contract P.classRead.classArena layout P.classRead.readPlan compiled.classCompile.readCompile
  have finalState := readCompiled.final_state P.classRead.readPlan P.classRead.classArena layout
    (fun _ h => cd (ac (recordOwned h))) v readTape classState.2.1
  dsimp only
  rw [HmrEarlyReadPlan.program,HmrClassReadPlan.program,run_append,run_take,run_append,run_take]
  refine ⟨finalState.1.trans (classState.1.trans zeroState.1),finalState.2.1,?_⟩
  intro q hq apart
  exact (finalState.2.2.1 q (cd (ac hq)) apart).trans ((classState.2.2 q (ac hq)).trans (zeroState.2.2.2 q hq))

end ECDSAAdd.Arithmetic.Paper935
