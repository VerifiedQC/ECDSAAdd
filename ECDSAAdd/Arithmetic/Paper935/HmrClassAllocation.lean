import ECDSAAdd.Arithmetic.Paper935.HmrClassFlags
import ECDSAAdd.Arithmetic.Paper935.HmrPortGeometry

namespace ECDSAAdd.Arithmetic.Paper935

def hmrClassWorkCount : HmrClassMode → Nat
  | .early => 2
  | .forwardArmed => 3
  | .reverseArmed => 4

/-- Port 8 is the final class flag. Unused intermediate ports need not be
allocated: early has two work sites, forward three, reverse four. -/
def hmrAllocatedClassPorts (mode : HmrClassMode) (inputs work : List Wire) (i : Fin 9) : Wire :=
  (inputs++work).getD (if i.val=8 then 4+hmrClassWorkCount mode else i.val) 0

def compileHmrClass (A : Arena) (mode : HmrClassMode) (inputs : List Wire) : Option (Arena × List Wire) :=
  if inputs.length=5 ∧ inputs.Nodup ∧ inputs.toFinset⊆A.live
  then A.borrowMany (hmrClassWorkCount mode) else none

theorem compileHmrClass_contract (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) :
    inputs.length=5 ∧ inputs.Nodup ∧ inputs.toFinset⊆A.live ∧
      A.borrowMany (hmrClassWorkCount mode)=some (B,work) := by
  unfold compileHmrClass at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2,h⟩
  next invalid => simp at h

theorem compileHmrClass_exists (A : Arena) (mode : HmrClassMode) (inputs : List Wire)
    (len : inputs.length=5) (nd : inputs.Nodup) (owned : inputs.toFinset⊆A.live)
    (capacity : A.live.card+hmrClassWorkCount mode≤935) :
    ∃ B work,compileHmrClass A mode inputs=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity (hmrClassWorkCount mode)).mpr capacity
  exact ⟨B,work,by simp only [compileHmrClass,if_pos (And.intro len (And.intro nd owned)),h]⟩

theorem compileHmrClass_ready (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : BasisState) (ready : A.Ready s) :
    HmrAndReady (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have hw := (A.borrowMany_contract B (hmrClassWorkCount mode) work hc.2.2.2).1
  have nd := (A.borrowMany_append B (hmrClassWorkCount mode) work inputs hc.2.2.2 hc.2.1 hc.2.2.1).1
  have eqs := hmrGetD_eq_iff (inputs++work) nd
  have zeros := hmrBorrowClean A B inputs work (hmrClassWorkCount mode) hc.2.2.2 s ready
  have len : (inputs++work).length=5+hmrClassWorkCount mode := by simp [hc.1,hw]
  cases mode <;> dsimp only [hmrClassChain,hmrAllocatedClassPorts,hmrClassWorkCount,HmrAndReady,
    HmrAndStage.advance,writeBit]
  all_goals norm_num only [Fin.coe_ofNat_eq_mod,ite_false,ite_true,Bool.false_eq_true,eq_self_iff_true,List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true,true_and,eqs,len,zeros,hc.1,hmrClassWorkCount,
    Function.update_apply]

theorem compileHmrClass_run (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m s=
      ⟨s.phase,hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s.basis⟩ :=
  hmrAndSweep_run _ s m (compileHmrClass_ready A B mode inputs work h s.basis ready)

theorem compileHmrClass_release (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrAndUnsweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m
      ⟨s.phase,hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s.basis⟩=s :=
  hmrAndUnsweep_run _ s m (compileHmrClass_ready A B mode inputs work h s.basis ready)

theorem compileHmrClass_size (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) :
    work.length=hmrClassWorkCount mode ∧ B.live.card=A.live.card+hmrClassWorkCount mode := by
  have hc := compileHmrClass_contract A B mode inputs work h
  exact ⟨(A.borrowMany_contract B _ work hc.2.2.2).1,(A.borrowMany_live B _ work hc.2.2.2).2⟩

theorem compileHmrClass_value (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : BasisState) :
    (hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s)
      (hmrAllocatedClassPorts mode inputs work 8)=
      hmrClassValue mode (hmrAllocatedClassPorts mode inputs work) s := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have hw := (A.borrowMany_contract B _ work hc.2.2.2).1
  have nd := (A.borrowMany_append B _ work inputs hc.2.2.2 hc.2.1 hc.2.2.1).1
  have eqs := hmrGetD_eq_iff (inputs++work) nd
  have len : (inputs++work).length=5+hmrClassWorkCount mode := by simp [hc.1,hw]
  cases mode <;> dsimp only [hmrClassChain,hmrAllocatedClassPorts,hmrClassWorkCount,
    hmrAndAdvance,HmrAndStage.advance,hmrClassValue,writeBit]
  all_goals norm_num only [Fin.coe_ofNat_eq_mod,ite_false,ite_true,eq_self_iff_true,
    eqs,len,hmrClassWorkCount,Function.update_apply,Bool.false_eq_true]

end ECDSAAdd.Arithmetic.Paper935
