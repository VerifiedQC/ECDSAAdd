import ECDSAAdd.Arithmetic.Paper935.HmrUnfreezeWitness
import ECDSAAdd.Arithmetic.Paper935.HmrReverseFire

namespace ECDSAAdd.Arithmetic.Paper935

/-- R1/R13 composition: the successful-lane zero/frozen invariant supplies
the fireR witness, and an intervening body preserves witness values. -/
theorem hmrUnfreeze_cycle (A B C : Arena) (record bits : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan) (Q : HmrReverseFirePlan)
    (firstCompiled : compileHmrUnfreezeKeep A record offset frozen=some (B,P))
    (lastCompiled : compileHmrReverseFire B bits frozen P.fire=some (C,Q))
    (recordND : record.Nodup) (frozenAway : frozen∉record)
    (bitsAway : ∀q∈bits,q≠P.fire ∧ q≠frozen ∧ q∉record)
    (s : State) (m : List Bool)
    (body : Program) (owned : wires body⊆B.live)
    (frame : ∀q∈P.fire::frozen::bits,(run body (m.drop (measurementCount (P.program frozen record offset)))
        (run (P.program frozen record offset) m s)).basis q=
        (run (P.program frozen record offset) m s).basis q)
    (ready : A.Ready s.basis)
    (invariant : decide (regValue bits s.basis=0)=s.basis frozen) :
    let first := run (P.program frozen record offset) m s
    let tailTape := m.drop (measurementCount (P.program frozen record offset))
    let mid := run body tailTape first
    run (P.program frozen record offset ++ body ++ Q.program frozen P.fire) m s=
      ⟨mid.phase,writeBit mid.basis P.fire false⟩ ∧
      C.Ready (writeBit mid.basis P.fire false) := by
  dsimp only
  obtain ⟨D,compiled,_⟩ := compileHmrUnfreezeKeep_contract A B record offset frozen P firstCompiled
  let first := run (P.program frozen record offset) m s
  let tailTape := m.drop (measurementCount (P.program frozen record offset))
  let mid := run body tailTape first
  have entry := compileHmrUnfreezeKeep_ready A B record offset frozen P firstCompiled s m ready
  have mr : B.Ready mid.basis := B.run_ready body first tailTape entry owned
  have witness := compileHmrUnfreeze_fire_witness A D record bits offset frozen P compiled
    recordND frozenAway bitsAway s m ready invariant
  have keep (q : Wire) (hq : q∈P.fire::frozen::bits) : mid.basis q=first.basis q :=
    frame q hq
  have bitsEq : regValue bits mid.basis=regValue bits first.basis :=
    regValue_congr bits mid.basis first.basis (fun q hq => keep q (by simp [hq]))
  have fireValue : mid.basis P.fire=(decide (regValue bits mid.basis=0) && !mid.basis frozen) := by
    rw [keep P.fire (by simp),keep frozen (by simp),bitsEq]
    exact witness
  have result := compileHmrReverseFire_run B C bits frozen P.fire Q lastCompiled
    mid (tailTape.drop (measurementCount body)) mr fireValue
  refine ⟨?_,result.2⟩
  rw [List.append_assoc,run_append,run_take,run_append,run_take]
  exact result.1

end ECDSAAdd.Arithmetic.Paper935
