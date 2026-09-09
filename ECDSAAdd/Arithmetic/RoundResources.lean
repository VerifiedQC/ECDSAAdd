import ECDSAAdd.Arithmetic.KaliskiRoundProof

namespace ECDSAAdd.Arithmetic

private theorem masked_counts (L : AdderLayout) (src : List Wire) (c : Wire) (hlen : src.length=L.width) :
    toffoliCount (maskedAdd L src c)=4*L.width ∧ measurementCount (maskedAdd L src c)=2*L.width ∧
    toffoliCount (maskedSub L src c)=4*L.width ∧ measurementCount (maskedSub L src c)=2*L.width := by
  have hc := copyRegister_counts (some c) src L.y (by simpa [AdderLayout.y,AdderLayout.width] using hlen)
  have ha : toffoliCount (add L)=L.width ∧ measurementCount (add L)=L.width :=
    ⟨rippleAdder_toffoliCount _ _,rippleAdder_measurementCount _ _⟩
  have hd := rippleSubtractor_counts L.bits L.cin
  have has : toffoliCount (add L.swapCounter)=L.width ∧ measurementCount (add L.swapCounter)=L.width := by
    simpa only [L.swapCounter_fields.2.2.2.2.2] using
      (show toffoliCount (add L.swapCounter)=L.swapCounter.width ∧ measurementCount (add L.swapCounter)=L.swapCounter.width from
        ⟨rippleAdder_toffoliCount _ _,rippleAdder_measurementCount _ _⟩)
  have hds : toffoliCount (sub L.swapCounter)=L.width ∧ measurementCount (sub L.swapCounter)=L.width := by
    simpa only [L.swapCounter_fields.2.2.2.2.2] using
      (show toffoliCount (sub L.swapCounter)=L.swapCounter.width ∧ measurementCount (sub L.swapCounter)=L.swapCounter.width from
        rippleSubtractor_counts _ _)
  change toffoliCount (sub L)=L.width ∧ measurementCount (sub L)=L.width at hd
  simp only [maskedAdd,maskedSub,toffoliCount_append,measurementCount_append,hc.1,hc.2,ha.1,ha.2,hd.1,hd.2,
    has.1,has.2,hds.1,hds.2,Option.isSome_some,if_true,hlen]
  omega

private theorem swap_counts (c : Wire) (a b : List Wire) (hlen : a.length=b.length) :
    toffoliCount (swapRegisters c a b)=a.length ∧ measurementCount (swapRegisters c a b)=0 ∧
    toffoliCount (exchangeRegisters a b)=0 ∧ measurementCount (exchangeRegisters a b)=0 := by
  have ha := copyRegister_counts (some c) a b hlen
  have hb := copyRegister_counts none b a hlen.symm
  have hc := copyRegister_counts none a b hlen
  simp [swapRegisters,exchangeRegisters,ha.1,ha.2,hb.1,hb.2,hc.1,hc.2]

private theorem inplace_counts (L : RoundDataLayout) (f g : RoundField) (c : Wire) (neg : Bool) :
    toffoliCount (inplaceArithmetic L f g c neg)=4*L.width ∧
    measurementCount (inplaceArithmetic L f g c neg)=2*L.width := by
  have hm := masked_counts (L.adder f) (L.reg g) c (by rw [L.reg_length,(L.adder_fields f).2.2.2.2.2])
  have hs := swap_counts c (L.reg f) (L.reg .out) (by rw [L.reg_length,L.reg_length])
  cases neg <;> simp [inplaceArithmetic,hm.1,hm.2.1,hm.2.2.1,hm.2.2.2,
    hs.2.2.1,hs.2.2.2,(L.adder_fields f).2.2.2.2.2]

private theorem body_counts (L : RoundDataLayout) (a sw su : Wire) (hw : 0<L.width) :
    toffoliCount (kaliskiBodyProgram L a sw su)=14*L.width-2 ∧
    measurementCount (kaliskiBodyProgram L a sw su)=4*L.width ∧
    toffoliCount (kaliskiUnbodyProgram L a sw su)=14*L.width-2 ∧
    measurementCount (kaliskiUnbodyProgram L a sw su)=4*L.width := by
  have huv := swap_counts sw L.u L.v (by simp [RoundDataLayout.u,RoundDataLayout.v,L.reg_length])
  have hrs := swap_counts sw L.r L.s (by simp [RoundDataLayout.r,RoundDataLayout.s,L.reg_length])
  have hmU := inplace_counts L .u .v su true
  have hmR := inplace_counts L .r .s su false
  have hmUi := inplace_counts L .u .v su false
  have hmRi := inplace_counts L .r .s su true
  have hsu := shift_counts a L.u
  have hss := shift_counts a L.s
  simp only [kaliskiBodyProgram,kaliskiUnbodyProgram,swapDataPairs,toffoliCount_append,measurementCount_append,
    huv.1,huv.2.1,hrs.1,hrs.2.1,hmU.1,hmU.2,hmR.1,hmR.2,hmUi.1,hmUi.2,hmRi.1,hmRi.2,
    hsu.1,hsu.2.1,hsu.2.2.1,hsu.2.2.2,hss.1,hss.2.1,hss.2.2.1,hss.2.2.2]
  simp only [RoundDataLayout.u,RoundDataLayout.r,RoundDataLayout.s,L.reg_length]
  omega

private theorem record_counts (L : KaliskiRoundLayout) :
    toffoliCount (recordRound L)=2*L.data.width+5 ∧ measurementCount (recordRound L)=2*L.data.width := by
  have hc := copyRegister_counts none L.u (L.data.reg .y) (by simp [KaliskiRoundLayout.u,RoundDataLayout.u,L.data.reg_length])
  have hd : toffoliCount (sub (L.data.adder .v))=L.data.width ∧
      measurementCount (sub (L.data.adder .v))=L.data.width := by
    simpa only [(L.data.adder_fields .v).2.2.2.2.2] using
      (show toffoliCount (sub (L.data.adder .v))=(L.data.adder .v).width ∧
        measurementCount (sub (L.data.adder .v))=(L.data.adder .v).width from rippleSubtractor_counts _ _)
  have hr : toffoliCount (recordCase L.caseLayout)=5 ∧ measurementCount (recordCase L.caseLayout)=0 := ⟨rfl,rfl⟩
  simp only [recordRound,toffoliCount_append,measurementCount_append,hc.1,hc.2,hd.1,hd.2,hr.1,hr.2]
  simp; omega

private theorem activity_counts (L : AdderLayout) (high target : Wire) (i : Nat) :
    toffoliCount (counterActiveXor L high target i)=2*L.width ∧
    measurementCount (counterActiveXor L high target i)=2*L.width := by
  have hc := xorConstant_counts L.y (i+1)
  have hd : toffoliCount (sub L)=L.width ∧ measurementCount (sub L)=L.width := rippleSubtractor_counts _ _
  simp only [counterActiveXor,constantBorrowXor,borrowXor,toffoliCount_append,measurementCount_append,hc.1,hc.2,hd.1,hd.2]
  simp [toffoliCount,measurementCount]; omega

/-- 正逆轮使用相同次数的 CCX 与测量；每轮复用数据宽度 w 的算术工作区。 -/
theorem kaliskiRound_counts (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (hw : L.counter.width=10) (i : Nat) :
    toffoliCount (kaliskiRound L i)=18*L.data.width+43 ∧
    measurementCount (kaliskiRound L i)=6*L.data.width+40 ∧
    toffoliCount (kaliskiUnround L i)=18*L.data.width+43 ∧
    measurementCount (kaliskiUnround L i)=6*L.data.width+40 := by
  have hb := body_counts L.data L.active L.swap L.subtract (by simp [KaliskiRoundLayout.data,RoundDataLayout.width])
  have hr := record_counts L
  have hz := zeroControlled_counts L.active L.done (L.data.zeroBits .v)
  have hc := counter_resources L.counter (L.counter_nodup hnd) hw
  have hci := counter_resources L.counter.swapCounter (L.counter.swapCounter_perm.nodup_iff.mpr (L.counter_nodup hnd))
    (L.counter.swapCounter_fields.2.2.2.2.2.trans hw)
  have ha := activity_counts L.comparator L.counterHigh.x L.active i
  rw [L.comparator_fields.2.2.2.2.2,hw] at ha
  have hl : toffoliCount (loadActive L)=0 ∧ measurementCount (loadActive L)=0 := ⟨rfl,rfl⟩
  simp only [kaliskiRound,kaliskiUnround,toffoliCount_append,measurementCount_append,hl.1,hl.2,hr.1,hr.2,
    hb.1,hb.2.1,hb.2.2.1,hb.2.2.2,hc.1,hc.2.1,hci.2.2.2.1,hci.2.2.2.2.1,hz.1,hz.2,
    roundActiveXor,ha.1,ha.2]
  simp only [RoundDataLayout.zeroBits,List.length_map]
  have hpos : 0<L.data.width := by simp [KaliskiRoundLayout.data,RoundDataLayout.width]
  change 0<L.data.bits.length at hpos
  simp only [RoundDataLayout.width] at *
  omega

end ECDSAAdd.Arithmetic
