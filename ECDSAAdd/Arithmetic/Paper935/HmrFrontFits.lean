import ECDSAAdd.Arithmetic.Paper935.HmrFrontRowMath

namespace ECDSAAdd.Arithmetic.Paper935

theorem branchInt_fits (width : Nat) (q c : Bool) (a b : Int)
    (ha : PayloadFits width a) (hb : PayloadFits width b) :
    PayloadFits (width+1) (branchInt q c a b) := by
  cases c
  · exact hb.mono (by omega)
  · cases q
    · exact hb.add ha
    · exact ha.sub hb

theorem hmrRouteBank_fits (fgWidth vWidth : Nat) (z : ECDSAAdd.Divsteps.ZState) (swap : Bool)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z) :
    (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits (hmrRouteBank z swap) := by
  cases swap
  · exact fits
  · exact ⟨fits.2.1,fits.1,fits.2.2.2,fits.2.2.1⟩

theorem hmrBranchRows_fits (fgWidth vWidth : Nat) (z : ECDSAAdd.Divsteps.ZState) (q c : Bool)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z) :
    (RowWindow.mk (fgWidth+1) (fgWidth+1) (vWidth+1) (vWidth+1)).Fits (hmrBranchRows z q c) :=
  ⟨fits.1.mono (by dsimp; omega),branchInt_fits fgWidth q c z.f z.g fits.1 fits.2.1,
    fits.2.2.1.mono (by dsimp; omega),branchInt_fits vWidth q c z.fv z.gv fits.2.2.1 fits.2.2.2⟩

theorem hmrBranchRows_even (z : ECDSAAdd.Divsteps.ZState) (fodd : z.f%2=1) :
    (hmrBranchRows (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1)))
      (decide (0≤z.z ∧ z.g%2=1)) (decide (ECDSAAdd.Divsteps.bbit z=1))).g%2=0 := by
  have g := branchInt_divstep_g z fodd
  have shape : (hmrBranchRows (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1)))
      (decide (0≤z.z ∧ z.g%2=1)) (decide (ECDSAAdd.Divsteps.bbit z=1))).g=
      2*(ECDSAAdd.Divsteps.zStep z).g := by
    convert g using 1; by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [hmrBranchRows,hmrRouteBank,hq]
  rw [shape]
  omega

end ECDSAAdd.Arithmetic.Paper935
