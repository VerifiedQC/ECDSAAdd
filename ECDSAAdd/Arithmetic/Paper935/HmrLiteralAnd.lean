import ECDSAAdd.Circuit.And

namespace ECDSAAdd.Arithmetic.Paper935

/-- Builder.and_compute with positive first control and selectable second
polarity, retaining the literal X sandwiches in the emitted program. -/
def hmrLiteralAnd (a b t : Wire) (positive : Bool) : Program :=
  (if positive then [] else [.X b]) ++ [.CCX a b t] ++
    (if positive then [] else [.X b])

def hmrLiteralRelease (a b t : Wire) (positive : Bool) : Program :=
  (if positive then [] else [.X b]) ++ [.measureX t [] [.CZ a b]] ++
    (if positive then [] else [.X b])

theorem hmrLiteralAnd_run (a b t : Wire) (positive : Bool)
    (distinct : [a,b,t].Nodup) (s : State) (m : List Bool) (zero : s.basis t=false) :
    run (hmrLiteralAnd a b t positive) m s=
      ⟨s.phase,writeBit s.basis t (s.basis a && (if positive then s.basis b else !s.basis b))⟩ := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  obtain ⟨⟨hab,hat⟩,hbt⟩ := distinct
  have hba := Ne.symm hab
  have hta := Ne.symm hat
  have htb := Ne.symm hbt
  cases positive <;> cases ha : s.basis a <;> cases hb : s.basis b <;>
    simp_all [hmrLiteralAnd,run,writeBit,Function.update]
  all_goals
    funext q
    by_cases hqb : q=b <;> by_cases hqt : q=t <;> simp_all [Function.update]

theorem hmrLiteralAnd_release (a b t : Wire) (positive : Bool)
    (distinct : [a,b,t].Nodup) (s : State) (m : List Bool) (zero : s.basis t=false) :
    run (hmrLiteralAnd a b t positive ++ hmrLiteralRelease a b t positive) m s=s := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  obtain ⟨⟨hab,hat⟩,hbt⟩ := distinct
  have hba := Ne.symm hab
  have hta := Ne.symm hat
  have htb := Ne.symm hbt
  cases positive <;> cases ha : s.basis a <;> cases hb : s.basis b <;> cases hm : m.head?.getD false <;>
    simp_all [hmrLiteralAnd,hmrLiteralRelease,run,measureAndCorrect,correct,writeBit,Function.update]
  all_goals
    change State.mk s.phase _=State.mk s.phase s.basis
    congr 1
    funext q
    by_cases hqb : q=b <;> by_cases hqt : q=t <;> simp_all [Function.update]


theorem hmrLiteralRelease_run (a b t : Wire) (positive : Bool)
    (distinct : [a,b,t].Nodup) (s : State) (m : List Bool)
    (value : s.basis t=(s.basis a && (if positive then s.basis b else !s.basis b))) :
    run (hmrLiteralRelease a b t positive) m s=
      ⟨s.phase,writeBit s.basis t false⟩ := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  obtain ⟨⟨hab,hat⟩,hbt⟩ := distinct
  have hba := Ne.symm hab
  have hta := Ne.symm hat
  have htb := Ne.symm hbt
  cases positive <;> cases ha : s.basis a <;> cases hb : s.basis b <;> cases hm : m.head?.getD false <;>
    simp_all [hmrLiteralRelease,run,measureAndCorrect,correct,writeBit,Function.update]
  all_goals
    funext q
    by_cases hqb : q=b <;> by_cases hqt : q=t <;> simp_all [Function.update]

end ECDSAAdd.Arithmetic.Paper935
