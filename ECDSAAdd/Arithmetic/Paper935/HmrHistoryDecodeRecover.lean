import ECDSAAdd.Arithmetic.Paper935.HmrHistoryTransfer
import ECDSAAdd.Arithmetic.Paper935.HmrHistoryDecodeFixup
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderRetireWrite

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def hmrDecodeRecover (w : Fin 19 → Wire) (early : Bool) (parity fire work output store : Wire)
    (ordinal : Nat) : RecordedProgram :=
  hmrDecodeFixup w early parity fire work output store ordinal ++ embedRecorded (hmrDecoderErase w)

/-- Local actual history release and recovery, including source R12's
prediction/cache retirement after the old-outcome correction. -/
theorem hmrHistory_decode_recover (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (store old output parity fire work : Wire) (record : List Wire)
    (pushND : (store::old::record).Nodup) (popND : (store::output::record).Nodup)
    (different : old≠output) (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (outputOutside : ∀i,w i≠output)
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
    runWithTape (hmrDecodeRecover w (!armed) parity fire work output store ordinal) tape cursor u=
      ⟨s.phase,writeBit u.basis output (decide (bbit st=1))⟩ := by
  have fixup := hmrHistory_decode_fixup p st inv hp oldFrozen armed hfg hfirst
    store old output parity fire work record pushND popND different w geometry assemblyND apart
    s tape popTape ordinal cursor outputClean fit oldBranch u actual clean predictionClean cacheClean
    sigma firing storeValue bindings
  rw [hmrDecodeRecover,runWithTape_append,fixup,runWithTape_embedRecorded]
  exact hmrDecoderErase_after_write w geometry output outputOutside u.basis s.phase
    (decide (bbit st=1)) _ predictionClean cacheClean

end ECDSAAdd.Arithmetic.Paper935
