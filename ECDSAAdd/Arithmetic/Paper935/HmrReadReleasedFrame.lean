import ECDSAAdd.Arithmetic.Paper935.HmrReadFlagsReturn

namespace ECDSAAdd.Arithmetic.Paper935

/-- The concrete basis produced by recovery and flag release preserves every
old owned site outside the shifted history, including class-chain controls. -/
theorem HmrReadPlan.Compiled.released_frame (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (branch : Bool)
    (q : Wire) (owned : q∈A.live) (apart : q∉L.record) :
    hmrClearFlags P.flag (writeBit (run (P.readHistory L) m s).basis P.output branch) q=s.basis q := by
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have fp := hmrBorrowPorts_contract A P.flagArena 6 P.flagWork hf
  have bp := hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork hp
  have away (i : Fin 6) : q≠P.flag i := by
    intro eq
    apply fp.2.2 i
    change P.flag i∈A.live
    rw [←eq]
    exact owned
  have outputAway : q≠P.output := by
    intro eq
    apply bp.2.2 0
    change P.output∈P.flagArena.live
    rw [←eq,(A.borrowMany_live P.flagArena 6 P.flagWork hf).1]
    exact Finset.mem_union_left _ owned
  simp only [hmrClearFlags,writeBit,Function.update_of_ne (away _),Function.update_of_ne outputAway]
  exact (compiled.read_state P A L recordOwned s m ready).2.2.1 q owned apart

end ECDSAAdd.Arithmetic.Paper935
