import ECDSAAdd.Arithmetic.Paper935.HmrFreezeCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem Arena.run_ready (A : Arena) (p : Program) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (owned : wires p⊆A.live) : A.Ready (run p m s).basis := by
  intro q hq hn
  rw [run_preserves_outside p m s q (fun mem => hn (owned mem))]
  exact ready q hq hn

theorem HmrFreezePlan.Compiled.run_spec (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (offset : Nat)
    (compiled : P.Compiled A C bits frozen record offset) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let out := run (P.program frozen record offset) m s
    out.phase=s.phase ∧ out.basis P.fire=(decide (regValue bits s.basis=0) && !s.basis frozen) ∧
    out.basis frozen=(s.basis frozen || decide (regValue bits s.basis=0)) ∧
    regValue record out.basis=regValue record s.basis ^^^
      (if decide (regValue bits s.basis=0) && !s.basis frozen then offset else 0) ∧ C.Ready out.basis ∧ HmrKeeperValues P.zeroPlans out.basis ∧
      out.basis P.zeroKeeper=decide (regValue bits s.basis=0) := by
  have zc := compileHmrZero_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  let u := run (hmrBlockedProgram P.zeroPlans) m s
  let tape := m.drop (measurementCount (hmrBlockedProgram P.zeroPlans))
  have zr := compileHmrBlocked_run A P.zeroArena none (hmrChunks 16 bits) P.zeroPlans zc.2.1 s m ready
  have ur : P.zeroArena.Ready u.basis := by
    change P.zeroArena.Ready (run (hmrBlockedProgram P.zeroPlans) m s).basis
    rw [zr.1]
    exact zr.2.1
  have uphase : u.phase=s.phase := by
    change (run (hmrBlockedProgram P.zeroPlans) m s).phase=s.phase
    rw [zr.1]
  have bitsOwned : bits.toFinset⊆A.live := by
    intro q hq
    exact compiled.owned (List.mem_toFinset.mpr (List.mem_append_left _ (List.mem_toFinset.mp hq)))
  have metaOwned (q : Wire) (hq : q∈frozen::record) : q∈A.live :=
    compiled.owned (List.mem_toFinset.mpr (List.mem_append_right _ hq))
  have frame (q : Wire) (hq : q∈frozen::record) : u.basis q=s.basis q :=
    compileHmrBlocked_frame A P.zeroArena none _ P.zeroPlans zc.2.1 s m ready q (metaOwned q hq)
  have zero : u.basis P.zeroKeeper=decide (regValue bits s.basis=0) := compileHmrZero_value A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero bitsOwned s m ready
  have fireZero : u.basis P.fire=false := hmrBorrowPorts_clean P.zeroArena C 1 P.fireWork compiled.borrow u.basis ur 0
  obtain ⟨hz,nd⟩ := List.nodup_cons.mp compiled.controls
  obtain ⟨hf,nd⟩ := List.nodup_cons.mp nd
  obtain ⟨hr,recordND⟩ := List.nodup_cons.mp nd
  have zf : P.zeroKeeper≠frozen := fun eq => hz (by simp [eq])
  have rf : P.fire≠frozen := fun eq => hf (by simp [eq])
  have fr : frozen∉record := fun mem => hf (List.mem_cons_of_mem _ mem)
  have latch := freezeLatch_run P.zeroKeeper frozen P.fire record offset recordND zf rf hr fr compiled.fits u tape fireZero
  have recordEq : regValue record u.basis=regValue record s.basis :=
    regValue_congr record u.basis s.basis (fun q hq => frame q (List.mem_cons_of_mem _ hq))
  have ac := (compileHmrBlocked_owned A P.zeroArena none _ P.zeroPlans zc.2.1).1
  have bc : P.zeroArena.live⊆C.live := by
    rw [(P.zeroArena.borrowMany_live C 1 P.fireWork compiled.borrow).1]
    exact Finset.subset_union_left
  have zOwned := compileHmrZero_keeper_owned A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have fOwned := (hmrBorrowPorts_contract P.zeroArena C 1 P.fireWork compiled.borrow).2.1 (0 : Fin 1)
  have support : wires (freezeLatch P.zeroKeeper frozen P.fire record offset)⊆C.live := by
    apply (freezeLatch_support P.zeroKeeper frozen P.fire record offset).1.trans
    intro q hq
    rcases List.mem_cons.mp (List.mem_toFinset.mp hq) with eq | mem
    · exact eq ▸ bc zOwned
    · rcases List.mem_cons.mp mem with eq | mem
      · exact eq ▸ bc (ac (metaOwned frozen (by simp)))
      · rcases List.mem_cons.mp mem with eq | mem
        · exact eq ▸ fOwned
        · exact bc (ac (metaOwned q (List.mem_cons_of_mem _ mem)))
  have cr := (P.zeroArena.reserve_ready C P.fireWork.toFinset u.basis ur
    (P.zeroArena.borrowMany_contract C 1 P.fireWork compiled.borrow).2.2).1
  have values : HmrKeeperValues P.zeroPlans u.basis :=
    compileHmrBlocked_values A P.zeroArena none _ P.zeroPlans zc.2.1 s m ready
  have ports := (compileHmrBlocked_owned A P.zeroArena none _ P.zeroPlans zc.2.1).2
  have away (q : Wire) (hq : q∈frozen::record) :
      ∀R∈P.zeroPlans,q∉R.keeper::R.literals.map HmrLiteral.wire := by
    apply compileHmrBlocked_away A P.zeroArena none _ P.zeroPlans zc.2.1 q (metaOwned q hq)
    · rw [hmrChunks_flatten 16 bits (by decide)]
      intro mem
      exact Finset.disjoint_left.mp compiled.away (List.mem_toFinset.mpr mem)
        (List.mem_toFinset.mpr hq)
    · simp
  have kept : HmrKeeperValues P.zeroPlans
      (run (freezeLatch P.zeroKeeper frozen P.fire record offset) tape u).basis := by
    apply hmrKeeperValues_frame P.zeroPlans u.basis _ values
    intro R hR q hq
    have nofire : q≠P.fire := by
      intro eq
      have fresh := (hmrBorrowPorts_contract P.zeroArena C 1 P.fireWork compiled.borrow).2.2 (0 : Fin 1)
      apply fresh
      change P.fire∈P.zeroArena.live
      rw [← eq]
      exact ports R hR (List.mem_toFinset.mpr hq)
    have nofrozen : q≠frozen := fun eq => away frozen (by simp) R hR (eq ▸ hq)
    have norecord : q∉record := fun mem => away q (List.mem_cons_of_mem _ mem) R hR hq
    exact latch.2.2.2.2 q nofire nofrozen norecord
  dsimp only
  rw [HmrFreezePlan.program,run_append,run_take]
  refine ⟨latch.1.trans uphase,?_,?_,?_,C.run_ready _ u tape cr support,kept,?_⟩
  · simpa only [zero,frame frozen (by simp)] using latch.2.1
  · simpa only [zero,frame frozen (by simp)] using latch.2.2.1
  · simpa only [zero,frame frozen (by simp),recordEq] using latch.2.2.2.1

  · rw [latch.2.2.2.2 P.zeroKeeper (fun eq => hz (by simp [eq])) zf
      (fun mem => hz (by simp [mem]))]
    exact zero

end ECDSAAdd.Arithmetic.Paper935
