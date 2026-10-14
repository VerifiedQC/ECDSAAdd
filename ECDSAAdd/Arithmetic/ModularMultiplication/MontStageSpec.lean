import ECDSAAdd.Arithmetic.ModularMultiplication.ConstRounds
import ECDSAAdd.Framework.ProofLanguage
import ECDSAAdd.Framework.GateProof

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage
open GateProof

namespace MontStageTrace

/-- Only the accumulator, quotient history, and reduction flag may change. -/
def Frame (L : MontStageLayout) (initial st : BasisState) : Prop :=
  ∀ w, w∉L.acc → w∉L.history → w≠L.flag → st w=initial w

/-- Public register contracts can forget the stronger outside-wire frame. -/
theorem forget_frame {L : MontStageLayout} {P Q : BasisState → Prop} {c : Program}
    (contract : ∀ initial, Triple (fun st => P st ∧ Frame L initial st) c
      (fun st => Q st ∧ Frame L initial st)) : Triple P c Q := by
  intro s m h
  obtain ⟨phase,values⟩ := contract s.basis s m ⟨h,fun _ _ _ _ => rfl⟩
  exact ⟨phase,values.1⟩

/-- Lift a stage's register effect to a framed Hoare contract. -/
theorem lift (L : MontStageLayout) (x y : List Wire) (X Y A H A' H' : Nat)
    (F F' : Bool) (initial : BasisState) (c : Program)
    (hnd : (x++y++L.wires).Nodup)
    (effect : ∀ s m, regValue x s.basis=X → regValue y s.basis=Y →
      regValue L.acc s.basis=A → regValue L.history s.basis=H →
      s.basis L.flag=F → regValue L.work s.basis=0 →
      (run c m s).phase=s.phase ∧ Frame L s.basis (run c m s).basis ∧
      regValue L.acc (run c m s).basis=A' ∧
      regValue L.history (run c m s).basis=H' ∧ (run c m s).basis L.flag=F') :
    {{ x=X,y=Y,L.acc=A,L.history=H,L.flag=F,L.work=0,Frame L initial st }} c
    {{ x=X,y=Y,L.acc=A',L.history=H',L.flag=F',L.work=0,Frame L initial st }} := by
  intro s m h
  rcases h with ⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vh⟩,vf⟩,vw⟩,frame⟩
  obtain ⟨phase,unchanged,acc,history,flag⟩ := effect s m vx vy va vh vf vw
  have stable (r : List Wire) (hr : r⊆x++y++L.work) :
      regValue r (run c m s).basis=regValue r s.basis := by
    apply regValue_congr
    intro w hw
    have hd := List.disjoint_left.mp (L.stable_disjoint x y hnd) (hr hw)
    exact unchanged w (fun ha => hd (by simp [ha]))
      (fun hh => hd (by simp [hh])) (fun hf => hd (by simp [hf]))
  exact ⟨phase, ⟨⟨⟨⟨⟨⟨(stable x (by intro w hw; simp [hw])).trans vx,
    (stable y (by intro w hw; simp [hw])).trans vy⟩,acc⟩,history⟩,flag⟩,
    (stable L.work (by intro w hw; simp [hw])).trans vw⟩,
    fun w ha hh hf => (unchanged w ha hh hf).trans (frame w ha hh hf)⟩⟩

/-- The rounds leave the reduction flag alone. -/
theorem rounds_flag (L : MontStageLayout) (x y : List Wire)
    (hnd : (x++y++L.wires).Nodup) (before after : BasisState)
    (unchanged : ∀ w, w∉L.acc → w∉L.history → after w=before w) :
    after L.flag=before L.flag := by
  have hd := List.disjoint_left.mp (L.inputs_disjoint x y hnd)
    (show L.flag∈x++y++[L.flag]++L.work by simp)
  exact unchanged L.flag (fun h => hd (by simp [h])) (fun h => hd (by simp [h]))

/-- Normalization touches neither the quotient history nor the input registers. -/
theorem normalization_history (L : MontStageLayout) (x y : List Wire)
    (hnd : (x++y++L.wires).Nodup) (before after : BasisState)
    (unchanged : ∀ w, w∉L.acc → w≠L.flag → after w=before w) :
    regValue L.history after=regValue L.history before := by
  apply regValue_congr
  intro w hw
  apply unchanged w (List.disjoint_left.mp (L.acc_disjoint x y hnd) (by simp [hw]))
  intro he; subst w
  have hh := List.nodup_iff_count.mp hnd L.flag
  have hm := List.count_pos_iff.mpr hw
  simp only [MontStageLayout.wires,List.count_append,List.count_cons,List.count_nil,
    beq_self_eq_true,if_true] at hh
  omega

theorem prepare_rounds (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (initial : BasisState) :
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,Frame L initial st }}
      montPrepareRounds L x y p k
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y k,L.history=montgomeryQuotient p X Y k,
       L.flag=false,L.work=0,Frame L initial st }} := by
  apply lift L x y X Y 0 0 _ _ false false initial _ hnd
  intro s m vx vy va vh vf vw
  obtain ⟨phase,unchanged,acc,history⟩ :=
    montPrepareRounds_correct L x y p k X Y hw hnd hx hy hk hp hp16 hX s m vx vy va vh vw
  exact ⟨phase,fun w ha hh _ => unchanged w ha hh,acc,history,
    (rounds_flag L x y hnd _ _ unchanged).trans vf⟩

theorem normalize (L : MontStageLayout) (x y : List Wire) (p X Y A H : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hp : p<2^256)
    (hA : A<2*p) (initial : BasisState) :
    {{ x=X,y=Y,L.acc=A,L.history=H,L.flag=false,L.work=0,Frame L initial st }}
      montNormalize L p
    {{ x=X,y=Y,L.acc=A%p,L.history=H,L.flag=decide (A<p),L.work=0,Frame L initial st }} := by
  apply lift L x y X Y A H (A%p) H false (decide (A<p)) initial _ hnd
  intro s m _vx _vy va vh vf vw
  have clean (r : List Wire) (hr : r⊆L.work) := L.work_clean _ vw r hr
  obtain ⟨phase,unchanged,acc,flag⟩ := montNormalize_correct L p A
    (L.normalize_nodup x y hnd) (hw.table.trans hw.acc.symm)
    (by rw [hw.carry,hw.acc]) hw.acc hp hA s m va
    (clean L.table (by intro w hh; simp [MontStageLayout.work,hh]))
    (clean L.carry (by intro w hh; simp [MontStageLayout.work,hh])) (L.cin_clean _ vw) vf
  exact ⟨phase,fun w ha _ hf => unchanged w ha hf,acc,
    (normalization_history L x y hnd _ _ unchanged).trans vh,flag⟩

theorem denormalize (L : MontStageLayout) (x y : List Wire) (p X Y A H : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hp : p<2^256)
    (hA : A<2*p) (initial : BasisState) :
    {{ x=X,y=Y,L.acc=A%p,L.history=H,L.flag=decide (A<p),L.work=0,Frame L initial st }}
      montDenormalize L p
    {{ x=X,y=Y,L.acc=A,L.history=H,L.flag=false,L.work=0,Frame L initial st }} := by
  apply lift L x y X Y (A%p) H A H (decide (A<p)) false initial _ hnd
  intro s m _vx _vy va vh vf vw
  have clean (r : List Wire) (hr : r⊆L.work) := L.work_clean _ vw r hr
  obtain ⟨phase,unchanged,acc,flag⟩ := montDenormalize_correct L p A
    (L.normalize_nodup x y hnd) (hw.table.trans hw.acc.symm)
    (by rw [hw.carry,hw.acc]) hw.acc hp hA s m va
    (clean L.table (by intro w hh; simp [MontStageLayout.work,hh]))
    (clean L.carry (by intro w hh; simp [MontStageLayout.work,hh])) (L.cin_clean _ vw) vf
  exact ⟨phase,fun w ha _ hf => unchanged w ha hf,acc,
    (normalization_history L x y hnd _ _ unchanged).trans vh,flag⟩

theorem restore_rounds (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (initial : BasisState) :
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y k,L.history=montgomeryQuotient p X Y k,
       L.flag=false,L.work=0,Frame L initial st }} montRestoreRounds L x y p k
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,Frame L initial st }} := by
  apply lift L x y X Y _ _ 0 0 false false initial _ hnd
  intro s m vx vy va vh vf vw
  obtain ⟨phase,unchanged,acc,history⟩ :=
    montRestoreRounds_correct L x y p k X Y hw hnd hx hy hk hp hp16 hX s m vx vy va vh vw
  exact ⟨phase,fun w ha hh _ => unchanged w ha hh,acc,history,
    (rounds_flag L x y hnd _ _ unchanged).trans vf⟩

end MontStageTrace

/-- 变量段公开准备契约：记录带与借位明确保留，临时工作区归零。 -/
private theorem montPreparePrefix_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run ((montPrepareRounds L x y p k ++ montNormalize L p)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((montPrepareRounds L x y p k ++ montNormalize L p)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((montPrepareRounds L x y p k ++ montNormalize L p)) m s).basis=montgomeryValue p X Y k%p ∧
    regValue L.history (run ((montPrepareRounds L x y p k ++ montNormalize L p)) m s).basis=montgomeryQuotient p X Y k ∧
    (run ((montPrepareRounds L x y p k ++ montNormalize L p)) m s).basis L.flag=decide (montgomeryValue p X Y k<p) := by
  let V := montgomeryValue p X Y k
  let H := montgomeryQuotient p X Y k
  let frame := MontStageTrace.Frame L s.basis
  have first := MontStageTrace.prepare_rounds L x y p k X Y hw hnd hx hy hk hp hp16 hX s.basis
  have second := MontStageTrace.normalize L x y p X Y V H hw hnd hp
    (montgomeryValue_bound p X Y k hX) s.basis
  have derivation := hoare_steps {
    Precondition { x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame };

    after command { call (montPrepareRounds L x y p k); }
    get { x=X,y=Y,L.acc=V,L.history=H,L.flag=false,L.work=0,satisfies frame } by exact first;

    after command { call (montNormalize L p); }
    get { x=X,y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame } by exact second;

    Conclusion { x=X,y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame };
  }
  obtain ⟨phase,values⟩ := derivation s m ⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vh⟩,vf⟩,vw⟩,fun _ _ _ _ => rfl⟩
  exact ⟨phase,values.2,values.1.1.1.1.2,values.1.1.1.2,values.1.1.2⟩

private theorem montPreparePrefix_spec (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} (montPrepareRounds L x y p k ++ montNormalize L p)
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} := by
  apply MontStageTrace.forget_frame (L := L)
  intro initial
  exact MontStageTrace.lift L x y X Y 0 0 (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) false (decide (montgomeryValue p X Y k<p)) initial _ hnd
    (montPreparePrefix_correct L x y p k X Y hw hnd hx hy hk hp hp16 hX)

theorem montPrepare_correct (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run (montPrepare L x y p) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (montPrepare L x y p) m s).basis w=s.basis w) ∧
    regValue L.acc (run (montPrepare L x y p) m s).basis=montgomeryValue p X Y 64%p ∧
    regValue L.history (run (montPrepare L x y p) m s).basis=montgomeryQuotient p X Y 64 ∧
    (run (montPrepare L x y p) m s).basis L.flag=decide (montgomeryValue p X Y 64<p) := by
  simpa only [montPrepare] using montPreparePrefix_correct L x y p 64 X Y hw hnd hx hy (by omega) hp hp16 hX s m vx vy va vh vf vw

theorem montPrepare_spec (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} montPrepare L x y p
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} := by
  exact montPreparePrefix_spec L x y p 64 X Y hw hnd hx hy (by omega) hp hp16 hX


private theorem montRestorePrefix_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y k)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y k<p)) (vw : regValue L.work s.basis=0) :
    (run ((montDenormalize L p ++ montRestoreRounds L x y p k)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((montDenormalize L p ++ montRestoreRounds L x y p k)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((montDenormalize L p ++ montRestoreRounds L x y p k)) m s).basis=0 ∧
    regValue L.history (run ((montDenormalize L p ++ montRestoreRounds L x y p k)) m s).basis=0 ∧
    (run ((montDenormalize L p ++ montRestoreRounds L x y p k)) m s).basis L.flag=false := by
  let V := montgomeryValue p X Y k
  let H := montgomeryQuotient p X Y k
  let frame := MontStageTrace.Frame L s.basis
  have first := MontStageTrace.denormalize L x y p X Y V H hw hnd hp
    (montgomeryValue_bound p X Y k hX) s.basis
  have second := MontStageTrace.restore_rounds L x y p k X Y hw hnd hx hy hk hp hp16 hX s.basis
  have derivation := hoare_steps {
    Precondition { x=X,y=Y,L.acc=V%p,L.history=H,L.flag=decide (V<p),L.work=0,satisfies frame };

    after command { call (montDenormalize L p); }
    get { x=X,y=Y,L.acc=V,L.history=H,L.flag=false,L.work=0,satisfies frame } by exact first;

    after command { call (montRestoreRounds L x y p k); }
    get { x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame } by exact second;

    Conclusion { x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0,satisfies frame };
  }
  obtain ⟨phase,values⟩ := derivation s m ⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vh⟩,vf⟩,vw⟩,fun _ _ _ _ => rfl⟩
  exact ⟨phase,values.2,values.1.1.1.1.2,values.1.1.1.2,values.1.1.2⟩

private theorem montRestorePrefix_spec (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} (montDenormalize L p ++ montRestoreRounds L x y p k)
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := by
  apply MontStageTrace.forget_frame (L := L)
  intro initial
  exact MontStageTrace.lift L x y X Y (montgomeryValue p X Y k%p) (montgomeryQuotient p X Y k) 0 0 (decide (montgomeryValue p X Y k<p)) false initial _ hnd
    (montRestorePrefix_correct L x y p k X Y hw hnd hx hy hk hp hp16 hX)

theorem montRestore_correct (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y 64%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y 64)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y 64<p)) (vw : regValue L.work s.basis=0) :
    (run (montRestore L x y p) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (montRestore L x y p) m s).basis w=s.basis w) ∧
    regValue L.acc (run (montRestore L x y p) m s).basis=0 ∧
    regValue L.history (run (montRestore L x y p) m s).basis=0 ∧
    (run (montRestore L x y p) m s).basis L.flag=false := by
  simpa only [montRestore] using montRestorePrefix_correct L x y p 64 X Y hw hnd hx hy (by omega) hp hp16 hX s m vx vy va vh vf vw

theorem montRestore_spec (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} montRestore L x y p
    {{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := by
  simpa only [montRestore] using montRestorePrefix_spec L x y p 64 X Y hw hnd hx hy (by omega) hp hp16 hX

end ECDSAAdd.Arithmetic
