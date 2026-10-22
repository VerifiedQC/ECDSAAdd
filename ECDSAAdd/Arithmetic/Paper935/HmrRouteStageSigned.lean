import ECDSAAdd.Arithmetic.Paper935.HmrRouteStageRun

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrRouteStage_signed (sigma : Wire) (f g fv gv z : List Wire)
    (nd : (sigma::(((f++fv)++(g++gv))++z)).Nodup)
    (fg : f.length=g.length) (vv : fv.length=gv.length) (s : State) (m : List Bool) :
    let out := run (hmrRouteStage sigma f g fv gv z) m s
    signedRegValue f out.basis=(if s.basis sigma then signedRegValue g s.basis else signedRegValue f s.basis) ∧
    signedRegValue g out.basis=(if s.basis sigma then signedRegValue f s.basis else signedRegValue g s.basis) ∧
    signedRegValue fv out.basis=(if s.basis sigma then signedRegValue gv s.basis else signedRegValue fv s.basis) ∧
    signedRegValue gv out.basis=(if s.basis sigma then signedRegValue fv s.basis else signedRegValue gv s.basis) := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have sigmaRows : sigma∉(f++fv)++(g++gv) := fun h => hn.1 (List.mem_append_left _ h)
  have sigmaZ : sigma∉z := fun h => hn.1 (List.mem_append_right _ h)
  have routeND := List.nodup_cons.mpr (And.intro sigmaRows pair.1)
  let mid := run (hmrRouteRows sigma f g fv gv) m s
  let tape := m.drop (measurementCount (hmrRouteRows sigma f g fv gv))
  have values := hmrRouteRows_signed sigma f g fv gv routeND fg vv s m
  have complement := signComplement_correct sigma z pair.2.1 sigmaZ mid tape
  have keep (xs : List Wire) (subset : ∀q∈xs,q∈(f++fv)++(g++gv)) :
      signedRegValue xs (run (signComplement sigma z) tape mid).basis=signedRegValue xs mid.basis := by
    unfold signedRegValue
    rw [regValue_congr _ _ _ (fun q hq => complement.2.1 q
      (List.disjoint_left.mp pair.2.2 (subset q hq)))]
  dsimp only
  rw [show hmrRouteStage sigma f g fv gv z=hmrRouteRows sigma f g fv gv++signComplement sigma z from rfl,run_append,run_take]
  refine ⟨?_,?_,?_,?_⟩
  · exact (keep f (fun q hq => List.mem_append_left _ (List.mem_append_left _ hq))).trans values.1
  · exact (keep g (fun q hq => List.mem_append_right _ (List.mem_append_left _ hq))).trans values.2.1
  · exact (keep fv (fun q hq => List.mem_append_left _ (List.mem_append_right _ hq))).trans values.2.2.1
  · exact (keep gv (fun q hq => List.mem_append_right _ (List.mem_append_right _ hq))).trans values.2.2.2

end ECDSAAdd.Arithmetic.Paper935
