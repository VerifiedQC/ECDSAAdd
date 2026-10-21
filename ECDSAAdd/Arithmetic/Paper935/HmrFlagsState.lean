import ECDSAAdd.Arithmetic.Paper935.HmrFlagsMath

namespace ECDSAAdd.Arithmetic.Paper935

def hmrAllocatedFlags (c3 b2 b3 b4 : Wire) (work : List Wire) : Program :=
  let w : Fin 6 → Wire := hmrBorrowPorts work
  hmrFlags c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)

theorem compileHmrFlags_state (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrAllocatedFlags c3 b2 b3 b4 work) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ (∀q∈A.live,out.basis q=s.basis q) := by
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have ports := hmrBorrowPorts_contract A B 6 work hc.2.2
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have clean : ∀q∈[w 0,w 1,w 2,w 3,w 4,w 5],s.basis q=false := by
    intro q hq
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals exact hmrBorrowPorts_clean A B 6 work hc.2.2 s.basis ready _
  have result := hmrFlags_run_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlags_geometry A B c3 b2 b3 b4 work h) s m clean
  have frame (q : Wire) (away : ∀i : Fin 6,q≠w i) :
      (run (hmrAllocatedFlags c3 b2 b3 b4 work) m s).basis q=s.basis q := by
    change (run (hmrFlags c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m s).basis q=s.basis q
    rw [result]
    simp only [writeBit,Function.update_of_ne (away _)]
  dsimp only
  have phase := congrArg State.phase result
  refine ⟨phase,?_,?_⟩
  · intro q hq notLive
    have away (i : Fin 6) : q≠w i := by
      intro eq
      apply notLive
      rw [eq]
      exact ports.2.1 i
    rw [frame q away]
    apply ready q hq
    intro old
    apply notLive
    rw [(A.borrowMany_live B 6 work hc.2.2).1]
    exact Finset.mem_union_left _ old
  · intro q hq
    apply frame q
    intro i eq
    apply ports.2.2 i
    change w i∈A.live
    rw [←eq]
    exact hq

end ECDSAAdd.Arithmetic.Paper935
