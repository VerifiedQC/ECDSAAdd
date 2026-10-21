import ECDSAAdd.Arithmetic.Paper935.HmrFlagsDelayed
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowReturn

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrFlags_erase_return (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work))
    (s : State) (m : List Bool) (ready : B.Ready s.basis)
    (values : HmrFlagValues c3 b2 b3 b4 (hmrBorrowPorts work) s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let out := run (hmrFlagsRelease c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := (compileHmrFlags_contract A B c3 b2 b3 b4 work h).2.2
  have ports := hmrBorrowPorts_contract A B 6 work hc
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have inj : Function.Injective w := ports.1
  have clean : ∀i : Fin 6,hmrClearFlags w s.basis (w i)=false := by
    intro i
    fin_cases i <;> simp [hmrClearFlags,writeBit,inj.eq_iff]
  have kept : B.Ready (hmrClearFlags w s.basis) := by
    intro q hq hn
    have away (i : Fin 6) : q≠w i := by
      intro eq
      apply hn
      rw [eq]
      exact ports.2.1 i
    simp only [hmrClearFlags,writeBit,Function.update_of_ne (away _)]
    exact ready q hq hn
  dsimp only
  rw [compileHmrFlags_erase A B c3 b2 b3 b4 work h s m values]
  exact hmrBorrow_return_current A B 6 work hc _ kept clean

end ECDSAAdd.Arithmetic.Paper935
