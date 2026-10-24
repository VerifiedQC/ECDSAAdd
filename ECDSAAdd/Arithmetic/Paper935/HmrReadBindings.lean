import ECDSAAdd.Arithmetic.Paper935.HmrReadState

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

theorem HmrReadPlan.Compiled.bindings (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
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
    HmrDecoderBindings p st (P.decoderPorts L) (run (P.readHistory L) m s).basis (s.basis L.c3) := by
  let u := run (P.readHistory L) m s
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
  cases he : s.basis L.c3 with
  | false =>
    rw [he] at j2 j3 j4
    refine ⟨?_,j2,j3,j4,?_,?_,?_⟩
    all_goals intro impossible; contradiction
  | true =>
    rw [he] at j2 j3 j4 negative
    have bits := hmrRowDecoder_bits (P.flag 0) (P.flag 2) (P.flag 4) L.f L.gv L.fv L.fs L.gvs L.fvs
      P.decoderWork u.basis st (fval.trans (hf he)) (gval.trans (hg he)) (vval.trans (hv he))
    exact bits.bindings p st inv hp hp8 hp16 (P.decoderPorts L) u.basis true negative j2 j3 j4

end ECDSAAdd.Arithmetic.Paper935
