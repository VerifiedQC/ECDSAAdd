import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockFree

namespace ECDSAAdd.Arithmetic.Paper935

/-- The freshly reconstructed prefix and the old keeper are returned only
after the actual measured cleanup; release never resets a dirty site. -/
theorem compileHmrBlockFreeLog_release (A B : Arena) (literals : List HmrLiteral) (work : List Wire) (keeper : Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFreeLog A literals keeper work=some (B,work,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (value : s.basis keeper=literals.all (fun l => l.value s.basis)) :
    let out := run P.program m s
    ∃ C, B.release (insert keeper work.toFinset) out.basis=some C ∧
      C.live=A.live.erase keeper ∧ C.Ready out.basis := by
  let out := run P.program m s
  have hc := compileHmrBlockFreeLog_contract A B literals keeper work P h
  have borrow := A.checkBorrow_contract B (literals.length-2) work hc.2.1
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have live := A.checkBorrow_live B (literals.length-2) work hc.2.1
  have zero := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have kmem : keeper∈A.live := hc.1 (by simp)
  have runeq := compileHmrBlockFreeLog_run A B literals keeper work P h s m ready value
  have clear : ∀ q∈insert keeper work.toFinset,out.basis q=false := by
    intro q hq
    change (run P.program m s).basis q=false
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
