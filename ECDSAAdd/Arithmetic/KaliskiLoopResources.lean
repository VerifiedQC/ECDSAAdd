import ECDSAAdd.Arithmetic.KaliskiLoop

namespace ECDSAAdd.Arithmetic

theorem kaliskiLoop_counts (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) :
    toffoliCount (kaliskiLoop L i rs)=rs.length*(18*L.data.width+43) ∧
    measurementCount (kaliskiLoop L i rs)=rs.length*(6*L.data.width+40) ∧
    toffoliCount (kaliskiUnloop L i rs)=rs.length*(18*L.data.width+43) ∧
    measurementCount (kaliskiUnloop L i rs)=rs.length*(6*L.data.width+40) := by
  induction rs generalizing L i with
  | nil => simp [kaliskiLoop,kaliskiUnloop,toffoliCount,measurementCount]
  | cons r rs ih =>
    have hr := kaliskiRound_counts (L.withRecord r) (L.withRecord_nodup r rs hnd) hw i
    have hnw : L.swapCounter.counter.width=10 := by rw [L.swapCounter_counter,L.counter.swapCounter_fields.2.2.2.2.2,hw]
    have ht := ih L.swapCounter (i+1) (L.tail_nodup r rs hnd) hnw
    change _=rs.length*(18*L.data.width+43) ∧ _=rs.length*(6*L.data.width+40) ∧
      _=rs.length*(18*L.data.width+43) ∧ _=rs.length*(6*L.data.width+40) at ht
    change _=18*L.data.width+43 ∧ _=6*L.data.width+40 ∧ _=18*L.data.width+43 ∧ _=6*L.data.width+40 at hr
    simp only [kaliskiLoop,kaliskiUnloop,toffoliCount_append,measurementCount_append,hr.1,hr.2.1,
      hr.2.2.1,hr.2.2.2,ht.1,ht.2.1,ht.2.2.1,ht.2.2.2,List.length_cons,Nat.add_mul,Nat.one_mul]
    simp [Nat.add_comm]

/-- 空循环没有线路；非空循环恰好使用共享布局和整个两位记录带。 -/
theorem kaliskiLoop_wires (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hw : L.counter.width=10) (hd : 2≤L.data.width) :
    wires (kaliskiLoop L i rs)=(if rs.isEmpty then ∅ else (L.tapeWires rs).toFinset) ∧
    wires (kaliskiUnloop L i rs)=(if rs.isEmpty then ∅ else (L.tapeWires rs).toFinset) := by
  induction rs generalizing L i with
  | nil => simp [kaliskiLoop,kaliskiUnloop,wires]
  | cons r rs ih =>
    have hr := kaliskiRound_wires (L.withRecord r) hw hd i
    have hnw : L.swapCounter.counter.width=10 := by rw [L.swapCounter_counter,L.counter.swapCounter_fields.2.2.2.2.2,hw]
    have ht := ih L.swapCounter (i+1) hnw hd
    have hp : (L.withRecord r).wires.toFinset=(r.wires++L.sharedWires).toFinset := by
      ext w; simpa only [List.mem_toFinset] using (L.withRecord_perm r).mem_iff (a:=w)
    have hs : L.swapCounter.sharedWires.toFinset=L.sharedWires.toFinset := by
      ext w; simpa only [List.mem_toFinset] using L.shared_swap_perm.mem_iff (a:=w)
    simp only [kaliskiLoop,kaliskiUnloop,wires_append,hr.1,hr.2,ht.1,ht.2,hp,List.isEmpty_cons,Bool.false_eq_true,if_false]
    cases rs with
    | nil => simp [KaliskiRoundLayout.tapeWires]
    | cons r' rs =>
      simp only [List.isEmpty_cons,Bool.false_eq_true,if_false,KaliskiRoundLayout.tapeWires,
        List.flatMap_cons,List.toFinset_append,hs]
      constructor <;> ext w <;> simp [Finset.mem_union,or_assoc,or_left_comm,or_comm]

theorem kaliskiLoop_qubits (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) (hd : 2≤L.data.width) (hne : rs≠[]) :
    qubitCount (kaliskiLoop L i rs)=8*L.data.width+46+2*rs.length ∧
    qubitCount (kaliskiUnloop L i rs)=8*L.data.width+46+2*rs.length := by
  have ht (rs : List RoundRecord) : (rs.flatMap RoundRecord.wires).length=2*rs.length := by
    induction rs with
    | nil => rfl
    | cons r rs ih => simp [RoundRecord.wires,ih]; omega
  have hdw (bs : List RoundBit) : (bs.flatMap RoundBit.wires).length=8*bs.length := by
    induction bs with
    | nil => rfl
    | cons b bs ih => simp [RoundBit.wires,ih]; omega
  have hlen : (L.tapeWires rs).length=8*L.data.width+46+2*rs.length := by
    simp only [KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,List.length_append,ht,
      List.length_cons,List.length_nil,RoundDataLayout.wires,hdw,AdderLayout.wires,addWires_length]
    change L.counter.bits.length=10 at hw
    simp only [RoundDataLayout.width]
    omega
  have h := kaliskiLoop_wires L rs i hw hd
  have he : rs.isEmpty=false := by cases rs <;> simp_all
  simp only [he,Bool.false_eq_true,if_false] at h
  simp only [qubitCount,h.1,h.2,List.toFinset_card_of_nodup hnd,hlen,and_self]

end ECDSAAdd.Arithmetic
