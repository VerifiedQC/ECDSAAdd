import ECDSAAdd.Arithmetic.Paper935.HmrEqualityState

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrLadder_sites (sites : Finset Wire) (head : HmrLiteral) (cells : List HmrLadderCell)
    (headOwned : head.wire∈sites) (cellOwned : ∀c∈cells,c.literal.wire∈sites ∧ c.target∈sites) :
    ∀g∈hmrLadder head cells,g.a∈sites ∧ g.b∈sites ∧ g.target∈sites := by
  induction cells generalizing head with
  | nil => simp [hmrLadder]
  | cons c cs ih =>
    intro g hg
    simp only [hmrLadder,List.mem_cons] at hg
    rcases hg with rfl|hg
    · exact ⟨headOwned,cellOwned c (by simp)⟩
    · exact ih ⟨c.target,true⟩ (cellOwned c (by simp)).2 (fun d hd => cellOwned d (by simp [hd])) g hg

theorem compileHmrEquality_sites (A B : Arena) (bits : List Wire) (k : Nat) (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) :
    ∀g∈P.stages,g.a∈(bits++work).toFinset ∧ g.b∈(bits++work).toFinset ∧ g.target∈(bits++work).toFinset := by
  have hc := compileHmrEquality_contract A B bits k work P h
  have literals : (P.head::P.cells.map HmrLadderCell.literal).map HmrLiteral.wire=bits := by
    rw [hc.2.2.1,hmrEqualityLiterals_wires]
  apply hmrLadder_sites
  · apply List.mem_toFinset.mpr
    apply List.mem_append_left
    rw [←literals]
    simp
  · intro c mem
    constructor
    · apply List.mem_toFinset.mpr
      apply List.mem_append_left
      rw [←literals]
      exact List.mem_map.mpr ⟨c.literal,List.mem_cons_of_mem _ (List.mem_map.mpr ⟨c,mem,rfl⟩),rfl⟩
    · exact List.mem_toFinset.mpr (List.mem_append_right _ (List.mem_toFinset.mp
        (hc.2.2.2.2.2 (List.mem_toFinset.mpr (List.mem_map.mpr ⟨c,mem,rfl⟩)))))

/-- Early R12 retires the still-live zero-test chain after decoding. It
preserves unrelated history/branch changes and any pending phase. -/
theorem compileHmrEquality_delayed (A B C : Arena) (bits : List Wire) (k : Nat) (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) (contains : B.live⊆C.live)
    (before : BasisState) (initial : A.Ready before) (current : State) (m : List Bool)
    (ready : C.Ready current.basis)
    (preserved : ∀q∈(bits++work).toFinset,current.basis q=hmrAndAdvance P.stages before q) :
    let out := run (hmrAndUnsweep P.stages) m current
    out.phase=current.phase ∧ out.basis=hmrAndPatch (bits++work).toFinset before current.basis ∧
    ∃ D,C.release work.toFinset out.basis=some D ∧ D.Ready out.basis ∧ D.live=C.live\work.toFinset := by
  have hc := compileHmrEquality_contract A B bits k work P h
  have owned : (bits++work).toFinset⊆C.live := by
    intro q hq
    apply contains
    rw [(A.borrowMany_live B _ work hc.2.1).1]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with hi|hw
    · exact Finset.mem_union_left _ (hc.1.1 (List.mem_toFinset.mpr hi))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr hw)
  have result := hmrAndUnsweep_delayed (bits++work).toFinset P.stages
    (compileHmrEquality_sites A B bits k work P h) before current m
    (compileHmrEquality_ready A B bits k work P h before initial) preserved
  let finalBasis := hmrAndPatch (bits++work).toFinset before current.basis
  have workOwned : work.toFinset⊆C.live := by
    intro q hq
    exact owned (List.mem_toFinset.mpr (List.mem_append_right _ (List.mem_toFinset.mp hq)))
  have zeros : ∀q∈work.toFinset,finalBasis q=false := by
    intro q hq
    have mem := List.mem_toFinset.mpr (List.mem_append_right bits (List.mem_toFinset.mp hq))
    change (if q∈(bits++work).toFinset then before q else current.basis q)=false
    rw [if_pos mem]
    exact (A.reserve_ready B work.toFinset before initial (A.borrowMany_contract B _ work hc.2.1).2.2).2 q hq
  have finalReady : C.Ready finalBasis := by
    intro q hq hn
    have outside : q∉(bits++work).toFinset := fun hmem => hn (owned hmem)
    change (if q∈(bits++work).toFinset then before q else current.basis q)=false
    rw [if_neg outside]
    exact ready q hq hn
  obtain ⟨D,release⟩ := (C.release_success work.toFinset finalBasis).mpr ⟨workOwned,zeros⟩
  dsimp only
  rw [result]
  refine ⟨rfl,rfl,D,release,C.release_ready D work.toFinset _ finalReady release,?_⟩
  unfold Arena.release at release
  rw [if_pos ⟨workOwned,zeros⟩] at release
  cases release
  rfl

end ECDSAAdd.Arithmetic.Paper935
