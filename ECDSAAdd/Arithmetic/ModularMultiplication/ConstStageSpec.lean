import ECDSAAdd.Arithmetic.ModularMultiplication.MontStageSpec
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage
open GateProof

namespace ConstStageTrace

/-- A constant stage has one input register; the other factor is classical. -/
private theorem omit_empty_input (L : MontStageLayout) (y : List Wire)
    (Y A H A' H' : Nat) (F F' : Bool) (initial : BasisState) (c : Program)
    (step : {{ ([] : List Wire)=0,y=Y,L.acc=A,L.history=H,L.flag=F,L.work=0,
               MontStageTrace.Frame L initial st }} c
            {{ ([] : List Wire)=0,y=Y,L.acc=A',L.history=H',L.flag=F',L.work=0,
               MontStageTrace.Frame L initial st }}) :
    {{ y=Y,L.acc=A,L.history=H,L.flag=F,L.work=0,MontStageTrace.Frame L initial st }} c
    {{ y=Y,L.acc=A',L.history=H',L.flag=F',L.work=0,MontStageTrace.Frame L initial st }} := by
  apply step.conseq
  · intro st h
    rcases h with ⟨⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩,frame⟩
    exact ⟨⟨⟨⟨⟨⟨rfl,vy⟩,va⟩,vh⟩,vf⟩,vw⟩,frame⟩
  · intro st h
    rcases h with ⟨⟨⟨⟨⟨⟨_,vy⟩,va⟩,vh⟩,vf⟩,vw⟩,frame⟩
    exact ⟨⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩,frame⟩

theorem prepare_rounds (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (initial : BasisState) :
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,MontStageTrace.Frame L initial st }}
      constPrepareRounds L y p X k
    {{ y=Y,L.acc=montgomeryValue p X Y k,L.history=montgomeryQuotient p X Y k,
       L.flag=false,L.work=0,MontStageTrace.Frame L initial st }} := by
  apply omit_empty_input L y Y 0 0 _ _ false false initial
  apply MontStageTrace.lift L [] y 0 Y 0 0 _ _ false false initial _ hnd
  intro s m _vx vy va vh vf vw
  obtain ⟨phase,unchanged,acc,history⟩ :=
    constPrepareRounds_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vw
  exact ⟨phase,fun w ha hh _ => unchanged w ha hh,acc,history,
    (MontStageTrace.rounds_flag L [] y hnd _ _ unchanged).trans vf⟩

theorem normalize (L : MontStageLayout) (y : List Wire) (p Y A H : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hp : p<2^256)
    (hA : A<2*p) (initial : BasisState) :
    {{ y=Y,L.acc=A,L.history=H,L.flag=false,L.work=0,MontStageTrace.Frame L initial st }}
      montNormalize L p
    {{ y=Y,L.acc=A%p,L.history=H,L.flag=decide (A<p),L.work=0,MontStageTrace.Frame L initial st }} :=
  omit_empty_input L y Y A H (A%p) H false (decide (A<p)) initial _
    (MontStageTrace.normalize L [] y p 0 Y A H hw hnd hp hA initial)

theorem denormalize (L : MontStageLayout) (y : List Wire) (p Y A H : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hp : p<2^256)
    (hA : A<2*p) (initial : BasisState) :
    {{ y=Y,L.acc=A%p,L.history=H,L.flag=decide (A<p),L.work=0,MontStageTrace.Frame L initial st }}
      montDenormalize L p
    {{ y=Y,L.acc=A,L.history=H,L.flag=false,L.work=0,MontStageTrace.Frame L initial st }} :=
  omit_empty_input L y Y (A%p) H A H (decide (A<p)) false initial _
    (MontStageTrace.denormalize L [] y p 0 Y A H hw hnd hp hA initial)

theorem restore_rounds (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (initial : BasisState) :
    {{ y=Y,L.acc=montgomeryValue p X Y k,L.history=montgomeryQuotient p X Y k,
       L.flag=false,L.work=0,MontStageTrace.Frame L initial st }} constRestoreRounds L y p X k
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,MontStageTrace.Frame L initial st }} := by
  apply omit_empty_input L y Y _ _ 0 0 false false initial
  apply MontStageTrace.lift L [] y 0 Y _ _ 0 0 false false initial _ hnd
  intro s m _vx vy va vh vf vw
  obtain ⟨phase,unchanged,acc,history⟩ :=
    constRestoreRounds_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vw
  exact ⟨phase,fun w ha hh _ => unchanged w ha hh,acc,history,
    (MontStageTrace.rounds_flag L [] y hnd _ _ unchanged).trans vf⟩

end ConstStageTrace

/-- 常数段公开准备契约：记录带与借位明确保留，临时工作区归零。 -/
private theorem constPreparePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis=montgomeryValue p X Y k%p ∧
    regValue L.history (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis=montgomeryQuotient p X Y k ∧
    (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis L.flag=decide (montgomeryValue p X Y k<p) := by
  let V := montgomeryValue p X Y k
  let H := montgomeryQuotient p X Y k
  let frame := MontStageTrace.Frame L s.basis
  have first := ConstStageTrace.prepare_rounds L y p k X Y hw hnd hy hk hp hp16 hX s.basis
  have second := ConstStageTrace.normalize L y p Y V H hw hnd hp
    (montgomeryValue_bound p X Y k hX) s.basis
  have derivation := hoare_steps {
    Precondition { y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame };

    after command { call (constPrepareRounds L y p X k); }
    get { y=Y,L.acc=V,L.history=H,L.flag=false,L.work=0,satisfies frame } by exact first;

    after command { call (montNormalize L p); }
    get { y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame } by exact second;

    Conclusion { y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame };
  }
  obtain ⟨phase,values⟩ := derivation s m ⟨⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩,fun _ _ _ _ => rfl⟩
  exact ⟨phase,values.2,values.1.1.1.1.2,values.1.1.1.2,values.1.1.2⟩

private theorem constPreparePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} (constPrepareRounds L y p X k ++ montNormalize L p)
    {{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} := by
  apply MontStageTrace.forget_frame (L := L)
  intro initial
  apply ConstStageTrace.omit_empty_input L y Y 0 0 (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) false (decide (montgomeryValue p X Y k<p)) initial
  apply MontStageTrace.lift L [] y 0 Y 0 0 (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) false (decide (montgomeryValue p X Y k<p)) initial _ hnd
  intro s m _vx vy va vh vf vw
  exact constPreparePrefix_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vf vw

theorem constPrepare_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run (constPrepare L y p X) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (constPrepare L y p X) m s).basis w=s.basis w) ∧
    regValue L.acc (run (constPrepare L y p X) m s).basis=montgomeryValue p X Y 64%p ∧
    regValue L.history (run (constPrepare L y p X) m s).basis=montgomeryQuotient p X Y 64 ∧
    (run (constPrepare L y p X) m s).basis L.flag=decide (montgomeryValue p X Y 64<p) := by
  simpa only [constPrepare] using constPreparePrefix_correct L y p 64 X Y hw hnd hy (by omega) hp hp16 hX s m vy va vh vf vw

theorem constPrepare_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} constPrepare L y p X
    {{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} := by
  exact constPreparePrefix_spec L y p 64 X Y hw hnd hy (by omega) hp hp16 hX


private theorem constRestorePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y k)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y k<p)) (vw : regValue L.work s.basis=0) :
    (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis=0 ∧
    regValue L.history (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis=0 ∧
    (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis L.flag=false := by
  let V := montgomeryValue p X Y k
  let H := montgomeryQuotient p X Y k
  let frame := MontStageTrace.Frame L s.basis
  have first := ConstStageTrace.denormalize L y p Y V H hw hnd hp
    (montgomeryValue_bound p X Y k hX) s.basis
  have second := ConstStageTrace.restore_rounds L y p k X Y hw hnd hy hk hp hp16 hX s.basis
  have derivation := hoare_steps {
    Precondition { y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame };

    after command { call (montDenormalize L p); }
    get { y=Y,L.acc=V,L.history=H,L.flag=false,L.work=0,satisfies frame } by exact first;

    after command { call (constRestoreRounds L y p X k); }
    get { y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame } by exact second;

    Conclusion { y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame };
  }
  obtain ⟨phase,values⟩ := derivation s m ⟨⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩,fun _ _ _ _ => rfl⟩
  exact ⟨phase,values.2,values.1.1.1.1.2,values.1.1.1.2,values.1.1.2⟩

private theorem constRestorePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} (montDenormalize L p ++ constRestoreRounds L y p X k)
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := by
  apply MontStageTrace.forget_frame (L := L)
  intro initial
  apply ConstStageTrace.omit_empty_input L y Y (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) 0 0 (decide (montgomeryValue p X Y k<p)) false initial
  apply MontStageTrace.lift L [] y 0 Y (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) 0 0 (decide (montgomeryValue p X Y k<p)) false initial _ hnd
  intro s m _vx vy va vh vf vw
  exact constRestorePrefix_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vf vw

theorem constRestore_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y 64%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y 64)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y 64<p)) (vw : regValue L.work s.basis=0) :
    (run (constRestore L y p X) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (constRestore L y p X) m s).basis w=s.basis w) ∧
    regValue L.acc (run (constRestore L y p X) m s).basis=0 ∧
    regValue L.history (run (constRestore L y p X) m s).basis=0 ∧
    (run (constRestore L y p X) m s).basis L.flag=false := by
  simpa only [constRestore] using constRestorePrefix_correct L y p 64 X Y hw hnd hy (by omega) hp hp16 hX s m vy va vh vf vw

theorem constRestore_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} constRestore L y p X
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := by
  simpa only [constRestore] using constRestorePrefix_spec L y p 64 X Y hw hnd hy (by omega) hp hp16 hX

end ECDSAAdd.Arithmetic
