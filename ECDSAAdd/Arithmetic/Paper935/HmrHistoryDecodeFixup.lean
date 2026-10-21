import ECDSAAdd.Arithmetic.Paper935.HmrHistoryTransfer
import ECDSAAdd.Arithmetic.Paper935.HmrDecodeFixup

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Local F13/F17/R5/R6/R7/R11 cancellation with distinct forward/reverse
branch ports. The phase premise is derived from the actual push/measurement/
pop execution; only the reverse flag and input-residue bindings remain. -/
theorem hmrHistory_decode_fixup (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (store old output parity fire work : Wire) (record : List Wire)
    (pushND : (store::old::record).Nodup) (popND : (store::output::record).Nodup)
    (different : old≠output) (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (assemblyND : [w 13,parity,fire,work,output].Nodup)
    (apart : ∀q∈[parity,fire,work,output,store],q∉[w 13,w 14,w 15,w 16,w 17,w 18])
    (s : State) (tape popTape : List Bool) (ordinal cursor : Nat)
    (outputClean : s.basis output=false)
    (fit : s.basis store=true → 2*regValue record s.basis+(s.basis old).toNat<2^record.length)
    (oldBranch : s.basis old=decide (bbit st=1))
    (u : State) (actual : u=run (popHistory store output record) popTape
      (runWithTape (pushForget store old record) tape ordinal s))
    (clean : u.basis work=false) (predictionClean : u.basis (w 13)=false)
    (cacheClean : u.basis (w 14)=false ∧ u.basis (w 15)=false ∧ u.basis (w 16)=false ∧
      u.basis (w 17)=false ∧ u.basis (w 18)=false)
    (sigma : u.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : u.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (storeValue : u.basis store=
      (!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)))
    (bindings : HmrDecoderBindings p st w u.basis
      (!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0))) :
    runWithTape (hmrDecodeFixup w (!armed) parity fire work output store ordinal) tape cursor u=
      ⟨s.phase,writeBit (hmrDecoderComputed w u.basis) output (decide (bbit st=1))⟩ := by
  have transfer := hmrHistory_transfer store old output record pushND popND different s tape popTape ordinal outputClean fit
  dsimp only at transfer
  rw [←actual] at transfer
  have stored : u.basis output=
      ((!(oldFrozen || u.basis fire) && !u.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)) := by
    rw [transfer.2.1,oldBranch,←transfer.2.2.2.2,storeValue]
  have ne : output≠store := fun eq => (List.nodup_cons.mp popND).1 (by simp [eq])
  rw [hmrDecodeFixup_math p st inv hp oldFrozen armed hfg hfirst w geometry parity fire work output store
    assemblyND ne apart ordinal cursor u tape clean predictionClean cacheClean sigma firing stored bindings,
    transfer.1,transfer.2.2.2.2,oldBranch]
  simp [Bool.and_comm]

end ECDSAAdd.Arithmetic.Paper935
