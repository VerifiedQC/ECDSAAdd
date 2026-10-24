import ECDSAAdd.Arithmetic.Paper935.HmrFlagsState
import ECDSAAdd.Arithmetic.Paper935.HmrRowBits

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Allocated source jflags consume the sign-extended physical coefficient
row. Its integer encoding is needed only when the class is enabled. -/
theorem compileHmrRowFlags_depths (A B : Arena) (c3 : Wire) (fv : List Wire) (fvs : Wire)
    (work : List Wire)
    (h : compileHmrFlags A c3 (hmrRowPos fv fvs 2) (hmrRowPos fv fvs 3) (hmrRowPos fv fvs 4)=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (v : Int)
    (value : s.basis c3=true → signedRegValue (fv++[fvs]) s.basis=v)
    (div4 : s.basis c3=true → (4 : Int)∣v) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let out := run (hmrAllocatedFlags c3 (hmrRowPos fv fvs 2) (hmrRowPos fv fvs 3) (hmrRowPos fv fvs 4) work) m s
    out.basis (w 0)=(s.basis c3 && decide (padicValInt 2 v=2)) ∧
    out.basis (w 2)=(s.basis c3 && decide (padicValInt 2 v=3)) ∧
    out.basis (w 4)=(s.basis c3 && decide (padicValInt 2 v=4)) ∧
    out.basis (w 5)=(s.basis c3 && decide ((32 : Int)∣v)) := by
  have bit2 := hmrRowPos_bit fv fvs s.basis 2 (by decide)
  have bit3 := hmrRowPos_bit fv fvs s.basis 3 (by decide)
  have bit4 := hmrRowPos_bit fv fvs s.basis 4 (by decide)
  have base := compileHmrFlags_depths A B c3 (hmrRowPos fv fvs 2) (hmrRowPos fv fvs 3)
    (hmrRowPos fv fvs 4) work h s m ready (signedRegValue (fv++[fvs]) s.basis)
    (fun he => by rw [value he]; exact div4 he) ⟨bit2,bit3,bit4⟩
  cases he : s.basis c3 with
  | false => simpa only [he,Bool.false_and] using base
  | true => simpa only [value he,he] using base

end ECDSAAdd.Arithmetic.Paper935
