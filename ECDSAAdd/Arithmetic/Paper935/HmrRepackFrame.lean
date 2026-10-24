import ECDSAAdd.Arithmetic.Paper935.HmrBankRepack

namespace ECDSAAdd.Arithmetic.Paper935

/-- An owned wire not listed as a relocation source cannot become a fresh
allocation either. Thus its physical address and ownership remain fixed. -/
theorem Arena.checkRepack_fixed (A C : Arena) (moves : List (Wire × Wire))
    (checked : A.checkRepack moves=some C) (q : Wire) (owned : q∈A.live)
    (away : ∀p∈moves,p.1≠q) : q∈C.live ∧ repackEquiv moves q=q := by
  induction moves generalizing A with
  | nil =>
    simp only [Arena.checkRepack,Option.some.injEq] at checked
    subst C
    exact ⟨owned,rfl⟩
  | cons p ps ih =>
    simp only [Arena.checkRepack] at checked
    split at checked
    next old =>
      obtain ⟨B,reserved,checked⟩ := Option.bind_eq_some_iff.mp checked
      have legal := (A.reserve_success {p.2}).mp ⟨B,reserved⟩
      have live : B.live=A.live∪{p.2} := by
        simp only [Arena.reserve,dif_pos legal,Option.some.injEq] at reserved
        cases reserved
        rfl
      have noOld : q≠p.1 := Ne.symm (away p (by simp))
      have noFresh : q≠p.2 := by
        intro eq
        exact Finset.disjoint_left.mp legal.2 owned (by simp [eq])
      have still : q∈(B.retireSet {p.1}).live := by
        simp only [Arena.retireSet,Finset.mem_sdiff,Finset.mem_singleton]
        exact ⟨by rw [live]; exact Finset.mem_union_left _ owned,noOld⟩
      have tail := ih _ checked still (fun r hr => away r (by simp [hr]))
      refine ⟨tail.1,?_⟩
      simpa only [repackEquiv,Equiv.trans_apply,Equiv.swap_apply_of_ne_of_ne noOld noFresh] using tail.2
    next absent => simp at checked

theorem Arena.checkRepack_fixed_view (A C : Arena) (moves : List (Wire × Wire))
    (checked : A.checkRepack moves=some C) (xs : List Wire)
    (owned : ∀q∈xs,q∈A.live) (away : ∀p∈moves,p.1∉xs) :
    repackView moves xs=xs := by
  rw [repackView_eq_map]
  calc
    xs.map (repackEquiv moves) = xs.map id := by
      apply List.map_congr_left
      intro q hq
      exact (A.checkRepack_fixed C moves checked q (owned q hq)
        (fun p hp eq => away p hp (eq ▸ hq))).2
    _ = xs := List.map_id xs

theorem Arena.checkRepack_frame (A C : Arena) (moves : List (Wire × Wire))
    (checked : A.checkRepack moves=some C) (q : Wire) (owned : q∈A.live)
    (away : ∀p∈moves,p.1≠q) (s : State) (m : List Bool) :
    (run (repack moves) m s).basis q=s.basis q := by
  have valid := A.checkRepack_valid C moves checked
  have fixed := (A.checkRepack_fixed C moves checked q owned away).2
  simpa only [fixed] using repack_basis moves (fun p hp => (valid p hp).1) s m q

end ECDSAAdd.Arithmetic.Paper935
