import ECDSAAdd.Arithmetic.Divide

namespace ECDSAAdd.Arithmetic.DivideLayout

/-- 乘法输出高位与全部工作位恰为借用区前1030位；未使用的尾部保留。 -/
theorem multiply_borrow (L : DivideLayout) (hw : L.Widths) :
    [L.borrowedBit 0] ++ L.multiply.work = L.borrow.take 1030 := by
  have one (i : Nat) (hi : i<2315) :
      L.borrow.take i ++ [L.borrowedBit i] = L.borrow.take (i+1) := by
    have h : i<L.borrow.length := by rw [L.borrow_length hw]; exact hi
    change L.borrow.take i ++ [L.borrow.getD i L.inner.first.done] = _
    rw [List.getD_eq_getElem _ _ h,List.take_add_one,List.getElem?_eq_getElem h]
    rfl
  have h0 := one 0 (by omega)
  have h257 := one 257 (by omega)
  have h771 := one 771 (by omega)
  have h1029 := one 1029 (by omega)
  change [L.borrowedBit 0] ++
    (((L.borrow.drop 1).take 256 ++ [L.borrowedBit 257]) ++
      ((L.borrow.drop 258).take 257 ++ (L.borrow.drop 515).take 256 ++
        [L.borrowedBit 771] ++ (L.borrow.drop 772).take 257 ++ [L.borrowedBit 1029])) = _
  simp only [List.nil_append,List.take_zero] at h0
  simp only [← List.append_assoc]
  rw [h0, ← List.take_add, h257, ← List.take_add, ← List.take_add, h771,
    ← List.take_add, h1029]

theorem inner_nodup (L : DivideLayout) (hnd : L.wires.Nodup) : L.inner.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,List.count_cons,List.count_append] at h
  omega

theorem multiply_nodup (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup) :
    (L.control :: L.multiply.wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  have hb := List.Sublist.count_le q (List.take_sublist 1030 L.borrow)
  rw [← L.multiply_borrow hw] at hb
  simp only [wires,work,InverseLoopLayout.wires,InverseLoopLayout.extra,
    List.count_cons,List.count_append] at h
  simp only [borrow,List.count_append,List.count_cons,List.count_nil] at hb
  change (L.control :: L.inner.a ++ L.numerator ++ (L.acc++[L.borrowedBit 0]) ++ L.multiply.work).count q ≤ 1
  simp only [List.count_cons,List.count_append,List.count_nil]
  omega

theorem add_nodup (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup) :
    (L.control :: L.multiply.addView.wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp (L.multiply_nodup hw hnd) q
  have hp := L.multiply.add_ports (L.multiply_widths hw)
  change (L.control :: L.multiply.addView.a ++ L.multiply.addView.z ++ L.multiply.addView.work).count q ≤ 1
  rw [hp.1,hp.2.1,hp.2.2]
  simp only [MulAdapterLayout.wires,MulAdapterLayout.work,List.count_append,List.count_cons] at h ⊢
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

end ECDSAAdd.Arithmetic.DivideLayout
