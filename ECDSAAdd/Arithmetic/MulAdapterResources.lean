import ECDSAAdd.Arithmetic.MulAdapterSpec

namespace ECDSAAdd.Arithmetic

/-- 三个适配器均触及全部布局，包括临时积、源最高位及 flag。 -/
theorem mulAdapter_wires (F : MulAdapterLayout) (p : Nat) (hw : F.Widths) (hn : 0<F.width) :
    wires (mulXor F p)=F.wires.toFinset ∧ wires (mulAdd F p)=F.wires.toFinset ∧
    wires (mulSub F p)=F.wires.toFinset := by
  have hi := mulInPlace_wires F.core F.width p hw.1 hn
  have hc := copyRegister_wires none F.product F.out (F.product_length.trans hw.2.symm)
  have hne : F.product.isEmpty=false := by
    cases he : F.product with
    | nil => have hl := F.product_length; simp [he] at hl
    | cons a as => rfl
  simp only [hne,Bool.false_eq_true,if_false,Option.toList_none,List.nil_append] at hc
  have ha := modAddCore_wires F.addView.toModAddCoreLayout F.width p (F.add_widths hw).core hn
  have hs := modSubInPlace_wires F.addView F.width p (F.add_widths hw) hn
  have hv : F.addView.toModAddCoreLayout.wires=F.product++F.out++F.unary.core.work := by
    change F.product++F.addView.z++F.unary.core.work=_
    rw [(F.add_ports hw).2.1]
  rw [hv] at ha hs
  simp only [mulXor,mulAdd,mulSub,wires_append,hi.1,hi.2,hc,modAddInPlace,ha,hs]
  have ht (q : Wire) : q∈F.x.take F.width → q∈F.x := fun h => (List.take_sublist _ _).subset h
  constructor
  · ext q
    simp only [Finset.mem_union,List.mem_toFinset,MulAdapterLayout.core,MulAdapterLayout.wires,
      MulAdapterLayout.work,MulAdapterLayout.product,ModUnaryLayout.core,ModUnaryLayout.work,
      ModUnaryLayout.z,ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,
      List.mem_append,List.mem_cons,List.not_mem_nil,or_false]
    have h := ht q
    aesop
  · constructor <;> ext q <;>
      simp only [Finset.mem_union,List.mem_toFinset,MulAdapterLayout.core,MulAdapterLayout.wires,
        MulAdapterLayout.work,MulAdapterLayout.product,ModUnaryLayout.core,ModUnaryLayout.work,
        ModUnaryLayout.z,ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,
        List.mem_append,List.mem_cons,List.not_mem_nil,or_false]
    all_goals have h := ht q; aesop

theorem mulAdapter_counts (F : MulAdapterLayout) (p : Nat) (hw : F.Widths)
    (hnd : F.wires.Nodup) (hn : 0<F.width) :
    toffoliCount (mulXor F p)=F.width*(18*F.width-3) ∧
    measurementCount (mulXor F p)=F.width*(14*F.width-3) ∧
    toffoliCount (mulAdd F p)=F.width*(18*F.width-3)+4*F.width-1 ∧
    measurementCount (mulAdd F p)=F.width*(14*F.width-3)+4*F.width-1 ∧
    toffoliCount (mulSub F p)=F.width*(18*F.width-3)+6*F.width-1 ∧
    measurementCount (mulSub F p)=F.width*(14*F.width-3)+6*F.width-1 := by
  have hk := mulInPlace_counts F.core F.width p hw.1 (F.core_nodup hnd) hn
  have hc := copyRegister_counts none F.product F.out (F.product_length.trans hw.2.symm)
  have ha := modAddInPlace_resources F.addView F.width p (F.add_widths hw) (F.add_nodup hw hnd) hn
  have hs := modSubInPlace_resources F.addView F.width p (F.add_widths hw) (F.add_nodup hw hnd) hn
  have ht : F.width*(8*F.width-2)+F.width*(10*F.width-1)=F.width*(18*F.width-3) := by
    rw [← Nat.mul_add]
    congr 1
    omega
  have hm : F.width*(6*F.width-2)+F.width*(8*F.width-1)=F.width*(14*F.width-3) := by
    rw [← Nat.mul_add]
    congr 1
    omega
  simp only [mulXor,mulAdd,mulSub,toffoliCount_append,measurementCount_append,
    hk.1,hk.2.1,hk.2.2.1,hk.2.2.2,hc.1,hc.2,ha.1,ha.2.1,hs.1,hs.2.1,
    Option.isSome_none,Bool.false_eq_true,if_false]
  omega

theorem mulAdapter_resources (F : MulAdapterLayout) (p : Nat) (hw : F.Widths)
    (hnd : F.wires.Nodup) (hn : 0<F.width) :
    qubitCount (mulXor F p)=7*F.width+7 ∧ qubitCount (mulAdd F p)=7*F.width+7 ∧
    qubitCount (mulSub F p)=7*F.width+7 := by
  have hl : F.wires.length=7*F.width+7 := by
    simp [MulAdapterLayout.wires,MulAdapterLayout.work,MulAdapterLayout.product,
      ModUnaryLayout.work,ModUnaryLayout.core,ModUnaryLayout.z,ModAddCoreLayout.work,
      show F.x.length=F.width+1 from hw.1.x,show F.y.length=F.width from hw.1.y,hw.2,
      show F.unary.low.length=F.width from rfl,
      show F.unary.constant.length=F.width+1 from hw.1.unary.constant,
      show F.unary.carry.length=F.width from hw.1.unary.carry,
      show F.unary.mask.length=F.width+1 from hw.1.unary.mask]
    omega
  simp only [qubitCount,(mulAdapter_wires F p hw hn).1,(mulAdapter_wires F p hw hn).2.1,
    (mulAdapter_wires F p hw hn).2.2,List.toFinset_card_of_nodup hnd,hl,and_self]

private theorem adapter_frame_values (F : MulAdapterLayout) (P : Program) (s : State) (m : List Bool)
    (hs : wires P=F.wires.toFinset)
    (hx : regValue F.x (run P m s).basis=regValue F.x s.basis)
    (hy : regValue F.y (run P m s).basis=regValue F.y s.basis)
    (hc : regValue F.work (run P m s).basis=regValue F.work s.basis)
    (q : Wire) (hq : q∉F.out) : (run P m s).basis q=s.basis q := by
  by_cases hqx : q∈F.x
  · exact (regValue_eq_iff _ _ _).mp hx q hqx
  by_cases hqy : q∈F.y
  · exact (regValue_eq_iff _ _ _).mp hy q hqy
  by_cases hqc : q∈F.work
  · exact (regValue_eq_iff _ _ _).mp hc q hqc
  apply run_preserves_outside
  rw [hs]
  simp [MulAdapterLayout.wires,hqx,hqy,hqc,hq]

/-- XOR 适配器只改变公开输出。 -/
theorem mulXor_frame (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (s : State) (m : List Bool)
    (hx : regValue F.x s.basis=X) (hy : regValue F.y s.basis=Y)
    (ho : regValue F.out s.basis=O) (hc : regValue F.work s.basis=0)
    (q : Wire) (hq : q∉F.out) : (run (mulXor F p) m s).basis q=s.basis q := by
  obtain ⟨_,h⟩ := mulXor_spec F p X Y O hw hnd hp hpn hX hY s m ⟨⟨⟨hx,hy⟩,ho⟩,hc⟩
  have hn : 0<F.width := by
    by_contra hh
    have he : F.width=0 := by omega
    simp [he] at hpn
    omega
  exact adapter_frame_values F _ s m (mulAdapter_wires F p hw hn).1
    (h.1.1.1.trans hx.symm) (h.1.1.2.trans hy.symm) (h.2.trans hc.symm) q hq

/-- 模加/减适配器也只改变公开输出。 -/
theorem mulAddSub_frame (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (hO : O<p) (s : State) (m : List Bool)
    (hx : regValue F.x s.basis=X) (hy : regValue F.y s.basis=Y)
    (ho : regValue F.out s.basis=O) (hc : regValue F.work s.basis=0)
    (q : Wire) (hq : q∉F.out) :
    (run (mulAdd F p) m s).basis q=s.basis q ∧ (run (mulSub F p) m s).basis q=s.basis q := by
  obtain ⟨_,ha⟩ := mulAdd_spec F p X Y O hw hnd hp hpn hX hY hO s m ⟨⟨⟨hx,hy⟩,ho⟩,hc⟩
  obtain ⟨_,hs⟩ := mulSub_spec F p X Y O hw hnd hp hpn hX hY hO s m ⟨⟨⟨hx,hy⟩,ho⟩,hc⟩
  have hn : 0<F.width := by
    by_contra hh
    have he : F.width=0 := by omega
    simp [he] at hpn
    omega
  exact ⟨adapter_frame_values F _ s m (mulAdapter_wires F p hw hn).2.1
    (ha.1.1.1.trans hx.symm) (ha.1.1.2.trans hy.symm) (ha.2.trans hc.symm) q hq,
    adapter_frame_values F _ s m (mulAdapter_wires F p hw hn).2.2
    (hs.1.1.1.trans hx.symm) (hs.1.1.2.trans hy.symm) (hs.2.trans hc.symm) q hq⟩

end ECDSAAdd.Arithmetic
