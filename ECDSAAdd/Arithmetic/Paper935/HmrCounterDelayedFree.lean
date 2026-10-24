import ECDSAAdd.Arithmetic.Paper935.HmrCounterRetained
import ECDSAAdd.Arithmetic.Paper935.HmrCounterKeeperBinding
import ECDSAAdd.Arithmetic.Paper935.HmrFreshCounterRelease

namespace ECDSAAdd.Arithmetic.Paper935

/-- Armed R12 re-borrows four prefix sites from the current arena after the
body has retired its other scratch. Their cleanliness follows from Ready;
no equality with the original zero-test addresses is required. -/
theorem compileHmrCounter_delayed_free (A B C D : Arena) (counter oldWork : List Wire)
    (h : compileHmrCounterRetained A counter=some (B,C,oldWork))
    (s : State) (firstTape : List Bool) (initial : A.Ready s.basis)
    (current : State) (freeTape : List Bool) (ready : D.Ready current.basis)
    (contains : C.live⊆D.live) (capacity : D.live.card+4≤935)
    (preserved : ∀q∈counter++[hmrCounterPorts counter oldWork 11],current.basis q=
      (run (hmrZero6Keep (hmrCounterPorts counter oldWork)) firstTape s).basis q) :
    let keeper := hmrCounterPorts counter oldWork 11
    ∃ E work F,compileHmrFreshCounter D counter keeper=some (E,work) ∧
      run (hmrFreshFree (hmrFreshPorts counter work keeper)) freeTape current=
        ⟨current.phase,writeBit current.basis keeper false⟩ ∧
      E.release (insert keeper work.toFinset) (writeBit current.basis keeper false)=some F ∧
      F.live=D.live.erase keeper ∧ F.Ready (writeBit current.basis keeper false) := by
  let keeper := hmrCounterPorts counter oldWork 11
  let out := run (hmrZero6Keep (hmrCounterPorts counter oldWork)) firstTape s
  have retained := compileHmrCounterRetained_run A B C counter oldWork h s firstTape initial
  have hc := compileHmrCounter_contract A B counter oldWork retained.1
  have kmem : keeper∈oldWork.toFinset := compileHmrCounter_keeper_mem A B counter oldWork retained.1
  have disjoint := ((A.reserve_success oldWork.toFinset).mp ⟨B,(A.borrowMany_contract B 6 oldWork hc.2.2.2).2.2⟩).2
  have separate : keeper∉counter := fun hk => Finset.disjoint_left.mp disjoint
    (hc.2.2.1 (List.mem_toFinset.mpr hk)) kmem
  have nd : (counter++[keeper]).Nodup := by
    apply List.nodup_append'.mpr
    refine ⟨hc.2.1,by simp,List.disjoint_left.mpr ?_⟩
    intro q hq hk
    have eq : q=keeper := by simpa using hk
    exact separate (eq ▸ hq)
  have owned : (counter++[keeper]).toFinset⊆D.live := by
    intro q hq
    apply contains
    rw [retained.2.2.1]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with hq|hq
    · exact Finset.mem_insert_of_mem (hc.2.2.1 (List.mem_toFinset.mpr hq))
    · have eq : q=keeper := by simpa using hq
      rw [eq]
      exact Finset.mem_insert_self _ _
  have value := compileHmrCounter_keeper_value A B counter oldWork retained.1 s firstTape initial
  have same : regValue counter current.basis=regValue counter out.basis :=
    regValue_congr counter _ _ (fun q hq => preserved q (List.mem_append_left _ hq))
  have currentValue : current.basis keeper=decide (regValue counter current.basis=0) := by
    rw [preserved keeper (by simp [keeper]),same]
    exact value
  obtain ⟨E,work,fresh⟩ := compileHmrFreshCounter_exists D counter keeper hc.1 nd owned capacity
  have runeq := compileHmrFreshCounter_run D E counter work keeper fresh current freeTape ready currentValue
  obtain ⟨F,release,live,fr⟩ := compileHmrFreshCounter_release D E counter work keeper fresh current freeTape ready currentValue
  rw [runeq] at release fr
  exact ⟨E,work,F,fresh,runeq,release,live,fr⟩

end ECDSAAdd.Arithmetic.Paper935
