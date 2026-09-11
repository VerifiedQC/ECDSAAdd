import ECDSAAdd.Arithmetic.RoundResources

namespace ECDSAAdd.Arithmetic

private theorem adder_interface (L : RoundDataLayout) (f : RoundField) :
    (L.adder f).wires.toFinset = (L.cin::(L.reg f++L.reg .y++L.reg .out++L.reg .carry)).toFinset := by
  have hp := (L.adder f).interface_perm
  ext w
  have h := hp.mem_iff (a:=w)
  obtain ⟨hx,hy,ho,hc,hi,_⟩ := L.adder_fields f
  simp only [hx,hy,ho,hc,hi,List.mem_append,List.mem_cons] at h
  simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
  tauto

private theorem swap_wires (c : Wire) (a b : List Wire) (hlen : a.length=b.length) (hpos : 0<a.length) :
    wires (swapRegisters c a b)=(c::(a++b)).toFinset ∧
    wires (exchangeRegisters a b)=(a++b).toFinset := by
  have hae : a.isEmpty=false := by cases a <;> simp_all
  have hbe : b.isEmpty=false := by cases b <;> simp_all
  have ha := copyRegister_wires (some c) a b hlen
  have hb := copyRegister_wires none b a hlen.symm
  have hc := copyRegister_wires none a b hlen
  simp only [hae,hbe,Bool.false_eq_true,if_false] at ha hb hc
  constructor <;> ext w <;>
    simp only [swapRegisters,exchangeRegisters,wires_append,ha,hb,hc,Finset.mem_union,List.mem_toFinset,
      List.mem_cons,List.mem_append,Option.toList_some,Option.toList_none,List.mem_nil_iff,or_false,false_or] <;> tauto

private theorem inplace_wires (L : RoundDataLayout) (f g : RoundField) (c : Wire) (neg : Bool)
    (hw : 0<L.width) :
    wires (inplaceArithmetic L f g c neg)=
      (c::L.cin::(L.reg f++L.reg g++L.reg .y++L.reg .out++L.reg .carry)).toFinset := by
  have hm := maskedAdder_wires (L.adder f) (L.reg g) c
    (by rw [L.reg_length,(L.adder_fields f).2.2.2.2.2]) (by rw [(L.adder_fields f).2.2.2.2.2]; exact hw)
  have he := (swap_wires c (L.reg f) (L.reg .out) (by rw [L.reg_length,L.reg_length])
    (by rw [L.reg_length]; exact hw)).2
  have had := adder_interface L f
  cases neg <;> simp only [inplaceArithmetic,Bool.false_eq_true,if_false,if_true,wires_append,hm.1,hm.2,he]
  all_goals
    ext w
    have ha : w∈(L.adder f).wires ↔ w∈L.cin::(L.reg f++L.reg .y++L.reg .out++L.reg .carry) := by
      simpa only [List.mem_toFinset] using (congrArg (fun s => w∈s) had).to_iff
    simp only [Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append] at ha ⊢
    tauto

private def bodyWires (L : RoundDataLayout) (a sw su : Wire) : Finset Wire :=
  ([a,sw,su,L.cin]++L.u++L.v++L.r++L.s++L.reg .y++L.reg .out++L.reg .carry).toFinset

set_option maxHeartbeats 2000000 in
private theorem body_wires (L : RoundDataLayout) (a sw su : Wire) (hw : 2≤L.width) :
    wires (kaliskiBodyProgram L a sw su)=bodyWires L a sw su ∧
    wires (kaliskiUnbodyProgram L a sw su)=bodyWires L a sw su := by
  have hp : 0<L.width := by omega
  have huv := (swap_wires sw L.u L.v (by simp [RoundDataLayout.u,RoundDataLayout.v,L.reg_length])
    (by simpa [RoundDataLayout.u,L.reg_length] using hp)).1
  have hrs := (swap_wires sw L.r L.s (by simp [RoundDataLayout.r,RoundDataLayout.s,L.reg_length])
    (by simpa [RoundDataLayout.r,L.reg_length] using hp)).1
  have hru := shift_wires a L.u
  have hrs' := shift_wires a L.s
  have hu : ¬L.u.length<2 := by simpa [RoundDataLayout.u,L.reg_length] using (show ¬L.width<2 by omega)
  have hs : ¬L.s.length<2 := by simpa [RoundDataLayout.s,L.reg_length] using (show ¬L.width<2 by omega)
  simp only [hu,hs,if_false] at hru hrs'
  have hiU := inplace_wires L .u .v su true hp
  have hiR := inplace_wires L .r .s su false hp
  have hiUi := inplace_wires L .u .v su false hp
  have hiRi := inplace_wires L .r .s su true hp
  constructor <;>
    simp only [kaliskiBodyProgram,kaliskiUnbodyProgram,swapDataPairs,wires_append,
      huv,hrs,hru.1,hru.2,hrs'.1,hrs'.2,hiU,hiR,hiUi,hiRi]
  all_goals
    ext w
    simp only [bodyWires,Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append,List.mem_nil_iff,
      RoundDataLayout.u,RoundDataLayout.v,RoundDataLayout.r,RoundDataLayout.s]
    clear huv hrs hru hrs' hiU hiR hiUi hiRi hu hs hp hw
    tauto

private theorem data_interface (L : RoundDataLayout) :
    L.wires.toFinset=(L.cin::(L.u++L.v++L.r++L.s++L.reg .y++L.reg .out++L.reg .carry++L.reg .zero)).toFinset := by
  ext w
  simp [RoundDataLayout.wires,RoundDataLayout.u,RoundDataLayout.v,RoundDataLayout.r,RoundDataLayout.s,
    RoundDataLayout.reg,RoundBit.wires,RoundBit.get,and_or_left,exists_or,eq_comm]

private theorem zero_interface (L : RoundDataLayout) :
    ((L.zeroBits .v).flatMap ZeroBit.wires).toFinset=(L.v++L.reg .zero).toFinset := by
  ext w
  simp [RoundDataLayout.zeroBits,ZeroBit.wires,RoundDataLayout.v,RoundDataLayout.reg,
    RoundBit.get,and_or_left,exists_or,eq_comm]

/-- 记录段只接触两份输入、进位链及六个控制/记录位。 -/
theorem recordRound_wires (L : KaliskiRoundLayout) :
    wires (recordRound L)=([L.active,L.swap,L.subtract,L.oddWork,L.bothWork,L.data.cin]++
      L.u++L.v++L.data.reg .carry).toFinset := by
  have hc := (compareLt_wires (some L.bothWork) L.v L.u (L.data.reg .carry) L.cin L.swap
    (by simp [KaliskiRoundLayout.v,KaliskiRoundLayout.u,RoundDataLayout.v,RoundDataLayout.u,L.data.reg_length])
    (by simp [KaliskiRoundLayout.u,RoundDataLayout.u,L.data.reg_length])).1
  rw [recordRound,wires_append,wires_append,hc]
  ext w
  have hu : w=L.u.head! → w∈L.u := fun he => he ▸ L.head_mem .u
  have hv : w=L.v.head! → w∈L.v := fun he => he ▸ L.head_mem .v
  simp only [wires,Instr.wires,Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append,
    List.mem_nil_iff,Finset.mem_insert,Finset.notMem_empty,
    Option.toList_some,Finset.mem_singleton]
  simp only [KaliskiRoundLayout.data] at *
  tauto

theorem recordRound_qubits (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) :
    qubitCount (recordRound L)=3*L.data.width+6 := by
  have hc := L.record_compare_nodup hnd
  have hn := L.record_controls_nodup hnd
  have hr := List.nodup_reverse.mpr hn
  have hout (c : Wire) (hm : c ∈ [L.active,L.subtract,L.oddWork]) :
      c ∉ L.cin :: (L.v ++ L.u ++ L.data.reg .carry) := by
    have hctrl : c ∈ L.controls := by
      simp only [List.mem_cons,List.mem_nil_iff,or_false] at hm
      rcases hm with rfl | rfl | rfl <;> simp [KaliskiRoundLayout.controls]
    have hd := L.control_not_data hnd c hctrl
    intro h
    simp only [List.mem_cons,List.mem_append] at h
    rcases h with rfl | (h | h) | h
    · exact hd List.mem_cons_self
    · exact hd (L.data.reg_mem .v h)
    · exact hd (L.data.reg_mem .u h)
    · exact hd (L.data.reg_mem .carry h)
  have ha := hout L.active (by simp)
  have hs := hout L.subtract (by simp)
  have ho := hout L.oddWork (by simp)
  have hnall : (L.active :: L.subtract :: L.oddWork :: L.bothWork :: L.swap :: L.cin ::
      (L.v ++ L.u ++ L.data.reg .carry)).Nodup := by
    simp only [List.reverse_cons,List.reverse_nil,List.nodup_cons,List.mem_cons,List.not_mem_nil,
      not_or,not_false_eq_true,and_true] at hn hr hc ha hs ho ⊢
    tauto
  have hw : wires (recordRound L) = (L.active :: L.subtract :: L.oddWork :: L.bothWork ::
      L.swap :: L.cin :: (L.v ++ L.u ++ L.data.reg .carry)).toFinset := by
    rw [recordRound_wires]
    ext w
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append,List.mem_nil_iff,KaliskiRoundLayout.data]
    tauto
  rw [qubitCount,hw,List.toFinset_card_of_nodup hnall]
  simp [KaliskiRoundLayout.v,KaliskiRoundLayout.u,RoundDataLayout.v,RoundDataLayout.u,L.data.reg_length]
  omega

private theorem activity_wires (L : KaliskiRoundLayout) (i : Nat) :
    wires (roundActiveXor L i)=(L.active::L.compareCin::
      (L.comparator.x++L.comparator.y++L.comparator.carry)).toFinset := by
  exact counterActiveXor_wires L.comparator L.active i

set_option maxHeartbeats 2000000 in
/-- 静态线路并集恰好等于单轮布局，包括共享工作线而非“最大同时存活”估计。 -/
theorem kaliskiRound_wires (L : KaliskiRoundLayout) (hw : L.counter.width=10)
    (hd : 2≤L.data.width) (i : Nat) :
    wires (kaliskiRound L i)=L.wires.toFinset ∧ wires (kaliskiUnround L i)=L.wires.toFinset := by
  have hb := body_wires L.data L.active L.swap L.subtract hd
  have hr := recordRound_wires L
  have ha := activity_wires L i
  have hz := zeroControlled_wires L.active L.done (L.data.zeroBits .v)
  have hc := (counterMove_wires L.counter hw).1
  have hci := (counterMove_wires L.counter.swapCounter (L.counter.swapCounter_fields.2.2.2.2.2.trans hw)).2
  have hcp : L.counter.swapCounter.wires.toFinset=L.counter.wires.toFinset := by
    ext w
    simpa only [List.mem_toFinset] using L.counter.swapCounter_perm.mem_iff (a:=w)
  rw [hcp] at hci
  have hl : wires (loadActive L)=[L.active,L.done].toFinset := by
    ext w; simp [loadActive,wires,Instr.wires,or_comm]
  have hdata := data_interface L.data
  have hzero := zero_interface L.data
  constructor <;>
    simp only [kaliskiRound,kaliskiUnround,wires_append,hl,hr,ha,hb.1,hb.2,hz,hc,hci]
  all_goals
    ext w
    have hD := (congrArg (fun s => w∈s) hdata).to_iff
    have hZ := (congrArg (fun s => w∈s) hzero).to_iff
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hD hZ
    have hcomp : ∀ w, w∈L.comparator.x++L.comparator.y++L.comparator.carry → w∈L.counter.wires := by
      intro w hm
      have hf := L.counter.swapCounter_perm.mem_iff (a:=w)
      have ht : w∈L.counter.swapCounter.wires := by
        simp only [List.mem_append] at hm
        rcases hm with (h|h)|h
        · exact L.counter.swapCounter.reg_subset.1 h
        · exact L.counter.swapCounter.reg_subset.2.1 h
        · exact L.counter.swapCounter.reg_subset.2.2.2 h
      exact hf.mp ht
    have hcm := hcomp w
    simp only [List.mem_append] at hcm
    have hac : w=L.active → w∈L.counter.wires := fun he => he ▸ List.mem_cons_self
    simp only [bodyWires,KaliskiRoundLayout.wires,Finset.mem_union,List.mem_toFinset,List.mem_cons,
      List.mem_append,List.mem_nil_iff,hD,hZ]
    simp only [KaliskiRoundLayout.u,KaliskiRoundLayout.v,RoundDataLayout.u,RoundDataLayout.v,
      RoundDataLayout.r,RoundDataLayout.s] at *
    clear hb hr ha hz hc hci hcp hl hdata hzero hD hZ
    tauto

/-- 8w 数据/工作线路、双银行十位计数器及常数个控制位的精确总数。 -/
theorem kaliskiRound_qubits (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (hd : 2≤L.data.width) (i : Nat) :
    qubitCount (kaliskiRound L i)=8*L.data.width+48 ∧
    qubitCount (kaliskiUnround L i)=8*L.data.width+48 := by
  have hlen : L.wires.length=8*L.data.width+48 := by
    have he (bs : List RoundBit) : (bs.flatMap RoundBit.wires).length=8*bs.length := by
      induction bs with
      | nil => simp
      | cons b bs ih => simp [RoundBit.wires,ih]; omega
    simp only [KaliskiRoundLayout.wires,List.length_append,List.length_cons,List.length_nil,
      RoundDataLayout.wires,he,AdderLayout.wires,addWires_length]
    change L.counter.bits.length=10 at hw
    simp only [RoundDataLayout.width]
    omega
  have h := kaliskiRound_wires L hw hd i
  simp only [qubitCount,h.1,h.2,List.toFinset_card_of_nodup hnd,hlen,and_self]

end ECDSAAdd.Arithmetic
