import ECDSAAdd.Arithmetic.Paper935.HmrReadState

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrReadPlan.Compiled.compute_state (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (P.program L) m s=
      ⟨s.phase,hmrDecoderComputed (P.decoderPorts L) (run (P.readHistory L) m s).basis⟩ := by
  let u := run (P.readHistory L) m s
  have state := compiled.read_state P A L recordOwned s m ready
  have clean := compileHmrDecoder_clean P.popArena P.decoderArena (P.inputs L) P.decoderWork
    compiled.decoder u.basis state.2.1
  have result := hmrDecoderCompute_run_aliased (P.decoderPorts L)
    (compileHmrDecoder_geometry P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder)
    u (m.drop (measurementCount (P.readHistory L)))
    ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),clean 17 (by decide),clean 18 (by decide)⟩
  have programEq : P.program L=P.readHistory L ++ hmrDecoderCompute (P.decoderPorts L) := rfl
  rw [programEq,run_append,run_take,result,state.1]

theorem HmrReadPlan.Compiled.output_ne_flag (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (i : Fin 6) : P.output≠P.flag i := by
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have flags := hmrBorrowPorts_contract A P.flagArena 6 P.flagWork hf
  have branch := hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork hp
  intro eq
  apply branch.2.2 0
  change P.output∈P.flagArena.live
  rw [eq]
  exact flags.2.1 i

end ECDSAAdd.Arithmetic.Paper935
