import ECDSAAdd.Arithmetic.Paper935.HmrReadRecoverRelease

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrReadRecoverRelease_counts (P : HmrReadPlan) (L : HmrReadLayout) (early : Bool)
    (parity fire : Wire) (work : List Wire) (ordinal : Nat) :
    recordedToffoliCount (P.recoverRelease L early parity fire work ordinal)=L.record.length+20+(if early then 0 else 1) ∧
    recordedMeasurementCount (P.recoverRelease L early parity fire work ordinal)=9+(if early then 0 else 1) := by
  have flags := hmrFlags_counts L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4)
    (P.flag 0) (P.flag 1) (P.flag 2) (P.flag 3) (P.flag 4) (P.flag 5)
  have decoder := hmrDecoder_full_counts (P.decoderPorts L)
  have pop := history_counts (P.flag 5) P.output L.record
  have assembly := hmrBranchAssembly_counts early (P.decoderPorts L 13) parity fire (hmrBorrowPorts work (0 : Fin 1)) P.output
  have fixup := hmrRecordFixup_counts ordinal P.output (P.flag 5)
  simp only [toffoliCount_append,measurementCount_append] at flags decoder
  simp only [HmrReadPlan.recoverRelease,HmrReadPlan.recover,recordedToffoliCount_append,
    recordedMeasurementCount_append,(embedRecorded_counts _).1,(embedRecorded_counts _).2,
    HmrReadPlan.assemble,HmrReadPlan.program,toffoliCount_append,measurementCount_append,
    HmrReadPlan.flags,hmrAllocatedFlags,HmrReadPlan.pop,HmrReadPlan.releaseFlags]
  simp only [HmrReadPlan.flag] at *
  constructor <;> omega

/-- These are local allocation increments above the live entry arena, not
whole-point-add peak numbers. R7 adds one site only in armed steps. -/
theorem HmrReadPlan.Compiled.live_counts (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) :
    P.flagArena.live.card=A.live.card+6 ∧ P.popArena.live.card=A.live.card+7 ∧
    P.decoderArena.live.card=A.live.card+13 := by
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have hd := (compileHmrDecoder_contract P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder).2.2
  have f := (A.borrowMany_live P.flagArena 6 P.flagWork hf).2
  have r := (P.flagArena.borrowMany_live P.popArena 1 P.popWork hp).2
  have d := (P.popArena.borrowMany_live P.decoderArena 6 P.decoderWork hd).2
  omega

theorem HmrReadPlan.Compiled.assembly_live_count (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (B : Arena) (early : Bool) (parity fire : Wire) (work : List Wire)
    (h : compileHmrAssembly P.decoderArena early (P.decoderPorts L 13) parity fire P.output=some (B,work)) :
    B.live.card=A.live.card+13+(if early then 0 else 1) := by
  have before := (compiled.live_counts P A L).2.2
  have hc := (compileHmrAssembly_contract P.decoderArena B early (P.decoderPorts L 13) parity fire P.output work h).2.2
  cases he : early with
  | true =>
    have eq : B=P.decoderArena := (by simpa only [he,ite_true] using hc : B=P.decoderArena ∧ work=[]).1
    simp only [eq,before,ite_true,Nat.add_zero]
  | false =>
    have borrow : P.decoderArena.borrowMany 1=some (B,work) := by simpa only [he,Bool.false_eq_true,ite_false] using hc
    have after := (P.decoderArena.borrowMany_live B 1 work borrow).2
    simp only [Bool.false_eq_true,ite_false]
    omega

theorem HmrReadPlan.Compiled.released_live_count (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (D : Arena) (live : D.live=P.popArena.live\P.flagWork.toFinset) :
    D.live.card=A.live.card+1 := by
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have owned : P.flagWork.toFinset⊆P.popArena.live := by
    rw [(P.flagArena.borrowMany_live P.popArena 1 P.popWork hp).1,(A.borrowMany_live P.flagArena 6 P.flagWork hf).1]
    intro q hq
    exact Finset.mem_union_left _ (Finset.mem_union_right _ hq)
  have contract := A.borrowMany_contract P.flagArena 6 P.flagWork hf
  have count : P.flagWork.toFinset.card=6 := by rw [List.toFinset_card_of_nodup contract.2.1,contract.1]
  rw [live,Finset.card_sdiff_of_subset owned,count,(compiled.live_counts P A L).2.1]
  omega

end ECDSAAdd.Arithmetic.Paper935
