import ECDSAAdd.Arithmetic.Paper935.HmrReadRecover
import ECDSAAdd.Arithmetic.Paper935.HmrReadFlagsReturn

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def HmrReadPlan.recoverRelease (P : HmrReadPlan) (L : HmrReadLayout) (early : Bool)
    (parity fire : Wire) (work : List Wire) (ordinal : Nat) : RecordedProgram :=
  P.recover L early parity fire work ordinal ++ embedRecorded (P.releaseFlags L)

theorem HmrReadPlan.Compiled.recover_release (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (inputsApart : List.Disjoint [L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] L.record)
    (rowsOwned : L.rows.toFinset⊆A.live) (rowsApart : List.Disjoint L.rows L.record)
    (s : State) (tape : List Bool) (ordinal cursor : Nat) (ready : A.Ready s.basis)
    (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hp8 : (p : ZMod 8)=7) (hp16 : (p : ZMod 16)=15)
    (oldFrozen armed : Bool) (parity fire : Wire)
    (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (B : Arena) (work : List Wire)
    (assembly : compileHmrAssembly P.decoderArena (!armed) (P.decoderPorts L 13) parity fire P.output=some (B,work))
    (owned : parity∈A.live ∧ fire∈A.live) (apart : parity∉L.record ∧ fire∉L.record)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (classValue : s.basis L.c3=(!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0)))
    (hf : s.basis L.c3=true → signedRegValue (L.f++[L.fs]) s.basis=(zStep st).f)
    (hg : s.basis L.c3=true → signedRegValue (L.gv++[L.gvs]) s.basis=(zStep st).gv)
    (hv : s.basis L.c3=true → signedRegValue (L.fv++[L.fvs]) s.basis=(zStep st).fv)
    (top : (s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv))=true →
      decide (regValue L.record s.basis%2=1)=decide (bbit st=1)) :
    let m := tape.drop cursor
    let u := run (P.readHistory L) m s
    let v := run (P.program L) m s
    let phase := s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !v.basis (P.flag 5)))
    let out := runWithTape (P.recoverRelease L (!armed) parity fire work ordinal) tape cursor s
    out=⟨phase,hmrClearFlags P.flag (writeBit u.basis P.output (decide (bbit st=1)))⟩ ∧
    ∃D,P.popArena.release P.flagWork.toFinset out.basis=some D ∧ D.Ready out.basis ∧
      D.live=P.popArena.live\P.flagWork.toFinset ∧ P.output∈D.live := by
  let m := tape.drop cursor
  let u := run (P.readHistory L) m s
  let v := run (P.program L) m s
  let phase := s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !v.basis (P.flag 5)))
  have recover := compiled.recover_run P A L recordOwned rowsOwned rowsApart s tape ordinal cursor ready
    p st inv hp hp8 hp16 oldFrozen armed parity fire hfg hfirst B work assembly owned apart
    sigma firing classValue hf hg hv top
  dsimp only
  rw [HmrReadPlan.recoverRelease,runWithTape_append,recover,runWithTape_embedRecorded]
  exact compiled.release_flags P A L recordOwned inputsApart s m _ ready phase (decide (bbit st=1))

end ECDSAAdd.Arithmetic.Paper935
