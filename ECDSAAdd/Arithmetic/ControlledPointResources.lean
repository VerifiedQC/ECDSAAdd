import ECDSAAdd.Arithmetic.ControlledPointSupport

namespace ECDSAAdd.Arithmetic
open Secp256k1

theorem controlledPointOutput_counts (L : ControlledPointLayout) (h : L.Widths) (C : Point) :
    toffoliCount (controlledPointOutput L C)=518 ∧ measurementCount (controlledPointOutput L C)=0 := by
  simp only [controlledPointOutput,toffoliCount_append,measurementCount_append,
    (pointSelectors_counts L).1,(pointSelectors_counts L).2,
    (selectedPointOutput_counts L h C).1,(selectedPointOutput_counts L h C).2]
  exact ⟨trivial,trivial⟩

theorem controlledPointAddOut_finite_resources (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy) :
    toffoliCount (controlledPointAddOut L (.some hc))=28041370 ∧
    measurementCount (controlledPointAddOut L (.some hc))=16453776 ∧
    qubitCount (controlledPointAddOut L (.some hc))=74024 := by
  have cc := pointCandidate_counts L.core h (L.core_nodup hn) cx cy
  have cf := pointFlags_counts L.core h cx cy
  have co := controlledPointOutput_counts L h (.some hc)
  refine ⟨?_,?_,?_⟩
  · simp only [controlledPointAddOut,toffoliCount_append,cc.1.1,cc.2.1,cf.1.1,cf.2.1,co.1]
  · simp only [controlledPointAddOut,measurementCount_append,cc.1.2,cc.2.2,cf.1.2,cf.2.2,co.2]
  · rw [qubitCount,controlledPointAddOut_support L h cx cy hc,List.toFinset_card_of_nodup (L.used_nodup hn)]
    simp [ControlledPointLayout.usedWires,ControlledPointLayout.extras,ControlledPointLayout.selectors,L.core.usedWires_length h]

theorem controlledPointSwap_counts (c : Wire) (a b : PointReg)
    (hx : a.x.length=b.x.length) (hy : a.y.length=b.y.length) :
    toffoliCount (controlledPointSwap c a b)=a.x.length+a.y.length+1 ∧
    measurementCount (controlledPointSwap c a b)=0 := by
  simp [controlledPointSwap,cswap,swapRegisters,toffoliCount_append,measurementCount_append,
    toffoliCount,measurementCount,(copyRegister_counts none b.x a.x hx.symm).1,
    (copyRegister_counts none b.x a.x hx.symm).2,(copyRegister_counts (some c) a.x b.x hx).1,
    (copyRegister_counts (some c) a.x b.x hx).2,(copyRegister_counts none b.y a.y hy.symm).1,
    (copyRegister_counts none b.y a.y hy.symm).2,(copyRegister_counts (some c) a.y b.y hy).1,
    (copyRegister_counts (some c) a.y b.y hy).2,Nat.add_comm]

theorem controlledPointSwap_subset (L : ControlledPointLayout) (h : L.Widths) :
    wires (controlledPointSwap L.control L.point L.temporary)⊆L.usedWires.toFinset := by
  have hx := swapRegisters_wires L.control L.core.input.x L.core.output.x (h.inputX.trans h.outputX.symm)
  have hy := swapRegisters_wires L.control L.core.input.y L.core.output.y (h.inputY.trans h.outputY.symm)
  have hbase : (L.control::(PointAddLayout.pointWires L.core.input++PointAddLayout.pointWires L.core.output)).toFinset ⊆
      L.usedWires.toFinset := by
    intro w hw
    simp only [ControlledPointLayout.usedWires,ControlledPointLayout.extras,PointAddLayout.usedWires,
      PointAddLayout.candidateUsed,PointAddLayout.boundaryWires,PointAddLayout.extendedX,PointAddLayout.extendedY,
      PointAddLayout.pointWires,List.mem_toFinset,List.mem_cons,List.mem_append,List.not_mem_nil,or_false] at hw ⊢
    rcases hw with hw|(((hw|hw)|hw)|((hw|hw)|hw))
    all_goals simp_all only [true_or,or_true]
  apply Finset.Subset.trans ?_ hbase
  intro w hw
  simp only [controlledPointSwap,ControlledPointLayout.point,ControlledPointLayout.temporary,wires_append,Finset.mem_union] at hw
  rcases hw with (hw|hw)|hw
  · simp [cswap,wires,Instr.wires] at hw
    simp only [List.mem_toFinset,PointAddLayout.pointWires,List.mem_cons,List.mem_append]
    tauto
  · have hh := hx hw
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,PointAddLayout.pointWires] at hh ⊢; tauto
  · have hh := hy hw
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,PointAddLayout.pointWires] at hh ⊢; tauto

/-- 有限常量两次前向受控 XOR 调用与 513 位交换的同程序精确成本。 -/
theorem controlledPointAdd_finite_resources (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy) :
    toffoliCount (controlledPointAdd L (.some hc))=56083253 ∧
    measurementCount (controlledPointAdd L (.some hc))=32907552 ∧
    qubitCount (controlledPointAdd L (.some hc))=74024 := by
  have hfirst := controlledPointAddOut_finite_resources L h hn cx cy hc
  have hnext := controlledPointAddOut_finite_resources L h hn _ _ ((WeierstrassCurve.Affine.nonsingular_neg ..).mpr hc)
  have snext := controlledPointAddOut_support L h _ _ ((WeierstrassCurve.Affine.nonsingular_neg ..).mpr hc)
  have hs := controlledPointSwap_counts L.control L.core.input L.core.output (h.inputX.trans h.outputX.symm) (h.inputY.trans h.outputY.symm)
  refine ⟨?_,?_,?_⟩
  · rw [controlledPointAdd,toffoliCount_append,toffoliCount_append,WeierstrassCurve.Affine.Point.neg_some,
      hfirst.1,hnext.1,ControlledPointLayout.point,ControlledPointLayout.temporary,hs.1,h.inputX,h.inputY]
  · rw [controlledPointAdd,measurementCount_append,measurementCount_append,WeierstrassCurve.Affine.Point.neg_some,
      hfirst.2.1,hnext.2.1,ControlledPointLayout.point,ControlledPointLayout.temporary,hs.2]
  · rw [qubitCount,controlledPointAdd,wires_append,wires_append,WeierstrassCurve.Affine.Point.neg_some,
      controlledPointAddOut_support L h cx cy hc,snext,
      Finset.union_eq_left.mpr (controlledPointSwap_subset L h),Finset.union_self,
      List.toFinset_card_of_nodup (L.used_nodup hn)]
    simp [ControlledPointLayout.usedWires,ControlledPointLayout.extras,ControlledPointLayout.selectors,L.core.usedWires_length h]

/-- C=O 在构造期为空程序，故实际门数、测量和线路集合均为空。 -/
theorem controlledPointAdd_zero_resources (L : ControlledPointLayout) :
    toffoliCount (controlledPointAdd L 0)=0 ∧ measurementCount (controlledPointAdd L 0)=0 ∧
    qubitCount (controlledPointAdd L 0)=0 := by
  simp [controlledPointAdd,toffoliCount,measurementCount,qubitCount,wires]

end ECDSAAdd.Arithmetic
