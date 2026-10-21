import ECDSAAdd.Arithmetic.Paper935.HmrFreezeEnd
import ECDSAAdd.Arithmetic.Paper935.HmrFireWitness

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrFreezePlan.Compiled.fire_away (P : HmrFreezePlan) (A C : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat)
    (compiled : P.Compiled A C bits frozen record offset) :
    ∀R∈P.zeroPlans,P.fire∉R.keeper::R.literals.map HmrLiteral.wire := by
  have zc := compileHmrZero_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have ports := (compileHmrBlocked_owned A P.zeroArena none _ P.zeroPlans zc.2.1).2
  have fresh := (hmrBorrowPorts_contract P.zeroArena C 1 P.fireWork compiled.borrow).2.2 (0 : Fin 1)
  intro R hR mem
  exact fresh (ports R hR (List.mem_toFinset.mpr mem))

/-- Compose source F7 and F16 around a body that preserves their live
witness ports. The body's own action and phase are retained. -/
theorem HmrFreezePlan.Compiled.cycle (P : HmrFreezePlan) (A C D : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat)
    (compiled : P.Compiled A C bits frozen record offset)
    (Q : HmrFreezeEndPlan)
    (endCompiled : compileHmrFreezeEnd C record offset P.zeroKeeper frozen P.fire P.zeroPlans=some (D,Q))
    (body : Program) (owned : wires body⊆C.live)
    (frame : ∀R∈P.zeroPlans,∀q∈R.keeper::R.literals.map HmrLiteral.wire,q∉wires body)
    (metaFrame : ∀q∈P.fire::P.zeroKeeper::frozen::record,q∉wires body)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (past : regValue record s.basis<offset)
    (unfrozen : s.basis frozen=false → regValue record s.basis=0) :
    let first := run (P.program frozen record offset) m s
    let tailTape := m.drop (measurementCount (P.program frozen record offset))
    let mid := run body tailTape first
    run (P.program frozen record offset ++ body ++ Q.program P.zeroKeeper frozen P.fire) m s=
      ⟨mid.phase,hmrClearKeepers P.zeroPlans (writeBit mid.basis P.fire false)⟩ ∧
      D.Ready (hmrClearKeepers P.zeroPlans (writeBit mid.basis P.fire false)) := by
  dsimp only
  let first := run (P.program frozen record offset) m s
  let tailTape := m.drop (measurementCount (P.program frozen record offset))
  let mid := run body tailTape first
  have entry := compiled.run_spec P A C bits frozen record offset s m ready
  have mr : C.Ready mid.basis := C.run_ready body first tailTape entry.2.2.2.2.1 owned
  have mv : HmrKeeperValues P.zeroPlans mid.basis := by
    apply hmrKeeperValues_frame P.zeroPlans first.basis mid.basis entry.2.2.2.2.2.1
    intro R hR q hq
    exact run_preserves_outside body tailTape first q (frame R hR q hq)
  have keep (q : Wire) (hq : q∈P.fire::P.zeroKeeper::frozen::record) : mid.basis q=first.basis q :=
    run_preserves_outside body tailTape first q (metaFrame q hq)
  have recordEq : regValue record mid.basis=regValue record first.basis :=
    regValue_congr record mid.basis first.basis (fun q hq => keep q (by simp [hq]))
  have witness := compiled.fire_witness P A C bits frozen record offset s m ready past unfrozen
  have fireValue : mid.basis P.fire=((decide (regValue record mid.basis=offset) &&
      mid.basis P.zeroKeeper) && mid.basis frozen) := by
    rw [keep P.fire (by simp),keep P.zeroKeeper (by simp),keep frozen (by simp),recordEq]
    exact witness
  have zc := compileHmrZero_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have ordered := (compileHmrBlocked_order A P.zeroArena none _ P.zeroPlans zc.2.1).2
  have result := compileHmrFreezeEnd_run C D record offset P.zeroKeeper frozen P.fire
    P.zeroPlans Q endCompiled ordered (compiled.fire_away P A C bits frozen record offset)
    mid (tailTape.drop (measurementCount body)) mr mv fireValue
  refine ⟨?_,result.2⟩
  rw [List.append_assoc,run_append,run_take,run_append,run_take]
  exact result.1

end ECDSAAdd.Arithmetic.Paper935
