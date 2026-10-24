import ECDSAAdd.Arithmetic.Paper935.HmrReadAssemblyInputs
import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyAllocatedMath

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def HmrReadPlan.assemble (P : HmrReadPlan) (L : HmrReadLayout) (early : Bool)
    (parity fire : Wire) (work : List Wire) : Program :=
  P.program L ++ hmrBranchAssembly early (P.decoderPorts L 13) parity fire (hmrBorrowPorts work (0 : Fin 1)) P.output

theorem HmrReadPlan.Compiled.assemble_run (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (rowsOwned : L.rows.toFinset⊆A.live) (rowsApart : List.Disjoint L.rows L.record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
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
    run (P.assemble L (!armed) parity fire work) m s=
      ⟨s.phase,writeBit (run (P.program L) m s).basis P.output (decide (bbit st=1))⟩ := by
  have inputs := compiled.assembly_inputs P A L recordOwned rowsOwned rowsApart s m ready
    p st inv hp hp8 hp16 oldFrozen armed parity fire owned apart sigma firing classValue hf hg hv top
  have state := compiled.final_state P A L recordOwned s m ready
  have result := compileHmrAssembly_math p st inv hp oldFrozen armed hfg hfirst P.decoderArena B
    (P.decoderPorts L 13) parity fire P.output work assembly (run (P.program L) m s)
    (m.drop (measurementCount (P.program L))) state.2.1 inputs.1 inputs.2.1 inputs.2.2.1 inputs.2.2.2
  rw [HmrReadPlan.assemble,run_append,run_take,result,state.1]

end ECDSAAdd.Arithmetic.Paper935
