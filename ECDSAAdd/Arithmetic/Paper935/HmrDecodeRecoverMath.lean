import ECDSAAdd.Arithmetic.Paper935.HmrHistoryDecodeRecover

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

theorem hmrDecodeRecover_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (parity fire work output store : Wire) (distinct : [w 13,parity,fire,work,output].Nodup)
    (outputOutside : ∀i,w i≠output)
    (storeNe : output≠store)
    (apart : ∀q∈[parity,fire,work,output,store],q∉[w 13,w 14,w 15,w 16,w 17,w 18])
    (ordinal cursor : Nat) (s : State) (tape : List Bool)
    (clean : s.basis work=false) (predictionClean : s.basis (w 13)=false)
    (cacheClean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (stored : s.basis output=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)))
    (bindings : HmrDecoderBindings p st w s.basis
      (!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0))) :
    runWithTape (hmrDecodeRecover w (!armed) parity fire work output store ordinal) tape cursor s=
      ⟨s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !s.basis store)),
        writeBit s.basis output (decide (bbit st=1))⟩ := by
  have fixup := hmrDecodeFixup_math p st inv hp oldFrozen armed hfg hfirst w geometry
    parity fire work output store distinct storeNe apart ordinal cursor s tape clean predictionClean cacheClean
    sigma firing stored bindings
  rw [hmrDecodeRecover,runWithTape_append,fixup,runWithTape_embedRecorded]
  exact hmrDecoderErase_after_write w geometry output outputOutside s.basis _
    (decide (bbit st=1)) _ predictionClean cacheClean

end ECDSAAdd.Arithmetic.Paper935
