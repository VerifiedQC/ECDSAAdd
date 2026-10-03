import ECDSAAdd.Arithmetic.CuccaroStreamedSquareProof

set_option maxHeartbeats 8000000
set_option maxRecDepth 1000000

namespace ECDSAAdd.Arithmetic
namespace CuccaroStreamedSquareWideLayout

theorem square129_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (base : BasisState) (S : Nat)
    (hS : regValue L.core.sum base=S)
    (hprod : regValue L.core.product base=0)
    (hpad : regValue L.core.pad base=0) (hwork : regValue L.core.work base=0)
    (hcin : base L.core.cin=false) :
    Triple (SquareFrame L.core.product base 0) L.core.square129
      (SquareFrame L.core.product base (S^2)) := by
  let mask := L.core.work.take 129
  have nd : (L.core.cin::L.core.sum++L.core.product++L.core.pad++mask++
      ([] : List Wire)).Nodup := by
    dsimp [mask]
    apply List.nodup_iff_count.mpr
    intro q
    have h := List.nodup_iff_count.mp hnd q
    have hhi1 := (List.take_sublist 128 (L.core.y.drop 128)).count_le q
    have hhi2 := (List.drop_sublist 128 L.core.y).count_le q
    have hm := (List.take_sublist 129 L.core.work).count_le q
    simp only [wires,CuccaroStreamedSquareLayout.wires,
      CuccaroStreamedSquareLayout.sum,CuccaroStreamedSquareLayout.high,
      List.count_append,List.count_cons,List.count_nil] at h ⊢
    omega
  have mask0 : regValue mask base=0 := (regValue_zero _ _).mpr (fun q hq =>
    (regValue_zero _ _).mp hwork q (List.mem_of_mem_take hq))
  intro s records h
  have away (q : Wire)
      (hq : q∈L.core.sum++L.core.pad++mask++[L.core.cin]) : q∉L.core.product := by
    intro hp
    have hn := List.nodup_iff_count.mp nd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hp
    simp only [List.count_append,List.count_cons,List.count_nil] at hn h1
    omega
  have sumS : regValue L.core.sum s.basis=S := by
    rw [←hS]
    apply regValue_congr
    intro q hq
    exact h.2 q (away q (by simp [hq]))
  have padS : regValue L.core.pad s.basis=0 := by
    rw [←hpad]
    apply regValue_congr
    intro q hq
    exact h.2 q (away q (by simp [hq]))
  have maskS : regValue mask s.basis=0 := by
    rw [←mask0]
    apply regValue_congr
    intro q hq
    exact h.2 q (away q (by simp [hq]))
  have cinS : s.basis L.core.cin=false :=
    (h.2 _ (away _ (by simp))).trans hcin
  have runh := cuccaroSignedTriangularSquare_forward_correct L.core.cin
    L.core.sum L.core.product L.core.pad mask [] nd (by simp [L.core.sum_length hw.core])
    (by simp [hw.core.product,L.core.sum_length hw.core]) (by simp [hw.core.pad])
    (by simp [mask,hw.core.work,L.core.sum_length hw.core]) s records h.1 padS maskS rfl cinS
  refine ⟨runh.1,?_,?_⟩
  · simpa [sumS] using runh.2.1
  · intro q hq
    by_cases hs : q∈L.core.sum
    · exact ((regValue_eq_iff L.core.sum _ _).mp runh.2.2.1 q hs).trans
        (h.2 q (away q (by simp [hs])))
    by_cases hp : q∈L.core.pad
    · exact ((regValue_eq_iff L.core.pad _ _).mp (runh.2.2.2.1.trans padS.symm) q hp).trans
        (h.2 q (away q (by simp [hp])))
    by_cases hm : q∈mask
    · exact ((regValue_eq_iff mask _ _).mp (runh.2.2.2.2.1.trans maskS.symm) q hm).trans
        (h.2 q (away q (by simp [hm])))
    by_cases hc : q=L.core.cin
    · subst q; exact runh.2.2.2.2.2.2.trans hcin.symm
    have hsupp := (cuccaroSignedTriangularSquare_wires_subset L.core.cin
      L.core.sum L.core.product L.core.pad mask []
      (by simp [L.core.sum_length hw.core])
      (by simp [hw.core.product,L.core.sum_length hw.core])
      (by simp [hw.core.pad]) (by simp [mask,hw.core.work,L.core.sum_length hw.core])).1
    have untouched : (run L.core.square129 records s).basis q=s.basis q := by
      apply run_preserves_outside
      intro hmemb
      have hh := List.mem_toFinset.mp (hsupp hmemb)
      simp only [List.mem_cons,List.mem_append,List.not_mem_nil,or_false] at hh
      tauto
    exact untouched.trans (h.2 q hq)

theorem square129Clear_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (base : BasisState) (S : Nat)
    (hS : regValue L.core.sum base=S)
    (hprod : regValue L.core.product base=0)
    (hpad : regValue L.core.pad base=0) (hwork : regValue L.core.work base=0)
    (hcin : base L.core.cin=false) :
    Triple (SquareFrame L.core.product base (S^2)) L.core.square129Clear
      (SquareFrame L.core.product base 0) := by
  let mask := L.core.work.take 129
  have nd : (L.core.cin::L.core.sum++L.core.product++L.core.pad++mask++
      ([] : List Wire)).Nodup := by
    dsimp [mask]
    apply List.nodup_iff_count.mpr
    intro q
    have h := List.nodup_iff_count.mp hnd q
    have hhi1 := (List.take_sublist 128 (L.core.y.drop 128)).count_le q
    have hhi2 := (List.drop_sublist 128 L.core.y).count_le q
    have hm := (List.take_sublist 129 L.core.work).count_le q
    simp only [wires,CuccaroStreamedSquareLayout.wires,
      CuccaroStreamedSquareLayout.sum,CuccaroStreamedSquareLayout.high,
      List.count_append,List.count_cons,List.count_nil] at h ⊢
    omega
  have ftriple := L.square129_frame hw hnd base S hS hprod hpad hwork hcin
  intro s records hs
  let z : State := ⟨s.phase,base⟩
  have zpre : SquareFrame L.core.product base 0 z.basis :=
    ⟨hprod,fun _ _ => rfl⟩
  have f := ftriple z [] zpre
  let u := run L.core.square129 [] z
  have us : u=s := by
    have ph : u.phase=s.phase := f.1
    have bs : u.basis=s.basis := by
      funext q
      by_cases hq : q∈L.core.product
      · exact (regValue_eq_iff L.core.product u.basis s.basis).mp
          (f.2.1.trans hs.1.symm) q hq
      · exact (f.2.2 q hq).trans (hs.2 q hq).symm
    calc
      u = ⟨u.phase,u.basis⟩ := rfl
      _ = ⟨s.phase,s.basis⟩ := by rw [ph,bs]
      _ = s := rfl
  have rr := cuccaroSignedTriangularSquare_roundtrip L.core.cin L.core.sum
    L.core.product L.core.pad mask [] nd z [] records
  change run L.core.square129Clear records u=z at rr
  rw [us] at rr
  rw [rr]
  exact ⟨rfl,hprod,fun _ _ => rfl⟩

end CuccaroStreamedSquareWideLayout
end ECDSAAdd.Arithmetic
