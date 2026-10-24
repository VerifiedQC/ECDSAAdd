import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeFrame
import ECDSAAdd.Arithmetic.Paper935.FreezePin
import ECDSAAdd.Arithmetic.Paper935.ZeroLatch

namespace ECDSAAdd.Arithmetic.Paper935

/-- The retained blocked test has one live keeper per block, not just one
for the complete test. F7 additionally retains its fire bit. -/
theorem HmrFreezePlan.Logged.census (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (offset : Nat)
    {logs : List (List Wire)} (compiled : P.Logged logs A C bits frozen record offset) :
    P.zeroArena.live.card=A.live.card+(hmrChunks 16 bits).length ∧
    C.live.card=A.live.card+(hmrChunks 16 bits).length+1 ∧
    C.live.card≤935 := by
  have zc := compileHmrZeroLog_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have zr := compileHmrBlockedLog_run A P.zeroArena none _ P.zeroPlans zc.2.1
    ⟨false,fun _ => false⟩ [] (by intro q hq hn; rfl)
  have fire := P.zeroArena.checkBorrow_card C 1 P.fireWork compiled.borrow
  exact ⟨zr.2.2,by omega,C.peak_bound⟩

/-- The arithmetic front has already produced next.g. The armed F7 test
updates the actual freeze latch and timestamp exactly as the independent
integer pinStep, including lanes that were already frozen. -/
theorem HmrFreezePlan.Logged.pin_armed (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (tmin t : Nat)
    {logs : List (List Wire)} (compiled : P.Logged logs A C bits frozen record (t+1-tmin))
    (armed : tmin≤t) (u : PinState) (valid : u.RecordValid tmin t)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (gValue : signedRegValue bits s.basis=(if u.frozen then u.rows else ECDSAAdd.Divsteps.zStep u.rows).g)
    (frozenValue : s.basis frozen=u.frozen) (recordValue : regValue record s.basis=u.offset) :
    let out := run (P.program frozen record (t+1-tmin)) m s
    out.basis frozen=(pinStep tmin t u).frozen ∧
      regValue record out.basis=(pinStep tmin t u).offset := by
  have spec := compiled.run_spec P A C bits frozen record (t+1-tmin) s m ready
  have zero : (regValue bits s.basis=0) ↔
      (if u.frozen then u.rows else ECDSAAdd.Divsteps.zStep u.rows).g=0 := by
    rw [←gValue]
    exact (signedRegValue_zero_iff bits s.basis).symm
  dsimp only
  rw [spec.2.2.1,spec.2.2.2.1,frozenValue,recordValue]
  cases hf : u.frozen with
  | true => simp [pinStep,hf]
  | false =>
    have unset : u.offset=0 := by
      have h := valid.1
      simp only [hf,Bool.false_eq_true,false_iff] at h
      omega
    have z : (regValue bits s.basis=0) ↔ (ECDSAAdd.Divsteps.zStep u.rows).g=0 := by
      simpa only [hf,Bool.false_eq_true,ite_false] using zero
    by_cases hz : (ECDSAAdd.Divsteps.zStep u.rows).g=0
    · have hb := z.mpr hz
      simp [pinStep,hf,armed,hz,hb,unset]
    · have hb : regValue bits s.basis≠0 := fun h => hz (z.mp h)
      simp [pinStep,hf,armed,hz,hb,unset]

/-- Public scheduling skips F7 before Tmin; no zero-test plan is executed. -/
def hmrFreezeScheduled (P : HmrFreezePlan) (tmin t : Nat)
    (frozen : Wire) (record : List Wire) : Program :=
  if tmin≤t then P.program frozen record (t+1-tmin) else []

theorem HmrFreezePlan.Logged.pin_scheduled (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (tmin t : Nat)
    {logs : List (List Wire)}
    (compiled : tmin≤t → P.Logged logs A C bits frozen record (t+1-tmin))
    (u : PinState) (valid : u.RecordValid tmin t)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (gValue : signedRegValue bits s.basis=(if u.frozen then u.rows else ECDSAAdd.Divsteps.zStep u.rows).g)
    (frozenValue : s.basis frozen=u.frozen) (recordValue : regValue record s.basis=u.offset) :
    let out := run (hmrFreezeScheduled P tmin t frozen record) m s
    out.basis frozen=(pinStep tmin t u).frozen ∧
      regValue record out.basis=(pinStep tmin t u).offset := by
  by_cases armed : tmin≤t
  · simpa only [hmrFreezeScheduled,if_pos armed] using
      (compiled armed).pin_armed P A C bits frozen record tmin t armed u valid s m ready
        gValue frozenValue recordValue
  · have unset : u.offset=0 := by have bound := valid.2; omega
    have unfr : u.frozen=false := by
      cases hf : u.frozen
      · rfl
      · have positive := valid.1.mp hf; omega
    simpa [hmrFreezeScheduled,armed,run,pinStep,unfr,unset] using And.intro frozenValue recordValue

end ECDSAAdd.Arithmetic.Paper935
