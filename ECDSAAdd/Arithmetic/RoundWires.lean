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

set_option maxHeartbeats 2000000 in
private theorem record_wires (L : KaliskiRoundLayout) :
    wires (recordRound L)=([L.active,L.swap,L.subtract,L.oddWork,L.bothWork,L.data.cin]++
      L.u++L.v++L.data.reg .y++L.data.reg .out++L.data.reg .carry).toFinset := by
  have hpos : 0<L.u.length := by simp [KaliskiRoundLayout.u,RoundDataLayout.u,L.data_reg_length]
  have hc := copyRegister_wires none L.u (L.data.reg .y)
    (by simp [KaliskiRoundLayout.u,RoundDataLayout.u,L.data.reg_length])
  have hne : L.u.isEmpty=false := by cases hh : L.u <;> simp_all
  simp only [hne,Bool.false_eq_true,if_false,Option.toList_none,List.nil_append] at hc
  have hs : wires (sub (L.data.adder .v))=(L.data.adder .v).wires.toFinset := rippleSubtractor_wires _ _
  have hr : wires (recordCase L.caseLayout)=L.caseLayout.wires.toFinset := by
    ext w; simp [recordCase,wires,Instr.wires,CaseLayout.wires,or_comm,or_left_comm]
  rw [recordRound,wires_append,wires_append,wires_append,wires_append,hc,hs,hr,adder_interface]
  ext w
  have hu : w=L.u.head! → w∈L.u := fun he => he ▸ L.head_mem .u
  have hv : w=L.v.head! → w∈L.v := fun he => he ▸ L.head_mem .v
  have hb : w=L.high.out → w∈L.data.reg .out := fun he => he ▸ L.high_out_mem
  simp only [Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append,List.mem_nil_iff,
    KaliskiRoundLayout.caseLayout,CaseLayout.wires]
  change (w=L.u.head! → w∈L.data.reg .u) at hu
  change (w=L.v.head! → w∈L.data.reg .v) at hv
  simp only [KaliskiRoundLayout.u,KaliskiRoundLayout.v,RoundDataLayout.u,RoundDataLayout.v] at *
  tauto

private theorem activity_wires (L : KaliskiRoundLayout) (i : Nat) :
    wires (roundActiveXor L i)=(L.compareCin::L.counter.wires).toFinset := by
  have hh : L.counterHigh.x∈L.comparator.out := by rw [L.comparator_out]; simp
  rw [roundActiveXor,counterActiveXor_wires L.comparator L.counterHigh.x L.active i hh]
  ext w
  have h := L.counter.swapCounter_perm.mem_iff (a:=w)
  have hc : L.counter.swapCounter.cin=L.active := L.counter.swapCounter_fields.2.2.2.2.1
  simp only [AdderLayout.wires,List.mem_cons,hc] at h
  change (w=L.active ∨ w∈addWires L.counter.swapCounter.bits) ↔ (w=L.active ∨ w∈addWires L.counter.bits) at h
  simp only [List.mem_toFinset,List.mem_cons,KaliskiRoundLayout.comparator,AdderLayout.wires]
  change (w=L.active ∨ w=L.compareCin ∨ w∈addWires L.counter.swapCounter.bits) ↔
    (w=L.compareCin ∨ w=L.active ∨ w∈addWires L.counter.bits)
  tauto

set_option maxHeartbeats 2000000 in
/-- 静态线路并集恰好等于单轮布局，包括共享工作线而非“最大同时存活”估计。 -/
theorem kaliskiRound_wires (L : KaliskiRoundLayout) (hw : L.counter.width=10)
    (hd : 2≤L.data.width) (i : Nat) :
    wires (kaliskiRound L i)=L.wires.toFinset ∧ wires (kaliskiUnround L i)=L.wires.toFinset := by
  have hb := body_wires L.data L.active L.swap L.subtract hd
  have hr := record_wires L
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
