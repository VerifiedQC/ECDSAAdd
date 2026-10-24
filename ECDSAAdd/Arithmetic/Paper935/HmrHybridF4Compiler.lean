import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrHybridF4Plan where
  flagArena : Arena
  flagWork : List Wire
  carryArena : Arena
  carryWork : List Wire
  firstArena : Arena
  firstWork : List Wire
  secondArena : Arena
  secondWork : List Wire

def HmrHybridF4Plan.flag (P : HmrHybridF4Plan) : Wire := hmrBorrowPorts P.flagWork (0 : Fin 1)
def HmrHybridF4Plan.carry (P : HmrHybridF4Plan) : Wire := hmrBorrowPorts P.carryWork (0 : Fin 1)

def compileHmrHybridF4 (A : Arena) (swap control : Wire) (a b x y : List Wire) : Option HmrHybridF4Plan := do
  if ¬(∀q∈swap::control::((a++x)++(b++y)),q∈A.live) then none else do
    let (U,uw) ← A.borrowMany 1
    let (K,kw) ← U.borrowMany 1
    let u := hmrBorrowPorts uw (0 : Fin 1)
    let k := hmrBorrowPorts kw (0 : Fin 1)
    if ¬(swap::control::u::k::((a++x)++(b++y))).Nodup then none else do
      if ¬Disjoint (a++b).toFinset (x++y).toFinset then none else do
        let (B,wa) ← compileHmrHybridCin K control u k a b
        let (C,wb) ← compileHmrHybridCin K control u k x y
        pure ⟨U,uw,K,kw,B,wa,C,wb⟩

structure HmrHybridF4Plan.Compiled (P : HmrHybridF4Plan) (A : Arena) (swap control : Wire)
    (a b x y : List Wire) : Prop where
  owned : ∀q∈swap::control::((a++x)++(b++y)),q∈A.live
  flagBorrow : A.borrowMany 1=some (P.flagArena,P.flagWork)
  carryBorrow : P.flagArena.borrowMany 1=some (P.carryArena,P.carryWork)
  distinct : (swap::control::P.flag::P.carry::((a++x)++(b++y))).Nodup
  apart : (a++b).Disjoint (x++y)
  first : compileHmrHybridCin P.carryArena control P.flag P.carry a b=some (P.firstArena,P.firstWork)
  second : compileHmrHybridCin P.carryArena control P.flag P.carry x y=some (P.secondArena,P.secondWork)

theorem compileHmrHybridF4_contract (A : Arena) (swap control : Wire) (a b x y : List Wire)
    (P : HmrHybridF4Plan) (h : compileHmrHybridF4 A swap control a b x y=some P) :
    P.Compiled A swap control a b x y := by
  unfold compileHmrHybridF4 at h
  split at h
  next absent => simp at h
  next owned =>
    obtain ⟨⟨U,uw⟩,hu,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨K,kw⟩,hk,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next bad => simp at h
    next nd =>
      split at h
      next bad => simp at h
      next apart =>
        obtain ⟨⟨B,wa⟩,ha,h⟩ := Option.bind_eq_some_iff.mp h
        obtain ⟨⟨C,wb⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        refine ⟨not_not.mp owned,hu,hk,not_not.mp nd,?_,ha,hb⟩
        exact List.disjoint_left.mpr (fun q hq hr => Finset.disjoint_left.mp (not_not.mp apart)
          (List.mem_toFinset.mpr hq) (List.mem_toFinset.mpr hr))

def HmrHybridF4Plan.program (P : HmrHybridF4Plan) (swap control : Wire) (a b x y : List Wire) : Program :=
  hmrHybridF4 swap control P.flag P.carry a b x y P.firstWork P.secondWork

/-- Actual execution changes only the two owned target rows. Therefore
both retained temporaries can be returned, with no reset operation. -/
theorem HmrHybridF4Plan.Compiled.run_state (P : HmrHybridF4Plan) (A : Arena) (swap control : Wire)
    (a b x y : List Wire) (h : P.Compiled A swap control a b x y)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (P.program swap control a b x y) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧
    P.carryArena.release P.carryWork.toFinset out.basis=some P.flagArena ∧
    P.flagArena.release P.flagWork.toFinset out.basis=some A ∧
    (∀q,q∉b++y → out.basis q=s.basis q) ∧
    regValue b out.basis=branchWord b.length (s.basis swap) (s.basis control) (regValue a s.basis) (regValue b s.basis) ∧
    regValue y out.basis=branchWord y.length (s.basis swap) (s.basis control) (regValue x s.basis) (regValue y s.basis) := by
  have flagContract := A.borrowMany_contract P.flagArena 1 P.flagWork h.flagBorrow
  have flagReady := (A.reserve_ready P.flagArena P.flagWork.toFinset s.basis ready flagContract.2.2).1
  have carryContract := P.flagArena.borrowMany_contract P.carryArena 1 P.carryWork h.carryBorrow
  have carryReady := (P.flagArena.reserve_ready P.carryArena P.carryWork.toFinset s.basis flagReady carryContract.2.2).1
  have flagClean := hmrBorrowPorts_clean A P.flagArena 1 P.flagWork h.flagBorrow s.basis ready (0 : Fin 1)
  have carryClean := hmrBorrowPorts_clean P.flagArena P.carryArena 1 P.carryWork h.carryBorrow s.basis flagReady (0 : Fin 1)
  have actual := hmrHybridF4_run P.carryArena P.firstArena P.secondArena swap control P.flag P.carry a b x y
    P.firstWork P.secondWork h.first h.second h.distinct h.apart s m carryReady carryClean flagClean
  let out := run (P.program swap control a b x y) m s
  have readyOut : A.Ready out.basis := by
    intro q bound absent
    change (run (hmrHybridF4 swap control P.flag P.carry a b x y P.firstWork P.secondWork) m s).basis q=false
    rw [actual.2.2.1 q (fun hq => absent (h.owned q (by simp [hq])))]
    exact ready q bound absent
  have flagReadyOut : P.flagArena.Ready out.basis := by
    intro q bound absent
    apply readyOut q bound
    intro live
    apply absent
    rw [(A.borrowMany_live P.flagArena 1 P.flagWork h.flagBorrow).1]
    exact Finset.mem_union_left _ live
  exact ⟨actual.1,readyOut,
    hmrBorrow_return P.flagArena P.carryArena 1 P.carryWork h.carryBorrow out.basis flagReadyOut,
    hmrBorrow_return A P.flagArena 1 P.flagWork h.flagBorrow out.basis readyOut,
    actual.2.2⟩

end ECDSAAdd.Arithmetic.Paper935
