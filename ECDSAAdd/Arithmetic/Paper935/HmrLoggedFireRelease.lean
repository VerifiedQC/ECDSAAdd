import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFire

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual F16 output permits return of w1, then the equality ladder,
then fire itself. No release operation resets a wire. -/
theorem compileHmrFireLog_release (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    {eqLog fireLog : List Wire} (h : compileHmrFireLog A record offset zf frozen fire eqLog fireLog=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    let out := run (P.program zf frozen fire) m s
    C.release P.fireWork.toFinset out.basis=some P.equalityArena ∧
    P.equalityArena.release P.equalityWork.toFinset out.basis=some A ∧
    ∃ D,A.release {fire} out.basis=some D ∧ D.live=A.live.erase fire ∧ D.Ready out.basis := by
  have hc := compileHmrFireLog_contract A C record offset zf frozen fire P h
  have eqc := compileHmrEqualityLog_contract A P.equalityArena record offset P.equalityWork P.equality hc.2.1
  have runeq := compileHmrFireLog_run A C record offset zf frozen fire P h s m ready value
  dsimp only
  rw [runeq]
  let t := writeBit s.basis fire false
  have tr : A.Ready t := by
    intro q hq hn
    by_cases eq : q=fire
    · simp [t,writeBit,eq]
    · simpa [t,writeBit,eq] using ready q hq hn
  have er := (A.reserve_ready P.equalityArena P.equalityWork.toFinset t tr
    (A.checkBorrow_contract _ _ _ eqc.2.1).2.2).1
  have r1 := Arena.checkBorrow_return P.equalityArena C 1 P.fireWork hc.2.2.1 t er
  have r2 := Arena.checkBorrow_return A P.equalityArena (record.length-1) P.equalityWork eqc.2.1 t tr
  have owned : ({fire} : Finset Wire)⊆A.live := by
    intro q hq
    simp only [Finset.mem_singleton] at hq
    subst q
    exact hc.1 (by simp)
  have zero : ∀q∈({fire} : Finset Wire),t q=false := by
    intro q hq
    simp only [Finset.mem_singleton] at hq
    simp [t,writeBit,hq]
  obtain ⟨D,release⟩ := (A.release_success {fire} t).mpr ⟨owned,zero⟩
  refine ⟨r1,r2,D,release,?_,A.release_ready D {fire} t tr release⟩
  have r := release
  simp only [Arena.release,if_pos (And.intro owned zero),Option.some.injEq] at r
  cases r
  ext q
  simp [and_comm]

end ECDSAAdd.Arithmetic.Paper935
