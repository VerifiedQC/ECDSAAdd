import ECDSAAdd.Arithmetic.Paper935.HmrUnfreezeRelease
import ECDSAAdd.Arithmetic.Paper935.HmrFreezeRun

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrUnfreezeKeep_ready (A D : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreezeKeep A record offset frozen=some (D,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    D.Ready (run (P.program frozen record offset) m s).basis := by
  obtain ⟨C,compiled,_⟩ := compileHmrUnfreezeKeep_contract A D record offset frozen P h
  have hc := compileHmrUnfreeze_contract A C record offset frozen P compiled
  have eqc := compileHmrEquality_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have result := compileHmrUnfreezeKeep_mint A D record offset frozen P h s m ready
  have support : wires (recordToggle P.fire frozen record offset)⊆D.live := by
    apply (recordToggle_support P.fire frozen record offset).trans
    intro q hq
    rcases List.mem_cons.mp (List.mem_toFinset.mp hq) with eq | mem
    · exact eq ▸ result.2.1 hc.1
    · rcases List.mem_cons.mp mem with eq | mem
      · exact eq ▸ result.2.2
      · exact result.2.1 (eqc.1.1 (List.mem_toFinset.mpr mem))
  rw [HmrUnfreezePlan.program,run_append,run_take]
  exact D.run_ready _ _ _ result.1 support

/-- On the successful reverse lane, g=0 agrees with the entry frozen
flag. Actual R1 then establishes R13's negative-AND witness. -/
theorem compileHmrUnfreeze_fire_witness (A C : Arena) (record bits : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreeze A record offset frozen=some (C,P))
    (recordND : record.Nodup) (frozenAway : frozen∉record)
    (bitsAway : ∀q∈bits,q≠P.fire ∧ q≠frozen ∧ q∉record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (invariant : decide (regValue bits s.basis=0)=s.basis frozen) :
    let out := run (P.program frozen record offset) m s
    out.basis P.fire=(decide (regValue bits out.basis=0) && !out.basis frozen) := by
  have result := compileHmrUnfreeze_run A C record offset frozen P h recordND frozenAway s m ready
  have bitsEq : regValue bits (run (P.program frozen record offset) m s).basis=regValue bits s.basis := by
    apply regValue_congr
    intro q hq
    have away := bitsAway q hq
    exact result.2.2.2.2 q away.1 away.2.1 away.2.2
  dsimp only
  rw [result.2.1,result.2.2.1,bitsEq,invariant]
  cases s.basis frozen <;> cases decide (regValue record s.basis=offset) <;> rfl

end ECDSAAdd.Arithmetic.Paper935
