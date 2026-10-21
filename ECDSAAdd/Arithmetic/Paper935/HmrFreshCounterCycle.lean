import ECDSAAdd.Arithmetic.Paper935.HmrFreshCounterAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrCounterKeeperBinding

namespace ECDSAAdd.Arithmetic.Paper935

/-- A compiled keeper can always be released using a NEW four-site borrow
from the retained arena. No equality with its original chain addresses is
assumed; readiness and the keeper value are derived from the actual first run. -/
theorem compileHmrCounter_fresh_cycle (A B : Arena) (counter oldWork : List Wire)
    (h : compileHmrCounter A counter=some (B,oldWork)) (s : State) (m n : List Bool)
    (ready : A.Ready s.basis) :
    let keeper := hmrCounterPorts counter oldWork 11
    let out := run (hmrZero6Keep (hmrCounterPorts counter oldWork)) m s
    ∃ C D newWork,
      B.release (oldWork.toFinset.erase keeper) out.basis=some C ∧
      compileHmrFreshCounter C counter keeper=some (D,newWork) ∧
      run (hmrFreshFree (hmrFreshPorts counter newWork keeper)) n out=s := by
  let keeper := hmrCounterPorts counter oldWork 11
  let out := run (hmrZero6Keep (hmrCounterPorts counter oldWork)) m s
  obtain ⟨C,release,live,cr,card⟩ := compileHmrCounter_release_chain A B counter oldWork h s m ready
  have hc := compileHmrCounter_contract A B counter oldWork h
  have old := A.borrowMany_contract B 6 oldWork hc.2.2.2
  have dis := ((A.reserve_success oldWork.toFinset).mp ⟨B,old.2.2⟩).2
  have kmem : keeper∈oldWork.toFinset := compileHmrCounter_keeper_mem A B counter oldWork h
  have outside : keeper∉counter := fun hk => Finset.disjoint_left.mp dis
    (hc.2.2.1 (List.mem_toFinset.mpr hk)) kmem
  have distinct : (counter++[keeper]).Nodup := by
    apply List.nodup_append'.mpr
    refine ⟨hc.2.1,by simp,?_⟩
    apply List.disjoint_left.mpr
    intro q hq hk
    have eq : q=keeper := by simpa using hk
    exact outside (eq ▸ hq)
  have owned : (counter++[keeper]).toFinset⊆C.live := by
    rw [live]
    intro q hq
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with hq | hq
    · exact Finset.mem_insert_of_mem (hc.2.2.1 (List.mem_toFinset.mpr hq))
    · have eq : q=keeper := by simpa using hq
      simpa only [eq,keeper] using Finset.mem_insert_self keeper A.live
  have capacity : C.live.card+4≤935 := by
    have cap := (A.borrowMany_capacity 6).mp ⟨B,oldWork,hc.2.2.2⟩
    rw [card]
    omega
  obtain ⟨D,newWork,fresh⟩ := compileHmrFreshCounter_exists C counter keeper hc.1 distinct owned capacity
  refine ⟨C,D,newWork,release,fresh,?_⟩
  have result := compileHmrFreshCounter_run C D counter newWork keeper fresh out n cr
    (compileHmrCounter_keeper_value A B counter oldWork h s m ready)
  rw [result]
  change State.mk out.phase (writeBit out.basis keeper false)=s
  dsimp only [out]
  rw [compileHmrCounter_run A B counter oldWork h s m ready]
  have zero := compileHmrCounter_clean A B counter oldWork h s.basis ready 11 (by decide)
  change State.mk s.phase (Function.update (Function.update s.basis keeper _) keeper false)=s
  rw [Function.update_idem,←zero,Function.update_eq_self]

end ECDSAAdd.Arithmetic.Paper935
