import ECDSAAdd.Arithmetic.Paper935.HmrFlagsDelayed

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrFlagValues.frame (c3 b2 b3 b4 : Wire) (w : Fin 6 → Wire) (s t : BasisState)
    (values : HmrFlagValues c3 b2 b3 b4 w s)
    (inputs : ∀q∈[c3,b2,b3,b4],t q=s q) (flags : ∀i,t (w i)=s (w i)) :
    HmrFlagValues c3 b2 b3 b4 w t := by
  unfold HmrFlagValues
  rw [inputs c3 (by simp),inputs b2 (by simp),inputs b3 (by simp),inputs b4 (by simp)]
  simpa only [flags] using values

theorem compileHmrFlags_values (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    HmrFlagValues c3 b2 b3 b4 (hmrBorrowPorts work)
      (run (hmrAllocatedFlags c3 b2 b3 b4 work) m s).basis := by
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have ports := hmrBorrowPorts_contract A B 6 work hc.2.2
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have inj : Function.Injective w := ports.1
  have clean : ∀q∈[w 0,w 1,w 2,w 3,w 4,w 5],s.basis q=false := by
    intro q hq
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals exact hmrBorrowPorts_clean A B 6 work hc.2.2 s.basis ready _
  have result := hmrFlags_run_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlags_geometry A B c3 b2 b3 b4 work h) s m clean
  have keep := (compileHmrFlags_state A B c3 b2 b3 b4 work h s m ready).2.2
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
