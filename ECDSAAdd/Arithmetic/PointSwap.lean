import ECDSAAdd.Arithmetic.ControlledPointOutSpec

namespace ECDSAAdd.Arithmetic
open Secp256k1

/-- 交换点寄存器只接触有限标志和坐标；其余线路逐位保持。 -/
theorem controlledPointSwap_correct (c : Wire) (a b : PointReg)
    (hn : (c::(PointAddLayout.pointWires a++PointAddLayout.pointWires b)).Nodup)
    (hx : a.x.length=b.x.length) (hy : a.y.length=b.y.length) (s : State) (m : List Bool) :
    let t := run (controlledPointSwap c a b) m s
    t.phase=s.phase ∧
    (∀ w,w∉PointAddLayout.pointWires a → w∉PointAddLayout.pointWires b → t.basis w=s.basis w) ∧
    t.basis a.finite=(if s.basis c then s.basis b.finite else s.basis a.finite) ∧
    t.basis b.finite=(if s.basis c then s.basis a.finite else s.basis b.finite) ∧
    regValue a.x t.basis=(if s.basis c then regValue b.x s.basis else regValue a.x s.basis) ∧
    regValue b.x t.basis=(if s.basis c then regValue a.x s.basis else regValue b.x s.basis) ∧
    regValue a.y t.basis=(if s.basis c then regValue b.y s.basis else regValue a.y s.basis) ∧
    regValue b.y t.basis=(if s.basis c then regValue a.y s.basis else regValue b.y s.basis) := by
  have hnF : [c,a.finite,b.finite].Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp hn w
    simp only [PointAddLayout.pointWires,List.count_append,List.count_cons,List.count_nil] at hh ⊢; omega
  have hnX : (c::(a.x++b.x)).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp hn w
    simp only [PointAddLayout.pointWires,List.count_append,List.count_cons] at hh ⊢; omega
  have hnY : (c::(a.y++b.y)).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp hn w
    simp only [PointAddLayout.pointWires,List.count_append,List.count_cons] at hh ⊢; omega
  have hdF : List.Disjoint [c,a.finite,b.finite] (a.x++b.x++a.y++b.y) := by
    apply List.disjoint_iff_ne.mpr; intro u hu v hv he; subst v
    have hh := List.nodup_iff_count.mp hn u
    have hf := List.count_pos_iff.mpr hu
    have hg := List.count_pos_iff.mpr hv
    simp only [PointAddLayout.pointWires,List.count_append,List.count_cons,List.count_nil] at hh hf hg; omega
  have hdXY : List.Disjoint (a.x++b.x) (a.y++b.y) := by
    apply List.disjoint_iff_ne.mpr; intro u hu v hv he; subst v
    have hh := List.nodup_iff_count.mp hn u
    have hf := List.count_pos_iff.mpr hu
    have hg := List.count_pos_iff.mpr hv
    simp only [PointAddLayout.pointWires,List.count_append,List.count_cons] at hh hf hg; omega
  let u := run (cswap c a.finite b.finite) m s
  let v := run (swapRegisters c a.x b.x) m u
  let t := run (swapRegisters c a.y b.y) m v
  obtain ⟨p0,e0,a0,b0⟩ := cswap_correct c a.finite b.finite hnF s m
  obtain ⟨p1,e1,a1,b1⟩ := swapRegisters_correct c a.x b.x hx hnX u m
  obtain ⟨p2,e2,a2,b2⟩ := swapRegisters_correct c a.y b.y hy hnY v m
  have fXY (w : Wire) (hw : w∈[c,a.finite,b.finite]) : w∉a.x ∧ w∉b.x ∧ w∉a.y ∧ w∉b.y := by
    have he := List.disjoint_left.mp hdF hw
    simpa only [List.mem_append,not_or,and_assoc] using he
  have xyF (w : Wire) (hw : w∈a.x++b.x++a.y++b.y) : w≠a.finite ∧ w≠b.finite := by
    constructor
    · intro he; subst w; exact List.disjoint_left.mp hdF (by simp) hw
    · intro he; subst w; exact List.disjoint_left.mp hdF (by simp) hw
  have uc : u.basis c=s.basis c := e0 c (fun he => (List.nodup_cons.mp hnF).1 (by simp [he])) (fun he => (List.nodup_cons.mp hnF).1 (by simp [he]))
  have vc : v.basis c=s.basis c := (e1 c (fXY c (by simp)).1 (fXY c (by simp)).2.1).trans uc
  have ur (r : List Wire) (hr : ∀ w∈r,w∈a.x++b.x++a.y++b.y) : regValue r u.basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun w hw => e0 w (xyF w (hr w hw)).1 (xyF w (hr w hw)).2)
  have vr (r : List Wire) (hr : ∀ w∈r,w∈a.y++b.y) : regValue r v.basis=regValue r u.basis := by
    apply regValue_congr; intro w hw
    have hh := List.disjoint_right.mp hdXY (hr w hw)
    exact e1 w (fun h => hh (List.mem_append_left _ h)) (fun h => hh (List.mem_append_right _ h))
  have tr (r : List Wire) (hr : ∀ w∈r,w∈a.x++b.x) : regValue r t.basis=regValue r v.basis := by
    apply regValue_congr; intro w hw
    have hh := List.disjoint_left.mp hdXY (hr w hw)
    exact e2 w (fun h => hh (List.mem_append_left _ h)) (fun h => hh (List.mem_append_right _ h))
  rw [controlledPointSwap,run_append,run_take,run_append,run_take]
  simp only [measurementCount_append,show measurementCount (cswap c a.finite b.finite)=0 by simp [cswap,measurementCount],
    (swapRegisters_resources c a.x b.x hx hnX).2.1,Nat.zero_add,List.drop_zero]
  change t.phase=s.phase ∧ _
  refine ⟨p2.trans (p1.trans p0),?_,?_,?_,?_,?_,?_,?_⟩
  · intro w ha hb
    have hh : w≠a.finite ∧ w∉a.x ∧ w∉a.y ∧ w≠b.finite ∧ w∉b.x ∧ w∉b.y := by
      simpa only [PointAddLayout.pointWires,List.mem_append,List.mem_cons,not_or,and_assoc] using And.intro ha hb
    exact (e2 w hh.2.2.1 hh.2.2.2.2.2).trans ((e1 w hh.2.1 hh.2.2.2.2.1).trans (e0 w hh.1 hh.2.2.2.1))
  · have hh := fXY a.finite (by simp)
    exact (e2 _ hh.2.2.1 hh.2.2.2).trans ((e1 _ hh.1 hh.2.1).trans a0)
  · have hh := fXY b.finite (by simp)
    exact (e2 _ hh.2.2.1 hh.2.2.2).trans ((e1 _ hh.1 hh.2.1).trans b0)
  · rw [tr _ (by intro w hw; simp [hw]),a1,uc,ur _ (by intro w hw; simp [hw]),ur _ (by intro w hw; simp [hw])]
  · rw [tr _ (by intro w hw; simp [hw]),b1,uc,ur _ (by intro w hw; simp [hw]),ur _ (by intro w hw; simp [hw])]
  · rw [a2,vc,vr _ (by intro w hw; simp [hw]),vr _ (by intro w hw; simp [hw]),
      ur _ (by intro w hw; simp [hw]),ur _ (by intro w hw; simp [hw])]
  · rw [b2,vc,vr _ (by intro w hw; simp [hw]),vr _ (by intro w hw; simp [hw]),
      ur _ (by intro w hw; simp [hw]),ur _ (by intro w hw; simp [hw])]

end ECDSAAdd.Arithmetic
