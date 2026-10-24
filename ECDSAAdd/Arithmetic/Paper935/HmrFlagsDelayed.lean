import ECDSAAdd.Arithmetic.Paper935.HmrFlagsState

namespace ECDSAAdd.Arithmetic.Paper935

def hmrClearFlags (w : Fin 6 → Wire) (s : BasisState) : BasisState :=
  writeBit (writeBit (writeBit (writeBit (writeBit (writeBit s (w 0) false)
    (w 1) false) (w 2) false) (w 3) false) (w 4) false) (w 5) false

def HmrFlagValues (c3 b2 b3 b4 : Wire) (w : Fin 6 → Wire) (s : BasisState) : Prop :=
  s (w 0)=(s c3 && s b2) ∧ s (w 1)=(s c3 && !s b2) ∧
  s (w 2)=(s c3 && !s b2 && s b3) ∧ s (w 3)=(s c3 && !s b2 && !s b3) ∧
  s (w 4)=(s c3 && !s b2 && !s b3 && s b4) ∧ s (w 5)=(s c3 && !s b2 && !s b3 && !s b4)

/-- Delayed flag retirement uses the current anchor equations. Other data
may have changed since creation, and the incoming phase is arbitrary. -/
theorem compileHmrFlags_erase (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work))
    (s : State) (m : List Bool) (values : HmrFlagValues c3 b2 b3 b4 (hmrBorrowPorts work) s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    run (hmrFlagsRelease c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m s=
      ⟨s.phase,hmrClearFlags w s.basis⟩ := by
  let w : Fin 6 → Wire := hmrBorrowPorts work
  let base : State := ⟨s.phase,hmrClearFlags w s.basis⟩
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have ports := hmrBorrowPorts_contract A B 6 work hc.2.2
  have inj : Function.Injective w := ports.1
  have sep (q : Wire) (hq : q∈[c3,b2,b3,b4]) (i : Fin 6) : q≠w i := by
    intro eq
    apply ports.2.2 i
    change w i∈A.live
    rw [←eq]
    exact hc.2.1 (List.mem_toFinset.mpr hq)
  have input (q : Wire) (hq : q∈[c3,b2,b3,b4]) : base.basis q=s.basis q := by
    simp only [base,hmrClearFlags,writeBit,Function.update_of_ne (sep q hq _)]
  have clean : ∀q∈[w 0,w 1,w 2,w 3,w 4,w 5],base.basis q=false := by
    intro q hq
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp [base,hmrClearFlags,writeBit,inj.eq_iff]
  have result := hmrFlags_run_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlags_geometry A B c3 b2 b3 b4 work h) base m clean
  have restore : run (hmrFlags c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m base=s := by
    rw [result]
    congr 1
    funext q
    have ic := input c3 (by simp)
    have ib2 := input b2 (by simp)
    have ib3 := input b3 (by simp)
    have ib4 := input b4 (by simp)
    obtain ⟨h0,h1,h2,h3,h4,h5⟩ := values
    rw [ic,ib2,ib3,ib4,←h5,←h4,←h3,←h2,←h1,←h0]
    by_cases hq : q∈[w 0,w 1,w 2,w 3,w 4,w 5]
    · simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
      rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
      all_goals simp [base,hmrClearFlags,writeBit,inj.eq_iff]
      all_goals rfl
    · simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at hq
      simp [base,hmrClearFlags,writeBit,hq.1,hq.2.1,hq.2.2.1,hq.2.2.2.1,hq.2.2.2.2.1,hq.2.2.2.2.2]
  have release := hmrFlags_release_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlags_geometry A B c3 b2 b3 b4 work h) base m clean
  rw [run_append,run_take,show measurementCount (hmrFlags c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5))=0 from rfl,
    List.drop_zero,restore] at release
  exact release

end ECDSAAdd.Arithmetic.Paper935
