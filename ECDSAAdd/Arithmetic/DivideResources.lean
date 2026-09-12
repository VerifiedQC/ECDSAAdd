import ECDSAAdd.Arithmetic.DivideLayoutProof

namespace ECDSAAdd.Arithmetic

/-- 直接装卸分母各256个受控复制门，不产生测量。 -/
theorem divideLoad_counts (L : DivideLayout) (hw : L.Widths) :
    toffoliCount (divideLoad L)=256 ∧ measurementCount (divideLoad L)=0 ∧
    toffoliCount (divideUnload L)=256 ∧ measurementCount (divideUnload L)=0 := by
  have hc := copyRegister_counts (some L.control) L.denominator L.vLow
    (hw.inverse.input.trans (L.vLow_length hw).symm)
  have hd : L.denominator.length=256 := hw.inverse.input
  simp only [Option.isSome_some,if_true,hd] at hc
  simp [divideLoad,divideUnload,toffoliCount_append,measurementCount_append,
    hc.1,hc.2,(xorConstant_counts _ _).1,(xorConstant_counts _ _).2,toffoliCount,measurementCount]

/-- 同一除法门列的精确门数；支持集与公开 Triple 分别证明。 -/
theorem divide_counts (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup) :
    toffoliCount (divideAdd L)=5722415 ∧ measurementCount (divideAdd L)=2557231 ∧
    toffoliCount (divideSub L)=5722927 ∧ measurementCount (divideSub L)=2557743 := by
  have hi := inverseLoop_257_resources L.inner (L.inner_nodup hnd) hw.inverse.records
    hw.inverse.counter hw.inverse.low hw.inverse.arithmetic hw.inverse.a hw.inverse.temp
    hw.inverse.output p
  have hc := copyRegister_counts none L.inner.a L.inner.out
    (hw.inverse.a.trans hw.inverse.output.symm)
  have hm := mulInPlace_counts L.multiply.core 256 p
    (by simpa only [L.multiply_width hw] using (L.multiply_widths hw).1)
    (L.multiply.core_nodup (List.nodup_cons.mp (L.multiply_nodup hw hnd)).2) (by omega)
  have hwa := L.multiply.add_widths (L.multiply_widths hw)
  rw [L.multiply_width hw] at hwa
  have ha := controlledModAdd_resources L.control L.multiply.addView 256 p hwa (L.add_nodup hw hnd) (by omega)
  have hs := controlledModSub_resources L.control L.multiply.addView 256 p hwa (L.add_nodup hw hnd) (by omega)
  have hl := divideLoad_counts L hw
  simp only [inverseLoop,toffoliCount_append,measurementCount_append,hc.1,hc.2,
    Option.isSome_none,Bool.false_eq_true,if_false] at hi
  simp only [divideAdd,divideSub,toffoliCount_append,measurementCount_append,
    hl.1,hl.2.1,hl.2.2.1,hl.2.2.2,hm.1,hm.2.1,hm.2.2.1,hm.2.2.2,
    ha.1,ha.2.1,hs.1,hs.2.1]
  omega

end ECDSAAdd.Arithmetic
