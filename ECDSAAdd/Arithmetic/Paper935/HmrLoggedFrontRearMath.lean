import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontRearMath
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRear

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.rear_math (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis)
    (encodes : P.headBank.Encodes s.basis (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))))
    (sigma : s.basis P.sigma=decide (0≤z.z ∧ z.g%2=1))
    (branch : s.basis P.branch=decide (ECDSAAdd.Divsteps.bbit z=1))
    (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z)) :
    let out := run (P.rear early frozen counter) m s
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧
    P.exitBank.Encodes out.basis (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z) ∧
    regValue counter out.basis=(regValue counter s.basis+(if early then true else !s.basis frozen).toNat)%2^counter.length := by
  let routed := hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))
  let fr := if early then false else s.basis frozen
  let after := hmrShiftRows (hmrBranchRows routed (s.basis P.sigma) (s.basis P.branch)) early (s.basis frozen)
  have routeFit := hmrRouteBank_fits fgWidth vWidth z (decide (0≤z.z ∧ z.g%2=1)) prefit
  have shape : after=hmrStepRows z fr := by
    dsimp only [after,hmrStepRows,routed]
    rw [sigma,branch]
    cases early <;> rfl
  have fields := hmrStepRows_fields z fr fodd frozenZero
  have fits : exitWidth.Fits after := by
    rw [shape]
    exact ⟨fields.1 ▸ exitfit.1,fields.2.1 ▸ exitfit.2.1,
      fields.2.2.1 ▸ exitfit.2.2.1,fields.2.2.2 ▸ exitfit.2.2.2⟩
  have even : (branchInt (s.basis P.sigma) (s.basis P.branch) routed.f routed.g)%2=0 := by
    rw [sigma,branch]
    exact hmrBranchRows_even z fodd
  have result := h.rear_state P A bank fgWidth vWidth exitWidth early frozen counter s m routed ready encodes
    (branchInt_fits fgWidth _ _ _ _ routeFit.1 routeFit.2.1)
    (branchInt_fits vWidth _ _ _ _ routeFit.2.2.1 routeFit.2.2.2)
    even (fun _ => routeFit.2.2.1.1) (fun _ => routeFit.2.2.1.2) fits
  have rows := result.2.2.1
  change P.exitBank.Encodes _ after at rows
  rw [shape] at rows
  exact ⟨result.1,result.2.1,⟨rows.1.trans fields.1,rows.2.1.trans fields.2.1,
    rows.2.2.1.trans fields.2.2.1,rows.2.2.2.trans fields.2.2.2⟩,result.2.2.2⟩


end ECDSAAdd.Arithmetic.Paper935
