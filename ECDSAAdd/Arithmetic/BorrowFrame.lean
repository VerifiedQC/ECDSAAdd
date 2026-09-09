import ECDSAAdd.Arithmetic.Borrow

namespace ECDSAAdd.Arithmetic

theorem constantBorrowXor_wires (L : AdderLayout) (high target : Wire) (K : Nat)
    (hh : high∈L.out) : wires (constantBorrowXor L high target K)=(target::L.wires).toFinset := by
  have hx := xorConstant_wires_subset L.y K
  have hy : wires (xorConstant L.y K)⊆L.wires.toFinset := fun w hw =>
    List.mem_toFinset.mpr (L.reg_subset.2.1 (List.mem_toFinset.mp (hx hw)))
  have hh' : high∈L.wires.toFinset := List.mem_toFinset.mpr (L.reg_subset.2.2.1 hh)
  have hs : wires (sub L)=L.wires.toFinset := rippleSubtractor_wires L.bits L.cin
  have hc : wires [.CX high target]={high,target} := by simp [wires,Instr.wires]
  rw [constantBorrowXor,borrowXor,wires_append,wires_append,wires_append,wires_append,hs,hc]
  ext w
  simp only [Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,List.mem_toFinset,List.mem_cons]
  have hyw : w∈wires (xorConstant L.y K) → w∈L.wires := fun h => List.mem_toFinset.mp (hy h)
  have hhw : w=high → w∈L.wires := fun h => h ▸ L.reg_subset.2.2.1 hh
  tauto

theorem counterActiveXor_wires (L : AdderLayout) (high target : Wire) (i : Nat)
    (hh : high∈L.out) : wires (counterActiveXor L high target i)=(target::L.wires).toFinset := by
  rw [counterActiveXor,wires_append,constantBorrowXor_wires L high target (i+1) hh]
  simp [wires,Instr.wires]

/-- 活动比较只翻转 target；所有计数与比较工作线路逐线恢复。 -/
theorem counterActiveXor_frame (L : AdderLayout) (low : List Wire) (high target : Wire)
    (hnd : (target::L.wires).Nodup) (hout : L.out=low++[high]) (hw : L.width=10)
    (i K : Nat) (hi : i<512) (hk : K≤512) (T : Bool) (s : State) (m : List Bool)
    (ht : s.basis target=T) (hx : regValue L.x s.basis=K) (hy : regValue L.y s.basis=0)
    (hc : s.basis L.cin=false) (ho : regValue L.out s.basis=0) (hcarry : regValue L.carry s.basis=0) :
    ∀ w, w≠target → (run (counterActiveXor L high target i) m s).basis w=s.basis w := by
  obtain ⟨_,hv⟩ := counterActiveXor_spec L low high target hnd hout hw K i T hk hi s m
    ⟨⟨⟨⟨⟨ht,hx⟩,hy⟩,hc⟩,ho⟩,hcarry⟩
  have hhigh : high∈L.out := by rw [hout]; simp
  intro w hwt
  by_cases hm : w∈L.wires
  · have hh := L.interface_perm.mem_iff.mpr hm
    simp only [List.mem_append,List.mem_cons] at hh
    rcases hh with ((hxm | hym) | hom) | hcm | hcarrym
    · exact (regValue_eq_iff _ _ _).mp (hv.1.1.1.1.2.trans hx.symm) w hxm
    · exact (regValue_eq_iff _ _ _).mp (hv.1.1.1.2.trans hy.symm) w hym
    · exact (regValue_eq_iff _ _ _).mp (hv.1.2.trans ho.symm) w hom
    · subst w; exact hv.1.1.2.trans hc.symm
    · exact (regValue_eq_iff _ _ _).mp (hv.2.trans hcarry.symm) w hcarrym
  · apply run_preserves_outside
    rw [counterActiveXor_wires L high target i hhigh]
    simpa using (show w≠target ∧ w∉L.wires from ⟨hwt,hm⟩)

end ECDSAAdd.Arithmetic
