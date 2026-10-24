import ECDSAAdd.Arithmetic.Paper935.HmrReadRun
import ECDSAAdd.Arithmetic.Paper935.HmrReadFinalState
import ECDSAAdd.Arithmetic.Paper935.HmrClassMath

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Mathematical inputs to R7 are derived from the actual R4--R6 program.
The saved history low bit is the remaining stack invariant supplied by the
surrounding walk; the decoder output is not an assumption. -/
theorem HmrReadPlan.Compiled.assembly_inputs (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (rowsOwned : L.rows.toFinset⊆A.live) (rowsApart : List.Disjoint L.rows L.record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hp8 : (p : ZMod 8)=7) (hp16 : (p : ZMod 16)=15)
    (oldFrozen armed : Bool) (parity fire : Wire)
    (owned : parity∈A.live ∧ fire∈A.live) (apart : parity∉L.record ∧ fire∉L.record)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (classValue : s.basis L.c3=(!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0)))
    (hf : s.basis L.c3=true → signedRegValue (L.f++[L.fs]) s.basis=(zStep st).f)
    (hg : s.basis L.c3=true → signedRegValue (L.gv++[L.gvs]) s.basis=(zStep st).gv)
    (hv : s.basis L.c3=true → signedRegValue (L.fv++[L.fvs]) s.basis=(zStep st).fv)
    (top : (s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv))=true →
      decide (regValue L.record s.basis%2=1)=decide (bbit st=1)) :
    let v := run (P.program L) m s
    v.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)) ∧
    v.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)) ∧
    v.basis P.output=((!(oldFrozen || v.basis fire) && !v.basis parity && decide ((zStep st).z≤0) &&
      decide ((2 : Int)^5∣(zStep st).fv)) && decide (bbit st=1)) ∧
    v.basis (P.decoderPorts L 13)=((!(oldFrozen || v.basis fire) && !v.basis parity && decide ((zStep st).z≤0) &&
      decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) && decide (bbit st=1)) := by
  have conditions (he : s.basis L.c3=true) := hmrRecoverClass_conditions p st inv hp
    oldFrozen (s.basis fire) (s.basis parity) sigma (classValue ▸ he)
  have runMath := compiled.run_spec P A L recordOwned rowsOwned rowsApart s m ready
    p st inv hp hp8 hp16 (fun he => (conditions he).1) (fun he => (conditions he).2) hf hg hv
  have state := compiled.final_state P A L recordOwned s m ready
  have pf := state.2.2.1 parity owned.1 apart.1
  have ff := state.2.2.1 fire owned.2 apart.2
  have flags := compileHmrRowFlags_depths A P.flagArena L.c3 L.fv L.fvs P.flagWork compiled.flags
    s m ready (zStep st).fv hv (fun he => (conditions he).2)
  have stored : (run (P.program L) m s).basis P.output=
      ((s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv)) && decide (bbit st=1)) := by
    have out := state.2.2.2.2
    change _=((run (P.flags L) m s).basis (P.flag 5) && decide (regValue L.record s.basis%2=1)) at out
    have flag : (run (P.flags L) m s).basis (P.flag 5)=(s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv)) := flags.2.2.2
    rw [flag] at out
    rw [out]
    by_cases he : (s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv))=true
    · rw [top he]
    · have hz : (s.basis L.c3 && decide ((32 : Int)∣(zStep st).fv))=false := Bool.eq_false_iff.mpr he
      rw [hz]
      rfl
  dsimp only
  refine ⟨pf.trans sigma,ff.trans firing,?_,?_⟩
  · rw [pf,ff,stored,classValue]
    rfl
  · rw [pf,ff,runMath.2,classValue]

end ECDSAAdd.Arithmetic.Paper935
