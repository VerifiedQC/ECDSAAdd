import ECDSAAdd.Arithmetic.BalancedCleanupOffsetLayout
set_option maxHeartbeats 600000
set_option linter.unusedSimpArgs false
namespace ECDSAAdd.Arithmetic.BalancedCleanupOffset

theorem view_support (L : Layout) (hw : L.Widths) :
    wires (view L) ⊆ ([L.sign,L.lower]++L.r++L.y).toFinset := by
  have w := BalancedCleanup.widths L.toCircuit.toLayout hw.1
  have rr := (rotate_wires L.r).2
  have cs := signComplement_wires_subset L.sign L.y
  have cl := signComplement_wires_subset L.lower L.y
  intro q hq
  simp only [view,wires_append,Finset.mem_union,or_assoc] at hq
  rcases hq with hq|hq|hq|hq|hq
  · rw [rr,if_neg (by omega)] at hq
    simp only [List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at hq ⊢
    tauto
  · simp only [wires,Instr.wires,Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,
      Finset.notMem_empty,or_false] at hq
    simp only [BalancedCleanup.Layout.r,BalancedCleanup.Layout.low,List.mem_toFinset,
      List.mem_append,List.mem_cons,List.not_mem_nil,or_false]
    tauto
  · have h := cs hq
    simp only [List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at h ⊢
    tauto
  · have h := cl hq
    simp only [List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at h ⊢
    tauto
  · simp only [wires,Instr.wires,Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,
      Finset.notMem_empty,or_false] at hq
    simp only [BalancedCleanup.Layout.y,List.mem_toFinset,List.mem_append,List.mem_cons,
      List.not_mem_nil,or_false]
    tauto

theorem view_parity_away (L : Layout) (hw : L.Widths) (hn : L.wires.Nodup) :
    L.parity∉wires (view L) := by
  have flags := List.nodup_cons.mp (L.flagsND hn)
  have away := L.flagAway hn L.parity (by simp)
  intro h
  have m := view_support L hw h
  simp only [List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at m
  have ns : L.parity≠L.sign := fun e => flags.1 (by simp [e])
  have nl : L.parity≠L.lower := fun e => flags.1 (by simp [e])
  have nr : L.parity∉L.r := fun h => away (by simp [h])
  have ny : L.parity∉L.y := fun h => away (by simp [h])
  tauto

end ECDSAAdd.Arithmetic.BalancedCleanupOffset
#print axioms ECDSAAdd.Arithmetic.BalancedCleanupOffset.view_support
#print axioms ECDSAAdd.Arithmetic.BalancedCleanupOffset.view_parity_away
