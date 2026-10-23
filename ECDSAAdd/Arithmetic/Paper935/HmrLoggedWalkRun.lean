import ECDSAAdd.Arithmetic.Paper935.HmrLoggedWalkCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Forward correctness of the actual concatenated logged program. Per-step
acceptance is obtained by destructing the compiler; the induction invariant
is the independent pinWalk encoding, with Inv and RecordValid supplied by
their mathematical induction theorems. -/
theorem compileHmrLoggedWalk_run (frozen : Wire) (counter timestamp : List Wire) (tmin : Nat)
    (A : Arena) (bank : WindowBank) (record : List Wire) (t : Nat)
    (logs : List HmrWalkStepLog) (P : HmrLoggedWalkPlan)
    (checked : compileHmrLoggedWalk frozen counter timestamp tmin A bank record t logs=some P)
    (p x : Int) (odd : p%2=1) (s : State) (m : List Bool)
    (encoding : HmrPinEncoding A bank frozen counter timestamp s (pinWalk tmin p x t))
    (numeric : P.Numerical frozen counter timestamp tmin p x record t logs s m) :
    HmrPinEncoding P.outputArena P.bank frozen counter timestamp
      (run (P.program frozen counter timestamp tmin record t) m s) (pinWalk tmin p x (t+logs.length)) := by
  induction logs generalizing A bank record t P s m with
  | nil =>
    simp only [compileHmrLoggedWalk,Option.some.injEq] at checked
    subst P
    simpa only [HmrLoggedWalkPlan.outputArena,HmrLoggedWalkPlan.bank,HmrLoggedWalkPlan.program,
      run,List.length_nil,Nat.add_zero] using encoding
  | cons spec rest ih =>
    simp only [compileHmrLoggedWalk] at checked
    obtain ⟨head,headChecked,checked⟩ := Option.bind_eq_some_iff.mp checked
    obtain ⟨tail,tailChecked,checked⟩ := Option.bind_eq_some_iff.mp checked
    cases checked
    simp only [HmrLoggedWalkPlan.Numerical] at numeric
    obtain ⟨prefit,exitfit,zfit,capacity,tailNumeric⟩ := numeric
    have next := compileHmrScheduledStepLog_run A bank spec.fgWidth spec.vWidth spec.exitWidth frozen counter timestamp record
      tmin t spec.need spec.log head headChecked p (pinWalk tmin p x t) (pinWalk_record tmin p x t)
      (pinWalk_inv tmin p x odd t) odd (pinWalk_frozen_zero tmin p x t) s m encoding prefit exitfit zfit capacity
    have nextEncoding : HmrPinEncoding head.outputArena head.bank frozen counter timestamp
        (run (head.program frozen counter timestamp record tmin t) m s) (pinWalk tmin p x (t+1)) := next.1
    have result := ih head.outputArena head.bank (head.record record) (t+1) tail tailChecked
      (run (head.program frozen counter timestamp record tmin t) m s)
      (m.drop (measurementCount (head.program frozen counter timestamp record tmin t))) nextEncoding tailNumeric
    change HmrPinEncoding tail.outputArena tail.bank frozen counter timestamp
      (run ((head.program frozen counter timestamp record tmin t)++
        tail.program frozen counter timestamp tmin (head.record record) (t+1)) m s)
      (pinWalk tmin p x (t+(spec::rest).length))
    rw [run_append,run_take]
    simpa only [List.length_cons,Nat.add_succ,Nat.succ_add] using result

end ECDSAAdd.Arithmetic.Paper935
