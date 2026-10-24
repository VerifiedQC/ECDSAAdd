import ECDSAAdd.Arithmetic.Paper935.HmrBranchAssembly
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowReturn

namespace ECDSAAdd.Arithmetic.Paper935

def hmrAssemblyInputs (early : Bool) (pred parity fire output : Wire) : List Wire :=
  if early then [pred,parity,output] else [pred,parity,fire,output]

def compileHmrAssembly (A : Arena) (early : Bool) (pred parity fire output : Wire) : Option (Arena × List Wire) :=
  if (hmrAssemblyInputs early pred parity fire output).Nodup ∧
      (hmrAssemblyInputs early pred parity fire output).toFinset⊆A.live
  then if early then some (A,[]) else A.borrowMany 1 else none

theorem compileHmrAssembly_contract (A B : Arena) (early : Bool) (pred parity fire output : Wire) (work : List Wire)
    (h : compileHmrAssembly A early pred parity fire output=some (B,work)) :
    (hmrAssemblyInputs early pred parity fire output).Nodup ∧
    (hmrAssemblyInputs early pred parity fire output).toFinset⊆A.live ∧
    (if early then B=A ∧ work=[] else A.borrowMany 1=some (B,work)) := by
  unfold compileHmrAssembly at h
  split at h
  next valid =>
    refine ⟨valid.1,valid.2,?_⟩
    cases early <;> simp_all
  next => simp at h

theorem hmrBranchAssembly_early (pred parity fire work output : Wire)
    (parityNe : parity≠output) (s : State) (m : List Bool) :
    run (hmrBranchAssembly true pred parity fire work output) m s=
      ⟨s.phase,writeBit s.basis output (s.basis output ^^ s.basis pred ^^ s.basis parity)⟩ := by
  simp [hmrBranchAssembly,run,writeBit,Function.update,parityNe]

theorem compileHmrAssembly_run (A B : Arena) (early : Bool) (pred parity fire output : Wire) (work : List Wire)
    (h : compileHmrAssembly A early pred parity fire output=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrBranchAssembly early pred parity fire (hmrBorrowPorts work (0 : Fin 1)) output) m s=
      ⟨s.phase,writeBit s.basis output ((s.basis output ^^ s.basis pred ^^ s.basis parity) ^^
        (if early then false else s.basis fire && !s.basis parity))⟩ := by
  have hc := compileHmrAssembly_contract A B early pred parity fire output work h
  cases he : early with
  | true =>
    have nd := hc.1
    simp only [hmrAssemblyInputs,he,ite_true,List.nodup_cons,List.mem_cons,List.not_mem_nil,
      List.nodup_nil,not_or,not_false_eq_true,and_true] at nd
    simpa only [Bool.true_eq_false,ite_true,Bool.xor_false] using
      hmrBranchAssembly_early pred parity fire (hmrBorrowPorts work (0 : Fin 1)) output nd.2 s m
  | false =>
    have borrow : A.borrowMany 1=some (B,work) := by simpa only [he,Bool.false_eq_true,ite_false] using hc.2.2
    have nd : [pred,parity,fire,output].Nodup := by simpa only [hmrAssemblyInputs,he,Bool.false_eq_true,ite_false] using hc.1
    have owned : [pred,parity,fire,output].toFinset⊆A.live := by simpa only [hmrAssemblyInputs,he,Bool.false_eq_true,ite_false] using hc.2.1
    let tmp := hmrBorrowPorts work (0 : Fin 1)
    have fresh := (hmrBorrowPorts_contract A B 1 work borrow).2.2 0
    have apart (q : Wire) (hq : q∈[pred,parity,fire,output]) : q≠tmp := by
      intro eq
      apply fresh
      change tmp∈A.live
      rw [←eq]
      exact owned (List.mem_toFinset.mpr hq)
    have distinct : [pred,parity,fire,tmp,output].Nodup := by
      simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
        not_or,not_false_eq_true,and_true] at nd ⊢
      exact ⟨⟨nd.1.1,nd.1.2.1,apart pred (by simp),nd.1.2.2⟩,
        ⟨nd.2.1.1,apart parity (by simp),nd.2.1.2⟩,
        ⟨apart fire (by simp),nd.2.2⟩,Ne.symm (apart output (by simp))⟩
    exact hmrBranchAssembly_run false pred parity fire tmp output distinct s m
      (hmrBorrowPorts_clean A B 1 work borrow s.basis ready 0)

end ECDSAAdd.Arithmetic.Paper935
