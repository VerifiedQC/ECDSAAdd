import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceWires
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceCounts
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1
open scoped ECDSAAdd.ProofLanguage

private theorem boundary_frame_values (L : ControlledPointLayout) (P : Program)
    (hP : wires P⊆L.inPlaceUsedWires.toFinset) (R R' : Point) (b : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceBoundary L R b (fun _ => false) s.basis)
    (ho : PointInPlaceBoundary L R' b (fun _ => false) (run P m s).basis)
    (q : Wire) (hp : q∉PointAddLayout.pointWires L.point) : (run P m s).basis q=s.basis q := by
  by_cases hc : q=L.control
  · subst q; exact ho.control.trans hi.control.symm
  by_cases hf : q∈L.inPlaceFlags
  · exact (ho.flags q hf).trans (hi.flags q hf).symm
  by_cases hs : q∈L.inPlaceSlope
  · exact (regValue_eq_iff _ _ _).mp (ho.slope.trans hi.slope.symm) q hs
  by_cases hw : q∈L.inPlaceInverse.wires
  · exact (regValue_eq_iff _ _ _).mp (ho.clean.trans hi.clean.symm) q hw
  have hu : q∉L.inPlaceInverse.usedCoreWires := fun h => hw
    ((L.inPlaceDivide L.core.generic L.point.x L.point.y).inverse_used_subset h)
  apply run_preserves_outside
  apply mt (@hP q)
  simp [inPlaceUsedWires,hp,hc,hf,hs,hu]

theorem pointInPlaceFinite_frame (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceBoundary L R b (fun _ => false) s.basis)
    (q : Wire) (hq : q∉PointAddLayout.pointWires L.point) :
    (run (pointInPlaceFinite L (.some hc) cx cy) m s).basis q=s.basis q := by
  have ho := (pointInPlaceFinite_spec L hw hn R hc b s m hi).2
  exact boundary_frame_values L _ (by rw [pointInPlaceFinite_wires L hw]) R _ b s m hi ho q hq

private theorem boundary_work_subset (L : ControlledPointLayout) (hw : L.Widths) :
    L.inPlaceSlope++L.inPlaceFlags++L.inPlaceInverse.wires ⊆ L.work := by
  intro q hq
  have h1 := List.count_pos_iff.mpr hq
  have hi := (L.inPlaceInverse_perm hw).count_eq q
  have hs := (List.take_sublist 256 L.core.slope).count_le q
  apply List.count_pos_iff.mp
  simp only [inPlaceSlope,List.count_append] at h1
  simp only [work,outWork,temporary,inPlaceFlags,selectors,PointAddLayout.work,PointAddLayout.words,
    PointAddLayout.flags,List.flatten_cons,List.flatten_nil,List.append_nil,List.count_append,List.count_cons,List.count_nil] at h1 hi ⊢
  omega

private theorem work_not_point (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (q : Wire) (hq : q∈L.work) : q∉PointAddLayout.pointWires L.point := by
  intro hp
  have hh := List.nodup_iff_count.mp hn q
  have h1 := List.count_pos_iff.mpr hq
  have h2 := List.count_pos_iff.mpr hp
  simp only [ControlledPointLayout.wires,work,outWork,temporary,point,extras,selectors,PointAddLayout.wires,
    List.count_append,List.count_cons,List.count_nil] at hh h1 h2
  omega

/-- 公共布局的全部分配工作位恢复为零，包括本实现未使用的旧银行。 -/
theorem pointInPlaceFinite_full_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool) :
    {{ L.control=b,L.point=R,L.work=0 }} pointInPlaceFinite L (.some hc) cx cy
    {{ L.control=b,L.point=(if b then R+.some hc else R),L.work=0 }} := Proof
  For every s, m assuming hs
  have hz : regValue L.work s.basis=0 := hs.2
  have clean (q : Wire) (hq : q∈L.inPlaceSlope++L.inPlaceFlags++L.inPlaceInverse.wires) : s.basis q=false :=
    (regValue_zero _ _).mp hz q (boundary_work_subset L hw hq)
  have hi : PointInPlaceBoundary L R b (fun _ => false) s.basis := by
    refine ⟨hs.1.2,hs.1.1,fun q hq => clean q (by simp [hq]),?_,?_⟩
    · exact (regValue_zero _ _).mpr (fun q hq => clean q (by simp [hq]))
    · exact (regValue_zero _ _).mpr (fun q hq => clean q (by simp [hq]))
  obtain ⟨hp,ho⟩ := pointInPlaceFinite_spec L hw hn R hc b s m hi
  generalize hrun : run (pointInPlaceFinite L (.some hc) cx cy) m s=finished at hp ho ⊢
  { Holds.holds finished.basis L.point (if b then R+.some hc else R) } as pointAdded by ho.point;
  { finished.basis L.control=b } as controlPreserved by ho.control;
  -- The frame theorem restores even allocated workspace banks that this circuit never used.
  { regValue L.work finished.basis=0 } as allWorkspaceClean by (by
    apply (regValue_zero _ _).mpr
    intro q hq
    have preserved := pointInPlaceFinite_frame L hw hn R hc b s m hi q (work_not_point L hn q hq)
    rw [hrun] at preserved
    rw [preserved]
    exact (regValue_zero _ _).mp hz q hq);
  conclude {
    finished.phase=s.phase ∧
    ((Holds.holds finished.basis L.control b ∧
      Holds.holds finished.basis L.point (if b then R+.some hc else R)) ∧
      regValue L.work finished.basis=0)
  } by ⟨hp, ⟨controlPreserved, pointAdded⟩, allWorkspaceClean⟩;

end ECDSAAdd.Arithmetic
