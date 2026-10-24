import ECDSAAdd.Arithmetic.Paper935.HmrHybridSubCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrHybridCells_support (control a b carry next : Wire) :
    wires (hmrHybridLift a b carry next)⊆[control,carry,a,b,next].toFinset ∧
    wires (hmrHybridDrop control a b carry next)⊆[control,carry,a,b,next].toFinset ∧
    wires (hmrHybridUnwrite control a b carry next)⊆[control,carry,a,b,next].toFinset ∧
    wires (hmrHybridUnlift a b carry next)⊆[control,carry,a,b,next].toFinset := by
  simp [hmrHybridLift,hmrHybridDrop,hmrHybridUnwrite,hmrHybridUnlift,hmrPolarAnd,
    hmrPolarRelease,hmrPolarDress,wires,Instr.wires,correctionWires,Finset.subset_iff]

theorem hmrHybrid_support (control carry : Wire) (a b work : List Wire) :
    wires (hmrHybridRow control a b carry work)⊆(control::carry::(a++b++work)).toFinset ∧
    wires (hmrHybridSub control a b carry work)⊆(control::carry::(a++b++work)).toFinset := by
  induction work generalizing carry a b with
  | nil =>
    simpa only [hmrHybridRow,hmrHybridSub,List.append_nil] using
      And.intro (rowAdd_support control carry a b) (rowSub_support control carry a b)
  | cons next work ih =>
    cases a with
    | nil => simp [hmrHybridRow,hmrHybridSub,wires]
    | cons x xs =>
      cases b with
      | nil => simp [hmrHybridRow,hmrHybridSub,wires]
      | cons y ys =>
        have tail := ih next xs ys
        have cells := hmrHybridCells_support control x y carry next
        have localSub : [control,carry,x,y,next].toFinset⊆(control::carry::((x::xs)++(y::ys)++(next::work))).toFinset := by
          intro q hq
          simp only [List.mem_toFinset,List.mem_cons,List.mem_append,List.not_mem_nil,or_false] at hq ⊢
          tauto
        have tailSub : (control::next::(xs++ys++work)).toFinset⊆(control::carry::((x::xs)++(y::ys)++(next::work))).toFinset := by
          intro q hq
          simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hq ⊢
          tauto
        simp only [hmrHybridRow,hmrHybridSub,wires_append,Finset.union_subset_iff]
        exact ⟨⟨⟨cells.1.trans localSub,tail.1.trans tailSub⟩,cells.2.1.trans localSub⟩,
          ⟨cells.2.2.1.trans localSub,tail.2.trans tailSub⟩,cells.2.2.2.trans localSub⟩

theorem compileHmrHybridRow_support (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    wires (hmrHybridRow control a b carry work)⊆B.live ∧
    wires (hmrHybridSub control a b carry work)⊆B.live := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have live := (A.borrowMany_live B _ work hc.2.2.2.2).1
  have subset : (control::carry::(a++b++work)).toFinset⊆B.live := by
    intro q hq
    change q∈((control::carry::(a++b))++work).toFinset at hq
    rw [live]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with old|fresh
    · exact Finset.mem_union_left _ (hc.2.2.2.1 q old)
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr fresh)
  have support := hmrHybrid_support control carry a b work
  exact ⟨support.1.trans subset,support.2.trans subset⟩

end ECDSAAdd.Arithmetic.Paper935
