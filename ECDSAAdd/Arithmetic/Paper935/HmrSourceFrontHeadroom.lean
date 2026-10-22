import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontBranch
import ECDSAAdd.Arithmetic.Paper935.HmrBankFixed

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.head_geometry (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter) :
    (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.rows.flatMap WindowRow.wires)).Nodup ∧
    (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.rows.flatMap WindowRow.wires)).toFinset⊆P.headArena.live := by
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have result := compileHmrBankResize_fixed _ _ _ _ _ _ _ h.headroom
    (P.branch::P.sigma::hmrFrontInputs early frozen counter) flags.1 flags.2
  exact ⟨result.1,result.2.1⟩

theorem HmrSourceFront.Compiled.headroom_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.branchArena.Ready s.basis) (encodes : P.pairBank.Encodes s.basis z)
    (fits : (RowWindow.mk (fgWidth+1) (fgWidth+1) (vWidth+1) (vWidth+1)).Fits z) :
    let out := run P.headroom m s
    out.phase=s.phase ∧ P.headArena.Ready out.basis ∧ P.headBank.Encodes out.basis z ∧
    ∀q∈P.branch::P.sigma::hmrFrontInputs early frozen counter,out.basis q=s.basis q := by
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have fixed := compileHmrBankResize_fixed _ _ _ _ _ _ _ h.headroom
    (P.branch::P.sigma::hmrFrontInputs early frozen counter) flags.1 flags.2
  have state := compileHmrBankResize_correct _ _ _ _ _ _ _ h.headroom s m z ready encodes fits
  exact ⟨compileHmrBankResize_phase _ _ _ _ _ _ _ h.headroom s m,state.2.1,state.2.2.1,fixed.2.2 s m⟩

end ECDSAAdd.Arithmetic.Paper935
