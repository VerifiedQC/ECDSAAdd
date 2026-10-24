import ECDSAAdd.Arithmetic.Paper935.History

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source R5 with a freshly cleared output port; no assumption that its
physical address equals the demolished forward branch address. -/
theorem hmrPop_spec (store output : Wire) (record : List Wire)
    (distinct : (store::output::record).Nodup) (s : State) (m : List Bool)
    (clean : s.basis output=false) :
    let out := run (popHistory store output record) m s
    out.phase=s.phase ∧ out.basis store=s.basis store ∧
    out.basis output=(s.basis store && decide (regValue record s.basis%2=1)) ∧
    regValue record out.basis=(if s.basis store then regValue record s.basis/2 else regValue record s.basis) ∧
    ∀q,q∉output::record → out.basis q=s.basis q := by
  have frame := shift_frame store (output::record) s m
  have val := shiftRight_value store output record distinct s m
  have low : (run (popHistory store output record) m s).basis output=
      (s.basis store && decide (regValue record s.basis%2=1)) := by
    change (if (run (popHistory store output record) m s).basis output then 1 else 0)+
      2*regValue record (run (popHistory store output record) m s).basis=
      (if s.basis store then regValue record s.basis+2^record.length*(s.basis output).toNat
        else (if s.basis output then 1 else 0)+2*regValue record s.basis) at val
    cases hc : s.basis store <;> cases ho : (run (popHistory store output record) m s).basis output <;>
      simp [hc,ho,clean] at val ⊢ <;> omega
  refine ⟨frame.1,frame.2.1 store (List.nodup_cons.mp distinct).1,low,?_,frame.2.1⟩
  change (if (run (popHistory store output record) m s).basis output then 1 else 0)+
    2*regValue record (run (popHistory store output record) m s).basis=
    (if s.basis store then regValue record s.basis+2^record.length*(s.basis output).toNat
      else (if s.basis output then 1 else 0)+2*regValue record s.basis) at val
  cases hc : s.basis store <;> cases ho : (run (popHistory store output record) m s).basis output <;>
    simp [hc,ho,clean] at val ⊢ <;> omega

end ECDSAAdd.Arithmetic.Paper935
