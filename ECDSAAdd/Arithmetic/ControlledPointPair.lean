import ECDSAAdd.Arithmetic.PointSwap

namespace ECDSAAdd.Arithmetic
open Secp256k1

def ControlledPointPair (L : ControlledPointLayout) (b : Bool) (R T : Point) (s : BasisState) : Prop :=
  Holds.holds s L.core.input R ∧ Holds.holds s L.core.output T ∧ regValue L.core.work s=0 ∧ PointControl L b s

theorem ControlledPointLayout.swap_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup) :
    (L.control::(PointAddLayout.pointWires L.core.input++PointAddLayout.pointWires L.core.output)).Nodup := by
  apply List.nodup_iff_count.mpr; intro w
  have hh := List.nodup_iff_count.mp hn w
  simp only [ControlledPointLayout.wires,ControlledPointLayout.extras,PointAddLayout.wires,
    List.count_cons,List.count_append] at hh ⊢; omega

theorem controlledPointSwap_pair (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R T : Point) :
    Triple (ControlledPointPair L b R T) (controlledPointSwap L.control L.point L.temporary)
      (ControlledPointPair L b (if b then T else R) (if b then R else T)) := by
  intro s m hs
  obtain ⟨hi,ho,hz,hb⟩ := hs
  have vi := (point_holds _ _ _).mp hi
  have vo := (point_holds _ _ _).mp ho
  obtain ⟨hp,he,hf,hg,hx,hu,hy,hv⟩ := controlledPointSwap_correct L.control L.core.input L.core.output
    (L.swap_nodup hn) (h.inputX.trans h.outputX.symm) (h.inputY.trans h.outputY.symm) s m
  have hext (w : Wire) (hw : w∈L.extras) :
      (run (controlledPointSwap L.control L.point L.temporary) m s).basis w=s.basis w := by
    apply he
    · intro hm; exact L.extra_not_core hn w hw (by simp [PointAddLayout.wires,hm])
    · exact L.extra_not_output hn w hw
  refine ⟨hp,?_,?_,?_,?_⟩
  · apply (point_holds _ _ _).mpr
    rw [hb.1,vi.1,vo.1] at hf
    rw [hb.1,vi.2.1,vo.2.1] at hx
    rw [hb.1,vi.2.2,vo.2.2] at hy
    cases b <;> simpa using And.intro hf (And.intro hx hy)
  · apply (point_holds _ _ _).mpr
    rw [hb.1,vi.1,vo.1] at hg
    rw [hb.1,vi.2.1,vo.2.1] at hu
    rw [hb.1,vi.2.2,vo.2.2] at hv
    cases b <;> simpa using And.intro hg (And.intro hu hv)
  · apply (Eq.trans ?_ hz)
    apply regValue_congr; intro w hw
    have hd := List.disjoint_right.mp (List.nodup_append'.mp (L.core_nodup hn)).2.2 hw
    exact he w (fun hh => hd (List.mem_append_left _ hh)) (fun hh => hd (List.mem_append_right _ hh))
  · simpa only [PointControl,hext L.control (by simp [ControlledPointLayout.extras]),
      hext L.genericSelect (by simp [ControlledPointLayout.extras,ControlledPointLayout.selectors]),
      hext L.doubleSelect (by simp [ControlledPointLayout.extras,ControlledPointLayout.selectors]),
      hext L.infinitySelect (by simp [ControlledPointLayout.extras,ControlledPointLayout.selectors])] using hb

theorem controlledPointPair_ready (L : ControlledPointLayout) (b : Bool) (R T : Point) (s : BasisState) :
    ControlledPointPair L b R T s ↔ ControlledPointReady L b R (pointFinite T) (pointX T) (pointY T) s := by
  simp only [ControlledPointPair,ControlledPointReady,PointReady,point_holds,and_assoc]

theorem controlledPointPair_zero (L : ControlledPointLayout) (b : Bool) (R : Point) (s : BasisState) :
    ControlledPointPair L b R 0 s ↔ ((Holds.holds s L.control b ∧ Holds.holds s L.point R) ∧ Holds.holds s L.work (0 : Nat)) := by
  have hz : regValue L.work s=0 ↔ regValue L.core.work s=0 ∧
      s L.core.output.finite=false ∧ regValue L.core.output.x s=0 ∧ regValue L.core.output.y s=0 ∧
      s L.genericSelect=false ∧ s L.doubleSelect=false ∧ s L.infinitySelect=false := by
    simp only [regValue_zero,ControlledPointLayout.work,ControlledPointLayout.temporary,ControlledPointLayout.outWork,
      ControlledPointLayout.selectors,PointAddLayout.pointWires,List.mem_append,List.mem_cons,List.not_mem_nil,
      or_false,or_imp,forall_and,forall_eq]
    tauto
  simp only [ControlledPointPair,PointControl,ControlledPointLayout.point,Holds.holds,hz,coordinates_zero]
  tauto

end ECDSAAdd.Arithmetic
