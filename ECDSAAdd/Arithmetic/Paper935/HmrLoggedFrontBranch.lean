import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontBranch
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRoute

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.branch_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.sigmaArena.Ready s.basis) :
    let out := run P.branchMint m s
    out.phase=s.phase ∧ P.branchArena.Ready out.basis ∧
    out.basis P.branch=s.basis (P.pairBank.g.payload.headD 0) ∧
    (∀q,q≠P.branch → out.basis q=s.basis q) := by
  have clean : s.basis P.branch=false := hmrLoggedPorts_clean _ _ _ _ h.branchBorrow s.basis ready (0 : Fin 1)
  have borrow := P.sigmaArena.checkBorrow_contract _ _ _ h.branchBorrow
  have owned : P.branch∈P.branchArena.live := (hmrLoggedPorts_contract _ _ _ _ h.branchBorrow).2.1 (0 : Fin 1)
  have reserveReady := (P.sigmaArena.reserve_ready _ _ s.basis ready borrow.2.2).1
  refine ⟨rfl,?_,?_,?_⟩
  · intro q bound absent
    have ne : q≠P.branch := fun eq => absent (eq ▸ owned)
    simp only [HmrSourceFront.branchMint,run,writeBit,Function.update_of_ne ne]
    exact reserveReady q bound absent
  · simp only [HmrSourceFront.branchMint,run,writeBit,Function.update_self,clean,Bool.false_xor]
  · intro q ne
    simp only [HmrSourceFront.branchMint,run,writeBit,Function.update_of_ne ne]


theorem HmrSourceFront.Logged.entry_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis) :
    let routed := run (P.route counter) m (run (P.root counter) m s)
    let out := run (P.entry counter) m s
    out.phase=s.phase ∧ P.branchArena.Ready out.basis ∧
    out.basis P.sigma=(!s.basis (counter.getLastD 0) && s.basis (P.pairBank.g.payload.headD 0)) ∧
    out.basis P.branch=routed.basis (P.pairBank.g.payload.headD 0) := by
  let root := run (P.root counter) m s
  let routed := run (P.route counter) m root
  have first := h.root_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have second := h.route_state P A bank fgWidth vWidth exitWidth early frozen counter root m first.2.1
  have third := h.branch_state P A bank fgWidth vWidth exitWidth early frozen counter routed m second.2.1
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have sigmaBranch : P.sigma≠P.branch := by
    intro eq
    exact (List.nodup_cons.mp flags.1).1 (by simp [←eq])
  have rootCount : measurementCount (P.root counter)=0 := by
    simp [HmrSourceFront.root,hmrPolarAnd,hmrPolarDress,measurementCount]
  have routeCount : measurementCount (P.route counter)=0 :=
    (hmrRouteStage_counts P.sigma _ _ _ _ counter).2.1
  dsimp only
  simp only [HmrSourceFront.entry,run_append]
  simp only [run_take]
  simp only [measurementCount_append,rootCount,routeCount,Nat.zero_add,List.drop_zero]
  have rt : run (P.root counter) (m.take 0) s=root := by
    rw [←rootCount,run_take]
  rw [rt]
  have rr : run (P.route counter) (m.take 0) root=routed := by
    rw [←routeCount,run_take]
  rw [rr]
  exact ⟨third.1.trans (second.1.trans first.1),third.2.1,
    (third.2.2.2 P.sigma sigmaBranch).trans (second.2.2.1.trans first.2.2.1),third.2.2.1⟩


end ECDSAAdd.Arithmetic.Paper935
