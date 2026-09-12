import ECDSAAdd.Arithmetic.PointInPlaceGeneric

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout

/-- 普通分支的语法支持上界，仅计入实际使用的求逆核心。 -/
def pointInPlaceCoreWires (L : ControlledPointLayout) : List Wire :=
  L.point.x++L.point.y++L.inPlaceSlope++[L.core.generic,L.core.equalX,L.core.equalNegY]++L.inPlaceInverse.usedCoreWires


theorem ControlledPointLayout.inPlaceBorrow_used_subset (L : ControlledPointLayout) :
    L.inPlaceBorrow ⊆ L.inPlaceInverse.usedCoreWires := by
  intro q hq
  simp only [inPlaceBorrow,List.mem_append] at hq
  simp only [InverseLoopLayout.usedCoreWires,InverseLoopLayout.extra,List.mem_append]
  rcases hq with ht|ha
  · exact Or.inr (Or.inl (Or.inr ht))
  · exact Or.inr (Or.inr ha)


private theorem modPrograms_not_mem (q c : Wire) (ng : q≠c) (M : ModInPlaceLayout) (hM : M.Widths 256) (hnM : q∉M.wires) :
      q∉wires (modAddInPlace M p) ∧ q∉wires (modSubInPlace M p) ∧
      q∉wires (controlledModAdd c M p) ∧ q∉wires (controlledModSub c M p) := by
    have hm : q∉M.maskedCore.wires := by
      simp only [ModInPlaceLayout.wires,ModInPlaceLayout.work,ModInPlaceLayout.z,
        ModAddCoreLayout.z,ModAddCoreLayout.work,List.mem_append,List.mem_cons,not_or] at hnM
      simp only [ModInPlaceLayout.maskedCore,ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,
        List.mem_append,List.mem_cons]
      grind only
    have hc : q∉M.toModAddCoreLayout.wires := by
      simp only [ModInPlaceLayout.wires,ModInPlaceLayout.work,ModInPlaceLayout.z,
        ModAddCoreLayout.wires,List.mem_append,not_or] at hnM ⊢
      grind only
    have ha : q∉M.a := fun h => hnM (by simp [ModInPlaceLayout.wires,h])
    have hat : q∉M.a.take 256 := fun h => ha ((List.take_sublist _ _).subset h)
    rw [modAddInPlace,modAddCore_wires M.toModAddCoreLayout 256 p hM.core (by omega),
      modSubInPlace_wires M 256 p hM (by omega),controlledModAdd_wires _ M 256 p hM (by omega),
      controlledModSub_wires _ M 256 p hM (by omega)]
    simp [ng,hc,hm,ha,hat]

private theorem squareParts (q : Wire) (M : MulInPlaceLayout) (hnM : q∉M.wires) :
      q∉(M.x.take 256++M.unary.core.wires++M.y) ∧
      q∉(M.x++M.unary.core.wires++[M.unary.flag]++M.y) := by
    have nx' : q∉M.x := fun h => hnM (by simp [MulInPlaceLayout.wires,h])
    have nt : q∉M.x.take 256 := fun h => nx' ((List.take_sublist _ _).subset h)
    simp only [MulInPlaceLayout.wires,MulInPlaceLayout.acc,MulInPlaceLayout.work,ModUnaryLayout.work,
      ModUnaryLayout.core,ModUnaryLayout.z,ModAddCoreLayout.work,List.mem_append,List.mem_cons,not_or] at hnM
    simp only [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,
      List.mem_append,List.mem_cons]
    grind only

private theorem zero_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (ng : q≠L.core.generic) (ne : q≠L.core.equalX) (nx : q∉L.point.x)
    (ntake : ∀ n,q∉L.inPlaceBorrow.take n) : q∉wires (equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0) := by
    rw [equalConstant_wires]
    have hp := zeroPorts_perm L.point.x (L.inPlaceBorrow.take 256)
      (by rw [show L.point.x.length=256 from hw.inputX]; simp [L.inPlaceBorrow_length hw])
    have he := List.toFinset_eq_of_perm _ _ hp
    simp only [inPlaceXZero]
    rw [List.toFinset_cons,List.toFinset_cons,he]
    simp [ng,ne,nx,ntake]

private theorem divide_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (nx : q∉L.point.x) (ny : q∉L.point.y) (na : q∉L.inPlaceSlope) (ni : q∉L.inPlaceInverse.usedCoreWires)
    (c : Wire) (nc : q≠c) :
    q∉wires (divideAdd (L.inPlaceDivide c L.point.x L.point.y)) ∧
    q∉wires (divideSub (L.inPlaceDivide c L.point.x L.point.y)) := by
  have hd := divide_wires (L.inPlaceDivide c L.point.x L.point.y)
    (L.inPlaceDivide_widths hw c _ _ hw.inputX hw.inputY)
  simp only [hd.1,hd.2]
  simp [DivideLayout.usedWires,inPlaceDivide,nc,nx,ny,na,ni]

private theorem views_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (hnot : q∉(pointInPlaceCoreWires L).toFinset) :
    q∉L.inPlaceBorrow ∧ q∉L.inPlaceMultiply.wires ∧ q∉L.inPlaceSquare.wires ∧
    q∉L.inPlaceSquareSub.wires ∧ q∉L.inPlaceNegate.wires ∧
    (∀ r : List Wire,q∉r → q∉(L.inPlaceConstant r).wires) := by
  have hn := hnot
  simp only [pointInPlaceCoreWires,List.mem_toFinset,List.mem_append,List.mem_cons,not_or] at hn
  rcases hn with ⟨⟨⟨⟨nx,ny⟩,na⟩,ng,ne,nq,_⟩,ni⟩
  have nb : q∉L.inPlaceBorrow := fun h => ni (L.inPlaceBorrow_used_subset h)
  have nslice (j n : Nat) : q∉(L.inPlaceBorrow.drop j).take n := by
    intro h; exact nb ((List.drop_sublist _ _).subset ((List.take_sublist _ _).subset h))
  have ntake (n : Nat) : q∉L.inPlaceBorrow.take n := fun h => nb ((List.take_sublist _ _).subset h)
  have nbit (j : Nat) (hj : j<2315) : q≠L.inPlaceBit j := by
    intro he
    apply nb
    rw [he,inPlaceBit,List.getD_eq_getElem _ _ (by rw [L.inPlaceBorrow_length hw]; exact hj)]
    exact List.getElem_mem _
  have nM : q∉L.inPlaceMultiply.wires := by
    simp [inPlaceMultiply,MulAdapterLayout.wires,MulAdapterLayout.work,MulAdapterLayout.product,
      inPlaceUnary,ModUnaryLayout.z,ModUnaryLayout.work,ModUnaryLayout.core,ModAddCoreLayout.work,
      nx,ny,na,nslice,nbit]
  have nS : q∉L.inPlaceSquare.wires := by
    simp [inPlaceSquare,MulInPlaceLayout.wires,MulInPlaceLayout.acc,MulInPlaceLayout.work,
      inPlaceUnary,ModUnaryLayout.z,ModUnaryLayout.work,ModUnaryLayout.core,ModAddCoreLayout.work,
      na,nslice,ntake,nbit]
  have nT : q∉L.inPlaceSquareSub.wires := by
    simp [inPlaceSquareSub,inPlaceSquare,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      MulInPlaceLayout.acc,inPlaceUnary,ModUnaryLayout.z,ModUnaryLayout.core,ModAddCoreLayout.z,ModAddCoreLayout.work,
      nx,nslice,nbit]
  have ntail : q∉L.inPlaceBorrow.tail.take 256 := by simpa only [List.drop_one] using nslice 1 256
  have nN : q∉L.inPlaceNegate.wires := by
    simp [inPlaceNegate,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      inPlaceUnary,ModUnaryLayout.core,ModAddCoreLayout.z,ModAddCoreLayout.work,nx,nslice,ntail,nbit]
  have nConst (r : List Wire) (nr : q∉r) : q∉(L.inPlaceConstant r).wires := by
    simp [inPlaceConstant,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModInPlaceLayout.work,
      inPlaceUnary,ModUnaryLayout.core,ModAddCoreLayout.z,ModAddCoreLayout.work,nr,nslice,ntake,nbit]
  exact ⟨nb,nM,nS,nT,nN,nConst⟩

theorem pointInPlaceGeneric_wires_subset (L : ControlledPointLayout) (hw : L.Widths)
    (cx cy k : Fp) : wires (pointInPlaceGeneric L cx cy k) ⊆ (pointInPlaceCoreWires L).toFinset := by
  intro q
  contrapose!
  intro hnot
  have hn := hnot
  simp only [pointInPlaceCoreWires,List.mem_toFinset,List.mem_append,List.mem_cons,not_or] at hn
  rcases hn with ⟨⟨⟨⟨nx,ny⟩,na⟩,ng,ne,nq,_⟩,ni⟩
  obtain ⟨nb,nM,nS,nT,nN,nConst⟩ := views_not_mem L hw q hnot
  have ntake (n : Nat) : q∉L.inPlaceBorrow.take n := fun h => nb ((List.take_sublist _ _).subset h)
  have nDivide := divide_not_mem L hw q nx ny na ni
  have nEq := zero_not_mem L hw q ng ne nx ntake
  have nMasked (c : Wire) (r : List Wire) (v : Nat) (nc : q≠c) (nr : q∉r) : q∉wires (maskedConstant c r v) := by
    intro h
    have hh := maskedConstant_wires_subset c r v h
    simp [nc,nr] at hh
  have nCA (r : List Wire) (nr : q∉r) (hr : r.length=256) (v : Fp) : q∉wires (pointInPlaceConstantAdd L r v) := by
    have nm := nConst r nr
    have ha : q∉(L.inPlaceConstant r).a := fun h => nm (by simp [ModInPlaceLayout.wires,h])
    simp only [pointInPlaceConstantAdd,wires_append,Finset.mem_union,not_or]
    exact ⟨⟨nMasked _ _ _ ng ha,(modPrograms_not_mem q L.core.generic ng _ (L.inPlaceConstant_widths hw r hr) nm).1⟩,nMasked _ _ _ ng ha⟩
  have ncopy : q∉wires (copyRegister none L.inPlaceSlope L.inPlaceSquare.y) := by
    rw [copyRegister_wires _ _ _ ((L.inPlaceSlope_length hw).trans (L.inPlaceSquare_widths hw).y.symm)]
    split
    · simp
    · simp [inPlaceSquare,na,ntake]
  have nswap : q∉wires (swapRegisters L.core.generic L.point.x L.inPlaceNegate.low) := by
    intro h
    have h' := swapRegisters_wires _ _ _ (hw.inputX.trans (L.inPlaceNegate_widths hw).core.low.symm) h
    have nlow : q∉L.inPlaceNegate.low := fun hh => nN (by simp [ModInPlaceLayout.wires,ModInPlaceLayout.z,ModAddCoreLayout.z,hh])
    change q∈(L.core.generic::L.point.x++L.inPlaceNegate.low).toFinset at h'
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ng,nx,nlow,or_false] at h'
  have hmw : L.inPlaceMultiply.width=256 := by
    simp [MulAdapterLayout.width,inPlaceMultiply,inPlaceUnary,L.inPlaceBorrow_length hw]
  have hm := mulAdapter_wires L.inPlaceMultiply p (L.inPlaceMultiply_widths hw) (by rw [hmw]; omega)
  have hs := mulInPlace_wires L.inPlaceSquare 256 p (L.inPlaceSquare_widths hw) (by omega)
  have hsPart := squareParts q L.inPlaceSquare nS
  have hneg := modPrograms_not_mem q L.core.generic ng L.inPlaceNegate (L.inPlaceNegate_widths hw) nN
  have hsub := modPrograms_not_mem q L.core.generic ng L.inPlaceSquareSub (L.inPlaceSquareSub_widths hw) nT
  simp only [pointInPlaceGeneric,pointInPlaceClearSlope,pointInPlaceNegate,wires_append,Finset.mem_union,
    hm.2.1,hm.2.2,hs.1,hs.2,List.mem_toFinset]
  have nmg := (nDivide L.core.generic ng).1
  have nmq := (nDivide L.core.equalNegY nq).2
  have nmask := nMasked L.core.equalX L.inPlaceSlope k.val ne na
  have ncx v := nCA L.point.x nx hw.inputX v
  have ncy v := nCA L.point.y ny hw.inputY v
  have nCX : q∉wires [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] := by
    simp [wires,Instr.wires,ng,ne,nq]
  simp only [ncx _,ncy _,nmg,nmq,nM,hsPart.1,hsPart.2,ncopy,nEq,nmask,nCX,hneg.2.2.1,hneg.2.2.2,
    hsub.2.1,nswap,false_or,not_false_eq_true]

/-- 已恢复的λ/e/q及求逆工作位与语法支持上界共同给出完整逐线保持。 -/
private theorem generic_frame_values (L : ControlledPointLayout) (P : Program)
    (hP : wires P ⊆ (pointInPlaceCoreWires L).toFinset)
    (X Y X' Y' : Fp) (G : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceValues L X Y 0 G false false s.basis)
    (ho : PointInPlaceValues L X' Y' 0 G false false (run P m s).basis)
    (q : Wire) (hx : q∉L.point.x) (hy : q∉L.point.y) :
    (run P m s).basis q=s.basis q := by
  by_cases ha : q∈L.inPlaceSlope
  · exact (regValue_eq_iff _ _ _).mp (ho.slope.trans hi.slope.symm) q ha
  by_cases hg : q=L.core.generic
  · subst q; exact ho.generic.trans hi.generic.symm
  by_cases he : q=L.core.equalX
  · subst q; exact ho.equal.trans hi.equal.symm
  by_cases hq : q=L.core.equalNegY
  · subst q; exact ho.quotient.trans hi.quotient.symm
  by_cases hc : q∈L.inPlaceInverse.wires
  · exact (regValue_eq_iff _ _ _).mp (ho.clean.trans hi.clean.symm) q hc
  apply run_preserves_outside
  apply mt (@hP q)
  have hu : q∉L.inPlaceInverse.usedCoreWires := fun h => hc
    ((L.inPlaceDivide L.core.generic L.point.x L.point.y).inverse_used_subset h)
  simp [pointInPlaceCoreWires,hx,hy,ha,hg,he,hq,hu]

theorem pointInPlaceGeneric_frame (L : ControlledPointLayout) (hw : L.Widths) (cx cy k : Fp)
    (X Y X' Y' : Fp) (G : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceValues L X Y 0 G false false s.basis)
    (ho : PointInPlaceValues L X' Y' 0 G false false (run (pointInPlaceGeneric L cx cy k) m s).basis)
    (q : Wire) (hx : q∉L.point.x) (hy : q∉L.point.y) :
    (run (pointInPlaceGeneric L cx cy k) m s).basis q=s.basis q :=
  generic_frame_values L _ (pointInPlaceGeneric_wires_subset L hw cx cy k) X Y X' Y' G s m hi ho q hx hy

end ECDSAAdd.Arithmetic
