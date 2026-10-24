import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts
import ECDSAAdd.Arithmetic.Paper935.HmrRowBits
import ECDSAAdd.Arithmetic.Divsteps.SwapDecoder

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Literal R2: pre-freeze copy, otherwise a negative-frozen controlled AND. -/
def hmrSigmaRead (early : Bool) (frozen bit output : Wire) : Program :=
  if early then [.CX bit output] else hmrPolarAnd frozen bit output false true

def compileHmrSigmaRead (A : Arena) (early : Bool) (frozen bit : Wire) : Option (Arena × List Wire) :=
  if bit∈A.live ∧ (early=false → frozen∈A.live ∧ frozen≠bit) then A.borrowMany 1 else none

theorem compileHmrSigmaRead_contract (A B : Arena) (early : Bool) (frozen bit : Wire) (work : List Wire)
    (h : compileHmrSigmaRead A early frozen bit=some (B,work)) :
    bit∈A.live ∧ (early=false → frozen∈A.live ∧ frozen≠bit) ∧ A.borrowMany 1=some (B,work) := by
  unfold compileHmrSigmaRead at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next => simp at h

theorem compileHmrSigmaRead_run (A B : Arena) (early : Bool) (frozen bit : Wire) (work : List Wire)
    (h : compileHmrSigmaRead A early frozen bit=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrSigmaRead early frozen bit (hmrBorrowPorts work (0 : Fin 1))) m s=
      ⟨s.phase,writeBit s.basis (hmrBorrowPorts work (0 : Fin 1))
        ((if early then true else !s.basis frozen) && s.basis bit)⟩ := by
  have hc := compileHmrSigmaRead_contract A B early frozen bit work h
  have ports := hmrBorrowPorts_contract A B 1 work hc.2.2
  have clean := hmrBorrowPorts_clean A B 1 work hc.2.2 s.basis ready (0 : Fin 1)
  have bitApart : bit≠hmrBorrowPorts work (0 : Fin 1) := fun eq => ports.2.2 0 (eq ▸ hc.1)
  cases he : early with
  | true => simp [hmrSigmaRead,run,clean,writeBit]
  | false =>
    have frozenOwned := hc.2.1 he
    have frozenApart : frozen≠hmrBorrowPorts work (0 : Fin 1) := fun eq => ports.2.2 0 (eq ▸ frozenOwned.1)
    exact hmrPolarAnd_run frozen bit (hmrBorrowPorts work (0 : Fin 1)) false true
      (by simp [frozenOwned.2,frozenApart,bitApart]) s m clean

theorem compileHmrSigmaRead_math (A B : Arena) (early oldFrozen : Bool) (frozen : Wire)
    (fv : List Wire) (sign : Wire) (work : List Wire)
    (h : compileHmrSigmaRead A early frozen (hmrRowPos fv sign 1)=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (p : Int) (st : ZState) (inv : Inv p st) (odd : p%2=1)
    (frozenValue : s.basis frozen=oldFrozen) (earlyOpen : early=true → oldFrozen=false)
    (rowValue : oldFrozen=false → signedRegValue (fv++[sign]) s.basis=(zStep st).fv) :
    (run (hmrSigmaRead early frozen (hmrRowPos fv sign 1) (hmrBorrowPorts work (0 : Fin 1))) m s).basis
      (hmrBorrowPorts work (0 : Fin 1))=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)) := by
  rw [compileHmrSigmaRead_run A B early frozen _ work h s m ready]
  simp only [writeBit,Function.update_self]
  have bit := hmrRowPos_bit fv sign s.basis 1 (by decide)
  cases hf : oldFrozen with
  | true =>
    have notEarly : early=false := by cases he : early; rfl; have := earlyOpen he; simp_all
    simp [notEarly,frozenValue,hf]
  | false =>
    rw [rowValue hf] at bit
    have swap := swap_bit_law p st inv odd
    cases early <;> simpa [frozenValue,hf,bit] using swap.symm

end ECDSAAdd.Arithmetic.Paper935
