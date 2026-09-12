import ECDSAAdd.Arithmetic.HornerSpec

namespace ECDSAAdd.Arithmetic

theorem hornerStep_wires (M : MulInPlaceLayout) (n p i : Nat)
    (hw : M.Widths n) (hn : 0<n) :
    wires (hornerIntoStep M p i)=(M.bit i::M.x.take n++M.unary.core.wires).toFinset ∧
    wires (hornerClearStep M p i)=(M.bit i::M.x++M.unary.core.wires++[M.unary.flag]).toFinset := by
  have hd := (modUnary_wires M.unary n p hw.unary hn).1
  have hh := (modUnary_wires M.unary n p hw.unary hn).2
  have ha := controlledModAdd_wires (M.bit i) M.addView n p (M.add_widths n hw) hn
  have hs := controlledModSub_wires (M.bit i) M.addView n p (M.add_widths n hw) hn
  constructor
  · rw [hornerIntoStep,wires_append,hd,ha]
    ext q
    simp only [Finset.mem_union,List.mem_toFinset,MulInPlaceLayout.addView,
      ModInPlaceLayout.maskedCore,ModUnaryLayout.z,ModUnaryLayout.core,ModAddCoreLayout.wires,
      ModAddCoreLayout.z,ModAddCoreLayout.work,List.mem_append,List.mem_cons]
    aesop
  · rw [hornerClearStep,wires_append,hs,hh]
    ext q
    simp only [Finset.mem_union,List.mem_toFinset,MulInPlaceLayout.addView,
      ModInPlaceLayout.maskedCore,ModUnaryLayout.z,ModUnaryLayout.core,ModAddCoreLayout.wires,
      ModAddCoreLayout.z,ModAddCoreLayout.work,List.mem_append,List.mem_cons]
    aesop

private theorem drop_bit (M : MulInPlaceLayout) (k : Nat) (hk : k<M.y.length) :
    M.y.drop (M.y.length-(k+1)) = M.bit (M.y.length-(k+1)) :: M.y.drop (M.y.length-k) := by
  have hi : M.y.length-(k+1)<M.y.length := by omega
  rw [List.drop_eq_getElem_cons hi]
  have he : M.y.length-(k+1)+1=M.y.length-k := by omega
  simp [MulInPlaceLayout.bit,List.getD_eq_getElem?_getD,List.getElem?_eq_getElem hi,he]

private theorem mulRounds_wires (M : MulInPlaceLayout) (n p k : Nat)
    (hw : M.Widths n) (hn : 0<n) (hk : k≤n) :
    wires (mulIntoRounds M p k)=(if k=0 then ∅ else (M.x.take n++M.unary.core.wires++M.y.drop (n-k)).toFinset) ∧
    wires (mulClearRounds M p k)=(if k=0 then ∅ else (M.x++M.unary.core.wires++[M.unary.flag]++M.y.drop (n-k)).toFinset) := by
  induction k with
  | zero => simp [mulIntoRounds,mulClearRounds,wires]
  | succ k ih =>
    have ht := ih (by omega)
    have hs := hornerStep_wires M n p (M.y.length-(k+1)) hw hn
    have he := drop_bit M k (by rw [hw.y]; omega)
    rw [hw.y] at he hs
    simp only [mulIntoRounds,mulClearRounds,wires_append,hw.y,ht.1,ht.2,hs.1,hs.2,
      Nat.add_eq_zero_iff,Nat.one_ne_zero,and_false,if_false,he]
    by_cases hk0 : k=0
    · subst k
      have hz : M.y.drop n=[] := by rw [← hw.y,List.drop_length]
      simp [hz,Finset.insert_comm]
    · simp only [hk0,if_false]
      constructor <;> ext q <;> simp only [Finset.mem_union,List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] <;> tauto

/-- 支持集按实际门列计；前向不触碰源最高位与奇偶标志。 -/
theorem mulInPlace_wires (M : MulInPlaceLayout) (n p : Nat) (hw : M.Widths n) (hn : 0<n) :
    wires (mulInto M p)=(M.x.take n++M.unary.core.wires++M.y).toFinset ∧
    wires (mulClear M p)=(M.x++M.unary.core.wires++[M.unary.flag]++M.y).toFinset := by
  simpa [mulInto,mulClear,hw.y,Nat.ne_of_gt hn] using mulRounds_wires M n p n hw hn (Nat.le_refl n)

/-- 全程静态支持线数为线性；并非最大同时存活线数。 -/
theorem mulInPlace_resources (M : MulInPlaceLayout) (n p : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hn : 0<n) :
    toffoliCount (mulInto M p)=n*(8*n-2) ∧ measurementCount (mulInto M p)=n*(6*n-2) ∧
    qubitCount (mulInto M p)=6*n+4 ∧
    toffoliCount (mulClear M p)=n*(10*n-1) ∧ measurementCount (mulClear M p)=n*(8*n-1) ∧
    qubitCount (mulClear M p)=6*n+6 := by
  have hc := mulInPlace_counts M n p hw hnd hn
  have hd : (M.x.take n++M.unary.core.wires++M.y).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have ht := (List.take_sublist n M.x).count_le q
    have hh := List.nodup_iff_count.mp hnd q
    simp only [MulInPlaceLayout.wires,MulInPlaceLayout.acc,MulInPlaceLayout.work,
      ModUnaryLayout.work,ModUnaryLayout.core,ModUnaryLayout.z,ModAddCoreLayout.wires,
      ModAddCoreLayout.work,ModAddCoreLayout.z,List.count_append] at hh ⊢
    omega
  have hh : (M.x++M.unary.core.wires++[M.unary.flag]++M.y).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have hh := List.nodup_iff_count.mp hnd q
    simp only [MulInPlaceLayout.wires,MulInPlaceLayout.acc,MulInPlaceLayout.work,
      ModUnaryLayout.work,ModUnaryLayout.core,ModUnaryLayout.z,ModAddCoreLayout.wires,
      ModAddCoreLayout.work,ModAddCoreLayout.z,List.count_append] at hh ⊢
    omega
  refine ⟨hc.1,hc.2.1,?_,hc.2.2.1,hc.2.2.2,?_⟩
  · rw [qubitCount,(mulInPlace_wires M n p hw hn).1,List.toFinset_card_of_nodup hd]
    simp [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.work,ModAddCoreLayout.z,
      hw.x,hw.y,hw.unary.low,hw.unary.mask,hw.unary.constant,hw.unary.carry]
    omega
  · rw [qubitCount,(mulInPlace_wires M n p hw hn).2,List.toFinset_card_of_nodup hh]
    simp [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.work,ModAddCoreLayout.z,
      hw.x,hw.y,hw.unary.low,hw.unary.mask,hw.unary.constant,hw.unary.carry]
    omega

private theorem horner_frame_of_values (M : MulInPlaceLayout) (P : Program) (s : State) (m : List Bool)
    (hs : wires P ⊆ M.wires.toFinset)
    (hx : regValue M.x (run P m s).basis=regValue M.x s.basis)
    (hy : regValue M.y (run P m s).basis=regValue M.y s.basis)
    (hc : regValue M.work (run P m s).basis=regValue M.work s.basis)
    (q : Wire) (hq : q∉M.acc) : (run P m s).basis q=s.basis q := by
  by_cases hqx : q∈M.x
  · exact (regValue_eq_iff _ _ _).mp hx q hqx
  by_cases hqy : q∈M.y
  · exact (regValue_eq_iff _ _ _).mp hy q hqy
  by_cases hqc : q∈M.work
  · exact (regValue_eq_iff _ _ _).mp hc q hqc
  apply run_preserves_outside
  intro h
  have hh := hs h
  simp [MulInPlaceLayout.wires,hqx,hqy,hqc,hq] at hh

private theorem mulInPlace_support (M : MulInPlaceLayout) (n p : Nat) (hw : M.Widths n) (hn : 0<n) :
    wires (mulInto M p)⊆M.wires.toFinset ∧ wires (mulClear M p)⊆M.wires.toFinset := by
  rw [(mulInPlace_wires M n p hw hn).1,(mulInPlace_wires M n p hw hn).2]
  constructor <;> intro q hq
  · have ht : q∈M.x.take n → q∈M.x := fun h => (List.take_sublist n M.x).subset h
    simp only [List.mem_toFinset,List.mem_append,MulInPlaceLayout.wires,MulInPlaceLayout.acc,
      MulInPlaceLayout.work,ModUnaryLayout.work,ModUnaryLayout.core,ModUnaryLayout.z,
      ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,List.mem_cons] at hq ⊢
    aesop
  · simp only [List.mem_toFinset,List.mem_append,MulInPlaceLayout.wires,MulInPlaceLayout.acc,
      MulInPlaceLayout.work,ModUnaryLayout.work,ModUnaryLayout.core,ModUnaryLayout.z,
      ModAddCoreLayout.wires,ModAddCoreLayout.z,ModAddCoreLayout.work,List.mem_cons] at hq ⊢
    aesop

/-- 计算只更新累加器；输入、借用工作位和布局外线路逐线保持。 -/
theorem mulInto_frame (M : MulInPlaceLayout) (n p X Y : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) (s : State) (m : List Bool)
    (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (hz : regValue M.acc s.basis=0) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.acc) : (run (mulInto M p) m s).basis q=s.basis q := by
  obtain ⟨_,h⟩ := mulInto_spec M n p X Y hw hnd hp hpn hX hY s m ⟨⟨⟨hx,hy⟩,hz⟩,hc⟩
  have hn : 0<n := by
    by_contra hh
    have he : n=0 := by omega
    simp [he] at hpn
    omega
  exact horner_frame_of_values M _ s m (mulInPlace_support M n p hw hn).1
    (h.1.1.1.trans hx.symm) (h.1.1.2.trans hy.symm) (h.2.trans hc.symm) q hq

/-- 清理同样只更新累加器，且不要求倒放任何测量门。 -/
theorem mulClear_frame (M : MulInPlaceLayout) (n p X Y : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) (s : State) (m : List Bool)
    (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (hz : regValue M.acc s.basis=(X*Y)%p) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.acc) : (run (mulClear M p) m s).basis q=s.basis q := by
  obtain ⟨_,h⟩ := mulClear_spec M n p X Y hw hnd hp hpn hX hY s m ⟨⟨⟨hx,hy⟩,hz⟩,hc⟩
  have hn : 0<n := by
    by_contra hh
    have he : n=0 := by omega
    simp [he] at hpn
    omega
  exact horner_frame_of_values M _ s m (mulInPlace_support M n p hw hn).2
    (h.1.1.1.trans hx.symm) (h.1.1.2.trans hy.symm) (h.2.trans hc.symm) q hq

end ECDSAAdd.Arithmetic
