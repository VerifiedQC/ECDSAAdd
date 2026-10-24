import ECDSAAdd.Arithmetic.Paper935.HmrCounterAllocation

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrCounter_keeper_mem (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) :
    hmrCounterPorts counter work 11∈work.toFinset := by
  have hc := compileHmrCounter_contract A B counter work h
  have hw := (A.borrowMany_contract B 6 work hc.2.2.2).1
  apply List.mem_toFinset.mpr
  change (counter++work).getD 11 0∈work
  rw [List.getD_append_right counter work 0 11 (by omega)]
  rw [List.getD_eq_getElem work 0 (show 11-counter.length<work.length by omega)]
  exact List.getElem_mem _

/-- After the blocked test, all five chain sites are returned and only the
keeper remains owned; cleanliness follows from the actual program run. -/
theorem compileHmrCounter_release_chain (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let keeper := hmrCounterPorts counter work 11
    let out := run (hmrZero6Keep (hmrCounterPorts counter work)) m s
    ∃ C, B.release (work.toFinset.erase keeper) out.basis=some C ∧
      C.live=insert keeper A.live ∧ C.Ready out.basis ∧ C.live.card=A.live.card+1 := by
  let keeper := hmrCounterPorts counter work 11
  let out := run (hmrZero6Keep (hmrCounterPorts counter work)) m s
  have hc := compileHmrCounter_contract A B counter work h
  have borrow := A.borrowMany_contract B 6 work hc.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have live := (A.borrowMany_live B 6 work hc.2.2.2).1
  have zero := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have kmem : keeper∈work.toFinset := compileHmrCounter_keeper_mem A B counter work h
  have knot : keeper∉A.live := fun hk => Finset.disjoint_left.mp valid.2 hk kmem
  have runeq := compileHmrCounter_run A B counter work h s m ready
  have clear : ∀ q∈work.toFinset.erase keeper,out.basis q=false := by
    intro q hq
    obtain ⟨ne,mem⟩ := Finset.mem_erase.mp hq
    change (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis q=false
    rw [runeq]
    simpa [writeBit,keeper,ne] using zero q mem
  have owned : work.toFinset.erase keeper⊆B.live := by
    rw [live]
    exact Finset.Subset.trans (Finset.erase_subset _ _) Finset.subset_union_right
  obtain ⟨C,release⟩ := (B.release_success (work.toFinset.erase keeper) out.basis).mpr ⟨owned,clear⟩
  have clive : C.live=B.live\work.toFinset.erase keeper := by
    have r := release
    simp only [Arena.release,if_pos (And.intro owned clear),Option.some.injEq] at r
    cases r
    rfl
  have shape : C.live=insert keeper A.live := by
    rw [clive,live]
    ext q
    simp only [Finset.mem_sdiff,Finset.mem_union,Finset.mem_erase,Finset.mem_insert]
    by_cases eq : q=keeper
    · subst q; simp [kmem]
    · have dis : q∈A.live → q∉work.toFinset := fun ha hb => Finset.disjoint_left.mp valid.2 ha hb
      simp [eq]
      exact ⟨fun hx => hx.1.resolve_right hx.2,fun hx => ⟨Or.inl hx,by simpa only [List.mem_toFinset] using dis hx⟩⟩
  refine ⟨C,release,shape,?_,?_⟩
  · intro q hq hn
    have na : q∉A.live := fun ha => hn (by rw [shape]; exact Finset.mem_insert_of_mem ha)
    have ne : q≠keeper := fun eq => hn (by rw [shape,eq]; exact Finset.mem_insert_self _ _)
    change (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis q=false
    rw [runeq]
    simpa [writeBit,keeper,ne] using ready q hq na
  · rw [shape,Finset.card_insert_of_notMem knot]

end ECDSAAdd.Arithmetic.Paper935
