import ECDSAAdd.Arithmetic.Paper935.HmrUnfreezeCompiler
import ECDSAAdd.Arithmetic.Paper935.FreezeLatch

namespace ECDSAAdd.Arithmetic.Paper935

def HmrUnfreezePlan.program (P : HmrUnfreezePlan) (frozen : Wire) (record : List Wire) (offset : Nat) : Program :=
  P.mint frozen ++ recordToggle P.fire frozen record offset

theorem compileHmrUnfreeze_run (A C : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreeze A record offset frozen=some (C,P))
    (recordND : record.Nodup) (frozenAway : frozen∉record)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (P.program frozen record offset) m s
    let fired := decide (regValue record s.basis=offset) && s.basis frozen
    out.phase=s.phase ∧ out.basis P.fire=fired ∧
    out.basis frozen=(s.basis frozen ^^ fired) ∧
    regValue record out.basis=regValue record s.basis ^^^ (if fired then offset else 0) ∧
    ∀q,q≠P.fire → q≠frozen → q∉record → out.basis q=s.basis q := by
  have hc := compileHmrUnfreeze_contract A C record offset frozen P h
  have eqc := compileHmrEquality_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have ac : A.live⊆P.equalityArena.live := by
    rw [(A.borrowMany_live _ _ _ eqc.2.1).1]
    exact Finset.subset_union_left
  have fresh : P.fire∉A.live := fun mem =>
    (hmrBorrowPorts_contract P.equalityArena C 1 P.fireWork hc.2.2.1).2.2 (0 : Fin 1) (ac mem)
  have ne : P.fire≠frozen := fun eq => fresh (eq ▸ hc.1)
  have fireAway : P.fire∉record := fun mem => fresh (eqc.1.1 (List.mem_toFinset.mpr mem))
  let fired := decide (regValue record s.basis=offset) && s.basis frozen
  let u : State := ⟨s.phase,writeBit s.basis P.fire fired⟩
  have mint : run (P.mint frozen) m s=u := compileHmrUnfreeze_mint A C record offset frozen P h s m ready
  have toggle := recordToggle_run P.fire frozen record offset recordND ne fireAway frozenAway
    eqc.1.2.1 u (m.drop (measurementCount (P.mint frozen)))
  have uf : u.basis P.fire=fired := by simp [u,writeBit]
  have uz : u.basis frozen=s.basis frozen := by simp [u,writeBit,ne.symm]
  have rr : regValue record u.basis=regValue record s.basis :=
    regValue_congr record u.basis s.basis (by
      intro q hq
      have nq : q≠P.fire := fun eq => fireAway (eq ▸ hq)
      simp [u,writeBit,nq])
  dsimp only
  rw [HmrUnfreezePlan.program,run_append,run_take,mint]
  refine ⟨toggle.1,?_,?_,?_,?_⟩
  · exact toggle.2.1.trans uf
  · simpa only [uf,uz] using toggle.2.2.1
  · simpa only [uf,rr] using toggle.2.2.2.1
  · intro q hfire hfrozen hrecord
    rw [toggle.2.2.2.2 q hfrozen hrecord]
    simp [u,writeBit,hfire]

end ECDSAAdd.Arithmetic.Paper935
