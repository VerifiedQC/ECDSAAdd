import ECDSAAdd.Arithmetic.Paper935.HmrDecoderBoundRun
import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyFixup

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def hmrDecodeFixup (w : Fin 19 → Wire) (early : Bool) (parity fire work output store : Wire)
    (ordinal : Nat) : RecordedProgram :=
  embedRecorded (hmrDecoderCompute w) ++
    hmrAssemblyFixup early (w 13) parity fire work output store ordinal

theorem hmrDecoderComputed_frame (w : Fin 19 → Wire) (s : BasisState) (q : Wire)
    (outside : q∉[w 13,w 14,w 15,w 16,w 17,w 18]) : hmrDecoderComputed w s q=s q := by
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at outside
  simp [hmrDecoderComputed,writeBit,outside.1,outside.2.1,outside.2.2.1,
    outside.2.2.2.1,outside.2.2.2.2.1,outside.2.2.2.2.2]

/-- Actual retained-cache R6 followed by R7 and literal R11. The shallow
prediction is obtained from input residue bindings and the emitted gates. -/
theorem hmrDecodeFixup_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (parity fire work output store : Wire) (distinct : [w 13,parity,fire,work,output].Nodup)
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
    runWithTape (hmrDecodeFixup w (!armed) parity fire work output store ordinal) tape cursor s=
      ⟨s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !s.basis store)),
        writeBit (hmrDecoderComputed w s.basis) output (decide (bbit st=1))⟩ := by
  let v : State := ⟨s.phase,hmrDecoderComputed w s.basis⟩
  have compute := hmrDecoderCompute_run_aliased w geometry s (tape.drop cursor) cacheClean
  have prediction := bindings.compute p st inv hp w geometry s (tape.drop cursor) _ predictionClean cacheClean
  dsimp only at prediction
  rw [compute] at prediction
  have frame (q : Wire) (hq : q∈[parity,fire,work,output,store]) : v.basis q=s.basis q :=
    hmrDecoderComputed_frame w s.basis q (apart q hq)
  have vc : v.basis work=false := (frame work (by simp)).trans clean
  have vs : v.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)) := (frame parity (by simp)).trans sigma
  have vf : v.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)) := (frame fire (by simp)).trans firing
  have vo : v.basis output=
      ((!(oldFrozen || v.basis fire) && !v.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)) := by
    rw [frame output (by simp),frame fire (by simp),frame parity (by simp)]
    exact stored
  have vp : v.basis (w 13)=
      ((!(oldFrozen || v.basis fire) && !v.basis parity && decide ((zStep st).z≤0) &&
        decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) && decide (bbit st=1)) := by
    rw [frame fire (by simp),frame parity (by simp)]
    exact prediction.2
  rw [hmrDecodeFixup,runWithTape_append,runWithTape_embedRecorded,compute]
  change runWithTape (hmrAssemblyFixup _ _ _ _ _ _ _ _) tape _ v=_
  rw [hmrAssemblyFixup_math p st inv hp oldFrozen armed hfg hfirst (w 13) parity fire work output store
    distinct storeNe ordinal _ v tape vc vs vf vo vp,frame store (by simp)]

end ECDSAAdd.Arithmetic.Paper935
