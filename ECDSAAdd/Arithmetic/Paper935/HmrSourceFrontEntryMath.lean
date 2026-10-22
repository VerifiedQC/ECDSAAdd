import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontEntryRows
import ECDSAAdd.Arithmetic.Paper935.HmrFrontPredicates

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.entry_swap (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.pairArena.Ready s.basis) (encodes : P.pairBank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) :
    let out := run (P.entry counter) m s
    out.basis P.sigma=decide (0≤z.z ∧ z.g%2=1) ∧
    P.pairBank.Encodes out.basis (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))) := by
  have widths := h.widths P A bank fgWidth vWidth exitWidth early frozen counter
  have cn : counter≠[] := by intro eq; have len:=widths.2.2.2.1; rw [eq] at len; simp at len
  have pred := hmrRootPredicate counter P.pairBank.g cn widths.2.2.2.2.1 s.basis
  rw [counterValue,encodes.2.1] at pred
  have state := h.entry_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have rows := h.entry_encodes P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes
  rw [pred] at rows
  exact ⟨state.2.2.1.trans pred,rows⟩

theorem HmrSourceFront.Compiled.entry_branch_low (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis) :
    let out := run (P.entry counter) m s
    out.basis P.branch=decide (P.pairBank.g.value out.basis%2=1) := by
  let root := run (P.root counter) m s
  let routed := run (P.route counter) m root
  have first := h.root_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have second := h.route_state P A bank fgWidth vWidth exitWidth early frozen counter root m first.2.1
  have third := h.branch_state P A bank fgWidth vWidth exitWidth early frozen counter routed m second.2.1
  have gn := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).2.2.2.2.1
  have lowMem : P.pairBank.g.payload.headD 0∈P.pairBank.g.payload := by
    cases hp : P.pairBank.g.payload with
    | nil => exact False.elim (gn hp)
    | cons a rest => simp
  have geo := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have apart : P.pairBank.g.payload.headD 0≠P.branch := by
    intro eq
    apply (List.nodup_cons.mp geo.1).1
    apply List.mem_cons_of_mem
    apply List.mem_append_right
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    exact Or.inr (Or.inl (List.mem_append_left _ (eq ▸ lowMem)))
  have low := hmrRowLow P.pairBank.g gn (run P.branchMint m routed).basis
  have result := third.2.2.1.trans ((third.2.2.2 _ apart).symm.trans low)
  have rootCount : measurementCount (P.root counter)=0 := by
    simp [HmrSourceFront.root,hmrPolarAnd,hmrPolarDress,measurementCount]
  have routeCount : measurementCount (P.route counter)=0 :=
    (hmrRouteStage_counts P.sigma _ _ _ _ counter).2.1
  dsimp only
  simp only [HmrSourceFront.entry,run_append]
  simp only [run_take]
  simp only [measurementCount_append,rootCount,routeCount,Nat.zero_add,List.drop_zero]
  have rt : run (P.root counter) (m.take 0) s=root := by rw [←rootCount,run_take]
  rw [rt]
  have rr : run (P.route counter) (m.take 0) root=routed := by rw [←routeCount,run_take]
  rw [rr]
  exact result

theorem HmrSourceFront.Compiled.entry_controls (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.pairArena.Ready s.basis) (encodes : P.pairBank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) :
    let out := run (P.entry counter) m s
    out.basis P.sigma=decide (0≤z.z ∧ z.g%2=1) ∧
    out.basis P.branch=decide (ECDSAAdd.Divsteps.bbit z=1) := by
  have result := h.entry_swap P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes counterValue
  have branch := h.entry_branch_low P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  refine ⟨result.1,?_⟩
  dsimp only at branch
  rw [result.2.2.1] at branch
  have equation : (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))).g%2=ECDSAAdd.Divsteps.bbit z := by
    by_cases hs : 0≤z.z ∧ z.g%2=1 <;> simp [hmrRouteBank,ECDSAAdd.Divsteps.bbit,hs]
  simpa only [equation] using branch

end ECDSAAdd.Arithmetic.Paper935
