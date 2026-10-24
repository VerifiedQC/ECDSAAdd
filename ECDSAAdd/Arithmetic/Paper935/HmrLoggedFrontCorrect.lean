import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontCorrect
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontPrepare

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Arithmetic.Divsteps

theorem HmrSourceFront.Logged.run_math (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z).z) :
    let out := run (P.program early frozen counter) m s
    let expected := if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧ P.exitBank.Encodes out.basis expected ∧
    signedRegValue counter out.basis=expected.z := by
  let mid := run (P.prepare counter) m s
  let tape := m.drop (measurementCount (P.prepare counter))
  let fr := if early then false else s.basis frozen
  have prep := h.prepare_state P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes counterValue prefit
  have same : (if early then false else mid.basis frozen)=fr := by
    dsimp only [fr]
    cases he : early
    · exact prep.2.2.2.2.2.1 he
    · rfl
  have rear := h.rear_math P A bank fgWidth vWidth exitWidth early frozen counter mid tape z
    prep.2.1 prep.2.2.1 prep.2.2.2.1 prep.2.2.2.2.1 fodd
    (by rw [same]; exact frozenZero) prefit (by rw [same]; exact exitfit)
  have active : (if early then true else !mid.basis frozen)= !fr := by
    dsimp only [fr]
    cases he : early
    · rw [prep.2.2.2.2.2.1 he]; rfl
    · rfl
  have word : regValue counter (run (P.rear early frozen counter) tape mid).basis=
      counterWord counter.length (!fr) (decide (0≤z.z ∧ z.g%2=1)) (regValue counter s.basis) := by
    rw [rear.2.2.2,prep.2.2.2.2.2.2,active]
    simp only [counterWord,decide_eq_true_eq]
  have width := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).2.2.2.1
  have decoded := pinnedCounter_value z fr counter.length (regValue counter s.basis)
    (by omega) (regValue_lt counter s.basis) counterValue frozenZero zfit
  have counterResult : signedRegValue counter (run (P.rear early frozen counter) tape mid).basis=
      (if fr then z else ECDSAAdd.Divsteps.zStep z).z := by
    unfold signedRegValue
    rw [word]
    exact decoded
  rw [same] at rear
  dsimp only
  rw [P.program_prepare_rear early frozen counter,run_append,run_take]
  exact ⟨rear.1.trans prep.1,rear.2.1,rear.2.2.1,counterResult⟩


end ECDSAAdd.Arithmetic.Paper935
