import ECDSAAdd.Arithmetic.Paper935.HmrBlockCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlock_retain (A B : Arena) (literals : List HmrLiteral)
    (work : List Wire) (P : HmrBlockPlan)
    (h : compileHmrBlock A literals=some (B,work,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run P.program m s
    ∃ C,B.release (work.toFinset.erase P.keeper) out.basis=some C ∧
      C.live=insert P.keeper A.live ∧ C.Ready out.basis ∧ C.live.card=A.live.card+1 := by
  let out := run P.program m s
  have hc := compileHmrBlock_contract A B literals work P h
  have borrow := A.borrowMany_contract B literals.length work hc.2.1
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have live := (A.borrowMany_live B literals.length work hc.2.1).1
  have zero := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have kmem : P.keeper∈work.toFinset := List.mem_toFinset.mpr hc.2.2.2.2.2.2
  have fresh : P.keeper∉A.live := fun ha => Finset.disjoint_left.mp valid.2 ha kmem
  have runeq := compileHmrBlock_run A B literals work P h s m ready
  have clear : ∀q∈work.toFinset.erase P.keeper,out.basis q=false := by
    intro q hq
    obtain ⟨ne,mem⟩ := Finset.mem_erase.mp hq
    change (run P.program m s).basis q=false
    rw [runeq]
    simpa [writeBit,ne] using zero q mem
  have owned : work.toFinset.erase P.keeper⊆B.live := by
    rw [live]
    exact Finset.Subset.trans (Finset.erase_subset _ _) Finset.subset_union_right
  obtain ⟨C,release⟩ := (B.release_success (work.toFinset.erase P.keeper) out.basis).mpr ⟨owned,clear⟩
  have clive : C.live=B.live\work.toFinset.erase P.keeper := by
    have r := release
    simp only [Arena.release,if_pos (And.intro owned clear),Option.some.injEq] at r
    cases r
    rfl
  have shape : C.live=insert P.keeper A.live := by
    rw [clive,live]
    ext q
    by_cases eq : q=P.keeper
    · subst q
      simp [kmem]
    · have apart : q∈A.live → q∉work.toFinset := fun ha hw => Finset.disjoint_left.mp valid.2 ha hw
      simp only [Finset.mem_sdiff,Finset.mem_union,Finset.mem_erase,Finset.mem_insert,eq,false_or]
      constructor
      · intro mem; exact mem.1.resolve_right (fun hw => mem.2 ⟨eq,hw⟩)
      · intro mem; exact ⟨Or.inl mem,fun hx => apart mem hx.2⟩
  refine ⟨C,release,shape,?_,?_⟩
  · intro q hq hn
    have ne : q≠P.keeper := fun eq => hn (by rw [shape]; simp [eq])
    have na : q∉A.live := fun ha => hn (by rw [shape]; exact Finset.mem_insert_of_mem ha)
    change (run P.program m s).basis q=false
    rw [runeq]
    simpa [writeBit,ne] using ready q hq na
  · rw [shape,Finset.card_insert_of_notMem fresh]

end ECDSAAdd.Arithmetic.Paper935
