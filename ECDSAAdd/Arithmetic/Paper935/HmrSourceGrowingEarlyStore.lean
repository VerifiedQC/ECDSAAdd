import ECDSAAdd.Arithmetic.Paper935.HmrSourceGrowingClassStore

namespace ECDSAAdd.Arithmetic.Paper935

/-- Early F8--F14 with the actual history growth between flag computation
and push. New history cells survive retirement of the counter-test chain. -/
theorem hmrSourceGrowingEarlyStore_run (A C B D : Arena) (counter zeroWork : List Wire)
    (Z : HmrEqualityPlan) (P : HmrSourceClassPlan)
    (sign frozen sigma b2 b3 b4 port : Wire) (record fresh work : List Wire) (need : Nat)
    (zeroCompiled : compileHmrEqualityLog A counter 0 zeroWork=some (C,zeroWork,Z))
    (h : P.Logged C false sign Z.top frozen sigma)
    (flags : compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 work=some B)
    (grow : compileHmrRecordGrowLog B record need fresh=some D)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [P.equality.top,b2,b3,b4] (port::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors false sign Z.top frozen sigma) (port::record))
    (counterApart : List.Disjoint counter (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : let u := run (hmrAndSweep Z.stages) m s
      let v := run (P.program sign Z.top) (m.drop (measurementCount (hmrAndSweep Z.stages))) u
      (v.basis P.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue (record++fresh) v.basis+(v.basis port).toNat<2^(record++fresh).length) :
    ∃A',compileHmrRecordGrowLog A record need fresh=some A' ∧
      let out := run (hmrAndSweep Z.stages ++
        (P.storeCycle sign Z.top b2 b3 b4 port (record++fresh) work ++ hmrAndUnsweep Z.stages)) m s
      out.phase=s.phase ∧ A'.Ready out.basis ∧
        (∀q∈A.live,q∉port::record → out.basis q=s.basis q) := by
  let u := run (hmrAndSweep Z.stages) m s
  let tape := m.drop (measurementCount (hmrAndSweep Z.stages))
  let body := P.storeCycle sign Z.top b2 b3 b4 port (record++fresh) work
  let v := run body tape u
  have zc := compileHmrEqualityLog_contract A C counter 0 zeroWork Z zeroCompiled
  have contains : A.live⊆C.live := by rw [A.checkBorrow_live C _ zeroWork zc.2.1]; exact Finset.subset_union_left
  have first := compileHmrEqualityLog_state A C counter 0 zeroWork Z zeroCompiled s m ready
  obtain ⟨C',gc,stored⟩ := h.growing_store_cycle P C B D false sign Z.top frozen sigma
    b2 b3 b4 port record fresh work need flags grow (Finset.Subset.trans owned contains)
    nd apart anchorsApart u tape first.2.1 fits
  have growth := compileHmrRecordGrowLog_contract C C' record need fresh gc
  obtain ⟨A',aa,ac⟩ := A.checkBorrow_commute C C' (counter.length-1) (need-record.length)
    zeroWork fresh zc.2.1 growth.2.2.2
  have grownReady := (A.reserve_ready A' fresh.toFinset s.basis ready
    (A.checkBorrow_contract A' _ fresh aa).2.2).1
  have aContains : A.live⊆A'.live := by rw [A.checkBorrow_live A' _ fresh aa]; exact Finset.subset_union_left
  have zeroExtended := compileHmrEqualityLog_transport A C A' C' counter 0 zeroWork Z zeroCompiled
    (Finset.Subset.trans zc.1.1 aContains) ac
  have free := ((A.reserve_success zeroWork.toFinset).mp
    ⟨C,(A.checkBorrow_contract C _ zeroWork zc.2.1).2.2⟩).2
  have sitesOwned : (counter++zeroWork).toFinset⊆C.live := by
    rw [A.checkBorrow_live C _ zeroWork zc.2.1]
    intro q hq
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with inp|wk
    · exact Finset.mem_union_left _ (zc.1.1 (List.mem_toFinset.mpr inp))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr wk)
  have sitesAway (q : Wire) (hq : q∈(counter++zeroWork).toFinset) : q∉port::record := by
    intro mem
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with inp|wk
    · exact List.disjoint_left.mp counterApart inp mem
    · exact Finset.disjoint_left.mp free (owned (List.mem_toFinset.mpr mem)) (List.mem_toFinset.mpr wk)
  have retired := compileHmrEqualityLog_erase_return A' C' counter 0 zeroWork Z zeroExtended
    s.basis grownReady v (tape.drop (measurementCount body)) stored.2.1
    (by intro q hq; rw [stored.2.2 q (sitesOwned hq) (sitesAway q hq)];
        exact congrArg (fun st : State => st.basis q) first.1)
  have oldOwned : record.toFinset⊆A.live := by
    intro q hq; exact owned (List.mem_toFinset.mpr (List.mem_cons_of_mem _ (List.mem_toFinset.mp hq)))
  have ga : compileHmrRecordGrowLog A record need fresh=some A' := by
    simp only [compileHmrRecordGrowLog,growth.1,oldOwned,growth.2.2.1,and_self,ite_true]
    exact aa
  refine ⟨A',ga,?_⟩
  have phase : u.phase=s.phase := by change (run (hmrAndSweep Z.stages) m s).phase=s.phase; rw [first.1]
  dsimp only
  rw [run_append,run_take,run_append,run_take]
  refine ⟨retired.1.trans (stored.1.trans phase),retired.2.1,?_⟩
  intro q hq hn
  rw [retired.2.2.2 q (aContains hq),stored.2.2 q (contains hq) hn]
  exact first.2.2.1 q hq

end ECDSAAdd.Arithmetic.Paper935
