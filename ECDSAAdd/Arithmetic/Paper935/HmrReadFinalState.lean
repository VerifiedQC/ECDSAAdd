import ECDSAAdd.Arithmetic.Paper935.HmrReadState
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderState

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrReadPlan.Compiled.final_state (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let first := run (P.flags L) m s
    let out := run (P.program L) m s
    out.phase=s.phase ∧ P.decoderArena.Ready out.basis ∧
    (∀q∈A.live,q∉L.record → out.basis q=s.basis q) ∧
    (∀i : Fin 6,out.basis (P.flag i)=first.basis (P.flag i)) ∧
    out.basis P.output=(first.basis (P.flag 5) && decide (regValue L.record s.basis%2=1)) := by
  let u := run (P.readHistory L) m s
  let tape := m.drop (measurementCount (P.readHistory L))
  have history := compiled.read_state P A L recordOwned s m ready
  have decoder := compileHmrDecoder_state P.popArena P.decoderArena (P.inputs L) P.decoderWork
    compiled.decoder u tape history.2.1
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have flagsOwned := hmrBorrowPorts_contract A P.flagArena 6 P.flagWork hf
  have popOwned := hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork hp
  have stepOwned (q : Wire) (hq : q∈P.flagArena.live) : q∈P.popArena.live := by
    rw [(P.flagArena.borrowMany_live P.popArena 1 P.popWork hp).1]
    exact Finset.mem_union_left _ hq
  have oldOwned (q : Wire) (hq : q∈A.live) : q∈P.popArena.live := by
    apply stepOwned
    rw [(A.borrowMany_live P.flagArena 6 P.flagWork hf).1]
    exact Finset.mem_union_left _ hq
  dsimp only
  have programEq : P.program L=P.readHistory L ++ hmrDecoderCompute (P.decoderPorts L) := rfl
  rw [programEq,run_append,run_take]
  refine ⟨decoder.1.trans history.1,decoder.2.1,?_,?_,?_⟩
  · intro q hq hr
    exact (decoder.2.2 q (oldOwned q hq)).trans (history.2.2.1 q hq hr)
  · intro i
    exact (decoder.2.2 (P.flag i) (stepOwned _ (flagsOwned.2.1 i))).trans (history.2.2.2.1 i)
  · exact (decoder.2.2 P.output (popOwned.2.1 0)).trans history.2.2.2.2

end ECDSAAdd.Arithmetic.Paper935
