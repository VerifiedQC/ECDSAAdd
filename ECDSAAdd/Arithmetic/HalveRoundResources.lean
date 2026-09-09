import ECDSAAdd.Arithmetic.HalveRound

namespace ECDSAAdd.Arithmetic

theorem conditionalHalve_counts (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    toffoliCount (conditionalHalve L q) = 14*L.arithmetic.width+10 ∧
    measurementCount (conditionalHalve L q) = 4*(L.arithmetic.width+1) := by
  have hh := halveXor_counts L.arithmetic L.a L.temp (L.kernel_nodup hnd) ha ht q
  have hc := conditionalXor_counts (halveXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b
    (ha.trans hb.symm) (ht.trans hb.symm)
  simp only [hh.1,hh.2,hb] at hc
  exact ⟨by change toffoliCount (conditionalXor _ _ _ _ _) = _; omega,
    by change measurementCount (conditionalXor _ _ _ _ _) = _; omega⟩

theorem conditionalDouble_counts (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    toffoliCount (conditionalDouble L q) = 22*L.arithmetic.width+18 ∧
    measurementCount (conditionalDouble L q) = 16*(L.arithmetic.width+1) := by
  have hh := doubleXor_resources L.arithmetic L.a L.temp (L.kernel_nodup hnd) ha ht q
  have hc := conditionalXor_counts (doubleXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b
    (ha.trans hb.symm) (ht.trans hb.symm)
  simp only [hh.1,hh.2.1,hb] at hc
  exact ⟨by change toffoliCount (conditionalXor _ _ _ _ _) = _; omega,
    by change measurementCount (conditionalXor _ _ _ _ _) = _; omega⟩

theorem conditionalHalve_support (L : HalveLayout)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    wires (conditionalHalve L q) ⊆ L.wires.toFinset := by
  have hn : L.b ≠ [] := by intro hh; rw [hh] at hb; simp at hb
  rw [conditionalHalve,conditionalXor_wires (halveXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b (ha.trans hb.symm) (ht.trans hb.symm) hn]
  intro w hw
  rcases Finset.mem_union.mp hw with hk | hm
  · have hh := halveXor_support L.arithmetic L.a L.temp q ha ht hk
    simp only [List.mem_toFinset,List.mem_append] at hh
    simp only [HalveLayout.wires,List.mem_toFinset,List.mem_cons,List.mem_append]
    aesop
  · simp only [HalveLayout.wires,List.mem_toFinset,List.mem_cons,List.mem_append] at hm ⊢
    aesop

theorem conditionalDouble_wires (L : HalveLayout)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    wires (conditionalDouble L q) = L.wires.toFinset := by
  have hn : L.b ≠ [] := by intro hh; rw [hh] at hb; simp at hb
  rw [conditionalDouble,conditionalXor_wires (doubleXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b (ha.trans hb.symm) (ht.trans hb.symm) hn,
    doubleXor_wires L.arithmetic L.a L.temp q ha ht]
  ext w
  simp [HalveLayout.wires,or_assoc,or_left_comm,or_comm]

theorem halveRound_counts (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    toffoliCount (halveRound L q) = 36*L.arithmetic.width+28 ∧
    measurementCount (halveRound L q) = 20*(L.arithmetic.width+1) ∧
    toffoliCount (halveUnround L q) = 36*L.arithmetic.width+28 ∧
    measurementCount (halveUnround L q) = 20*(L.arithmetic.width+1) := by
  have hh := conditionalHalve_counts L hnd ha hb ht q
  have hd := conditionalDouble_counts L.swap (L.swap_perm.nodup_iff.mpr hnd) hb ha ht q
  simp only [halveRound,halveUnround,toffoliCount_append,measurementCount_append,hh.1,hh.2,hd.1,hd.2]
  simp only [HalveLayout.swap]
  omega

theorem halveRound_wires (L : HalveLayout)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) :
    wires (halveRound L q) = L.wires.toFinset ∧ wires (halveUnround L q) = L.wires.toFinset := by
  have he : L.swap.wires.toFinset = L.wires.toFinset := by
    ext w; simpa only [List.mem_toFinset] using L.swap_perm.mem_iff (a := w)
  have hh := conditionalHalve_support L ha hb ht q
  have hd := conditionalDouble_wires L.swap hb ha ht q
  rw [he] at hd
  simp only [halveRound,halveUnround,wires_append,hd]
  exact ⟨Finset.union_eq_right.mpr hh,Finset.union_eq_left.mpr hh⟩

end ECDSAAdd.Arithmetic
