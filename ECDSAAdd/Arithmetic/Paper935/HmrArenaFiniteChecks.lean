import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
namespace ECDSAAdd.Arithmetic.Paper935

/-- Boolean interval membership agrees with the mathematical union of ranges. -/
theorem hmrInterval_any_iff (rs : List (Nat × Nat)) (q : Nat) :
    rs.any (fun r => decide (r.1 ≤ q ∧ q < r.2)) = true ↔
      ∃ r ∈ rs, r.1 ≤ q ∧ q < r.2 := by
  simp only [List.any_eq_true, decide_eq_true_eq]


/-- Check a live-set union pointwise inside the fixed physical arena. -/
theorem hmrArena_union_of_filter_check (A B : Arena) (p q : Wire → Prop)
    [DecidablePred p] [DecidablePred q] (work : List Wire)
    (ha : A.live=arenaWires.filter p) (hb : B.live=arenaWires.filter q)
    (bounded : work.toFinset⊆arenaWires)
    (checked : (List.range 935).all (fun w => decide (q w ↔ p w ∨ w∈work))=true) :
    B.live=A.live∪work.toFinset := by
  ext w
  by_cases h : w<935
  · have hc := List.all_eq_true.mp checked w (List.mem_range.mpr h)
    have hc' : q w ↔ p w ∨ w∈work := of_decide_eq_true hc
    simpa only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,true_and,
      Finset.mem_union,List.mem_toFinset] using hc'
  · have hw : w∉work.toFinset := fun hw => h (Finset.mem_range.mp (bounded hw))
    simp only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,false_and,
      Finset.mem_union,hw,or_self]
/-- Check retirement pointwise without expanding large disjunctive predicates. -/
theorem hmrArena_diff_of_filter_check (A B : Arena) (p q : Wire → Prop)
    [DecidablePred p] [DecidablePred q] (work : List Wire)
    (ha : A.live=arenaWires.filter p) (hb : B.live=arenaWires.filter q)
    (checked : (List.range 935).all (fun w => decide (q w ↔ p w ∧ w∉work))=true) :
    B.live=A.live\work.toFinset := by
  ext w
  by_cases h : w<935
  · have hc := List.all_eq_true.mp checked w (List.mem_range.mpr h)
    have hc' : q w ↔ p w ∧ w∉work := of_decide_eq_true hc
    simpa only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,true_and,
      Finset.mem_sdiff,List.mem_toFinset] using hc'
  · simp only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,false_and,
      Finset.mem_sdiff]
/-- A relocation can be checked directly from its before/after predicates. -/
theorem hmrArena_update_of_filter_check (A B : Arena) (p q : Wire → Prop)
    [DecidablePred p] [DecidablePred q] (added removed : List Wire)
    (ha : A.live=arenaWires.filter p) (hb : B.live=arenaWires.filter q)
    (bounded : added.toFinset⊆arenaWires)
    (checked : (List.range 935).all
      (fun w => decide (q w ↔ (p w ∨ w∈added) ∧ w∉removed))=true) :
    B.live=(A.live∪added.toFinset)\removed.toFinset := by
  ext w
  by_cases h : w<935
  · have hc := List.all_eq_true.mp checked w (List.mem_range.mpr h)
    have hc' : q w ↔ (p w ∨ w∈added) ∧ w∉removed := of_decide_eq_true hc
    simpa only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,true_and,
      Finset.mem_sdiff,Finset.mem_union,List.mem_toFinset] using hc'
  · have hw : w∉added.toFinset := fun hw => h (Finset.mem_range.mp (bounded hw))
    simp only [ha,hb,Finset.mem_filter,arenaWires,Finset.mem_range,h,false_and,
      Finset.mem_sdiff,Finset.mem_union,hw,or_self]
theorem hmrArena_retireSet_of_live (A B : Arena) (qs : Finset Wire)
    (live : B.live=A.live\qs) : A.retireSet qs=B := by
  cases B
  simp only [Arena.retireSet,Arena.mk.injEq]
  exact live.symm

/-- Two singleton borrows in source order, checked as one predicate update. -/
theorem hmrArena_union_pair_of_filter_check (A B : Arena) (p q : Wire → Prop)
    [DecidablePred p] [DecidablePred q] (a b : Wire)
    (ha : A.live=arenaWires.filter p) (hb : B.live=arenaWires.filter q)
    (bounded : [a,b].toFinset⊆arenaWires)
    (checked : (List.range 935).all (fun w => decide (q w ↔ p w ∨ w∈[a,b]))=true) :
    B.live=(A.live∪{a})∪{b} := by
  have live := hmrArena_union_of_filter_check A B p q [a,b] ha hb bounded checked
  simpa only [List.toFinset_cons,List.toFinset_nil,Finset.union_insert,
    Finset.union_empty,Finset.union_singleton,Finset.insert_comm] using live
end ECDSAAdd.Arithmetic.Paper935
