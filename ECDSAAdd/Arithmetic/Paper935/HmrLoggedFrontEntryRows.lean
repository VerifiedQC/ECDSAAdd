import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontEntryRows
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRouteRows

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.entry_encodes (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.pairArena.Ready s.basis) (encodes : P.pairBank.Encodes s.basis z) :
    P.pairBank.Encodes (run (P.entry counter) m s).basis
      (hmrRouteBank z (!s.basis (counter.getLastD 0) && s.basis (P.pairBank.g.payload.headD 0))) := by
  let root := run (P.root counter) m s
  let routed := run (P.route counter) m root
  have first := h.root_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have second := h.route_state P A bank fgWidth vWidth exitWidth early frozen counter root m first.2.1
  have third := h.branch_state P A bank fgWidth vWidth exitWidth early frozen counter routed m second.2.1
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have sigmaAway : P.sigma∉P.pairBank.rows.flatMap WindowRow.wires := by
    intro hit
    exact (List.nodup_cons.mp (List.nodup_cons.mp flags.1).2).1 (List.mem_append_right _ hit)
  have branchAway : P.branch∉P.pairBank.rows.flatMap WindowRow.wires := by
    intro hit
    exact (List.nodup_cons.mp flags.1).1 (List.mem_cons_of_mem _ (List.mem_append_right _ hit))
  have rootRows := P.pairBank.encodes_congr s.basis root.basis z encodes (fun q hq =>
    first.2.2.2.2 q (fun eq => sigmaAway (eq ▸ hq)))
  have routedRows := h.route_encodes P A bank fgWidth vWidth exitWidth early frozen counter root m z rootRows
  have finalRows := P.pairBank.encodes_congr routed.basis (run P.branchMint m routed).basis _ routedRows
    (fun q hq => third.2.2.2 q (fun eq => branchAway (eq ▸ hq)))
  rw [first.2.2.1] at finalRows
  have rootCount : measurementCount (P.root counter)=0 := by
    simp [HmrSourceFront.root,hmrPolarAnd,hmrPolarDress,measurementCount]
  have routeCount : measurementCount (P.route counter)=0 :=
    (hmrRouteStage_counts P.sigma _ _ _ _ counter).2.1
  simp only [HmrSourceFront.entry,run_append]
  simp only [run_take]
  simp only [measurementCount_append,rootCount,routeCount,Nat.zero_add,List.drop_zero]
  have rt : run (P.root counter) (m.take 0) s=root := by rw [←rootCount,run_take]
  rw [rt]
  have rr : run (P.route counter) (m.take 0) root=routed := by rw [←routeCount,run_take]
  rw [rr]
  exact finalRows


end ECDSAAdd.Arithmetic.Paper935
