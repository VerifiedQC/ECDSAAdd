import ECDSAAdd.Arithmetic.KaliskiLoopState
import ECDSAAdd.Arithmetic.ValueSpec

namespace ECDSAAdd.Arithmetic

/-- 两位记录逐轮独占；共享字与计数银行交替复用。 -/
def valueLoop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
  | [] => []
  | r::rs => valueRound (L.withRecord r) i ++ valueLoop L.swapCounter (i+1) rs

def valueUnloop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
  | [] => []
  | r::rs => valueUnloop L.swapCounter (i+1) rs ++ valueUnround (L.withRecord r) i

def valueCodes : Nat → KState → List (Bool×Bool)
  | 0,_ => []
  | n+1,z => kaliskiCode z::valueCodes n (valueKStep z)

def KaliskiRoundLayout.valueSharedWires (L : KaliskiRoundLayout) : List Wire :=
  [L.done,L.oddWork,L.bothWork,L.compareCin]++L.data.valueUsedWires++L.counter.wires

def KaliskiRoundLayout.valueTapeWires (L : KaliskiRoundLayout) (rs : List RoundRecord) : List Wire :=
  rs.flatMap RoundRecord.wires++L.valueSharedWires

theorem KaliskiRoundLayout.valueTapeWires_sublist (L : KaliskiRoundLayout) (rs : List RoundRecord) :
    (L.valueTapeWires rs).Sublist (L.tapeWires rs) :=
  ((L.data.valueUsedWires_sublist.append_left _).append_right _).append_left _

private theorem usedRecord_perm (L : KaliskiRoundLayout) (r : RoundRecord) :
    (L.withRecord r).valueUsedWires.Perm (r.wires++L.valueSharedWires) := by
  apply List.perm_iff_count.mpr
  intro w
  simp [KaliskiRoundLayout.valueUsedWires,KaliskiRoundLayout.withRecord,KaliskiRoundLayout.valueSharedWires,
    RoundRecord.wires,List.count_cons,KaliskiRoundLayout.data,KaliskiRoundLayout.counter]
  omega

private theorem usedShared_swap (L : KaliskiRoundLayout) :
    L.swapCounter.valueSharedWires.Perm L.valueSharedWires := by
  change (_++L.swapCounter.data.valueUsedWires++L.swapCounter.counter.wires).Perm
    (_++L.data.valueUsedWires++L.counter.wires)
  rw [L.swapCounter_data,L.swapCounter_counter]
  exact List.Perm.append_left _ L.counter.swapCounter_perm

theorem valueLoop_counts (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) :
    toffoliCount (valueLoop L i rs)=rs.length*(7*L.data.width+33) ∧
    measurementCount (valueLoop L i rs)=rs.length*(4*L.data.width+29) ∧
    toffoliCount (valueUnloop L i rs)=rs.length*(7*L.data.width+33) ∧
    measurementCount (valueUnloop L i rs)=rs.length*(4*L.data.width+29) := by
  induction rs generalizing L i with
  | nil => simp [valueLoop,valueUnloop,toffoliCount,measurementCount]
  | cons r rs ih =>
    have hr := valueRound_counts (L.withRecord r) (L.withRecord_nodup r rs hnd) hw i
    have hnw : L.swapCounter.counter.width=10 := by rw [L.swapCounter_counter,L.counter.swapCounter_fields.2.2.2.2.2,hw]
    have ht := ih L.swapCounter (i+1) (L.tail_nodup r rs hnd) hnw
    change _=rs.length*(7*L.data.width+33) ∧ _=rs.length*(4*L.data.width+29) ∧
      _=rs.length*(7*L.data.width+33) ∧ _=rs.length*(4*L.data.width+29) at ht
    change _=7*L.data.width+33 ∧ _=4*L.data.width+29 ∧ _=7*L.data.width+33 ∧ _=4*L.data.width+29 at hr
    simp only [valueLoop,valueUnloop,toffoliCount_append,measurementCount_append,hr.1,hr.2.1,
      hr.2.2.1,hr.2.2.2,ht.1,ht.2.1,ht.2.2.1,ht.2.2.2,List.length_cons,Nat.add_mul,Nat.one_mul]
    simp [Nat.add_comm]

/-- 空循环没有线路；非空循环恰好使用共享布局和整个两位记录带。 -/
theorem valueLoop_wires (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hw : L.counter.width=10) (hd : 2≤L.data.width) :
    wires (valueLoop L i rs)=(if rs.isEmpty then ∅ else (L.valueTapeWires rs).toFinset) ∧
    wires (valueUnloop L i rs)=(if rs.isEmpty then ∅ else (L.valueTapeWires rs).toFinset) := by
  induction rs generalizing L i with
  | nil => simp [valueLoop,valueUnloop,wires]
  | cons r rs ih =>
    have hr := valueRound_wires (L.withRecord r) hw hd i
    have hnw : L.swapCounter.counter.width=10 := by rw [L.swapCounter_counter,L.counter.swapCounter_fields.2.2.2.2.2,hw]
    have ht := ih L.swapCounter (i+1) hnw hd
    have hp : (L.withRecord r).valueUsedWires.toFinset=(r.wires++L.valueSharedWires).toFinset := by
      ext w; simpa only [List.mem_toFinset] using (usedRecord_perm L r).mem_iff (a:=w)
    have hs : L.swapCounter.valueSharedWires.toFinset=L.valueSharedWires.toFinset := by
      ext w; simpa only [List.mem_toFinset] using (usedShared_swap L).mem_iff (a:=w)
    simp only [valueLoop,valueUnloop,wires_append,hr.1,hr.2,ht.1,ht.2,hp,List.isEmpty_cons,Bool.false_eq_true,if_false]
    cases rs with
    | nil => simp [KaliskiRoundLayout.valueTapeWires]
    | cons r' rs =>
      simp only [List.isEmpty_cons,Bool.false_eq_true,if_false,KaliskiRoundLayout.valueTapeWires,
        List.flatMap_cons,List.toFinset_append,hs]
      constructor <;> ext w <;> simp [Finset.mem_union,or_assoc,or_left_comm,or_comm]

theorem valueLoop_qubits (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) (hd : 2≤L.data.width) (hne : rs≠[]) :
    qubitCount (valueLoop L i rs)=5*L.data.width+46+2*rs.length ∧
    qubitCount (valueUnloop L i rs)=5*L.data.width+46+2*rs.length := by
  have ht (rs : List RoundRecord) : (rs.flatMap RoundRecord.wires).length=2*rs.length := by
    induction rs with
    | nil => rfl
    | cons r rs ih => simp [RoundRecord.wires,ih]; omega
  have hdw (bs : List RoundBit) : (bs.flatMap RoundBit.valueUsedWires).length=5*bs.length := by
    induction bs with
    | nil => rfl
    | cons b bs ih => simp [RoundBit.valueUsedWires,ih]; omega
  have hlen : (L.valueTapeWires rs).length=5*L.data.width+46+2*rs.length := by
    simp only [KaliskiRoundLayout.valueTapeWires,KaliskiRoundLayout.valueSharedWires,List.length_append,ht,
      List.length_cons,List.length_nil,RoundDataLayout.valueUsedWires,hdw,AdderLayout.wires,addWires_length]
    change L.counter.bits.length=10 at hw
    simp only [RoundDataLayout.width]
    omega
  have h := valueLoop_wires L rs i hw hd
  have he : rs.isEmpty=false := by cases rs <;> simp_all
  simp only [he,Bool.false_eq_true,if_false] at h
  simp only [qubitCount,h.1,h.2,List.toFinset_card_of_nodup ((L.valueTapeWires_sublist rs).nodup hnd),hlen,and_self]

end ECDSAAdd.Arithmetic
