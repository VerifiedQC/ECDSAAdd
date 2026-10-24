import ECDSAAdd.Arithmetic.Paper935.HmrClassAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrAndDelayed

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrClass_sites (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) :
    ∀g∈hmrClassChain mode (hmrAllocatedClassPorts mode inputs work),
      g.a∈(inputs++work).toFinset ∧ g.b∈(inputs++work).toFinset ∧ g.target∈(inputs++work).toFinset := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have hw := (A.borrowMany_contract B _ work hc.2.2.2).1
  have len : (inputs++work).length=5+hmrClassWorkCount mode := by simp [hc.1,hw]
  have mem (i : Nat) (hi : i<(inputs++work).length) : (inputs++work).getD i 0∈(inputs++work).toFinset := by
    rw [List.getD_eq_getElem _ _ hi]
    exact List.mem_toFinset.mpr (List.getElem_mem hi)
  cases mode <;> simp only [hmrClassChain,List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq,
    hmrAllocatedClassPorts,hmrClassWorkCount,Fin.coe_ofNat_eq_mod,ite_true]
  all_goals repeat' constructor
  all_goals apply mem; norm_num [len,hmrClassWorkCount]

/-- R12 class retirement may follow a body that changes history and the
recovered branch. Only the actual class footprint must retain its values. -/
theorem compileHmrClass_delayed (A B C : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (contains : B.live⊆C.live)
    (before : BasisState) (initial : A.Ready before) (current : State) (m : List Bool)
    (ready : C.Ready current.basis)
    (preserved : ∀q∈(inputs++work).toFinset,current.basis q=
      hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) before q) :
    let out := run (hmrAndUnsweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m current
    out.phase=current.phase ∧ out.basis=hmrAndPatch (inputs++work).toFinset before current.basis ∧
    ∃ D,C.release work.toFinset out.basis=some D ∧ D.Ready out.basis ∧ D.live=C.live\work.toFinset := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have owned : (inputs++work).toFinset⊆C.live := by
    intro q hq
    apply contains
    rw [(A.borrowMany_live B _ work hc.2.2.2).1]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with hi|hw
    · exact Finset.mem_union_left _ (hc.2.2.1 (List.mem_toFinset.mpr hi))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr hw)
  have result := hmrAndUnsweep_delayed (inputs++work).toFinset _
    (compileHmrClass_sites A B mode inputs work h) before current m
    (compileHmrClass_ready A B mode inputs work h before initial) preserved
  let finalBasis := hmrAndPatch (inputs++work).toFinset before current.basis
  have workOwned : work.toFinset⊆C.live := by
    intro q hq
    exact owned (List.mem_toFinset.mpr (List.mem_append_right _ (List.mem_toFinset.mp hq)))
  have zeros : ∀q∈work.toFinset,finalBasis q=false := by
    intro q hq
    have mem := List.mem_toFinset.mpr (List.mem_append_right inputs (List.mem_toFinset.mp hq))
    change (if q∈(inputs++work).toFinset then before q else current.basis q)=false
    rw [if_pos mem]
    exact (A.reserve_ready B work.toFinset before initial (A.borrowMany_contract B _ work hc.2.2.2).2.2).2 q hq
  have finalReady : C.Ready finalBasis := by
    intro q hq hn
    have outside : q∉(inputs++work).toFinset := fun hmem => hn (owned hmem)
    change (if q∈(inputs++work).toFinset then before q else current.basis q)=false
    rw [if_neg outside]
    exact ready q hq hn
  obtain ⟨D,release⟩ := (C.release_success work.toFinset finalBasis).mpr ⟨workOwned,zeros⟩
  dsimp only
  rw [result]
  refine ⟨rfl,rfl,D,release,C.release_ready D work.toFinset _ finalReady release,?_⟩
  unfold Arena.release at release
  rw [if_pos ⟨workOwned,zeros⟩] at release
  cases release
  rfl

end ECDSAAdd.Arithmetic.Paper935
