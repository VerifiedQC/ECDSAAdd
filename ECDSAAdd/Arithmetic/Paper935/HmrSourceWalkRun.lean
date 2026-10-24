import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Forward correctness of the actual concatenated logged program. Per-step
acceptance is obtained by destructing the compiler; the induction invariant
is the independent pinWalk encoding, with Inv and RecordValid supplied by
their mathematical induction theorems. -/
theorem compileHmrSourceWalk_run (counter : List Wire) (width tmin : Nat)
    (metadata : Option HmrFreezeMetadata)
    (A : Arena) (bank : WindowBank) (record : List Wire) (t : Nat)
    (logs : List HmrSourceWalkStepLog) (P : HmrSourceWalkPlan)
    (checked : compileHmrSourceWalk counter width tmin metadata A bank record t logs=some P)
    (p x : Int) (odd : p%2=1) (s : State) (m : List Bool)
    (encoding : HmrSourceEncoding A bank counter metadata s (pinWalk tmin p x t))
    (numeric : P.Numerical counter tmin p x record t logs s m) :
    HmrSourceEncoding P.outputArena P.bank counter P.metadata
      (run (P.program counter tmin record t) m s) (pinWalk tmin p x (t+logs.length)) := by
  induction logs generalizing metadata A bank record t P s m with
  | nil =>
    simp only [compileHmrSourceWalk,Option.some.injEq] at checked
    subst P
    simpa only [HmrSourceWalkPlan.outputArena,HmrSourceWalkPlan.bank,HmrSourceWalkPlan.metadata,HmrSourceWalkPlan.program,
      run,List.length_nil,Nat.add_zero] using encoding
  | cons spec rest ih =>
    simp only [compileHmrSourceWalk] at checked
    obtain ⟨head,headChecked,checked⟩ := Option.bind_eq_some_iff.mp checked
    obtain ⟨tail,tailChecked,checked⟩ := Option.bind_eq_some_iff.mp checked
    cases checked
    simp only [HmrSourceWalkPlan.Numerical] at numeric
    obtain ⟨prefit,exitfit,zfit,capacity,tailNumeric⟩ := numeric
    have next := compileHmrSourceStepLog_run A bank spec.fgWidth spec.vWidth spec.exitWidth counter record
      width tmin t spec.need metadata spec.log head headChecked p (pinWalk tmin p x t) (pinWalk_record tmin p x t)
      (pinWalk_inv tmin p x odd t) odd (pinWalk_frozen_zero tmin p x t) s m encoding prefit exitfit zfit capacity
    have nextEncoding : HmrSourceEncoding head.outputArena head.bank counter head.metadata
        (run (head.program counter record tmin t) m s) (pinWalk tmin p x (t+1)) := next.1
    have result := ih head.metadata head.outputArena head.bank (head.record record) (t+1) tail tailChecked
      (run (head.program counter record tmin t) m s)
      (m.drop (measurementCount (head.program counter record tmin t))) nextEncoding tailNumeric
    change HmrSourceEncoding tail.outputArena tail.bank counter tail.metadata
      (run ((head.program counter record tmin t)++
        tail.program counter tmin (head.record record) (t+1)) m s)
      (pinWalk tmin p x (t+(spec::rest).length))
    rw [run_append,run_take]
    simpa only [List.length_cons,Nat.add_succ,Nat.succ_add] using result

end ECDSAAdd.Arithmetic.Paper935
