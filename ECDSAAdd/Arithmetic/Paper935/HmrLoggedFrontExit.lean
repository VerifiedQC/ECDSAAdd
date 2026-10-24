import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontExit
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontShift

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.exit_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (fits : exitWidth.Fits z) :
    let out := run P.shrinking m s
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧ P.exitBank.Encodes out.basis z ∧
    ∀q∈P.branch::P.sigma::hmrFrontInputs early frozen counter,out.basis q=s.basis q := by
  have geometry := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have fixed := loggedBank_fixed _ _ _ _ _ _ _ h.shrinking
    (P.branch::P.sigma::hmrFrontInputs early frozen counter) geometry.1 geometry.2
  have state := loggedBank_correct _ _ _ _ _ _ _ h.shrinking s m z ready encodes fits
  exact ⟨loggedBank_phase _ _ _ _ _ _ _ h.shrinking s m,state.2.1,state.2.2.1,fixed.2.2 s m⟩


end ECDSAAdd.Arithmetic.Paper935
