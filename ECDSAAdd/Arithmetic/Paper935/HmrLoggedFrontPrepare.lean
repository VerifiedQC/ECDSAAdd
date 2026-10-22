import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontPrepare
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRearMath

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.prepare_run (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter) (s : State) (m : List Bool) :
    run (P.prepare counter) m s=run P.headroom m (run (P.entry counter) m (run P.padding m s)) := by
  have padCount := (loggedBank_resources _ _ _ _ _ _ _ h.padding).2.2.1
  have entryCount := P.entry_measurements counter
  simp only [HmrSourceFront.prepare,run_append]
  simp only [run_take]
  simp only [measurementCount_append,padCount,entryCount,Nat.zero_add,List.drop_zero]
  have rt : run P.padding (m.take 0) s=run P.padding m s := by rw [←padCount,run_take]
  rw [rt]
  have rr : run (P.entry counter) (m.take 0) (run P.padding m s)=
      run (P.entry counter) m (run P.padding m s) := by rw [←entryCount,run_take]
  rw [rr]


theorem HmrSourceFront.Logged.prepare_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z)
    (fits : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z) :
    let out := run (P.prepare counter) m s
    out.phase=s.phase ∧ P.headArena.Ready out.basis ∧
    P.headBank.Encodes out.basis (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))) ∧
    out.basis P.sigma=decide (0≤z.z ∧ z.g%2=1) ∧
    out.basis P.branch=decide (ECDSAAdd.Divsteps.bbit z=1) ∧
    (early=false → out.basis frozen=s.basis frozen) ∧
    regValue counter out.basis=(if 0≤z.z ∧ z.g%2=1 then 2^counter.length-1-regValue counter s.basis else regValue counter s.basis) := by
  let padded := run P.padding m s
  let entered := run (P.entry counter) m padded
  have pad := h.padding_state P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes fits
  have padCounter : regValue counter padded.basis=regValue counter s.basis :=
    regValue_congr _ _ _ (fun q hq => pad.2.2.2 q (by simp [hmrFrontInputs,hq]))
  have padSigned : signedRegValue counter padded.basis=z.z := by
    unfold signedRegValue
    rw [padCounter]
    exact counterValue
  have entry := h.entry_state P A bank fgWidth vWidth exitWidth early frozen counter padded m pad.2.1
  have swapped := h.entry_swap P A bank fgWidth vWidth exitWidth early frozen counter padded m z pad.2.1 pad.2.2.1 padSigned
  have controls := h.entry_controls P A bank fgWidth vWidth exitWidth early frozen counter padded m z pad.2.1 pad.2.2.1 padSigned
  have routeFits := hmrRouteBank_fits fgWidth vWidth z (decide (0≤z.z ∧ z.g%2=1)) fits
  have headFits : (RowWindow.mk (fgWidth+1) (fgWidth+1) (vWidth+1) (vWidth+1)).Fits
      (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))) :=
    routeFits.mono ⟨Nat.le_succ _,Nat.le_succ _,Nat.le_succ _,Nat.le_succ _⟩
  have head := h.headroom_state P A bank fgWidth vWidth exitWidth early frozen counter entered m
    (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))) entry.2.1 swapped.2 headFits
  have entryCounter := h.entry_counter P A bank fgWidth vWidth exitWidth early frozen counter padded m pad.2.1
  have widths := h.widths P A bank fgWidth vWidth exitWidth early frozen counter
  have cn : counter≠[] := by intro eq; have len:=widths.2.2.2.1; rw [eq] at len; simp at len
  have pred := hmrRootPredicate counter P.pairBank.g cn widths.2.2.2.2.1 padded.basis
  rw [padSigned,pad.2.2.1.2.1] at pred
  dsimp only
  rw [h.prepare_run P A bank fgWidth vWidth exitWidth early frozen counter s m]
  refine ⟨head.1.trans (entry.1.trans pad.1),head.2.1,head.2.2.1,
    (head.2.2.2 P.sigma (by simp)).trans controls.1,
    (head.2.2.2 P.branch (by simp)).trans controls.2,?_,?_⟩
  · intro late
    exact (head.2.2.2 frozen (by simp [hmrFrontInputs,late])).trans
      ((h.entry_frozen P A bank fgWidth vWidth exitWidth early frozen counter padded m pad.2.1 late).trans
      (pad.2.2.2 frozen (by simp [hmrFrontInputs,late])))
  · have keep : regValue counter (run P.headroom m entered).basis=regValue counter entered.basis :=
      regValue_congr _ _ _ (fun q hq => head.2.2.2 q (by simp [hmrFrontInputs,hq]))
    rw [keep,entryCounter,pred,padCounter]
    simp only [decide_eq_true_eq]


end ECDSAAdd.Arithmetic.Paper935
