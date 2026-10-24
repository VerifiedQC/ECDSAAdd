import ECDSAAdd.Arithmetic.Paper935.HmrReadFlags
import ECDSAAdd.Arithmetic.Paper935.HmrReadComputeState
import ECDSAAdd.Arithmetic.Paper935.HmrReadCacheReturn
import ECDSAAdd.Arithmetic.Paper935.HmrFlagsAmbientReturn

namespace ECDSAAdd.Arithmetic.Paper935

def HmrReadPlan.releaseFlags (P : HmrReadPlan) (L : HmrReadLayout) : Program :=
  hmrFlagsRelease L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4)
    (P.flag 0) (P.flag 1) (P.flag 2) (P.flag 3) (P.flag 4) (P.flag 5)

/-- R12 returns jflags after cache retirement, retaining the recovered branch
allocation. History may already have changed and phase may include R11. -/
theorem HmrReadPlan.Compiled.release_flags (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (apart : List.Disjoint [L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] L.record)
    (s : State) (m releaseTape : List Bool) (ready : A.Ready s.basis) (phase branch : Bool) :
    let u := run (P.readHistory L) m s
    let start : State := ⟨phase,writeBit u.basis P.output branch⟩
    let out := run (P.releaseFlags L) releaseTape start
    out=⟨phase,hmrClearFlags P.flag start.basis⟩ ∧
    ∃D,P.popArena.release P.flagWork.toFinset out.basis=some D ∧ D.Ready out.basis ∧
      D.live=P.popArena.live\P.flagWork.toFinset ∧ P.output∈D.live := by
  let u := run (P.readHistory L) m s
  let start : State := ⟨phase,writeBit u.basis P.output branch⟩
  have state := compiled.read_state P A L recordOwned s m ready
  have values := compiled.read_flag_values P A L recordOwned apart s m ready
  have hf := compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have branchPorts := hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork hp
  have contains : P.flagArena.live⊆P.popArena.live := by
    rw [(P.flagArena.borrowMany_live P.popArena 1 P.popWork hp).1]
    exact Finset.subset_union_left
  have away : P.output∉[L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] := by
    intro mem
    apply branchPorts.2.2 0
    change P.output∈P.flagArena.live
    rw [(A.borrowMany_live P.flagArena 6 P.flagWork hf.2.2).1]
    exact Finset.mem_union_left _ (hf.2.1 (List.mem_toFinset.mpr mem))
  have current := values.write _ _ _ _ P.flag u.basis P.output branch away
    (compiled.output_ne_flag P A L)
  have currentReady : P.popArena.Ready start.basis := (compiled.cache_return P A L u.basis state.2.1 branch).1
  have erase := compileHmrFlags_erase A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags start releaseTape current
  have returned := compileHmrFlags_erase_in A P.flagArena P.popArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags contains start releaseTape currentReady current
  obtain ⟨D,hd,hr,hl⟩ := returned
  refine ⟨erase,D,hd,hr,hl,?_⟩
  rw [hl]
  apply Finset.mem_sdiff.mpr
  refine ⟨branchPorts.2.1 0,?_⟩
  intro mem
  apply branchPorts.2.2 0
  change P.output∈P.flagArena.live
  rw [(A.borrowMany_live P.flagArena 6 P.flagWork hf.2.2).1]
  exact Finset.mem_union_right _ mem

end ECDSAAdd.Arithmetic.Paper935
