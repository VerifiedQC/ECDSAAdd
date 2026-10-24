import ECDSAAdd.Arithmetic.Paper935.HmrRouteStage

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrRouteStage_run (sigma : Wire) (f g fv gv z : List Wire)
    (nd : (sigma::(((f++fv)++(g++gv))++z)).Nodup)
    (fg : f.length=g.length) (vv : fv.length=gv.length) (s : State) (m : List Bool) :
    let out := run (hmrRouteStage sigma f g fv gv z) m s
    out.phase=s.phase ∧
    (∀q,q∉((f++fv)++(g++gv))++z → out.basis q=s.basis q) ∧
    regValue z out.basis=(if s.basis sigma then 2^z.length-1-regValue z s.basis else regValue z s.basis) ∧
    regValue (f++fv) out.basis=(if s.basis sigma then regValue (g++gv) s.basis else regValue (f++fv) s.basis) ∧
    regValue (g++gv) out.basis=(if s.basis sigma then regValue (f++fv) s.basis else regValue (g++gv) s.basis) := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have sigmaRows : sigma∉(f++fv)++(g++gv) := fun h => hn.1 (List.mem_append_left _ h)
  have sigmaZ : sigma∉z := fun h => hn.1 (List.mem_append_right _ h)
  have routeND := List.nodup_cons.mpr (And.intro sigmaRows pair.1)
  let routed := hmrSwapRows sigma (f++fv) (g++gv)
  let t := run routed m s
  have route := hmrSwapRows_values sigma (f++fv) (g++gv) routeND (by simp [fg,vv]) s m
  have frame := hmrSwapRows_frame sigma (f++fv) (g++gv) s m
  have complement := signComplement_correct sigma z pair.2.1 sigmaZ t m
  have oldZ : regValue z t.basis=regValue z s.basis := regValue_congr _ _ _ (by
    intro q hq
    apply frame.2 q
    · intro hx; exact List.disjoint_left.mp pair.2.2 (List.mem_append_left _ hx) hq
    · intro hx; exact List.disjoint_left.mp pair.2.2 (List.mem_append_right _ hx) hq)
  have sigmaValue : t.basis sigma=s.basis sigma := frame.2 sigma
    (fun h => sigmaRows (List.mem_append_left _ h)) (fun h => sigmaRows (List.mem_append_right _ h))
  dsimp only
  unfold hmrRouteStage
  rw [←hmrSwapRows_append sigma f g fv gv fg,run_append,run_take,
    (hmrSwapRows_counts sigma (f++fv) (g++gv)).2,List.drop_zero]
  refine ⟨complement.1.trans frame.1,?_,?_,?_,?_⟩
  · intro q hq
    have outside : q∉(f++fv)++(g++gv) ∧ q∉z := by simpa only [List.mem_append,not_or] using hq
    exact (complement.2.1 q outside.2).trans (frame.2 q
      (fun h => outside.1 (List.mem_append_left _ h)) (fun h => outside.1 (List.mem_append_right _ h)))
  · rw [complement.2.2,sigmaValue,oldZ]
  · rw [regValue_congr (f++fv) _ t.basis (fun q hq => complement.2.1 q
      (List.disjoint_left.mp pair.2.2 (List.mem_append_left _ hq)))]
    exact route.1
  · rw [regValue_congr (g++gv) _ t.basis (fun q hq => complement.2.1 q
      (List.disjoint_left.mp pair.2.2 (List.mem_append_right _ hq)))]
    exact route.2

end ECDSAAdd.Arithmetic.Paper935
