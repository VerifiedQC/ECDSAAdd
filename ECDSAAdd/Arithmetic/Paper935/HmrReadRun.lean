import ECDSAAdd.Arithmetic.Paper935.HmrReadState

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Actual R4--R6 sequence with fresh R5 branch allocation. The source
coefficient rows are read only, and R5's changes are confined to history. -/
theorem HmrReadPlan.Compiled.run_spec (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (rowsOwned : L.rows.toFinset⊆A.live) (rowsApart : List.Disjoint L.rows L.record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hp8 : (p : ZMod 8)=7) (hp16 : (p : ZMod 16)=15)
    (negative : s.basis L.c3=true → st.z<0)
    (div4 : s.basis L.c3=true → (4 : Int)∣(zStep st).fv)
    (hf : s.basis L.c3=true → signedRegValue (L.f++[L.fs]) s.basis=(zStep st).f)
    (hg : s.basis L.c3=true → signedRegValue (L.gv++[L.gvs]) s.basis=(zStep st).gv)
    (hv : s.basis L.c3=true → signedRegValue (L.fv++[L.fvs]) s.basis=(zStep st).fv) :
    let out := run (P.program L) m s
    out.phase=s.phase ∧ out.basis (P.decoderPorts L 13)=
      ((s.basis L.c3 && decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1)) := by
  let first := run (P.flags L) m s
  let u := run (P.readHistory L) m s
  let tape := m.drop (measurementCount (P.readHistory L))
  have state := compiled.read_state P A L recordOwned s m ready
  have frame (q : Wire) (hq : q∈L.rows) : u.basis q=s.basis q :=
    state.2.2.1 q (rowsOwned (List.mem_toFinset.mpr hq)) (List.disjoint_left.mp rowsApart hq)
  have fval : signedRegValue (L.f++[L.fs]) u.basis=signedRegValue (L.f++[L.fs]) s.basis := by
    unfold signedRegValue
    congr 1
    apply regValue_congr
    intro q hq
    exact frame q (List.mem_append_left _ (List.mem_append_left _ hq))
  have gval : signedRegValue (L.gv++[L.gvs]) u.basis=signedRegValue (L.gv++[L.gvs]) s.basis := by
    unfold signedRegValue
    congr 1
    apply regValue_congr
    intro q hq
    exact frame q (List.mem_append_left _ (List.mem_append_right _ hq))
  have vval : signedRegValue (L.fv++[L.fvs]) u.basis=signedRegValue (L.fv++[L.fvs]) s.basis := by
    unfold signedRegValue
    congr 1
    apply regValue_congr
    intro q hq
    exact frame q (List.mem_append_right _ hq)
  have flags := compileHmrRowFlags_depths A P.flagArena L.c3 L.fv L.fvs P.flagWork
    compiled.flags s m ready (zStep st).fv hv div4
  have j2 : u.basis (P.flag 0)=(s.basis L.c3 && decide (padicValInt 2 (zStep st).fv=2)) :=
    (state.2.2.2.1 0).trans flags.1
  have j3 : u.basis (P.flag 2)=(s.basis L.c3 && decide (padicValInt 2 (zStep st).fv=3)) :=
    (state.2.2.2.1 2).trans flags.2.1
  have j4 : u.basis (P.flag 4)=(s.basis L.c3 && decide (padicValInt 2 (zStep st).fv=4)) :=
    (state.2.2.2.1 4).trans flags.2.2.1
  have result := compileHmrRowDecoder_run P.popArena P.decoderArena (P.flag 0) (P.flag 2) (P.flag 4)
    L.f L.gv L.fv L.fs L.gvs L.fvs P.decoderWork compiled.decoder u tape state.2.1
    p st inv hp hp8 hp16 (s.basis L.c3) (fun he => fval.trans (hf he))
    (fun he => gval.trans (hg he)) (fun he => vval.trans (hv he)) negative j2 j3 j4
  dsimp only
  have programEq : P.program L=P.readHistory L ++ hmrDecoderCompute (P.decoderPorts L) := rfl
  rw [programEq]
  rw [run_append,run_take]
  exact ⟨result.1.trans state.1,result.2⟩

end ECDSAAdd.Arithmetic.Paper935
