import ECDSAAdd.Arithmetic.Paper935.HmrUnfreezeRun
import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrUnfreezeKeep (A : Arena) (record : List Wire) (offset : Nat) (frozen : Wire) :
    Option (Arena × HmrUnfreezePlan) := do
  let (C,P) ← compileHmrUnfreeze A record offset frozen
  let D ← C.release P.equalityWork.toFinset (fun _ => false)
  pure (D,P)

theorem compileHmrUnfreezeKeep_contract (A D : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreezeKeep A record offset frozen=some (D,P)) :
    ∃C,compileHmrUnfreeze A record offset frozen=some (C,P) ∧
      C.release P.equalityWork.toFinset (fun _ => false)=some D := by
  unfold compileHmrUnfreezeKeep at h
  obtain ⟨⟨C,Q⟩,compiled,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨E,released,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨C,compiled,released⟩

/-- The comparison ladder is returned immediately after minting fireR,
while fireR and every pre-existing live wire remain owned. -/
theorem compileHmrUnfreezeKeep_mint (A D : Arena) (record : List Wire) (offset : Nat)
    (frozen : Wire) (P : HmrUnfreezePlan)
    (h : compileHmrUnfreezeKeep A record offset frozen=some (D,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (P.mint frozen) m s
    D.Ready out.basis ∧ A.live⊆D.live ∧ P.fire∈D.live := by
  obtain ⟨C,compiled,released⟩ := compileHmrUnfreezeKeep_contract A D record offset frozen P h
  have hc := compileHmrUnfreeze_contract A C record offset frozen P compiled
  have eqc := compileHmrEquality_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have eb := A.borrowMany_contract _ _ _ eqc.2.1
  have fb := P.equalityArena.borrowMany_contract _ _ _ hc.2.2.1
  have eqLive := (A.borrowMany_live _ _ _ eqc.2.1).1
  have fireLive := (P.equalityArena.borrowMany_live _ _ _ hc.2.2.1).1
  have er := A.reserve_ready P.equalityArena P.equalityWork.toFinset s.basis ready eb.2.2
  have cr := (P.equalityArena.reserve_ready C P.fireWork.toFinset s.basis er.1 fb.2.2).1
  have port := hmrBorrowPorts_contract P.equalityArena C 1 P.fireWork hc.2.2.1
  have neq (q : Wire) (hq : q∈P.equalityWork.toFinset) : q≠P.fire := by
    intro eq
    apply port.2.2 (0 : Fin 1)
    change P.fire∈P.equalityArena.live
    rw [←eq,eqLive]
    exact Finset.mem_union_right _ hq
  let out := run (P.mint frozen) m s
  have runeq := compileHmrUnfreeze_mint A C record offset frozen P compiled s m ready
  have clean : ∀q∈P.equalityWork.toFinset,out.basis q=false := by
    intro q hq
    change (run (P.mint frozen) m s).basis q=false
    rw [runeq]
    simpa [writeBit,neq q hq] using er.2 q hq
  have actual : C.release P.equalityWork.toFinset out.basis=some D := by
    rw [C.release_clean_eq _ _ clean]
    exact released
  have outReady : C.Ready out.basis := by
    intro q hq hn
    have ne : q≠P.fire := fun eq => hn (eq ▸ port.2.1 (0 : Fin 1))
    change (run (P.mint frozen) m s).basis q=false
    rw [runeq]
    simpa [writeBit,ne] using cr q hq hn
  have dl : D.live=C.live\P.equalityWork.toFinset := by
    have rr := released
    unfold Arena.release at rr
    split at rr
    next valid => cases rr; rfl
    next invalid => simp at rr
  have apart := ((A.reserve_success P.equalityWork.toFinset).mp ⟨P.equalityArena,eb.2.2⟩).2
  refine ⟨C.release_ready D _ _ outReady actual,?_,?_⟩
  · intro q hq
    rw [dl,fireLive,eqLive]
    exact Finset.mem_sdiff.mpr ⟨Finset.mem_union_left _ (Finset.mem_union_left _ hq),
      fun mem => Finset.disjoint_left.mp apart hq mem⟩
  · rw [dl]
    exact Finset.mem_sdiff.mpr ⟨port.2.1 (0 : Fin 1),fun mem => neq P.fire mem rfl⟩

end ECDSAAdd.Arithmetic.Paper935
