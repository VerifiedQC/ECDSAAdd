import ECDSAAdd.Arithmetic.Paper935.HmrReadAssembly
import ECDSAAdd.Arithmetic.Paper935.HmrReadComputeState
import ECDSAAdd.Arithmetic.Paper935.HmrReadOwnership
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderRetireWrite
import ECDSAAdd.Arithmetic.Paper935.HmrRecordFixup

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def HmrReadPlan.recover (P : HmrReadPlan) (L : HmrReadLayout) (early : Bool)
    (parity fire : Wire) (work : List Wire) (ordinal : Nat) : RecordedProgram :=
  embedRecorded (P.assemble L early parity fire work) ++
    hmrRecordFixup ordinal P.output (P.flag 5) ++ embedRecorded (hmrDecoderErase (P.decoderPorts L))

theorem HmrReadPlan.Compiled.recover_run (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
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
    runWithTape (P.recover L (!armed) parity fire work ordinal) tape cursor s=
      ⟨s.phase ^^ (tape.getD ordinal false && (decide (bbit st=1) && !v.basis (P.flag 5))),
        writeBit u.basis P.output (decide (bbit st=1))⟩ := by
  let m := tape.drop cursor
  let u := run (P.readHistory L) m s
  let v := run (P.program L) m s
  have assembled := compiled.assemble_run P A L recordOwned rowsOwned rowsApart s m ready
    p st inv hp hp8 hp16 oldFrozen armed parity fire hfg hfirst B work assembly owned apart
    sigma firing classValue hf hg hv top
  have computed := compiled.compute_state P A L recordOwned s m ready
  have state := compiled.read_state P A L recordOwned s m ready
  have clean := compileHmrDecoder_clean P.popArena P.decoderArena (P.inputs L) P.decoderWork
    compiled.decoder u.basis state.2.1
  have ne := compiled.output_ne_flag P A L 5
  dsimp only
  rw [HmrReadPlan.recover,List.append_assoc,runWithTape_append,runWithTape_embedRecorded,assembled,
    runWithTape_append,hmrRecordFixup_run ordinal _ P.output (P.flag 5) ne]
  simp only [writeBit,Function.update_self,Function.update_of_ne (Ne.symm ne)]
  rw [runWithTape_embedRecorded]
  have basis : v.basis=hmrDecoderComputed (P.decoderPorts L) u.basis := congrArg State.basis computed
  change run (hmrDecoderErase (P.decoderPorts L)) _
    ⟨_,writeBit v.basis P.output (decide (bbit st=1))⟩=_
  rw [basis]
  exact hmrDecoderErase_after_write (P.decoderPorts L)
    (compileHmrDecoder_geometry P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder)
    P.output (compiled.output_outside P A L rowsOwned) u.basis _ (decide (bbit st=1)) _
    (clean 13 (by decide)) ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),
      clean 17 (by decide),clean 18 (by decide)⟩

end ECDSAAdd.Arithmetic.Paper935
