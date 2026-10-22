import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBankResize_widths (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p)) :
    out.Widths w := by
  have widths := planWindowRows_widths _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h)
  cases order <;>
    simp only [HmrBankOrder.rows,HmrBankOrder.requests,List.map_cons,List.map_nil,List.cons.injEq] at widths
  all_goals unfold WindowBank.Widths; tauto

theorem HmrSourceFront.Compiled.widths (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter) :
    P.pairBank.Widths ⟨fgWidth,fgWidth,vWidth,vWidth⟩ ∧
    P.headBank.Widths ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩ ∧
    P.exitBank.Widths exitWidth ∧ counter.length=6 ∧
    P.pairBank.g.payload≠[] ∧ P.headBank.g.payload≠[] ∧ P.headBank.fv.payload≠[] := by
  have pair := compileHmrBankResize_widths _ _ _ _ _ _ _ h.padding
  have head := compileHmrBankResize_widths _ _ _ _ _ _ _ h.headroom
  have out := compileHmrBankResize_widths _ _ _ _ _ _ _ h.shrinking
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
