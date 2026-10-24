import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontCorrect
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontPrepare
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRearMathFrame

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Arithmetic.Divsteps

theorem HmrSourceFront.Logged.run_control_values (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    :
    let out := run (P.program early frozen counter) m s
    out.basis P.sigma=decide (0≤z.z ∧ z.g%2=1) ∧
    out.basis P.branch=decide (ECDSAAdd.Divsteps.bbit z=1) ∧
    (early=false → out.basis frozen=s.basis frozen) := by
  let mid := run (P.prepare counter) m s
  let tape := m.drop (measurementCount (P.prepare counter))
  let fr := if early then false else s.basis frozen
  have prep := h.prepare_state P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes counterValue prefit
  have same : (if early then false else mid.basis frozen)=fr := by
    dsimp only [fr]
    cases he : early
    · exact prep.2.2.2.2.2.1 he
    · rfl
  have rear := h.rear_math_frame P A bank fgWidth vWidth exitWidth early frozen counter mid tape z
    prep.2.1 prep.2.2.1 prep.2.2.2.1 prep.2.2.2.2.1 fodd
    (by rw [same]; exact frozenZero) prefit (by rw [same]; exact exitfit)
  dsimp only
  rw [P.program_prepare_rear early frozen counter,run_append,run_take]
  refine ⟨(rear P.sigma (by simp)).trans prep.2.2.2.1,
    (rear P.branch (by simp)).trans prep.2.2.2.2.1, ?_⟩
  intro he
  exact (rear frozen (by simp [he])).trans (prep.2.2.2.2.2.1 he)

end ECDSAAdd.Arithmetic.Paper935
