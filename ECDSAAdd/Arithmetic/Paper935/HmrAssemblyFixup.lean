import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyMath
import ECDSAAdd.Arithmetic.Paper935.HmrRecordFixup

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Literal R7 followed by R11; the source's retained flags and prediction
remain live until R12, which is deliberately outside this segment. -/
def hmrAssemblyFixup (early : Bool) (pred parity fire work output store : Wire)
    (ordinal : Nat) : RecordedProgram :=
  embedRecorded (hmrBranchAssembly early pred parity fire work output) ++
    hmrRecordFixup ordinal output store

theorem hmrAssemblyFixup_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (pred parity fire work output store : Wire) (distinct : [pred,parity,fire,work,output].Nodup)
    (storeNe : output≠store) (ordinal cursor : Nat)
    (s : State) (tape : List Bool) (clean : s.basis work=false)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (stored : s.basis output=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)))
    (decoded : s.basis pred=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1))) :
    runWithTape (hmrAssemblyFixup (!armed) pred parity fire work output store ordinal) tape cursor s=
      ⟨s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !s.basis store)),
        writeBit s.basis output (decide (bbit st=1))⟩ := by
  have assembly := hmrBranchAssembly_math p st inv hp oldFrozen armed hfg hfirst
    pred parity fire work output distinct s (tape.drop cursor) clean sigma firing stored decoded
  rw [hmrAssemblyFixup,runWithTape_append,runWithTape_embedRecorded,assembly,
    hmrRecordFixup_run ordinal _ output store storeNe]
  simp [writeBit,storeNe.symm]

theorem hmrAssemblyFixup_wellFormed (early : Bool) (pred parity fire work output store : Wire)
    (ordinal cursor : Nat) (earlier : ordinal<cursor) :
    RecordedWellFormedAt cursor (hmrAssemblyFixup early pred parity fire work output store ordinal) := by
  rw [hmrAssemblyFixup,RecordedWellFormedAt_append]
  exact ⟨embedRecorded_wellFormed _ _,hmrRecordFixup_wellFormed ordinal _ output store (by omega)⟩

end ECDSAAdd.Arithmetic.Paper935
