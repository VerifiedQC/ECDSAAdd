import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassStore

namespace ECDSAAdd.Arithmetic.Paper935

/-- The early counter test remains live through the actual class/history
body, then its measured retirement returns the incoming arena. -/
theorem hmrSourceEarlyStore_run (A C B : Arena) (counter zeroWork : List Wire)
    (Z : HmrEqualityPlan) (P : HmrSourceClassPlan)
    (sign frozen sigma b2 b3 b4 port : Wire) (record work : List Wire)
    (zeroCompiled : compileHmrEqualityLog A counter 0 zeroWork=some (C,zeroWork,Z))
    (h : P.Logged C false sign Z.top frozen sigma)
    (compiled : compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 work=some B)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [P.equality.top,b2,b3,b4] (port::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors false sign Z.top frozen sigma) (port::record))
    (counterApart : List.Disjoint counter (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : let u := run (hmrAndSweep Z.stages) m s
      let v := run (P.program sign Z.top) (m.drop (measurementCount (hmrAndSweep Z.stages))) u
      (v.basis P.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis port).toNat<2^record.length) :
    let out := run (hmrAndSweep Z.stages ++
      (P.storeCycle sign Z.top b2 b3 b4 port record work ++ hmrAndUnsweep Z.stages)) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧
      (∀q∈A.live,q∉port::record → out.basis q=s.basis q) := by
  let u := run (hmrAndSweep Z.stages) m s
  let tape := m.drop (measurementCount (hmrAndSweep Z.stages))
  let body := P.storeCycle sign Z.top b2 b3 b4 port record work
  let v := run body tape u
  have hc := compileHmrEqualityLog_contract A C counter 0 zeroWork Z zeroCompiled
  have contains : A.live⊆C.live := by
    rw [A.checkBorrow_live C _ zeroWork hc.2.1]
    exact Finset.subset_union_left
  have first := compileHmrEqualityLog_state A C counter 0 zeroWork Z zeroCompiled s m ready
  have stored := h.store_cycle P C B false sign Z.top frozen sigma b2 b3 b4 port record work
    compiled (Finset.Subset.trans owned contains) nd apart anchorsApart u tape first.2.1 fits
  have free := ((A.reserve_success zeroWork.toFinset).mp
    ⟨C,(A.checkBorrow_contract C _ zeroWork hc.2.1).2.2⟩).2
  have sitesOwned : (counter++zeroWork).toFinset⊆C.live := by
    rw [A.checkBorrow_live C _ zeroWork hc.2.1]
    intro q hq
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with input|wk
    · exact Finset.mem_union_left _ (hc.1.1 (List.mem_toFinset.mpr input))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr wk)
  have sitesAway (q : Wire) (hq : q∈(counter++zeroWork).toFinset) : q∉port::record := by
    intro mem
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with input|wk
    · exact List.disjoint_left.mp counterApart input mem
    · exact Finset.disjoint_left.mp free (owned (List.mem_toFinset.mpr mem)) (List.mem_toFinset.mpr wk)
  have retired := compileHmrEqualityLog_erase_return A C counter 0 zeroWork Z zeroCompiled
    s.basis ready v (tape.drop (measurementCount body)) stored.2.1
    (by intro q hq; rw [stored.2.2.2.2 q (sitesOwned hq) (sitesAway q hq)];
        exact congrArg (fun st : State => st.basis q) first.1)
  have phase : u.phase=s.phase := by change (run (hmrAndSweep Z.stages) m s).phase=s.phase; rw [first.1]
  dsimp only
  rw [run_append,run_take,run_append,run_take]
  refine ⟨retired.1.trans (stored.1.trans phase),retired.2.1,?_⟩
  intro q hq hn
  rw [retired.2.2.2 q hq,stored.2.2.2.2 q (contains hq) hn]
  exact first.2.2.1 q hq

end ECDSAAdd.Arithmetic.Paper935
