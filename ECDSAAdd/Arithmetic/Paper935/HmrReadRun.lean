import ECDSAAdd.Arithmetic.Paper935.HmrReadBindings

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
  let u := run (P.readHistory L) m s
  let tape := m.drop (measurementCount (P.readHistory L))
  have state := compiled.read_state P A L recordOwned s m ready
  have bindings := compiled.bindings P A L recordOwned rowsOwned rowsApart s m ready
    p st inv hp hp8 hp16 negative div4 hf hg hv
  have clean := compileHmrDecoder_clean P.popArena P.decoderArena (P.inputs L) P.decoderWork
    compiled.decoder u.basis state.2.1
  have result := bindings.compute p st inv hp (P.decoderPorts L)
    (compileHmrDecoder_geometry P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder)
    u tape (s.basis L.c3) (clean 13 (by decide))
    ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),clean 17 (by decide),clean 18 (by decide)⟩
  dsimp only
  have programEq : P.program L=P.readHistory L ++ hmrDecoderCompute (P.decoderPorts L) := rfl
  rw [programEq,run_append,run_take]
  exact ⟨result.1.trans state.1,result.2⟩

end ECDSAAdd.Arithmetic.Paper935
