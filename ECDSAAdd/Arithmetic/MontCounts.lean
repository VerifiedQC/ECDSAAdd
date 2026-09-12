import ECDSAAdd.Arithmetic.MontPQ

namespace ECDSAAdd.Arithmetic

theorem montLookup_counts (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4) :
    toffoliCount (montLookup L addr K)=48 ∧ measurementCount (montLookup L addr K)=48 := by
  exact lookup_counts _ _ _ _ _ (by simp [List.length_tail,ha]) hw.scratch

theorem montLookupUpdate_counts (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4) :
    (toffoliCount (montLookupAdd L addr K)=356 ∧ measurementCount (montLookupAdd L addr K)=356) ∧
    (toffoliCount (montLookupSub L addr K)=356 ∧ measurementCount (montLookupSub L addr K)=356) := by
  have hl := montLookup_counts L addr K hw ha
  have hadd := addInPlace_counts L.table L.acc L.carry L.cin (hw.table.trans hw.acc.symm) (by simp [hw.carry,hw.acc])
  have hsub := subInPlace_counts L.table L.acc L.carry L.cin (hw.table.trans hw.acc.symm) (by simp [hw.carry,hw.acc])
  simp [montLookupAdd,montLookupSub,toffoliCount_append,measurementCount_append,
    hl.1,hl.2,hadd.1,hadd.2,hsub.1,hsub.2,hw.acc]

theorem montReduce_counts (L : MontStageLayout) (p i : Nat) (hw : L.Widths) (hi : i<64) :
    (toffoliCount (montReduce L p i)=356 ∧ measurementCount (montReduce L p i)=356) ∧
    (toffoliCount (montRestoreReduce L p i)=356 ∧ measurementCount (montRestoreReduce L p i)=356) := by
  have hr := L.record_length hw i hi
  have hc := copyRegister_counts none (L.acc.take 4) (L.record i) (by simp [hw.acc,hr])
  have hu := montLookupUpdate_counts L (L.record i) p hw hr
  have hrot := rotateBits_counts L.acc 4
  simp [montReduce,montRestoreReduce,toffoliCount_append,measurementCount_append,
    hc.1,hc.2,hu.1.1,hu.1.2,hu.2.1,hu.2.2,hrot.1,hrot.2.1,hrot.2.2.1,hrot.2.2.2]


theorem montNormalize_counts (L : MontStageLayout) (p : Nat) (hw : L.Widths) :
    (toffoliCount (montNormalize L p)=520 ∧ measurementCount (montNormalize L p)=520) ∧
    (toffoliCount (montDenormalize L p)=520 ∧ measurementCount (montDenormalize L p)=520) := by
  have ha := addInPlace_counts L.table L.acc L.carry L.cin (hw.table.trans hw.acc.symm) (by simp [hw.carry,hw.acc])
  have hs := subInPlace_counts L.table L.acc L.carry L.cin (hw.table.trans hw.acc.symm) (by simp [hw.carry,hw.acc])
  simp [montNormalize,montDenormalize,montConstantAdd,montConstantSub,
    maskedAddConst,maskedSubConst,toffoliCount_append,measurementCount_append,
    (xorConstant_counts _ _).1,(xorConstant_counts _ _).2,
    (maskedConstant_counts _ _ _).1,(maskedConstant_counts _ _ _).2,
    ha.1,ha.2,hs.1,hs.2,hw.acc,toffoliCount,measurementCount]

theorem montDigit_counts (L : MontStageLayout) (x y : List Wire) (i : Nat)
    (hw : L.Widths) (hx : 256≤x.length) :
    (toffoliCount (montAddDigit L x y i)=3128 ∧ measurementCount (montAddDigit L x y i)=1040) ∧
    (toffoliCount (montSubDigit L x y i)=3128 ∧ measurementCount (montSubDigit L x y i)=1040) := by
  have hbit (j : Nat) :
      (toffoliCount (maskedAddInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)=782 ∧
       measurementCount (maskedAddInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)=260) ∧
      (toffoliCount (maskedSubInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)=782 ∧
       measurementCount (maskedSubInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)=260) := by
    have hlen : (L.source x j).length=L.mask.length := by
      simp only [MontStageLayout.source,List.length_append,List.length_take,List.length_drop,hw.pad,hw.mask,Nat.min_eq_left hx]
      omega
    simpa only [hw.acc] using maskedInPlace_counts (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin hlen (hw.mask.trans hw.acc.symm) (by simp [hw.carry,hw.acc])
  simp only [montAddDigit,montSubDigit,show List.range 4=[0,1,2,3] from rfl,
    show ([0,1,2,3] : List Nat).reverse=[3,2,1,0] from rfl,List.flatMap_cons,List.flatMap_nil,
    toffoliCount_append,measurementCount_append,(hbit _).1.1,(hbit _).1.2,
    (hbit _).2.1,(hbit _).2.2,toffoliCount,measurementCount]
  norm_num



theorem montWindow_counts (L : MontStageLayout) (x y : List Wire) (p i : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hi : i<64) :
    (toffoliCount (montWindow L x y p i)=3484 ∧ measurementCount (montWindow L x y p i)=1396) ∧
    (toffoliCount (montRestoreWindow L x y p i)=3484 ∧ measurementCount (montRestoreWindow L x y p i)=1396) := by
  have hd := montDigit_counts L x y i hw hx
  have hr := montReduce_counts L p i hw hi
  simp [montWindow,montRestoreWindow,toffoliCount_append,measurementCount_append,
    hd.1.1,hd.1.2,hd.2.1,hd.2.2,hr.1.1,hr.1.2,hr.2.1,hr.2.2]

theorem constWindow_counts (L : MontStageLayout) (y : List Wire) (p K i : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hi : i<64) :
    (toffoliCount (constMontWindow L y p K i)=712 ∧ measurementCount (constMontWindow L y p K i)=712) ∧
    (toffoliCount (constMontRestoreWindow L y p K i)=712 ∧ measurementCount (constMontRestoreWindow L y p K i)=712) := by
  have hl : ((y.drop (4*i)).take 4).length=4 := by simp only [List.length_take,List.length_drop]; omega
  have hd := montLookupUpdate_counts L ((y.drop (4*i)).take 4) K hw hl
  have hr := montReduce_counts L p i hw hi
  simp [constMontWindow,constMontRestoreWindow,toffoliCount_append,measurementCount_append,
    hd.1.1,hd.1.2,hd.2.1,hd.2.2,hr.1.1,hr.1.2,hr.2.1,hr.2.2]

theorem montRounds_counts (L : MontStageLayout) (x y : List Wire) (p k : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hk : k≤64) :
    (toffoliCount (montPrepareRounds L x y p k)=3484*k ∧ measurementCount (montPrepareRounds L x y p k)=1396*k) ∧
    (toffoliCount (montRestoreRounds L x y p k)=3484*k ∧ measurementCount (montRestoreRounds L x y p k)=1396*k) := by
  induction k with
  | zero => simp [montPrepareRounds,montRestoreRounds,toffoliCount,measurementCount]
  | succ k ih =>
    have h := ih (by omega)
    have hwin := montWindow_counts L x y p k hw hx (by omega)
    simp [montPrepareRounds,montRestoreRounds,toffoliCount_append,measurementCount_append,
      h.1.1,h.1.2,h.2.1,h.2.2,hwin.1.1,hwin.1.2,hwin.2.1,hwin.2.2,Nat.mul_add,Nat.add_comm]

theorem constRounds_counts (L : MontStageLayout) (y : List Wire) (p K k : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hk : k≤64) :
    (toffoliCount (constPrepareRounds L y p K k)=712*k ∧ measurementCount (constPrepareRounds L y p K k)=712*k) ∧
    (toffoliCount (constRestoreRounds L y p K k)=712*k ∧ measurementCount (constRestoreRounds L y p K k)=712*k) := by
  induction k with
  | zero => simp [constPrepareRounds,constRestoreRounds,toffoliCount,measurementCount]
  | succ k ih =>
    have h := ih (by omega)
    have hwin := constWindow_counts L y p K k hw hy (by omega)
    simp [constPrepareRounds,constRestoreRounds,toffoliCount_append,measurementCount_append,
      h.1.1,h.1.2,h.2.1,h.2.2,hwin.1.1,hwin.1.2,hwin.2.1,hwin.2.2,Nat.mul_add,Nat.add_comm]


theorem montStage_counts (L : MontStageLayout) (x y : List Wire) (p : Nat) (hw : L.Widths) (hx : 256≤x.length) :
    (toffoliCount (montPrepare L x y p)=223496 ∧ measurementCount (montPrepare L x y p)=89864) ∧
    (toffoliCount (montRestore L x y p)=223496 ∧ measurementCount (montRestore L x y p)=89864) := by
  have h := montRounds_counts L x y p 64 hw hx (by omega)
  have hn := montNormalize_counts L p hw
  simp only [montPrepare,montRestore,toffoliCount_append,measurementCount_append,
    h.1.1,h.1.2,h.2.1,h.2.2,hn.1.1,hn.1.2,hn.2.1,hn.2.2]
  norm_num

theorem constStage_counts (L : MontStageLayout) (y : List Wire) (p K : Nat) (hw : L.Widths) (hy : 256≤y.length) :
    (toffoliCount (constPrepare L y p K)=46088 ∧ measurementCount (constPrepare L y p K)=46088) ∧
    (toffoliCount (constRestore L y p K)=46088 ∧ measurementCount (constRestore L y p K)=46088) := by
  have h := constRounds_counts L y p K 64 hw hy (by omega)
  have hn := montNormalize_counts L p hw
  simp only [constPrepare,constRestore,toffoliCount_append,measurementCount_append,
    h.1.1,h.1.2,h.2.1,h.2.2,hn.1.1,hn.1.2,hn.2.1,hn.2.2]
  norm_num

/-- P/Q 同一前向门列的精确计数，包含全部标准表示转换和恢复。 -/
theorem montPQ_counts (M : MontLayout) (p : Nat) (hw : M.Widths) :
    (toffoliCount (montP M p)=269584 ∧ measurementCount (montP M p)=135952) ∧
    (toffoliCount (montQ M p)=269584 ∧ measurementCount (montQ M p)=135952) := by
  have h1 := montStage_counts M.first M.x M.y p hw.first (by simp [hw.x])
  have h2 := constStage_counts M.second M.a p (montgomeryConversion p) (M.second_widths hw) (by simp [MontLayout.a,hw.first.acc])
  simp only [montP,montQ,toffoliCount_append,measurementCount_append,
    h1.1.1,h1.1.2,h1.2.1,h1.2.2,h2.1.1,h2.1.2,h2.2.1,h2.2.2]
  norm_num

end ECDSAAdd.Arithmetic
