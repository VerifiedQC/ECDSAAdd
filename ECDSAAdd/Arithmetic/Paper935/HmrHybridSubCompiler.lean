import ECDSAAdd.Arithmetic.Paper935.HmrHybridCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrHybridSub

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridRow_sub_run (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridSub control a b carry work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
    (if s.basis control then
      (regValue a s.basis+regValue b out.basis+(s.basis carry).toNat)%2^b.length else regValue b out.basis)=regValue b s.basis := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have geometry := compileHmrHybridRow_geometry A B control carry a b work h
  have borrow := A.borrowMany_contract B _ work hc.2.2.2.2
  apply hmrHybridSub_run control carry a b work geometry.1 hc.2.1 geometry.2 s m
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridRow_sub_return (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridSub control a b carry work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have actual := compileHmrHybridRow_sub_run A B control carry a b work h s m ready
  have readyOut : A.Ready (run (hmrHybridSub control a b carry work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (hc.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,hmrBorrow_return A B _ work hc.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
