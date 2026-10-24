import ECDSAAdd.Arithmetic.Paper935.HmrReadFinalState
import ECDSAAdd.Arithmetic.Paper935.HmrFlagsValues

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrReadPlan.Compiled.flag_values (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (apart : List.Disjoint [L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] L.record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    HmrFlagValues L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4)
      P.flag (run (P.program L) m s).basis := by
  have first := compileHmrFlags_values A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags s m ready
  have state := compiled.final_state P A L recordOwned s m ready
  have old := compileHmrFlags_state A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags s m ready
  have hc := compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags
  apply first.frame _ _ _ _ P.flag _ _
  · intro q hq
    have owned := hc.2.1 (List.mem_toFinset.mpr hq)
    exact (state.2.2.1 q owned (List.disjoint_left.mp apart hq)).trans (old.2.2 q owned).symm
  · exact state.2.2.2.1

theorem HmrReadPlan.Compiled.read_flag_values (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (apart : List.Disjoint [L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] L.record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    HmrFlagValues L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4)
      P.flag (run (P.readHistory L) m s).basis := by
  have first := compileHmrFlags_values A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags s m ready
  have state := compiled.read_state P A L recordOwned s m ready
  have old := compileHmrFlags_state A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags s m ready
  have hc := compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags
  apply first.frame _ _ _ _ P.flag _ _
  · intro q hq
    have owned := hc.2.1 (List.mem_toFinset.mpr hq)
    exact (state.2.2.1 q owned (List.disjoint_left.mp apart hq)).trans (old.2.2 q owned).symm
  · exact state.2.2.2.1

end ECDSAAdd.Arithmetic.Paper935
