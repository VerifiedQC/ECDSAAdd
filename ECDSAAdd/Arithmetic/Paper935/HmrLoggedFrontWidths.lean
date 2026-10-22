import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontWidths
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontAdapters

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.widths (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter) :
    P.pairBank.Widths ⟨fgWidth,fgWidth,vWidth,vWidth⟩ ∧
    P.headBank.Widths ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩ ∧
    P.exitBank.Widths exitWidth ∧ counter.length=6 ∧
    P.pairBank.g.payload≠[] ∧ P.headBank.g.payload≠[] ∧ P.headBank.fv.payload≠[] := by
  have pair := loggedBank_widths _ _ _ _ _ _ _ h.padding
  have head := loggedBank_widths _ _ _ _ _ _ _ h.headroom
  have out := loggedBank_widths _ _ _ _ _ _ _ h.shrinking
  have positive := h.entry.1
  refine ⟨pair,head,out,h.entry.2.2.1,?_,?_,?_⟩
  · intro empty
    have length := pair.2.1
    rw [empty] at length
    simp only [List.length_nil] at length
    omega
  · intro empty
    have length := head.2.1
    rw [empty] at length
    simp only [List.length_nil] at length
    omega
  · intro empty
    have length := head.2.2.1
    rw [empty] at length
    simp only [List.length_nil] at length
    omega


end ECDSAAdd.Arithmetic.Paper935
