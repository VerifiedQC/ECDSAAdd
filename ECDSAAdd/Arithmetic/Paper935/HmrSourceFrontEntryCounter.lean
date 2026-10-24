import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontEntryMath

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.entry_run (P : HmrSourceFront) (counter : List Wire) (s : State) (m : List Bool) :
    run (P.entry counter) m s=run P.branchMint m (run (P.route counter) m (run (P.root counter) m s)) := by
  have rootCount : measurementCount (P.root counter)=0 := by
    simp [HmrSourceFront.root,hmrPolarAnd,hmrPolarDress,measurementCount]
  have routeCount : measurementCount (P.route counter)=0 :=
    (hmrRouteStage_counts P.sigma _ _ _ _ counter).2.1
  simp only [HmrSourceFront.entry,run_append]
  simp only [run_take]
  simp only [measurementCount_append,rootCount,routeCount,Nat.zero_add,List.drop_zero]
  have rt : run (P.root counter) (m.take 0) s=run (P.root counter) m s := by rw [←rootCount,run_take]
  rw [rt]
  have rr : run (P.route counter) (m.take 0) (run (P.root counter) m s)=
      run (P.route counter) m (run (P.root counter) m s) := by rw [←routeCount,run_take]
  rw [rr]

theorem HmrSourceFront.Compiled.entry_counter (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis) :
    regValue counter (run (P.entry counter) m s).basis=
      if (!s.basis (counter.getLastD 0) && s.basis (P.pairBank.g.payload.headD 0))
      then 2^counter.length-1-regValue counter s.basis else regValue counter s.basis := by
  let root := run (P.root counter) m s
  let routed := run (P.route counter) m root
  have first := h.root_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have second := h.route_state P A bank fgWidth vWidth exitWidth early frozen counter root m first.2.1
  have third := h.branch_state P A bank fgWidth vWidth exitWidth early frozen counter routed m second.2.1
  have geo := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have cm (q : Wire) (hq : q∈counter) : q∈hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires := by
    simp [hmrFrontInputs,hq]
  have sigmaAway (q : Wire) (hq : q∈counter) : q≠P.sigma := by
    intro eq
    exact (List.nodup_cons.mp (List.nodup_cons.mp geo.1).2).1 (eq ▸ cm q hq)
  have branchAway (q : Wire) (hq : q∈counter) : q≠P.branch := by
    intro eq
    exact (List.nodup_cons.mp geo.1).1 (List.mem_cons_of_mem _ (eq ▸ cm q hq))
  have rootCounter : regValue counter root.basis=regValue counter s.basis :=
    regValue_congr _ _ _ (fun q hq => first.2.2.2.2 q (sigmaAway q hq))
  rw [HmrSourceFront.entry_run,regValue_congr counter _ routed.basis
    (fun q hq => third.2.2.2 q (branchAway q hq))]
  rw [second.2.2.2.2,first.2.2.1,rootCounter]

end ECDSAAdd.Arithmetic.Paper935
