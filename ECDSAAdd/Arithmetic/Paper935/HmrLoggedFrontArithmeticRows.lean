import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontArithmeticRows
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontArithmeticFrame

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.addCounter_encodes (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (gfit : PayloadFits (fgWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.f z.g))
    (vfit : PayloadFits (vWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.fv z.gv)) :
    P.headBank.Encodes (run (P.addCounter early frozen counter) m s).basis
      (hmrBranchRows z (s.basis P.sigma) (s.basis P.branch)) := by
  have values := h.addCounter_signed P A bank fgWidth vWidth exitWidth early frozen counter s m ready
    (by rw [encodes.1,encodes.2.1]; exact gfit.1)
    (by rw [encodes.1,encodes.2.1]; exact gfit.2)
    (by rw [encodes.2.2.1,encodes.2.2.2]; exact vfit.1)
    (by rw [encodes.2.2.1,encodes.2.2.2]; exact vfit.2)
  have fixed := h.addCounter_fixed P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have keep (r : WindowRow) (subset : ∀q∈r.wires,q∈P.headBank.f.wires++P.headBank.fv.wires) :
      r.value (run (P.addCounter early frozen counter) m s).basis=r.value s.basis := by
    unfold WindowRow.value signedRegValue
    rw [regValue_congr _ _ _ (by
      intro q hq
      apply fixed
      simp only [List.mem_cons,List.mem_append]
      have sub := subset q hq
      simp only [List.mem_append] at sub
      exact Or.inr (Or.inr (by tauto)))]
  refine ⟨(keep _ (fun q hq => List.mem_append_left _ hq)).trans encodes.1,?_,
    (keep _ (fun q hq => List.mem_append_right _ hq)).trans encodes.2.2.1,?_⟩
  · simpa only [encodes.1,encodes.2.1] using values.1
  · simpa only [encodes.2.2.1,encodes.2.2.2] using values.2


end ECDSAAdd.Arithmetic.Paper935
