import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontPadding
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontWidths

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.pair_geometry (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter) :
    (hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires).Nodup ∧
    (hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires).toFinset⊆P.pairArena.live := by
  have inputs := h.entry.inputs A bank fgWidth vWidth exitWidth early frozen counter
  have rows := loggedBank_static_owned _ _ _ _ _ _ _ h.padding
  have outside (q : Wire) (hq : q∈hmrFrontInputs early frozen counter) :
      q∈P.pairArena.live ∧ q∉P.pairBank.rows.flatMap WindowRow.wires := by
    have hc := loggedBank_locality _ _ _ _ _ _ _ h.padding q
      (inputs.2.1 (List.mem_toFinset.mpr hq)) (List.disjoint_left.mp inputs.2.2 hq)
      ⟨false,fun _ => false⟩ []
    exact ⟨hc.1,hc.2.1⟩
  constructor
  · exact List.nodup_append'.mpr ⟨inputs.1,rows.1,List.disjoint_left.mpr (fun q hq => (outside q hq).2)⟩
  · intro q hq
    simp only [List.mem_toFinset,List.mem_append] at hq
    rcases hq with hi|hr
    · exact (outside q hi).1
    · exact rows.2 (List.mem_toFinset.mpr hr)


theorem HmrSourceFront.Logged.flags_geometry (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter) :
    (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires)).Nodup ∧
    (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires)).toFinset⊆P.branchArena.live := by
  have pair := h.pair_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have sigma := hmrLoggedOne_extend P.pairArena P.sigmaArena P.sigmaWork _ h.sigmaBorrow pair.1 pair.2
  exact hmrLoggedOne_extend P.sigmaArena P.branchArena P.branchWork _ h.branchBorrow sigma.1 sigma.2


theorem HmrSourceFront.Logged.padding_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z) :
    let out := run P.padding m s
    out.phase=s.phase ∧ P.pairArena.Ready out.basis ∧ P.pairBank.Encodes out.basis z ∧
    ∀q∈hmrFrontInputs early frozen counter,out.basis q=s.basis q := by
  have run := loggedBank_correct _ _ _ _ _ _ _ h.padding s m z ready encodes fits
  have inputs := h.entry.inputs A bank fgWidth vWidth exitWidth early frozen counter
  refine ⟨loggedBank_phase _ _ _ _ _ _ _ h.padding s m,run.2.1,run.2.2.1,?_⟩
  intro q hq
  exact (loggedBank_locality _ _ _ _ _ _ _ h.padding q
    (inputs.2.1 (List.mem_toFinset.mpr hq)) (List.disjoint_left.mp inputs.2.2 hq) s m).2.2


end ECDSAAdd.Arithmetic.Paper935
