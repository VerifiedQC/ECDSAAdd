import ECDSAAdd.Arithmetic.Paper935.HmrFlagsValues
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFlagsDelayed

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrFlagsLog_values (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    HmrFlagValues c3 b2 b3 b4 (hmrBorrowPorts work)
      (run (hmrAllocatedFlags c3 b2 b3 b4 work) m s).basis := by
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h
  have ports := hmrLoggedPorts_contract A B 6 work hc.2.2
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have inj : Function.Injective w := ports.1
  have clean : ∀q∈[w 0,w 1,w 2,w 3,w 4,w 5],s.basis q=false := by
    intro q hq
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals exact hmrLoggedPorts_clean A B 6 work hc.2.2 s.basis ready _
  have result := hmrFlags_run_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlagsLog_geometry A B c3 b2 b3 b4 work h) s m clean
  have keep := (compileHmrFlagsLog_state A B c3 b2 b3 b4 work h s m ready).2.2
  have input (q : Wire) (hq : q∈[c3,b2,b3,b4]) :
      (run (hmrAllocatedFlags c3 b2 b3 b4 work) m s).basis q=s.basis q :=
    keep q (hc.2.1 (List.mem_toFinset.mpr hq))
  change HmrFlagValues c3 b2 b3 b4 w (run (hmrAllocatedFlags c3 b2 b3 b4 work) m s).basis
  unfold HmrFlagValues
  rw [input c3 (by simp),input b2 (by simp),input b3 (by simp),input b4 (by simp)]
  change run (hmrAllocatedFlags c3 b2 b3 b4 work) m s=_ at result
  rw [result]
  simp [writeBit,inj.eq_iff]

end ECDSAAdd.Arithmetic.Paper935
