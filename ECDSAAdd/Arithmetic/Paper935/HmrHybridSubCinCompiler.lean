import ECDSAAdd.Arithmetic.Paper935.HmrHybridCinCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridCin_sub_run (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridSubCin control cin carry a b work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
      (if s.basis control then
        (regValue a s.basis+regValue b out.basis+(s.basis cin).toNat)%2^b.length else regValue b out.basis)=regValue b s.basis := by
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have row := compileHmrHybridRow_contract A B control carry a b work hc.2.2
  have geometry := compileHmrHybridRow_geometry A B control carry a b work hc.2.2
  have borrow := A.borrowMany_contract B _ work row.2.2.2.2
  have distinct := List.nodup_cons.mp hc.1
  have rest := List.nodup_cons.mp distinct.2
  have carryRest := List.nodup_cons.mp rest.2
  apply hmrHybridSubCin_run control cin carry a b work geometry.1 row.2.1 geometry.2
    (fun eq => distinct.1 (by simp [eq])) (fun eq => rest.1 (by simp [eq]))
    (fun mem => distinct.1 (by simp [mem]))
    (fun mem => carryRest.1 (List.mem_append_left _ mem)) s m ?_ zero
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridCin_sub_return (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridSubCin control cin carry a b work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have row := compileHmrHybridRow_contract A B control carry a b work hc.2.2
  have actual := compileHmrHybridCin_sub_run A B control cin carry a b work h s m ready zero
  have readyOut : A.Ready (run (hmrHybridSubCin control cin carry a b work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (row.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,hmrBorrow_return A B _ work row.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
