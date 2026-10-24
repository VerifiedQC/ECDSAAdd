import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyReturn
import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyValue

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

theorem compileHmrAssembly_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (A B : Arena) (pred parity fire output : Wire) (work : List Wire)
    (compiled : compileHmrAssembly A (!armed) pred parity fire output=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (stored : s.basis output=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)))
    (decoded : s.basis pred=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1))) :
    run (hmrBranchAssembly (!armed) pred parity fire (hmrBorrowPorts work (0 : Fin 1)) output) m s=
      ⟨s.phase,writeBit s.basis output (decide (bbit st=1))⟩ := by
  rw [compileHmrAssembly_run A B (!armed) pred parity fire output work compiled s m ready]
  have value := hmrAssemblyValue_math p st inv hp oldFrozen armed (s.basis parity) (s.basis fire)
    (s.basis output) (s.basis pred) hfg hfirst sigma firing stored decoded
  rw [value]

end ECDSAAdd.Arithmetic.Paper935
