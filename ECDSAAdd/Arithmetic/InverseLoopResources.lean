import ECDSAAdd.Arithmetic.InverseLoopSpec

namespace ECDSAAdd.Arithmetic

/-- 同一字面门列的精确资源；w 为带额外高位的数据宽度，两阶段各固定 512 轮。 -/
theorem inverseLoop_resources (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10) (hd : 2≤L.first.data.width)
    (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (hb : L.b.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (hout : L.out.length=L.arithmetic.width+1) (q : Nat) :
    toffoliCount (inverseLoop L q)=1024*(54*L.first.data.width+75)+60*L.first.data.width-12 ∧
    measurementCount (inverseLoop L q)=1024*(26*L.first.data.width+80)+48*L.first.data.width ∧
    qubitCount (inverseLoop L q)=20*L.first.data.width+1072 := by
  have hfirst := kaliskiLoop_counts L.first L.records 0 (L.first_nodup hnd) hw
  have hextra := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.1
  have harith := (List.nodup_append'.mp hextra).2.1
  have hrlen : L.middle.r.length=L.arithmetic.width+1 := by
    change (L.middle.data.reg .r).length=_
    rw [L.middle.data.reg_length,InverseLoopLayout.middle,loopEnd_data,hwidth]
  have hneg := negativeInit_counts L.arithmetic q L.middle.r L.temp L.a harith hrlen ht ha
  have hhalf := halvingLoop_counts L.phase (L.phase_nodup hnd) ha hb ht (L.phase_width.trans hw) q 0 512
  have hcopy := copyRegister_counts none L.a L.out (ha.trans hout.symm)
  refine ⟨?_,?_,?_⟩
  · simp only [inverseLoop,inverseCompute,inverseUncompute,toffoliCount_append,
      hfirst.1,hfirst.2.2.1,hneg.1,hhalf.1,hhalf.2.2.1,hcopy.1,
      Option.isSome_none,Bool.false_eq_true,if_false,hn]
    simp only [InverseLoopLayout.phase]
    omega
  · simp only [inverseLoop,inverseCompute,inverseUncompute,measurementCount_append,
      hfirst.2.1,hfirst.2.2.2,hneg.2,hhalf.2.1,hhalf.2.2.2,hcopy.2,hn]
    simp only [InverseLoopLayout.phase]
    omega
  · rw [qubitCount,inverseLoop_wires L hn hw hd hwidth ha hb ht hout q,List.toFinset_card_of_nodup hnd]
    have hne : L.records≠[] := by intro h; rw [h] at hn; simp at hn
    have hbits := kaliskiLoop_qubits L.first L.records 0 (L.first_nodup hnd) hw hd hne
    have hwire := kaliskiLoop_wires L.first L.records 0 hw hd
    have hempty : L.records.isEmpty=false := by cases he : L.records with
      | nil => exact False.elim (hne he)
      | cons r rs => rfl
    simp only [qubitCount,hwire.1,hempty,Bool.false_eq_true,if_false,
      List.toFinset_card_of_nodup (L.first_nodup hnd),hn] at hbits
    have hm (bs : List ModBit) : (bs.flatMap ModBit.all).length=8*bs.length := by
      induction bs with
      | nil => rfl
      | cons b bs ih => simp [ModBit.all,ih]; omega
    have hl : L.arithmetic.wires.length=8*(L.arithmetic.width+1)+2 := by
      simp [ModLayout.wires,ModLayout.bits,ModLayout.width,hm,ModBit.all]
      omega
    simp only [InverseLoopLayout.wires,InverseLoopLayout.extra,List.length_append,ha,hb,ht,hout,hl]
    omega

/-- 257 位内部数据、512 轮的当前实现；计数银行、1024 根记录线和第二阶段工作区均计入。 -/
theorem inverseLoop_257_resources (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (hb : L.b.length=257) (ht : L.temp.length=257) (hout : L.out.length=257) (q : Nat) :
    toffoliCount (inverseLoop L q)=14303280 ∧ measurementCount (inverseLoop L q)=6936624 ∧
    qubitCount (inverseLoop L q)=6212 := by
  have hd : L.first.data.width=257 := by simp [KaliskiRoundLayout.data,RoundDataLayout.width,hlow]
  simpa only [hd] using inverseLoop_resources L hnd hn hw (by omega) (by omega)
    (by omega) (by omega) (by omega) (by omega) q

end ECDSAAdd.Arithmetic
