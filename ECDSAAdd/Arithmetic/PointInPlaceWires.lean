import ECDSAAdd.Arithmetic.PointInPlaceFiniteSpec

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

private theorem borrow_product_cover (L : ControlledPointLayout) (hw : L.Widths) :
    L.inPlaceBorrow ⊆ L.inPlaceSquare.y ++ L.inPlaceSquare.out ++
      L.inPlaceSquare.work ++ L.inPlaceMultiply.work := by
  have small : L.inPlaceBorrow.take 1829 ⊆ L.inPlaceSquare.y ++ L.inPlaceMultiply.work := by
    rw [← L.inPlaceMultiply_borrow hw]
    intro q hq
    rcases List.mem_append.mp hq with hq|hq
    · apply List.mem_append_left
      have h0 := L.inPlaceBit_prefix hw 0 (by omega)
      have h1 := L.inPlaceBit_prefix hw 1 (by omega)
      have he : [L.inPlaceBit 0,L.inPlaceBit 1]=L.inPlaceBorrow.take 2 := by
        rw [← h1,← h0]; rfl
      exact (List.take_sublist_take_left (by omega : 2≤256)).subset (he ▸ hq)
    · exact List.mem_append_right _ hq
  have bit (i : Nat) (hi : i<1829) : L.inPlaceBit i∈L.inPlaceBorrow.take 1829 := by
    have hp := L.inPlaceBit_prefix hw i (by omega)
    exact (List.take_sublist_take_left (by omega : i+1≤1829)).subset
      (hp ▸ List.mem_append_right _ (by simp))
  intro q hq
  have hs := L.inPlaceSquare_borrow hw
  rw [List.take_of_length_le (by rw [L.inPlaceBorrow_length hw])] at hs
  rw [← hs] at hq
  have h256 := small (bit 256 (by omega))
  have h257 := small (bit 257 (by omega))
  simp only [List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at hq h256 h257 ⊢
  clear small bit hs hw
  grind only

/-- 普通分支恰好触及坐标、斜率、g/e/q及求逆实际核心。 -/
theorem pointInPlaceGeneric_wires (L : ControlledPointLayout) (hw : L.Widths) (cx cy k : Fp) :
    wires (pointInPlaceGeneric L cx cy k)=(pointInPlaceCoreWires L).toFinset := by
  apply Finset.Subset.antisymm (pointInPlaceGeneric_wires_subset L hw cx cy k)
  have hd := (divide_wires (L.inPlaceDivide L.core.generic L.point.x L.point.y)
    (L.inPlaceDivide_widths hw _ _ _ hw.inputX hw.inputY)).1
  have hs := (divide_wires (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)
    (L.inPlaceDivide_widths hw _ _ _ hw.inputX hw.inputY)).2
  have he := equalConstant_wires L.core.generic L.core.equalX L.inPlaceXZero 0
  have hm := (montAdapter_wires L.inPlaceMultiply p (L.inPlaceMultiply_widths hw)).2.2
  have hsq := (montAdapter_wires L.inPlaceSquare p (L.inPlaceSquare_widths hw)).2.2
  intro q
  have hb := @borrow_product_cover L hw q
  have hfirst : q∈L.inPlaceInverse.first.usedTapeWires L.inPlaceInverse.records →
      q∈L.inPlaceInverse.compactCoreWires := List.mem_append_left _
  simp only [pointInPlaceGeneric,pointInPlaceClearSlope,wires_append,hd,hs,he,hm,hsq]
  simp only [Finset.mem_union,pointInPlaceCoreWires,DivideLayout.usedWires,inPlaceDivide,
    List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false,
    inPlaceOuterCoreWires] at hb ⊢
  clear hd hs he hm hsq hw
  grind only

/-- 保留布局分配编号，但仅列实际执行门列的支持。 -/
def ControlledPointLayout.inPlaceUsedWires (L : ControlledPointLayout) : List Wire :=
  PointAddLayout.pointWires L.point++[L.control]++L.inPlaceSlope++L.inPlaceFlags++L.inPlaceOuterCoreWires

private theorem equalPoint_wires (L : ControlledPointLayout) (hw : L.Widths) (c t : Wire) (C : Point) :
    wires (equalConstant c t L.inPlacePointZero (pointCode C))=
      (c::t::PointAddLayout.pointWires L.point++L.inPlaceBorrow.take 513).toFinset := by
  rw [equalConstant_wires]
  have hp := zeroPorts_perm (PointAddLayout.pointWires L.point) (L.inPlaceBorrow.take 513)
    (by simp [PointAddLayout.pointWires,show L.point.x.length=256 from hw.inputX,
      show L.point.y.length=256 from hw.inputY,L.inPlaceBorrow_length hw])
  simp only [inPlacePointZero,List.toFinset_cons]
  rw [List.toFinset_eq_of_perm _ _ hp]
  simp only [List.cons_append,List.toFinset_cons]

private theorem genericFlag_wires (L : ControlledPointLayout) : wires (pointInPlaceGenericFlag L)=
    [L.control,L.infinitySelect,L.doubleSelect,L.genericSelect,L.core.generic].toFinset := by
  ext q
  simp only [pointInPlaceGenericFlag,wires,Instr.wires,Finset.mem_union,Finset.mem_insert,
    Finset.mem_singleton,Finset.notMem_empty,List.mem_toFinset,List.mem_cons,List.not_mem_nil,or_false]
  tauto

/-- 有限常量点加的完整实际支持等式，包括条件false时仍执行的门列。 -/
theorem pointInPlaceFinite_wires (L : ControlledPointLayout) (hw : L.Widths) (C : Point) (cx cy : Fp) :
    wires (pointInPlaceFinite L C cx cy)=L.inPlaceUsedWires.toFinset := by
  have hG := pointInPlaceGeneric_wires L hw cx cy (exceptionalSlope C)
  have hE := equalPoint_wires L hw
  have hB : (L.inPlaceBorrow.take 513).toFinset⊆L.inPlaceUsedWires.toFinset := by
    intro q hq
    have hh := L.inPlaceBorrow_used_subset ((List.take_sublist _ _).subset (List.mem_toFinset.mp hq))
    simp [inPlaceUsedWires,hh]
  have hM (c : Wire) (hc : c∈L.inPlaceFlags) (P : Point) :
      wires (maskedPointConstant c L.point P)⊆L.inPlaceUsedWires.toFinset := by
    apply (maskedPointConstant_support _ _ _).trans
    intro q hq
    simp only [List.mem_toFinset,List.mem_cons] at hq
    rcases hq with rfl|hq
    · simp [inPlaceUsedWires,hc]
    · simp [inPlaceUsedWires,hq]
  have hO := hM L.infinitySelect (by simp [inPlaceFlags]) C
  have hD := hM L.doubleSelect (by simp [inPlaceFlags]) C
  have hDD := hM L.doubleSelect (by simp [inPlaceFlags]) (C+C)
  have hI := hM L.genericSelect (by simp [inPlaceFlags]) (-C)
  have hH : wires (pointInPlaceDoubleEnable L cy)⊆[L.control,L.core.double].toFinset := by
    by_cases hh : cy≠-cy <;> simp [pointInPlaceDoubleEnable,hh,wires,Instr.wires]
  have hF := genericFlag_wires L
  rw [pointInPlaceFinite]
  simp only [wires_append,hG,hE,hF,pointInPlaceCorners,wires_append]
  apply Finset.Subset.antisymm
  · intro q
    have ho := @hO q
    have hd := @hD q
    have hdd := @hDD q
    have hi := @hI q
    have hb := @hB q
    have hh := @hH q
    simp only [Finset.mem_union,List.mem_toFinset,inPlaceUsedWires,pointInPlaceCoreWires,
      inPlaceFlags,PointAddLayout.pointWires,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at ho hd hdd hi hb hh ⊢
    clear hG hE hB hM hO hD hDD hI hH hF hw
    grind only
  · intro q
    simp only [Finset.mem_union,List.mem_toFinset,inPlaceUsedWires,pointInPlaceCoreWires,
      inPlaceFlags,PointAddLayout.pointWires,List.mem_append,List.mem_cons,List.not_mem_nil,or_false]
    clear hG hE hB hM hO hD hDD hI hH hF hw
    grind only

end ECDSAAdd.Arithmetic
