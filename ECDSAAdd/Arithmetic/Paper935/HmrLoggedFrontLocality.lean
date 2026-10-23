import ECDSAAdd.Arithmetic.Paper935.HmrRepackFrame
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontCorrect
import ECDSAAdd.Arithmetic.Paper935.HmrArmedRecordFit
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontPrepare
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontArithmeticFrame
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontEntryFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- An incoming owned site outside the arithmetic rows and counter survives
padding, flag allocation, routing and headroom allocation. -/
theorem HmrSourceFront.Logged.prepare_locality (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (q : Wire) (owned : q∈A.live) (away : q∉bank.rows.flatMap WindowRow.wires)
    (counterAway : q∉counter) :
    q∈P.headArena.live ∧ q∉P.headBank.rows.flatMap WindowRow.wires ∧
    (run (P.prepare counter) m s).basis q=s.basis q := by
  let padded := run P.padding m s
  let entered := run (P.entry counter) m padded
  have pad := loggedBank_locality _ _ _ _ _ _ _ h.padding q owned away s m
  have padState := h.padding_state P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes fits
  have sigmaOwned := P.pairArena.checkBorrow_mono P.sigmaArena 1 P.sigmaWork h.sigmaBorrow pad.1
  have branchOwned := P.sigmaArena.checkBorrow_mono P.branchArena 1 P.branchWork h.branchBorrow sigmaOwned
  have qs : q≠P.sigma := by
    intro eq
    apply (hmrLoggedPorts_contract P.pairArena P.sigmaArena 1 P.sigmaWork h.sigmaBorrow).2.2 (0 : Fin 1)
    change P.sigma∈P.pairArena.live
    exact eq ▸ pad.1
  have qb : q≠P.branch := by
    intro eq
    apply (hmrLoggedPorts_contract P.sigmaArena P.branchArena 1 P.branchWork h.branchBorrow).2.2 (0 : Fin 1)
    change P.branch∈P.sigmaArena.live
    exact eq ▸ sigmaOwned
  have entry := h.entry_frame P A bank fgWidth vWidth exitWidth early frozen counter padded m padState.2.1 q
    ⟨qb,qs,by simpa only [List.mem_append,not_or] using And.intro pad.2.1 counterAway⟩
  have head := loggedBank_locality _ _ _ _ _ _ _ h.headroom q branchOwned pad.2.1 entered m
  refine ⟨head.1,head.2.1,?_⟩
  rw [h.prepare_run P A bank fgWidth vWidth exitWidth early frozen counter s m]
  exact head.2.2.trans (entry.trans pad.2.2)

/-- The arithmetic tail preserves external owned storage through its actual
counter update, shifts and exit shrink. -/
theorem HmrSourceFront.Logged.rear_locality (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis)
    (q : Wire) (owned : q∈P.headArena.live) (away : q∉P.headBank.rows.flatMap WindowRow.wires)
    (counterAway : q∉counter) :
    q∈P.exitArena.live ∧ q∉P.exitBank.rows.flatMap WindowRow.wires ∧
    (run (P.rear early frozen counter) m s).basis q=s.basis q := by
  let mid := run (P.addCounter early frozen counter) m s
  let tape := m.drop (measurementCount (P.addCounter early frozen counter))
  let shifted := run (P.shift early frozen) tape mid
  let rest := tape.drop (measurementCount (P.shift early frozen))
  have gAway : q∉P.headBank.g.wires := fun mem => away (List.mem_flatMap.mpr ⟨_,by simp [WindowBank.rows],mem⟩)
  have gvAway : q∉P.headBank.gv.wires := fun mem => away (List.mem_flatMap.mpr ⟨_,by simp [WindowBank.rows],mem⟩)
  have fvAway : q∉P.headBank.fv.wires := fun mem => away (List.mem_flatMap.mpr ⟨_,by simp [WindowBank.rows],mem⟩)
  have arith := h.addCounter_frame P A bank fgWidth vWidth exitWidth early frozen counter s m ready q
    (by simpa only [List.mem_append,not_or] using And.intro (And.intro gAway gvAway) counterAway)
  have state := h.addCounter_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have shift := h.shift_state P A bank fgWidth vWidth exitWidth early frozen counter mid tape state.2.1
  have shiftFrame := shift.2.2 q (by
    intro mem
    rcases List.mem_append.mp mem with hg | hf
    · exact gAway (List.mem_append_left _ hg)
    · exact fvAway (List.mem_append_left _ hf))
  have last := loggedBank_locality _ _ _ _ _ _ _ h.shrinking q owned away shifted rest
  refine ⟨last.1,last.2.1,?_⟩
  rw [HmrSourceFront.rear,run_append,run_take,run_append,run_take]
  exact last.2.2.trans (shiftFrame.trans arith)

/-- Full F1--F6 locality for external storage, without a premise asserting
that the output already preserves the stored value. -/
theorem HmrSourceFront.Logged.run_locality (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (q : Wire) (owned : q∈A.live) (away : q∉bank.rows.flatMap WindowRow.wires)
    (counterAway : q∉counter) :
    q∈P.exitArena.live ∧ q∉P.exitBank.rows.flatMap WindowRow.wires ∧
    (run (P.program early frozen counter) m s).basis q=s.basis q := by
  let mid := run (P.prepare counter) m s
  let tape := m.drop (measurementCount (P.prepare counter))
  have pre := h.prepare_locality P A bank fgWidth vWidth exitWidth early frozen counter s m z
    ready encodes fits q owned away counterAway
  have prepared := h.prepare_state P A bank fgWidth vWidth exitWidth early frozen counter s m z
    ready encodes counterValue fits
  have rear := h.rear_locality P A bank fgWidth vWidth exitWidth early frozen counter mid tape
    prepared.2.1 q pre.1 pre.2.1 counterAway
  refine ⟨rear.1,rear.2.1,?_⟩
  rw [P.program_prepare_rear early frozen counter,run_append,run_take]
  exact rear.2.2.trans pre.2.2

theorem HmrSourceFront.Logged.run_repacked_locality (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (q : Wire) (owned : q∈A.live) (away : q∉bank.rows.flatMap WindowRow.wires)
    (counterAway : q∉counter)
    (C : Arena) (moves : List (Wire × Wire)) (checked : P.exitArena.checkRepack moves=some C)
    (movesAway : ∀p∈moves,p.1≠q) :
    q∈C.live ∧ (run (P.program early frozen counter++repack moves) m s).basis q=s.basis q := by
  have front := h.run_locality P A bank fgWidth vWidth exitWidth early frozen counter s m z
    ready encodes counterValue fits q owned away counterAway
  have fixed := P.exitArena.checkRepack_fixed C moves checked q front.1 movesAway
  have frame := P.exitArena.checkRepack_frame C moves checked q front.1 movesAway
    (run (P.program early frozen counter) m s) (m.drop (measurementCount (P.program early frozen counter)))
  refine ⟨fixed.1,?_⟩
  rw [run_append,run_take]
  exact frame.trans front.2.2

end ECDSAAdd.Arithmetic.Paper935
