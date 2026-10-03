import ECDSAAdd.Arithmetic.PointDialogProgram
import ECDSAAdd.Arithmetic.PointInPlaceSupport
import ECDSAAdd.Arithmetic.SkywalkControlledPort

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

attribute [local irreducible] pointSkywalkArithmetic skywalkArithmetic skywalkControlledProgram

theorem dialogPort_wires (L : ControlledPointLayout) (hw : L.Widths) :
    L.dialogPort.wires.toFinset=(L.core.generic::L.point.x++L.point.y++L.dialogPool).toFinset := by
  have hp := DialogLayout.fromPool_wires_perm L.core.poolWire L.core.generic L.point.x L.point.y
    hw.inputX hw.inputY
  rw [L.core.pool_prefix hw 2613 (by omega)] at hp
  exact List.toFinset_eq_of_perm _ _ hp

theorem pointDialogGeneric_wires (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) :
    wires (pointDialogGeneric L cx cy)⊆(L.core.generic::L.point.x++L.point.y++L.dialogPool).toFinset := by
  intro q
  contrapose!
  intro hnot
  simp only [List.mem_toFinset,List.mem_cons,List.mem_append,not_or] at hnot
  rcases hnot with ⟨⟨⟨ng,nx⟩,ny⟩,nb⟩
  have ntake (n : Nat) : q∉L.dialogPool.take n := fun h=>nb (List.take_subset _ _ h)
  have nslice (j n : Nat) : q∉(L.dialogPool.drop j).take n :=
    fun h=>nb (List.drop_subset _ _ (List.take_subset _ _ h))
  have nbit (i : Nat) (hi : i<2613) : q≠L.core.poolWire i := by
    intro he
    have hh : L.core.poolWire i∈L.dialogPool.take i++[L.core.poolWire i] := by simp
    rw [L.dialogBit_prefix hw i hi] at hh
    exact nb (he ▸ List.take_subset _ _ hh)
  have nConst (r : List Wire) (nr : q∉r) : q∉(L.dialogUnary r).wires := by
    simp [dialogUnary,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      ModAddCoreLayout.z,ModAddCoreLayout.work,nr,ntake,nslice,nbit]
  have nNeg : q∉L.dialogNegate.wires := by
    have ntail : q∉L.dialogPool.tail.take 256 := by simpa only [List.drop_one] using nslice 1 256
    simp [dialogNegate,dialogUnary,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      ModAddCoreLayout.z,ModAddCoreLayout.work,nx,ntail,nslice,nbit]
  have nMasked (r : List Wire) (v : Nat) (nr : q∉r) : q∉wires (maskedConstant L.core.generic r v) := by
    intro h; have hh := maskedConstant_wires_subset L.core.generic r v h
    simp [ng,nr] at hh
  have nCA (r : List Wire) (nr : q∉r) (hr : r.length=256) (v : Fp) :
      q∉wires (pointDialogConstantAdd L r v) := by
    have nm := nConst r nr
    have na : q∉(L.dialogUnary r).a := fun h=>nm (by simp [ModInPlaceLayout.wires,h])
    simp only [pointDialogConstantAdd,wires_append,Finset.mem_union,not_or]
    exact ⟨⟨nMasked _ _ na,(modPrograms_not_mem q L.core.generic ng _ (L.dialogUnary_widths hw r hr) nm).1⟩,
      nMasked _ _ na⟩
  have nswap : q∉wires (swapRegisters L.core.generic L.point.x L.dialogNegate.low) := by
    intro h
    have hh := swapRegisters_wires _ _ _ (hw.inputX.trans (L.dialogNegate_widths hw).core.low.symm) h
    have nl : q∉L.dialogNegate.low := fun h=>nNeg
      (by simp [ModInPlaceLayout.wires,ModInPlaceLayout.z,ModAddCoreLayout.z,h])
    change q∈(L.core.generic::L.point.x++L.dialogNegate.low).toFinset at hh
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,nx,nl,or_false] at hh
  have nSquareFirst : q∉wires (pointDialogSquare L) := by
    intro h
    have hh := pointStreamedSquare_support L hw hn h
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,ny,nx,
      ntake 776,or_false] at hh
  have nneg := modPrograms_not_mem q L.core.generic ng L.dialogNegate (L.dialogNegate_widths hw) nNeg
  have nSmall : q∉wireBlock L.core.poolWire 0 2058 := by
    rw [L.core.pool_prefix hw 2058 (by omega)]
    have he : L.core.pool.take 2058=L.dialogPool.take 2058 := by
      simp only [dialogPool,List.take_take,Nat.min_eq_left (show 2058≤2613 by omega)]
    rw [he]
    exact ntake 2058
  have nArith (multiply : Bool) : q∉wires (pointSkywalkArithmetic L multiply) := by
    intro hmem
    have hh := pointSkywalkArithmetic_support L hw hn multiply hmem
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,nx,ny,nSmall,
      or_false] at hh
  have nD := nArith false
  have nU := nArith true
  simp only [pointDialogGeneric,pointDialogNegate,wires_append,Finset.mem_union,
    nCA L.point.x nx hw.inputX _,nCA L.point.y ny hw.inputY _,nD,nU,nSquareFirst,
    nneg.2.2.1,nneg.2.2.2,nswap,false_or,not_false_eq_true]
theorem pointDialogGeneric_small_wires (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) :
    wires (pointDialogGeneric L cx cy)⊆(L.core.generic::L.point.x++L.point.y++L.dialogPool.take 2058).toFinset := by
  intro q
  contrapose!
  intro hnot
  simp only [List.mem_toFinset,List.mem_cons,List.mem_append,not_or] at hnot
  rcases hnot with ⟨⟨⟨ng,nx⟩,ny⟩,nb⟩
  have ntake (n : Nat) (hn : n≤2058) : q∉L.dialogPool.take n := by
    intro hm
    have he : (L.dialogPool.take 2058).take n=L.dialogPool.take n := by
      rw [List.take_take,Nat.min_eq_left hn]
    rw [←he] at hm
    exact nb (List.take_subset _ _ hm)
  have nslice (j n : Nat) (hj : j+n≤2058) : q∉(L.dialogPool.drop j).take n := by
    intro hm
    apply ntake (j+n) hj
    rw [List.take_add]
    exact List.mem_append_right _ hm
  have nbit (i : Nat) (hi : i<2058) : q≠L.core.poolWire i := by
    intro he
    have hh : L.core.poolWire i∈L.dialogPool.take i++[L.core.poolWire i] := by simp
    rw [L.dialogBit_prefix hw i (by omega)] at hh
    exact ntake (i+1) (by omega) (he ▸ hh)
  have nConst (r : List Wire) (nr : q∉r) : q∉(L.dialogUnary r).wires := by
    simp [dialogUnary,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      ModAddCoreLayout.z,ModAddCoreLayout.work,nr,ntake,nslice,nbit]
  have nNeg : q∉L.dialogNegate.wires := by
    have ntail : q∉L.dialogPool.tail.take 256 := by simpa only [List.drop_one] using nslice 1 256 (by omega)
    simp [dialogNegate,dialogUnary,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      ModAddCoreLayout.z,ModAddCoreLayout.work,nx,ntail,nslice,nbit]
  have nMasked (r : List Wire) (v : Nat) (nr : q∉r) : q∉wires (maskedConstant L.core.generic r v) := by
    intro h; have hh := maskedConstant_wires_subset L.core.generic r v h
    simp [ng,nr] at hh
  have nCA (r : List Wire) (nr : q∉r) (hr : r.length=256) (v : Fp) :
      q∉wires (pointDialogConstantAdd L r v) := by
    have nm := nConst r nr
    have na : q∉(L.dialogUnary r).a := fun h=>nm (by simp [ModInPlaceLayout.wires,h])
    simp only [pointDialogConstantAdd,wires_append,Finset.mem_union,not_or]
    exact ⟨⟨nMasked _ _ na,(modPrograms_not_mem q L.core.generic ng _ (L.dialogUnary_widths hw r hr) nm).1⟩,
      nMasked _ _ na⟩
  have nswap : q∉wires (swapRegisters L.core.generic L.point.x L.dialogNegate.low) := by
    intro h
    have hh := swapRegisters_wires _ _ _ (hw.inputX.trans (L.dialogNegate_widths hw).core.low.symm) h
    have nl : q∉L.dialogNegate.low := fun h=>nNeg
      (by simp [ModInPlaceLayout.wires,ModInPlaceLayout.z,ModAddCoreLayout.z,h])
    change q∈(L.core.generic::L.point.x++L.dialogNegate.low).toFinset at hh
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,nx,nl,or_false] at hh
  have nSquare : q∉wires (pointDialogSquare L) := by
    intro h
    have hh := pointStreamedSquare_support L hw hn h
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,ny,nx,
      ntake 776 (by omega),or_false] at hh
  have nneg := modPrograms_not_mem q L.core.generic ng L.dialogNegate (L.dialogNegate_widths hw) nNeg
  have nSmall : q∉wireBlock L.core.poolWire 0 2058 := by
    rw [L.core.pool_prefix hw 2058 (by omega)]
    have he : L.core.pool.take 2058=L.dialogPool.take 2058 := by
      simp only [dialogPool,List.take_take,Nat.min_eq_left (show 2058≤2613 by omega)]
    rw [he]
    exact ntake 2058 (by omega)
  have nArith (multiply : Bool) : q∉wires (pointSkywalkArithmetic L multiply) := by
    intro hmem
    have hh := pointSkywalkArithmetic_support L hw hn multiply hmem
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,nx,ny,nSmall,
      or_false] at hh
  have nD := nArith false
  have nU := nArith true
  simp only [pointDialogGeneric,pointDialogNegate,wires_append,Finset.mem_union,
    nCA L.point.x nx hw.inputX _,nCA L.point.y ny hw.inputY _,nD,nU,nSquare,
    nneg.2.2.1,nneg.2.2.2,nswap,false_or,not_false_eq_true]

end ECDSAAdd.Arithmetic
