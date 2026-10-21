import ECDSAAdd.Arithmetic.Paper935.HmrShiftFrame

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrShiftUpArmed_value (frozen sign low top : Wire) (tail lo : List Wire)
    (view : low::tail=lo++[top]) (nd : (frozen::sign::low::tail).Nodup)
    (s : State) (m : List Bool)
    (lower : s.basis frozen=false → -((2^lo.length:Nat):Int) ≤ signedRegValue ((low::tail)++[sign]) s.basis)
    (upper : s.basis frozen=false → signedRegValue ((low::tail)++[sign]) s.basis < ((2^lo.length:Nat):Int)) :
    signedRegValue ((low::tail)++[sign]) (run (hmrShiftUpArmed frozen sign (low::tail)) m s).basis=
      if s.basis frozen then signedRegValue ((low::tail)++[sign]) s.basis
      else 2*signedRegValue ((low::tail)++[sign]) s.basis := by
  have away : frozen∉(low::tail)++[sign] := by
    have h := (List.nodup_cons.mp nd).1
    intro hp
    apply h
    simpa only [List.mem_append,List.mem_singleton,List.mem_cons,List.not_mem_nil,or_false,false_or,or_comm,or_left_comm,or_assoc] using hp
  have valueKeep (u : State) : signedRegValue ((low::tail)++[sign]) (run [.X frozen] m u).basis=
      signedRegValue ((low::tail)++[sign]) u.basis := by
    unfold signedRegValue
    have eq : regValue ((low::tail)++[sign]) (run [.X frozen] m u).basis=
        regValue ((low::tail)++[sign]) u.basis := regValue_congr _ _ _ (by
      intro q hq
      have ne : q≠frozen := fun eq => away (eq ▸ hq)
      simp only [run,writeBit,Function.update_of_ne ne])
    rw [eq]
  let t := run [.X frozen] m s
  have bit : t.basis frozen= !s.basis frozen := by simp [t,run,writeBit]
  have before : signedRegValue ((low::tail)++[sign]) t.basis=
      signedRegValue ((low::tail)++[sign]) s.basis := valueKeep s
  have loT : t.basis frozen=true → -((2^lo.length:Nat):Int) ≤ signedRegValue ((low::tail)++[sign]) t.basis := by
    intro h; rw [before]; apply lower
    rw [bit] at h
    cases hc : s.basis frozen <;> simp_all
  have hiT : t.basis frozen=true → signedRegValue ((low::tail)++[sign]) t.basis < ((2^lo.length:Nat):Int) := by
    intro h; rw [before]; apply upper
    rw [bit] at h
    cases hc : s.basis frozen <;> simp_all
  rw [hmrShiftUpArmed,run_append,run_take,run_append,run_take]
  simp only [measurementCount_append,show measurementCount [.X frozen]=0 from rfl,
    (hmrShift_counts sign frozen (low::tail)).2.2.2.2.2.1,Nat.zero_add,List.drop_zero]
  rw [valueKeep]
  change signedRegValue ((low::tail)++[sign]) (run (hmrShiftUp frozen sign (low::tail)) m t).basis=_
  rw [hmrShiftUp_value frozen sign low top tail lo view nd t m loT hiT,bit,before]
  cases s.basis frozen <;> rfl

end ECDSAAdd.Arithmetic.Paper935
