import ECDSAAdd.Arithmetic.Paper935.HmrClassState
import ECDSAAdd.Arithmetic.Paper935.HmrReadExists

namespace ECDSAAdd.Arithmetic.Paper935

def hmrClassReadLayout (mode : HmrClassMode) (inputs work : List Wire) (L : HmrReadLayout) : HmrReadLayout :=
  {L with c3 := hmrAllocatedClassPorts mode inputs work 8}

structure HmrClassReadPlan where
  classArena : Arena
  classWork : List Wire
  readPlan : HmrReadPlan

def compileHmrClassRead (A : Arena) (mode : HmrClassMode) (inputs : List Wire) (L : HmrReadLayout) : Option HmrClassReadPlan := do
  let (B,work) ← compileHmrClass A mode inputs
  let P ← compileHmrRead B (hmrClassReadLayout mode inputs work L)
  pure ⟨B,work,P⟩

theorem compileHmrClassRead_exists (A : Arena) (mode : HmrClassMode) (inputs : List Wire) (L : HmrReadLayout)
    (len : inputs.length=5) (nd : inputs.Nodup) (owned : inputs.toFinset⊆A.live)
    (rows : L.rows.toFinset⊆A.live) (record : L.record.toFinset⊆A.live) (recordND : L.record.Nodup)
    (capacity : A.live.card+hmrClassWorkCount mode+13≤935) :
    ∃ P,compileHmrClassRead A mode inputs L=some P := by
  obtain ⟨B,work,hc⟩ := compileHmrClass_exists A mode inputs len nd owned (by omega)
  have borrow := (compileHmrClass_contract A B mode inputs work hc).2.2.2
  have live := (A.borrowMany_live B _ work borrow).1
  have ab : A.live⊆B.live := by rw [live];exact Finset.subset_union_left
  have cout : hmrAllocatedClassPorts mode inputs work 8∈work.toFinset := by
    have targets := compileHmrClass_work_targets A B mode inputs work hc
    cases mode
    all_goals simp only [hmrClassChain,List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq] at targets
    · exact targets.2
    · exact targets.2.2
    · exact targets.2.2.2
  have coutOwned : hmrAllocatedClassPorts mode inputs work 8∈B.live := by
    rw [live]
    exact Finset.mem_union_right _ cout
  have coutApart : hmrAllocatedClassPorts mode inputs work 8∉L.rows := by
    intro hq
    have disjoint := ((A.reserve_success work.toFinset).mp ⟨B,(A.borrowMany_contract B _ work borrow).2.2⟩).2
    exact Finset.disjoint_left.mp disjoint (rows (List.mem_toFinset.mpr hq)) cout
  have size := (A.borrowMany_live B _ work borrow).2
  obtain ⟨P,hp⟩ := compileHmrRead_exists B (hmrClassReadLayout mode inputs work L)
    (fun _ h => ab (rows h)) coutOwned coutApart (fun _ h => ab (record h)) recordND (by omega)
  exact ⟨⟨B,work,P⟩,by simp [compileHmrClassRead,hc,hp]⟩

end ECDSAAdd.Arithmetic.Paper935
