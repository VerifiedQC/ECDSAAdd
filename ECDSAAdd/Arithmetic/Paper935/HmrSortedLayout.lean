import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront

namespace ECDSAAdd.Arithmetic.Paper935

/-- A short adjacent-comparison certificate after verified insertion sort avoids
nested pairwise proposition reduction in large concrete physical layouts. Sorting only
checks distinctness; it never changes the program's ordered wire lists. -/
theorem hmrLayout_nodup_of_sorted (qs : List Wire)
    (checked : (List.insertionSort (·≤·) qs).IsChain (fun a b => a<b)) : qs.Nodup := by
  apply (List.perm_insertionSort (·≤·) qs).nodup_iff.mp
  exact List.nodup_iff_pairwise_ne.mpr (checked.pairwise.imp (fun h => Nat.ne_of_lt h))

/-- Check concrete ownership by comparisons with the arena predicate, without
materializing and searching a large filtered finite set for every wire. -/
theorem hmrLayout_owned_of_filter (A : Arena) (pred : Wire → Prop) [DecidablePred pred]
    (live : A.live=arenaWires.filter pred) (qs : List Wire)
    (checked : qs.all (fun q => decide (q<935 ∧ pred q))=true) : qs.toFinset⊆A.live := by
  intro q member
  rw [live]
  have good := of_decide_eq_true (List.all_eq_true.mp checked q (List.mem_toFinset.mp member))
  exact Finset.mem_filter.mpr ⟨by simpa [arenaWires] using good.1,good.2⟩

theorem hmrArena_reserve_of_live (A B : Arena) (qs : Finset Wire)
    (bounded : qs⊆arenaWires) (apart : Disjoint A.live qs)
    (live : B.live=A.live∪qs) : A.reserve qs=some B := by
  unfold Arena.reserve
  rw [dif_pos (And.intro bounded apart)]
  congr 1
  cases B
  simp only [Arena.mk.injEq]
  exact live.symm

end ECDSAAdd.Arithmetic.Paper935
