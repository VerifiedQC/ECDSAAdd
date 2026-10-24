import ECDSAAdd.Arithmetic.Paper935.HmrSigmaDeath
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedReturn
import ECDSAAdd.Arithmetic.Paper935.HmrPortGeometry

namespace ECDSAAdd.Arithmetic.Paper935

/-- F15's armed guard is borrowed from the current arena using the observed
address. The early case allocates nothing and reads only fv1 and sigma. -/
def compileHmrSigmaLog (A : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire) : Option Arena :=
  if armed then
    if [frozen,fire,fv1,sigma].Nodup ∧ [frozen,fire,fv1,sigma].toFinset⊆A.live
    then A.checkBorrow 1 work else none
  else if work=[] ∧ [fv1,sigma].Nodup ∧ [fv1,sigma].toFinset⊆A.live then some A else none

theorem compileHmrSigmaLog_armed_contract (A B : Arena) (frozen fire fv1 sigma : Wire)
    (work : List Wire) (h : compileHmrSigmaLog A true frozen fire fv1 sigma work=some B) :
    [frozen,fire,fv1,sigma].Nodup ∧ [frozen,fire,fv1,sigma].toFinset⊆A.live ∧
      A.checkBorrow 1 work=some B := by
  simp only [compileHmrSigmaLog,ite_true] at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem compileHmrSigmaLog_armed_run (A B : Arena) (frozen fire fv1 sigma : Wire)
    (work : List Wire) (h : compileHmrSigmaLog A true frozen fire fv1 sigma work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis sigma=(s.basis fv1 && !(s.basis frozen && !s.basis fire))) :
    run (hmrSigmaDeath true frozen fire fv1 sigma (hmrBorrowPorts work (0 : Fin 1))) m s=
      ⟨s.phase,writeBit s.basis sigma false⟩ := by
  have hc := compileHmrSigmaLog_armed_contract A B frozen fire fv1 sigma work h
  let guard := hmrBorrowPorts work (0 : Fin 1)
  have ports := hmrLoggedPorts_contract A B 1 work hc.2.2
  have away (q : Wire) (hq : q∈[frozen,fire,fv1,sigma]) : q≠guard := by
    intro eq
    apply ports.2.2 0
    change guard∈A.live
    exact eq ▸ hc.2.1 (List.mem_toFinset.mpr hq)
  have nd : [frozen,fire,fv1,sigma,guard].Nodup := by
    have distinct := hc.1
    simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
      not_or,not_false_eq_true,and_true] at distinct ⊢
    exact ⟨⟨distinct.1.1,distinct.1.2.1,distinct.1.2.2,away frozen (by simp)⟩,
      ⟨⟨distinct.2.1.1,distinct.2.1.2,away fire (by simp)⟩,
      ⟨⟨distinct.2.2,away fv1 (by simp)⟩,away sigma (by simp)⟩⟩⟩
  let w : Fin 5 → Wire := fun i => [frozen,fire,fv1,sigma,guard].getD i.val 0
  have inj : Function.Injective w := by
    intro i j eq
    apply Fin.ext
    exact (hmrGetD_eq_iff _ nd i.val j.val i.isLt j.isLt).mp eq
  have result := hmrSigmaDeath_armed w inj s m
    (hmrLoggedPorts_clean A B 1 work hc.2.2 s.basis ready 0) value
  exact result

end ECDSAAdd.Arithmetic.Paper935
