import ECDSAAdd.Arithmetic.Paper935.HmrFreshCounterAllocation

namespace ECDSAAdd.Arithmetic.Paper935

/-- After the actual fresh-prefix release program, both the four borrowed
sites and the old keeper can be returned; no reset is hidden in retirement. -/
theorem compileHmrFreshCounter_release (A B : Arena) (counter work : List Wire) (keeper : Wire)
    (h : compileHmrFreshCounter A counter keeper=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (value : s.basis keeper=decide (regValue counter s.basis=0)) :
    let out := run (hmrFreshFree (hmrFreshPorts counter work keeper)) m s
    ∃ C, B.release (insert keeper work.toFinset) out.basis=some C ∧
      C.live=A.live.erase keeper ∧ C.Ready out.basis := by
  let out := run (hmrFreshFree (hmrFreshPorts counter work keeper)) m s
  have hc := compileHmrFreshCounter_contract A B counter work keeper h
  have borrow := A.borrowMany_contract B 4 work hc.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have live := (A.borrowMany_live B 4 work hc.2.2.2).1
  have zero := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have kmem : keeper∈A.live := hc.2.2.1 (by simp)
  have runeq := compileHmrFreshCounter_run A B counter work keeper h s m ready value
  have clear : ∀ q∈insert keeper work.toFinset,out.basis q=false := by
    intro q hq
    change (run (hmrFreshFree (hmrFreshPorts counter work keeper)) m s).basis q=false
    rw [runeq]
    rcases Finset.mem_insert.mp hq with eq | mem
    · subst q
      simp [writeBit]
    · have ne : q≠keeper := fun eq => Finset.disjoint_left.mp valid.2 kmem (eq ▸ mem)
      simpa [writeBit,ne] using zero q mem
  have owned : insert keeper work.toFinset⊆B.live := by
    rw [live]
    exact Finset.insert_subset (Finset.mem_union_left _ kmem) Finset.subset_union_right
  obtain ⟨C,release⟩ := (B.release_success (insert keeper work.toFinset) out.basis).mpr ⟨owned,clear⟩
  have clive : C.live=B.live\insert keeper work.toFinset := by
    have r := release
    simp only [Arena.release,if_pos (And.intro owned clear),Option.some.injEq] at r
    cases r
    rfl
  have shape : C.live=A.live.erase keeper := by
    rw [clive,live]
    ext q
    simp only [Finset.mem_sdiff,Finset.mem_union,Finset.mem_insert,Finset.mem_erase,not_or]
    constructor
    · intro hx
      exact ⟨hx.2.1,hx.1.resolve_right hx.2.2⟩
    · intro hx
      exact ⟨Or.inl hx.2,hx.1,fun hw => Finset.disjoint_left.mp valid.2 hx.2 hw⟩
  refine ⟨C,release,shape,?_⟩
  intro q hq hn
  rw [runeq]
  by_cases eq : q=keeper
  · subst q
    simp [writeBit]
  · have na : q∉A.live := fun ha => hn (by rw [shape]; exact Finset.mem_erase.mpr ⟨eq,ha⟩)
    simpa [writeBit,eq] using ready q hq na

end ECDSAAdd.Arithmetic.Paper935
