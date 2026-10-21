import ECDSAAdd.Arithmetic.Paper935.HmrFreezeCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrKeeperRestore

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrReverseFirePlan where
  zero : List HmrBlockPlan
  keeper : Wire
  cleanup : List HmrBlockFreePlan

def HmrReverseFirePlan.program (P : HmrReverseFirePlan) (frozen fire : Wire) : Program :=
  hmrBlockedProgram P.zero ++ (hmrPolarRelease P.keeper frozen fire true false ++
    hmrBlockedDropProgram P.cleanup)

/-- Literal R13: size-8 g zero test, measured fireR retirement, then
fresh-prefix release of the zero-test keeper ladder. -/
def compileHmrReverseFire (A : Arena) (bits : List Wire) (frozen fire : Wire) :
    Option (Arena × HmrReverseFirePlan) := do
  if (bits++[frozen,fire]).toFinset⊆A.live ∧ fire∉bits then
    let (B,ps,keeper) ← compileHmrZero A bits 8
    if [keeper,frozen,fire].Nodup then
      let C ← B.release {fire} (fun _ => false)
      let (D,qs) ← compileHmrBlockedDrop C ps
      pure (D,⟨ps,keeper,qs⟩)
    else none
  else none

theorem compileHmrReverseFire_run (A D : Arena) (bits : List Wire) (frozen fire : Wire)
    (P : HmrReverseFirePlan) (h : compileHmrReverseFire A bits frozen fire=some (D,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis fire=(decide (regValue bits s.basis=0) && !s.basis frozen)) :
    run (P.program frozen fire) m s=⟨s.phase,writeBit s.basis fire false⟩ ∧
    D.Ready (writeBit s.basis fire false) := by
  unfold compileHmrReverseFire at h
  split at h
  next input =>
    obtain ⟨⟨B,ps,keeper⟩,zh,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next nd =>
      obtain ⟨C,release,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨E,qs⟩,drop,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have zc := compileHmrZero_contract A B bits 8 ps keeper zh
      have zr := compileHmrBlocked_run A B none _ ps zc.2.1 s m ready
      let u : State := ⟨s.phase,hmrBlockedAdvance ps s.basis⟩
      have ur : B.Ready u.basis := zr.2.1
      have bitsOwned : bits.toFinset⊆A.live := by
        intro q hq
        exact input.1 (List.mem_toFinset.mpr (List.mem_append_left _ (List.mem_toFinset.mp hq)))
      have metaOwned (q : Wire) (hq : q∈[frozen,fire]) : q∈A.live :=
        input.1 (List.mem_toFinset.mpr (List.mem_append_right _ hq))
      have frame (q : Wire) (hq : q∈[frozen,fire]) : u.basis q=s.basis q := by
        have f := compileHmrBlocked_frame A B none _ ps zc.2.1 s m ready q (metaOwned q hq)
        simpa only [zr.1] using f
      have zero : u.basis keeper=decide (regValue bits s.basis=0) := by
        have v := compileHmrZero_value A B bits 8 ps keeper zh bitsOwned s m ready
        simpa only [zr.1] using v
      have witness : u.basis fire=(u.basis keeper && !u.basis frozen) := by
        rw [frame fire (by simp),frame frozen (by simp),zero]
        exact value
      have death (tape : List Bool) := hmrPolarRelease_run keeper frozen fire true false nd u tape
        (by simpa only [ite_true,Bool.false_eq_true,ite_false] using witness)
      let v : State := ⟨s.phase,writeBit u.basis fire false⟩
      have clean : ∀q∈({fire} : Finset Wire),v.basis q=false := by
        intro q hq
        simp only [Finset.mem_singleton] at hq
        subst q
        simp [v,writeBit]
      have actual : B.release {fire} v.basis=some C := by
        rw [B.release_clean_eq _ _ clean]
        exact release
      have vr : B.Ready v.basis := by
        intro q hq hn
        by_cases eq : q=fire
        · subst q
          simp [v,writeBit]
        · simpa [v,writeBit,eq] using ur q hq hn
      have cr := B.release_ready C {fire} v.basis vr actual
      have order := compileHmrBlocked_order A B none _ ps zc.2.1
      have away := compileHmrBlocked_away A B none _ ps zc.2.1 fire (metaOwned fire (by simp))
        (by rw [hmrChunks_flatten 8 bits (by decide)]; exact input.2) (by simp)
      have values : HmrKeeperValues ps u.basis := by
        have vv := compileHmrBlocked_values A B none _ ps zc.2.1 s m ready
        simpa only [zr.1] using vv
      have vv : HmrKeeperValues ps v.basis := by
        apply hmrKeeperValues_frame ps u.basis v.basis values
        intro R hR q hq
        have ne : q≠fire := fun eq => away R hR (eq ▸ hq)
        simp [v,writeBit,ne]
      have dr := compileHmrBlockedDrop_run C E ps qs drop order.2 v
        ((m.drop (measurementCount (hmrBlockedProgram ps))).drop
          (measurementCount (hmrPolarRelease keeper frozen fire true false))) cr vv
      have ports := (compileHmrBlocked_owned A B none _ ps zc.2.1).2
      have initialClean : ∀R∈ps,s.basis R.keeper=false := by
        intro R hR
        exact ready R.keeper (B.bounded (ports R hR (by simp))) (order.1 R hR)
      have restored : hmrClearKeepers ps v.basis=writeBit s.basis fire false := by
        rw [hmrClearKeepers_write ps u.basis fire false
          (fun R hR eq => away R hR (by simp [eq]))]
        exact congrArg (fun st => writeBit st fire false) (hmrClearKeepers_restore ps s.basis initialClean)
      refine ⟨?_,?_⟩
      · rw [HmrReverseFirePlan.program,run_append,run_take,zr.1,run_append,run_take,death,dr.1]
        exact congrArg (fun st => (⟨s.phase,st⟩ : State)) restored
      · simpa only [restored] using dr.2
    next invalid => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
