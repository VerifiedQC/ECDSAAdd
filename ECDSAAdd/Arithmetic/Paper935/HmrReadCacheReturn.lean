import ECDSAAdd.Arithmetic.Paper935.HmrReadState

namespace ECDSAAdd.Arithmetic.Paper935

/-- After decoder retirement the changed branch stays live while prediction
and cache are returned. No assumption that the old data have been restored. -/
theorem HmrReadPlan.Compiled.cache_return (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (u : BasisState) (ready : P.popArena.Ready u) (branch : Bool) :
    P.popArena.Ready (writeBit u P.output branch) ∧
    P.decoderArena.release P.decoderWork.toFinset (writeBit u P.output branch)=some P.popArena := by
  have pop := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have owned : P.output∈P.popArena.live := (hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork pop).2.1 0
  have after : P.popArena.Ready (writeBit u P.output branch) := by
    intro q hq hn
    have ne : q≠P.output := fun eq => hn (eq ▸ owned)
    simpa only [writeBit,Function.update_of_ne ne] using ready q hq hn
  exact ⟨after,hmrBorrow_return P.popArena P.decoderArena 6 P.decoderWork
    (compileHmrDecoder_contract P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder).2.2 _ after⟩

end ECDSAAdd.Arithmetic.Paper935
