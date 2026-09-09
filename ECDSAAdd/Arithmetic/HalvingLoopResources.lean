import ECDSAAdd.Arithmetic.HalvingLoop

namespace ECDSAAdd.Arithmetic

theorem halvingStep_counts (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (hw : L.counter.width=10)
    (q i : Nat) :
    toffoliCount (halvingStep L q i) = 36*L.data.arithmetic.width+68 ∧
    measurementCount (halvingStep L q i) = 20*(L.data.arithmetic.width+1)+40 ∧
    toffoliCount (halvingUnstep L q i) = 36*L.data.arithmetic.width+68 ∧
    measurementCount (halvingUnstep L q i) = 20*(L.data.arithmetic.width+1)+40 := by
  have hh := halveRound_counts L.data (List.nodup_append'.mp hnd).1 ha hb ht q
  have hc := counterActiveXor_counts L.counter L.counterHigh.out L.data.active i
  simp only [halvingStep,halvingUnstep,phaseActive,toffoliCount_append,measurementCount_append,
    hh.1,hh.2.1,hh.2.2.1,hh.2.2.2,hc.1,hc.2,hw]
  omega

theorem halvingStep_wires (L : HalvingLoopLayout)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (q i : Nat) :
    wires (halvingStep L q i) = L.wires.toFinset ∧
    wires (halvingUnstep L q i) = L.wires.toFinset := by
  have hh := halveRound_wires L.data ha hb ht q
  have hc := counterActiveXor_wires L.counter L.counterHigh.out L.data.active i
    (by rw [L.counter_out]; simp)
  have hm : L.data.active ∈ L.data.wires := by simp [HalveLayout.wires]
  simp only [halvingStep,halvingUnstep,phaseActive,wires_append,hh.1,hh.2,hc]
  clear ha hb ht hh hc
  constructor <;> ext w <;> simp only [Finset.mem_union,List.mem_toFinset,List.mem_cons,
    HalvingLoopLayout.wires,List.mem_append] <;> aesop

theorem halvingLoop_counts (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (hw : L.counter.width=10)
    (q i n : Nat) :
    toffoliCount (halvingLoop L q i n) = n*(36*L.data.arithmetic.width+68) ∧
    measurementCount (halvingLoop L q i n) = n*(20*(L.data.arithmetic.width+1)+40) ∧
    toffoliCount (halvingUnloop L q i n) = n*(36*L.data.arithmetic.width+68) ∧
    measurementCount (halvingUnloop L q i n) = n*(20*(L.data.arithmetic.width+1)+40) := by
  induction n generalizing L i with
  | zero => simp [halvingLoop,halvingUnloop,toffoliCount,measurementCount]
  | succ n ih =>
    have hs := halvingStep_counts L hnd ha hb ht hw q i
    have hn := ih L.swap (L.swap_perm.nodup_iff.mpr hnd) hb ha ht hw (i+1)
    simp only [halvingLoop,halvingUnloop,toffoliCount_append,measurementCount_append,
      hs.1,hs.2.1,hs.2.2.1,hs.2.2.2,hn.1,hn.2.1,hn.2.2.1,hn.2.2.2]
    simp only [HalvingLoopLayout.swap,HalveLayout.swap,Nat.succ_mul]
    simp [Nat.add_comm]

theorem halvingLoop_wires (L : HalvingLoopLayout)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (q i n : Nat) :
    wires (halvingLoop L q i n) = (if n=0 then ∅ else L.wires.toFinset) ∧
    wires (halvingUnloop L q i n) = (if n=0 then ∅ else L.wires.toFinset) := by
  induction n generalizing L i with
  | zero => simp [halvingLoop,halvingUnloop,wires]
  | succ n ih =>
    have hs := halvingStep_wires L ha hb ht q i
    have hn := ih L.swap hb ha ht (i+1)
    have he : L.swap.wires.toFinset = L.wires.toFinset := by
      ext w; simpa only [List.mem_toFinset] using L.swap_perm.mem_iff (a := w)
    simp only [halvingLoop,halvingUnloop,wires_append,hs.1,hs.2,hn.1,hn.2,he,
      Nat.add_eq_zero_iff,Nat.one_ne_zero,and_false,if_false]
    split_ifs <;> simp

end ECDSAAdd.Arithmetic
