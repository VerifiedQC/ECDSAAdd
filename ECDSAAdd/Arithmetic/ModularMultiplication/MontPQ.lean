import ECDSAAdd.Arithmetic.ModularMultiplication.MontLayout
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage
open GateProof

namespace MontPairTrace

/-- The product preparation may only change its allocated workspace. -/
def Frame (M : MontLayout) (initial st : BasisState) : Prop :=
  ∀ w, w∉M.work → st w=initial w

/-- Lift the variable stage while retaining the second stage's registers. -/
private theorem first (M : MontLayout) (hnd : M.wires.Nodup)
    (X Y A Z HA HZ A' HA' : Nat) (FA FZ FA' : Bool) (initial : BasisState) (c : Program)
    (effect : ∀ s m, regValue M.x s.basis=X → regValue M.y s.basis=Y →
      regValue M.a s.basis=A → regValue M.hA s.basis=HA → s.basis M.fA=FA →
      regValue M.shared s.basis=0 → (run c m s).phase=s.phase ∧
      (∀ w, w∉M.a → w∉M.hA → w≠M.fA → (run c m s).basis w=s.basis w) ∧
      regValue M.a (run c m s).basis=A' ∧ regValue M.hA (run c m s).basis=HA' ∧
      (run c m s).basis M.fA=FA') :
    {{ M.x=X,M.y=Y,M.a=A,M.z=Z,M.hA=HA,M.hZ=HZ,M.fA=FA,M.fZ=FZ,M.shared=0,Frame M initial st }} c
    {{ M.x=X,M.y=Y,M.a=A',M.z=Z,M.hA=HA',M.hZ=HZ,M.fA=FA',M.fZ=FZ,M.shared=0,Frame M initial st }} := by
  intro s m h
  rcases h with ⟨⟨⟨⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vz⟩,vha⟩,vhz⟩,vfa⟩,vfz⟩,vs⟩,frame⟩
  obtain ⟨phase,unchanged,acc,history,flag⟩ := effect s m vx vy va vha vfa vs
  have keep (w : Wire) (hm : w∈M.x++M.y++M.out++M.activeZ++M.shared) :
      (run c m s).basis w=s.basis w := by
    have hd := List.disjoint_left.mp (M.first_disjoint hnd) hm
    exact unchanged w (fun h => hd (by simp [MontLayout.activeA,h]))
      (fun h => hd (by simp [MontLayout.activeA,h])) (fun h => hd (by simp [MontLayout.activeA,h]))
  have keepReg (r : List Wire) (hr : r⊆M.x++M.y++M.out++M.activeZ++M.shared) :
      regValue r (run c m s).basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun w hw => keep w (hr hw))
  have outside : Frame M initial (run c m s).basis := by
    intro w hw
    have ha : w∉M.activeA := fun h => hw (by simp [MontLayout.work,h])
    exact (unchanged w (fun h => ha (by simp [MontLayout.activeA,h]))
      (fun h => ha (by simp [MontLayout.activeA,h]))
      (fun h => ha (by simp [MontLayout.activeA,h]))).trans (frame w hw)
  exact ⟨phase,⟨⟨⟨⟨⟨⟨⟨⟨⟨(keepReg M.x (by intro w h; simp [h])).trans vx,
    (keepReg M.y (by intro w h; simp [h])).trans vy⟩,acc⟩,
    (keepReg M.z (by intro w h; simp [MontLayout.activeZ,h])).trans vz⟩,history⟩,
    (keepReg M.hZ (by intro w h; simp [MontLayout.activeZ,h])).trans vhz⟩,flag⟩,
    (keep M.fZ (by simp [MontLayout.activeZ])).trans vfz⟩,
    (keepReg M.shared (by intro w h; simp [h])).trans vs⟩,outside⟩⟩

/-- Lift the constant conversion stage while retaining the variable-stage history. -/
private theorem second (M : MontLayout) (hnd : M.wires.Nodup)
    (X Y A Z HA HZ Z' HZ' : Nat) (FA FZ FZ' : Bool) (initial : BasisState) (c : Program)
    (effect : ∀ s m, regValue M.a s.basis=A → regValue M.z s.basis=Z →
      regValue M.hZ s.basis=HZ → s.basis M.fZ=FZ → regValue M.shared s.basis=0 →
      (run c m s).phase=s.phase ∧
      (∀ w, w∉M.z → w∉M.hZ → w≠M.fZ → (run c m s).basis w=s.basis w) ∧
      regValue M.z (run c m s).basis=Z' ∧ regValue M.hZ (run c m s).basis=HZ' ∧
      (run c m s).basis M.fZ=FZ') :
    {{ M.x=X,M.y=Y,M.a=A,M.z=Z,M.hA=HA,M.hZ=HZ,M.fA=FA,M.fZ=FZ,M.shared=0,Frame M initial st }} c
    {{ M.x=X,M.y=Y,M.a=A,M.z=Z',M.hA=HA,M.hZ=HZ',M.fA=FA,M.fZ=FZ',M.shared=0,Frame M initial st }} := by
  intro s m h
  rcases h with ⟨⟨⟨⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vz⟩,vha⟩,vhz⟩,vfa⟩,vfz⟩,vs⟩,frame⟩
  obtain ⟨phase,unchanged,acc,history,flag⟩ := effect s m va vz vhz vfz vs
  have keep (w : Wire) (hm : w∈M.x++M.y++M.out++M.activeA++M.shared) :
      (run c m s).basis w=s.basis w := by
    have hd := List.disjoint_left.mp (M.second_disjoint hnd) hm
    exact unchanged w (fun h => hd (by simp [MontLayout.activeZ,h]))
      (fun h => hd (by simp [MontLayout.activeZ,h])) (fun h => hd (by simp [MontLayout.activeZ,h]))
  have keepReg (r : List Wire) (hr : r⊆M.x++M.y++M.out++M.activeA++M.shared) :
      regValue r (run c m s).basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun w hw => keep w (hr hw))
  have outside : Frame M initial (run c m s).basis := by
    intro w hw
    have hz : w∉M.activeZ := fun h => hw (by simp [MontLayout.work,h])
    exact (unchanged w (fun h => hz (by simp [MontLayout.activeZ,h]))
      (fun h => hz (by simp [MontLayout.activeZ,h]))
      (fun h => hz (by simp [MontLayout.activeZ,h]))).trans (frame w hw)
  exact ⟨phase,⟨⟨⟨⟨⟨⟨⟨⟨⟨(keepReg M.x (by intro w h; simp [h])).trans vx,
    (keepReg M.y (by intro w h; simp [h])).trans vy⟩,
    (keepReg M.a (by intro w h; simp [MontLayout.activeA,h])).trans va⟩,acc⟩,
    (keepReg M.hA (by intro w h; simp [MontLayout.activeA,h])).trans vha⟩,history⟩,
    (keep M.fA (by simp [MontLayout.activeA])).trans vfa⟩,flag⟩,
    (keepReg M.shared (by intro w h; simp [h])).trans vs⟩,outside⟩⟩

/-- A zero workspace gives zero accumulators, histories, flags, and shared scratch. -/
private theorem clean_parts (M : MontLayout) (st : BasisState) (h : regValue M.work st=0) :
    (((((regValue M.a st=0 ∧ regValue M.z st=0) ∧ regValue M.hA st=0) ∧
      regValue M.hZ st=0) ∧ st M.fA=false) ∧ st M.fZ=false) ∧ regValue M.shared st=0 := by
  have clean (r : List Wire) (hr : r⊆M.work) := M.work_clean st h r hr
  exact ⟨⟨⟨⟨⟨⟨clean M.a (by intro w hw; simp [MontLayout.work,MontLayout.activeA,hw]),
    clean M.z (by intro w hw; simp [MontLayout.work,MontLayout.activeZ,hw])⟩,
    clean M.hA (by intro w hw; simp [MontLayout.work,MontLayout.activeA,hw])⟩,
    clean M.hZ (by intro w hw; simp [MontLayout.work,MontLayout.activeZ,hw])⟩,
    (regValue_zero _ _).mp h _ (by simp [MontLayout.work,MontLayout.activeA])⟩,
    (regValue_zero _ _).mp h _ (by simp [MontLayout.work,MontLayout.activeZ])⟩,
    clean M.shared (by intro w hw; simp [MontLayout.work,hw])⟩

/-- Clearing both retained histories and shared scratch clears the allocated workspace. -/
private theorem join_clean (M : MontLayout) (st : BasisState)
    (va : regValue M.a st=0) (vz : regValue M.z st=0)
    (vha : regValue M.hA st=0) (vhz : regValue M.hZ st=0)
    (vfa : st M.fA=false) (vfz : st M.fZ=false) (vs : regValue M.shared st=0) :
    regValue M.work st=0 := by
  apply (regValue_zero _ _).mpr
  intro w hw
  simp only [MontLayout.work,MontLayout.activeA,MontLayout.activeZ,List.mem_append,List.mem_singleton] at hw
  rcases hw with (((ha|hha)|hfa)|((hz|hhz)|hfz))|hs
  · exact (regValue_zero _ _).mp va w ha
  · exact (regValue_zero _ _).mp vha w hha
  · simpa only [hfa] using vfa
  · exact (regValue_zero _ _).mp vz w hz
  · exact (regValue_zero _ _).mp vhz w hhz
  · simpa only [hfz] using vfz
  · exact (regValue_zero _ _).mp vs w hs

end MontPairTrace

/-- P 在一份共享工作区上依次准备变量段和常数转换段，保存两套历史。 -/
theorem montP_correct (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (s : State) (m : List Bool)
    (vx : regValue M.x s.basis=X) (vy : regValue M.y s.basis=Y) (vw : regValue M.work s.basis=0) :
    (run (montP M p) m s).phase=s.phase ∧
    (∀ w, w∉M.work → (run (montP M p) m s).basis w=s.basis w) ∧
    MontPrepared M p X Y (run (montP M p) m s).basis := by
  let K := montgomeryConversion p
  let A := montgomeryValue p X Y 64%p
  let HA := montgomeryQuotient p X Y 64
  let HZ := montgomeryQuotient p K A 64
  let FA := decide (montgomeryValue p X Y 64<p)
  let FZ := decide (montgomeryValue p K A 64<p)
  let frame := MontPairTrace.Frame M s.basis
  have ordinaryProduct : montgomeryValue p K A 64%p=(X*Y)%p :=
    montgomery_two_stages p X Y hp16 (by rwa [montgomeryRadix_eq]) (by rwa [montgomeryRadix_eq])
  have variableStage := MontPairTrace.first M hnd X Y 0 0 0 0 A HA false false FA s.basis _
    (montPrepare_correct M.first M.x M.y p X Y hw.first (M.first_nodup hnd)
      (by rw [hw.x]; omega) (by rw [hw.y]) hp hp16 hX)
  have conversionStage := MontPairTrace.second M hnd X Y A 0 HA 0
    (montgomeryValue p K A 64%p) HZ FA false FZ s.basis _
    (constPrepare_correct M.second M.a p K A (M.second_widths hw) (M.second_nodup hnd)
      (by change 256≤M.first.acc.length; rw [hw.first.acc]; omega) hp hp16
      (montgomeryConversion_bound p (Nat.Prime.pos Fact.out)))
  rw [ordinaryProduct] at conversionStage
  have derivation := hoare_steps {
    Precondition { M.x=X,M.y=Y,M.a=0,M.z=0,M.hA=0,M.hZ=0,M.fA=false,M.fZ=false,M.shared=0,satisfies frame };

    after command { call (montPrepare M.first M.x M.y p); }
    get { M.x=X,M.y=Y,M.a=A,M.z=0,M.hA=HA,M.hZ=0,M.fA=FA,M.fZ=false,M.shared=0,satisfies frame } by exact variableStage;

    after command { call (constPrepare M.second M.a p K); }
    get { M.x=X,M.y=Y,M.a=A,M.z=(X*Y)%p,M.hA=HA,M.hZ=HZ,M.fA=FA,M.fZ=FZ,M.shared=0,satisfies frame } by exact conversionStage;

    Conclusion { M.x=X,M.y=Y,M.a=A,M.z=(X*Y)%p,M.hA=HA,M.hZ=HZ,M.fA=FA,M.fZ=FZ,M.shared=0,satisfies frame };
  }
  obtain ⟨⟨⟨⟨⟨⟨va,vz⟩,vha⟩,vhz⟩,vfa⟩,vfz⟩,vs⟩ := MontPairTrace.clean_parts M s.basis vw
  obtain ⟨phase,⟨⟨⟨⟨⟨⟨⟨⟨⟨x,y⟩,a⟩,z⟩,ha⟩,hz⟩,fa⟩,fz⟩,shared⟩,outside⟩⟩ :=
    derivation s m ⟨⟨⟨⟨⟨⟨⟨⟨⟨vx,vy⟩,va⟩,vz⟩,vha⟩,vhz⟩,vfa⟩,vfz⟩,vs⟩,fun _ _ => rfl⟩
  exact ⟨phase,outside,⟨x,y,a,z,ha,hz,fa,fz,shared⟩⟩


/-- Q 按相反段序执行新的前向门列，消费两条历史并清空整个分配工作区。 -/
theorem montQ_correct (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (s : State) (m : List Bool) (h : MontPrepared M p X Y s.basis) :
    (run (montQ M p) m s).phase=s.phase ∧
    (∀ w, w∉M.work → (run (montQ M p) m s).basis w=s.basis w) ∧
    regValue M.x (run (montQ M p) m s).basis=X ∧
    regValue M.y (run (montQ M p) m s).basis=Y ∧
    regValue M.work (run (montQ M p) m s).basis=0 := by
  let K := montgomeryConversion p
  let A := montgomeryValue p X Y 64%p
  let HA := montgomeryQuotient p X Y 64
  let HZ := montgomeryQuotient p K A 64
  let FA := decide (montgomeryValue p X Y 64<p)
  let FZ := decide (montgomeryValue p K A 64<p)
  let frame := MontPairTrace.Frame M s.basis
  have ordinaryProduct : montgomeryValue p K A 64%p=(X*Y)%p :=
    montgomery_two_stages p X Y hp16 (by rwa [montgomeryRadix_eq]) (by rwa [montgomeryRadix_eq])
  have conversionStage := MontPairTrace.second M hnd X Y A
    (montgomeryValue p K A 64%p) HA HZ 0 0 FA FZ false s.basis _
    (constRestore_correct M.second M.a p K A (M.second_widths hw) (M.second_nodup hnd)
      (by change 256≤M.first.acc.length; rw [hw.first.acc]; omega) hp hp16
      (montgomeryConversion_bound p (Nat.Prime.pos Fact.out)))
  rw [ordinaryProduct] at conversionStage
  have variableStage := MontPairTrace.first M hnd X Y A 0 HA 0 0 0 FA false false s.basis _
    (montRestore_correct M.first M.x M.y p X Y hw.first (M.first_nodup hnd)
      (by rw [hw.x]; omega) (by rw [hw.y]) hp hp16 hX)
  have derivation := hoare_steps {
    Precondition { M.x=X,M.y=Y,M.a=A,M.z=(X*Y)%p,M.hA=HA,M.hZ=HZ,M.fA=FA,M.fZ=FZ,M.shared=0,satisfies frame };

    after command { call (constRestore M.second M.a p K); }
    get { M.x=X,M.y=Y,M.a=A,M.z=0,M.hA=HA,M.hZ=0,M.fA=FA,M.fZ=false,M.shared=0,satisfies frame } by exact conversionStage;

    after command { call (montRestore M.first M.x M.y p); }
    get { M.x=X,M.y=Y,M.a=0,M.z=0,M.hA=0,M.hZ=0,M.fA=false,M.fZ=false,M.shared=0,satisfies frame } by exact variableStage;

    Conclusion { M.x=X,M.y=Y,M.a=0,M.z=0,M.hA=0,M.hZ=0,M.fA=false,M.fZ=false,M.shared=0,satisfies frame };
  }
  obtain ⟨phase,⟨⟨⟨⟨⟨⟨⟨⟨⟨x,y⟩,a⟩,z⟩,ha⟩,hz⟩,fa⟩,fz⟩,shared⟩,outside⟩⟩ :=
    derivation s m ⟨⟨⟨⟨⟨⟨⟨⟨⟨h.x,h.y⟩,h.a⟩,h.z⟩,h.hA⟩,h.hZ⟩,h.fA⟩,h.fZ⟩,h.shared⟩,fun _ _ => rfl⟩
  exact ⟨phase,outside,x,y,MontPairTrace.join_clean M _ a z ha hz fa fz shared⟩

/-- P 的内部 Triple：输入为规范 X 和任意256位 Y，所有工作位从零开始。 -/
theorem montP_spec (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hY : Y<2^256) :
    Triple (fun s => regValue M.x s=X ∧ regValue M.y s=Y ∧ regValue M.work s=0)
      (montP M p) (MontPrepared M p X Y) := Proof
  For every s, m assuming h
  have hh := montP_correct M p X Y hw hnd hp hp16 hX hY s m h.1 h.2.1 h.2.2
  conclude { (run (montP M p) m s).phase=s.phase ∧ MontPrepared M p X Y (run (montP M p) m s).basis } by ⟨hh.1, hh.2.2⟩;

/-- Q 只消费准备契约，不要求输出寄存器为零，供五个适配器共同复用。 -/
theorem montQ_spec (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hY : Y<2^256) :
    Triple (MontPrepared M p X Y) (montQ M p)
      (fun s => regValue M.x s=X ∧ regValue M.y s=Y ∧ regValue M.work s=0) := Proof
  For every s, m assuming h
  have hh := montQ_correct M p X Y hw hnd hp hp16 hX hY s m h
  conclude { (run (montQ M p) m s).phase=s.phase ∧
    regValue M.x (run (montQ M p) m s).basis=X ∧
    regValue M.y (run (montQ M p) m s).basis=Y ∧
    regValue M.work (run (montQ M p) m s).basis=0 } by ⟨hh.1, hh.2.2⟩;

end ECDSAAdd.Arithmetic
