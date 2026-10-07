import ECDSAAdd.Arithmetic.Division.DivideBasis

namespace ECDSAAdd.Arithmetic.DivideLayout

/-- 输出高位与乘法工作区恰为借用区前1828位。 -/
theorem multiply_borrow (L : DivideLayout) (hw : L.Widths) :
    [L.borrowedBit 0] ++ L.multiply.work = L.borrow.take 1828 := by
  have h := borrowedMont_prefix L.borrow L.inner.first.done 1 L.inner.a L.numerator
    (L.acc++[L.borrowedBit 0]) (by rw [L.borrow_length hw]; omega)
  have he : L.borrow.take 1=[L.borrowedBit 0] := by
    have hh : 0<L.borrow.length := by rw [L.borrow_length hw]; omega
    simp [borrowedBit,List.take_add_one,List.getElem?_eq_getElem hh]
  rw [he] at h
  exact h

theorem inner_nodup (L : DivideLayout) (hnd : L.wires.Nodup) : L.inner.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,List.count_cons,List.count_append] at h
  omega

theorem multiply_nodup (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup) :
    (L.control :: L.multiply.wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  have hb := List.Sublist.count_le q (List.take_sublist 1828 L.borrow)
  rw [← L.multiply_borrow hw] at hb
  simp only [wires,work,InverseLoopLayout.wires,InverseLoopLayout.extra,
    List.count_cons,List.count_append] at h
  simp only [borrow,List.count_append,List.count_cons,List.count_nil] at hb
  change (L.control :: L.inner.a ++ L.numerator ++ (L.acc++[L.borrowedBit 0]) ++ L.multiply.work).count q ≤ 1
  simp only [List.count_cons,List.count_append,List.count_nil]
  omega

theorem inverse_nodup (L : DivideLayout) (hnd : L.wires.Nodup) :
    (L.control :: L.inverseView.wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  have hp := L.inverseView.wires_perm.count_eq q
  change (L.control :: L.inverseView.wires).count q ≤ 1
  simp only [wires,work,List.count_cons,List.count_append] at h ⊢
  change L.inverseView.wires.count q = (L.denominator++L.inner.wires).count q at hp
  simp only [List.count_append] at hp
  omega



def usedWires (L : DivideLayout) : List Wire :=
  L.control :: L.denominator ++ L.numerator ++ L.acc ++ L.inner.usedCoreWires

theorem multiply_used_subset (L : DivideLayout) (hw : L.Widths) :
    L.multiply.wires ⊆ L.usedWires := by
  intro q h
  have hb : [L.borrowedBit 0]++L.multiply.work ⊆ L.borrow := by
    rw [L.multiply_borrow hw]
    exact (List.take_sublist _ _).subset
  have hh : q∈L.multiply.work ∨ q=L.borrowedBit 0 → q∈L.borrow := by
    intro hq; apply hb; simpa [or_comm] using hq
  change q∈L.inner.a++L.numerator++(L.acc++[L.borrowedBit 0])++L.multiply.work at h
  simp only [List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at h
  simp only [borrow,List.mem_append] at hh
  simp only [usedWires,InverseLoopLayout.usedCoreWires,InverseLoopLayout.extra,
    List.mem_cons,List.mem_append]
  tauto

theorem data_used_subset (L : DivideLayout) (f : RoundField) (hf : f≠.out) :
    L.inner.first.data.reg f ⊆ L.inner.usedCoreWires := by
  intro q h
  have hm := L.inner.first.data.reg_used_mem f hf h
  simp only [InverseLoopLayout.usedCoreWires,KaliskiRoundLayout.usedTapeWires,
    KaliskiRoundLayout.usedSharedWires,List.mem_append]
  tauto

theorem vLow_used_subset (L : DivideLayout) : L.vLow ⊆ L.inner.usedCoreWires := by
  intro q h
  apply L.data_used_subset .v (by decide)
  change q∈L.inverseView.inner.first.v
  rw [L.inverseView.v_split]
  exact List.mem_append_left _ h

theorem usedWires_nodup (L : DivideLayout) (hnd : L.wires.Nodup) : L.usedWires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  have hi := List.Sublist.count_le q L.inner.usedWires_sublist
  simp only [usedWires,wires,work,InverseLoopLayout.usedWires,List.count_append,List.count_cons] at h hi ⊢
  omega


end ECDSAAdd.Arithmetic.DivideLayout
