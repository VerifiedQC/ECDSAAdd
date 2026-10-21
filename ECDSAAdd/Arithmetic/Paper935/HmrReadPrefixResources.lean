import ECDSAAdd.Arithmetic.Paper935.HmrEarlyReadState
import ECDSAAdd.Arithmetic.Paper935.HmrArmedReadState
import ECDSAAdd.Arithmetic.Paper935.HmrReadResources

namespace ECDSAAdd.Arithmetic.Paper935

/-- Local live count, including the armed counter keeper and class flags.
This does not bound the caller's total entry layout. -/
theorem HmrArmedReadPlan.Compiled.decoder_live_count (P : HmrArmedReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) (compiled : P.Compiled A counter sign sigma frozen fire L) :
    P.classRead.readPlan.decoderArena.live.card=A.live.card+18 := by
  have retained := (compileHmrCounterRetained_contract A P.counterArena P.retainedArena counter P.counterWork compiled.counterCompile).2.2
  have classCount := (compileHmrClass_size P.retainedArena P.classRead.classArena .reverseArmed
    (P.inputs counter sign sigma frozen fire) P.classRead.classWork compiled.classCompile.classCompile).2
  have rc := compileHmrRead_contract P.classRead.classArena _ P.classRead.readPlan compiled.classCompile.readCompile
  have count := (rc.live_counts P.classRead.readPlan P.classRead.classArena _).2.2
  simp only [hmrClassWorkCount] at classCount
  omega

/-- Early decoding retains all five zero-test leaves, rather than a single
keeper; its local increment is therefore twenty. -/
theorem HmrEarlyReadPlan.Compiled.decoder_live_count (P : HmrEarlyReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) (compiled : P.Compiled A counter sign sigma frozen fire L)
    (len : counter.length=6) : P.classRead.readPlan.decoderArena.live.card=A.live.card+20 := by
  have borrow := (compileHmrEquality_contract A P.zeroArena counter 0 P.zeroWork P.zeroPlan compiled.counterCompile).2.1
  have zeroCount := (A.borrowMany_live P.zeroArena _ P.zeroWork borrow).2
  have classCount := (compileHmrClass_size P.zeroArena P.classRead.classArena .early
    (P.inputs sign sigma frozen fire) P.classRead.classWork compiled.classCompile.classCompile).2
  have rc := compileHmrRead_contract P.classRead.classArena _ P.classRead.readPlan compiled.classCompile.readCompile
  have count := (rc.live_counts P.classRead.readPlan P.classRead.classArena _).2.2
  simp only [hmrClassWorkCount] at classCount
  rw [len] at zeroCount
  omega

end ECDSAAdd.Arithmetic.Paper935
