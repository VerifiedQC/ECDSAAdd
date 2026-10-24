import ECDSAAdd.Arithmetic.Paper935.HmrHistoryTransfer
import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyFixup

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Local F13/F17/R5/R7/R11 cancellation with distinct forward/reverse
branch ports. The phase premise is derived from the actual push/measurement/
pop execution; only the reverse flag and shallow-prediction bindings remain. -/
theorem hmrHistory_fixup (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (store old output pred parity fire work : Wire) (record : List Wire)
    (pushND : (store::old::record).Nodup) (popND : (store::output::record).Nodup)
    (different : old≠output) (assemblyND : [pred,parity,fire,work,output].Nodup)
    (s : State) (tape popTape : List Bool) (ordinal cursor : Nat)
    (outputClean : s.basis output=false)
    (fit : s.basis store=true → 2*regValue record s.basis+(s.basis old).toNat<2^record.length)
    (oldBranch : s.basis old=decide (bbit st=1))
    (u : State) (actual : u=run (popHistory store output record) popTape
      (runWithTape (pushForget store old record) tape ordinal s))
    (clean : u.basis work=false)
    (sigma : u.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : u.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (storeValue : u.basis store=
      (!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)))
    (decoded : u.basis pred=
      ((!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0) &&
        decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1))) :
    runWithTape (hmrAssemblyFixup (!armed) pred parity fire work output store ordinal) tape cursor u=
      ⟨s.phase,writeBit u.basis output (decide (bbit st=1))⟩ := by
  have transfer := hmrHistory_transfer store old output record pushND popND different s tape popTape ordinal outputClean fit
  dsimp only at transfer
  rw [←actual] at transfer
  have stored : u.basis output=
      ((!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)) := by
    rw [transfer.2.1,oldBranch,←transfer.2.2.2.2,storeValue]
  have ne : output≠store := fun eq => (List.nodup_cons.mp popND).1 (by simp [eq])
  rw [hmrAssemblyFixup_math p st inv hp oldFrozen armed hfg hfirst pred parity fire work output store
    assemblyND ne ordinal cursor u tape clean sigma firing stored decoded,
    transfer.1,transfer.2.2.2.2,oldBranch]
  simp [Bool.and_comm]

end ECDSAAdd.Arithmetic.Paper935
