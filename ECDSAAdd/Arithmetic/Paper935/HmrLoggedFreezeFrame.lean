import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source F7 preserves every incoming owned port except the freeze latch and
its timestamp register. Its zero-test keepers and fire bit are newly borrowed. -/
theorem HmrFreezePlan.Logged.frame (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (offset : Nat)
    {logs : List (List Wire)} (compiled : P.Logged logs A C bits frozen record offset)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (q : Wire) (owned : q∈A.live) (notFrozen : q≠frozen) (notRecord : q∉record) :
    (run (P.program frozen record offset) m s).basis q=s.basis q := by
  have zc := compileHmrZeroLog_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper compiled.zero
  have ac := (compileHmrBlockedLog_owned A P.zeroArena none _ P.zeroPlans zc.2.1).1
  let u := run (hmrBlockedProgram P.zeroPlans) m s
  let tape := m.drop (measurementCount (hmrBlockedProgram P.zeroPlans))
  have zr := compileHmrBlockedLog_run A P.zeroArena none _ P.zeroPlans zc.2.1 s m ready
  have ur : P.zeroArena.Ready u.basis := by
    change P.zeroArena.Ready (run (hmrBlockedProgram P.zeroPlans) m s).basis
    rw [zr.1]
    exact zr.2.1
  have clean := hmrLoggedPorts_clean P.zeroArena C 1 P.fireWork compiled.borrow u.basis ur 0
  obtain ⟨hz,nd⟩ := List.nodup_cons.mp compiled.controls
  obtain ⟨hf,nd⟩ := List.nodup_cons.mp nd
  obtain ⟨hr,recordND⟩ := List.nodup_cons.mp nd
  have latch := freezeLatch_run P.zeroKeeper frozen P.fire record offset recordND
    (fun eq => hz (by simp [eq])) (fun eq => hf (by simp [eq])) hr
    (fun mem => hf (List.mem_cons_of_mem _ mem)) compiled.fits u tape clean
  have notFire : q≠P.fire := by
    intro eq
    apply (hmrLoggedPorts_contract P.zeroArena C 1 P.fireWork compiled.borrow).2.2 (0 : Fin 1)
    change P.fire∈P.zeroArena.live
    exact eq ▸ ac owned
  rw [HmrFreezePlan.program,run_append,run_take]
  exact (latch.2.2.2.2 q notFire notFrozen notRecord).trans
    (compileHmrBlockedLog_frame A P.zeroArena none _ P.zeroPlans zc.2.1 s m ready q owned)

end ECDSAAdd.Arithmetic.Paper935
