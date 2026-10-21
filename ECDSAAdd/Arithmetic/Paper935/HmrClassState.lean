import ECDSAAdd.Arithmetic.Paper935.HmrClassDelayed

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrAndAdvance_target_frame (gs : List HmrAndStage) (q : Wire)
    (outside : ∀g∈gs,q≠g.target) (s : BasisState) : hmrAndAdvance gs s q=s q := by
  induction gs generalizing s with
  | nil => rfl
  | cons g gs ih =>
    rw [hmrAndAdvance,ih (fun a ha => outside a (by simp [ha]))]
    simp only [HmrAndStage.advance,writeBit,Function.update_of_ne (outside g (by simp))]

theorem compileHmrClass_work_targets (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) :
    ∀g∈hmrClassChain mode (hmrAllocatedClassPorts mode inputs work),g.target∈work.toFinset := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have hw := (A.borrowMany_contract B _ work hc.2.2.2).1
  have mem (i : Nat) (lo : 5 ≤ i) (hi : i < 5 + hmrClassWorkCount mode) :
      (inputs++work).getD i 0∈work.toFinset := by
    rw [List.getD_append_right inputs work 0 i (by omega),
      List.getD_eq_getElem work 0 (show i - inputs.length < work.length by omega)]
    exact List.mem_toFinset.mpr (List.getElem_mem _)
  cases mode <;> simp only [hmrClassChain,List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq,
    hmrAllocatedClassPorts,hmrClassWorkCount,Fin.coe_ofNat_eq_mod,ite_true]
  all_goals repeat' constructor
  all_goals apply mem <;> norm_num [hmrClassWorkCount]

theorem compileHmrClass_state (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ ∀q∈A.live,out.basis q=s.basis q := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have live := (A.borrowMany_live B _ work hc.2.2.2).1
  have disjoint := (A.borrowMany_contract B _ work hc.2.2.2).2.2
  have result := compileHmrClass_run A B mode inputs work h s m ready
  have frame (q : Wire) (outside : q∉work.toFinset) :
      hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s.basis q=s.basis q := by
    apply hmrAndAdvance_target_frame
    intro g hg eq
    exact outside (eq ▸ compileHmrClass_work_targets A B mode inputs work h g hg)
  dsimp only
  rw [result]
  refine ⟨rfl,?_,?_⟩
  · intro q bound absent
    have outside : q∉work.toFinset := by
      intro hq
      apply absent
      rw [live]
      exact Finset.mem_union_right _ hq
    change hmrAndAdvance _ s.basis q=false
    rw [frame q outside]
    apply ready q bound
    intro hq
    apply absent
    rw [live]
    exact Finset.mem_union_left _ hq
  · intro q hq
    apply frame q
    intro hwq
    have sep := (A.reserve_success work.toFinset).mp ⟨B,disjoint⟩
    exact Finset.disjoint_left.mp sep.2 hq hwq

end ECDSAAdd.Arithmetic.Paper935
