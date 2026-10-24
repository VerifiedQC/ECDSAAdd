import ECDSAAdd.Arithmetic.Registers
import ECDSAAdd.Circuit.And

namespace ECDSAAdd.Arithmetic.Paper935

def hmrPolarDress (a b : Wire) (pa pb : Bool) : Program :=
  (if pa then [] else [.X a]) ++ (if pb then [] else [.X b])

def hmrPolarAnd (a b t : Wire) (pa pb : Bool) : Program :=
  hmrPolarDress a b pa pb ++ [.CCX a b t] ++ hmrPolarDress a b pa pb

def hmrPolarRelease (a b t : Wire) (pa pb : Bool) : Program :=
  hmrPolarDress a b pa pb ++ [.measureX t [] [.CZ a b]] ++ hmrPolarDress a b pa pb

theorem hmrPolarAnd_run (a b t : Wire) (pa pb : Bool)
    (distinct : [a,b,t].Nodup) (s : State) (m : List Bool) (zero : s.basis t=false) :
    run (hmrPolarAnd a b t pa pb) m s=
      ⟨s.phase,writeBit s.basis t
        ((if pa then s.basis a else !s.basis a) && (if pb then s.basis b else !s.basis b))⟩ := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  obtain ⟨⟨hab,hat⟩,hbt⟩ := distinct
  have hba := Ne.symm hab
  have hta := Ne.symm hat
  have htb := Ne.symm hbt
  cases pa <;> cases pb <;> cases ha : s.basis a <;> cases hb : s.basis b <;>
    simp_all [hmrPolarAnd,hmrPolarDress,run,writeBit,Function.update]
  all_goals
    funext q
    by_cases hqa : q=a <;> by_cases hqb : q=b <;> by_cases hqt : q=t <;>
      simp_all [Function.update]

theorem hmrPolarRelease_run (a b t : Wire) (pa pb : Bool)
    (distinct : [a,b,t].Nodup) (s : State) (m : List Bool)
    (value : s.basis t=((if pa then s.basis a else !s.basis a) &&
      (if pb then s.basis b else !s.basis b))) :
    run (hmrPolarRelease a b t pa pb) m s=⟨s.phase,writeBit s.basis t false⟩ := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  obtain ⟨⟨hab,hat⟩,hbt⟩ := distinct
  have hba := Ne.symm hab
  have hta := Ne.symm hat
  have htb := Ne.symm hbt
  cases pa <;> cases pb <;> cases ha : s.basis a <;> cases hb : s.basis b <;>
    cases hm : m.head?.getD false <;>
    simp_all [hmrPolarRelease,hmrPolarDress,run,measureAndCorrect,correct,writeBit,Function.update]
  all_goals
    funext q
    by_cases hqa : q=a <;> by_cases hqb : q=b <;> by_cases hqt : q=t <;>
      simp_all [Function.update]



end ECDSAAdd.Arithmetic.Paper935
