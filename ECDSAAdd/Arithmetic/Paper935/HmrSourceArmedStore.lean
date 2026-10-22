import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassStore
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedZero
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockedDrop

namespace ECDSAAdd.Arithmetic.Paper935

/-- Armed counter testing keeperizes the test; retirement checks fresh
prefix logs against the post-storage arena instead of reusing old scratch. -/
theorem hmrSourceArmedStore_run (A C B : Arena) (counter : List Wire)
    (ps : List HmrBlockPlan) (keeper : Wire) (qs : List HmrBlockFreePlan)
    (P : HmrSourceClassPlan) (sign frozen sigma b2 b3 b4 port : Wire)
    (record work : List Wire) {zeroLogs dropLogs : List (List Wire)}
    (zeroCompiled : compileHmrZeroLog A counter counter.length zeroLogs=some (C,ps,keeper))
    (endCompiled : compileHmrBlockedDropLog C ps dropLogs=some (A,qs))
    (h : P.Logged C true sign keeper frozen sigma)
    (compiled : compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 work=some B)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [P.equality.top,b2,b3,b4] (port::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors true sign keeper frozen sigma) (port::record))
    (counterApart : List.Disjoint counter (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : let u := run (hmrBlockedProgram ps) m s
      let v := run (P.program sign keeper) (m.drop (measurementCount (hmrBlockedProgram ps))) u
      (v.basis P.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis port).toNat<2^record.length) :
    let out := run (hmrBlockedProgram ps ++
      (P.storeCycle sign keeper b2 b3 b4 port record work ++ hmrBlockedDropProgram qs)) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧
      (∀q∈A.live,q∉port::record → out.basis q=s.basis q) := by
  let u := run (hmrBlockedProgram ps) m s
  let tape := m.drop (measurementCount (hmrBlockedProgram ps))
  let body := P.storeCycle sign keeper b2 b3 b4 port record work
  let v := run body tape u
  have hc := compileHmrZeroLog_contract A C counter counter.length ps keeper zeroCompiled
  have owners := compileHmrBlockedLog_owned A C none _ ps hc.2.1
  have first := compileHmrBlockedLog_run A C none _ ps hc.2.1 s m ready
  have ur : C.Ready u.basis := by change C.Ready (run (hmrBlockedProgram ps) m s).basis; rw [first.1]; exact first.2.1
  have stored := h.store_cycle P C B true sign keeper frozen sigma b2 b3 b4 port record work
    compiled (Finset.Subset.trans owned owners.1) nd apart anchorsApart u tape ur fits
  have values := compileHmrBlockedLog_values A C none _ ps hc.2.1 s m ready
  have stable : HmrKeeperValues ps v.basis := by
    apply hmrKeeperValues_frame ps u.basis v.basis values
    intro R hr q hq
    apply stored.2.2.2.2 q (owners.2 R hr (List.mem_toFinset.mpr hq))
    intro mem
    have away := compileHmrBlockedLog_away A C none _ ps hc.2.1 q
      (owned (List.mem_toFinset.mpr mem))
      (by rw [hmrChunks_flatten _ _ hc.1]; exact fun hm => List.disjoint_left.mp counterApart hm mem)
      (by simp)
    exact away R hr hq
  have ordered := compileHmrBlockedLog_order A C none _ ps hc.2.1
  have retired := compileHmrBlockedDropLog_run C A ps qs endCompiled ordered.2 v
    (tape.drop (measurementCount body)) stored.2.1 stable
  have phase : u.phase=s.phase := by change (run (hmrBlockedProgram ps) m s).phase=s.phase; rw [first.1]
  dsimp only
  rw [run_append,run_take,run_append,run_take,retired.1]
  refine ⟨stored.1.trans phase,retired.2,?_⟩
  intro q hq hn
  change hmrClearKeepers ps v.basis q=s.basis q
  rw [hmrClearKeepers_frame ps v.basis q (fun R hr eq => ordered.1 R hr (eq ▸ hq)),
    stored.2.2.2.2 q (owners.1 hq) hn]
  exact compileHmrBlockedLog_frame A C none _ ps hc.2.1 s m ready q hq

end ECDSAAdd.Arithmetic.Paper935
