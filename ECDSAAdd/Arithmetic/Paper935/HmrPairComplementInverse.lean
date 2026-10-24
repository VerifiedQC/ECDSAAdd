import ECDSAAdd.Arithmetic.Paper935.HmrPairComplement

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrSignComplement_twice (control : Wire) (qs : List Wire) (nd : qs.Nodup)
    (away : control∉qs) (s : State) (m n : List Bool) :
    run (signComplement control qs) n (run (signComplement control qs) m s)=s := by
  let u := run (signComplement control qs) m s
  let out := run (signComplement control qs) n u
  have first := signComplement_correct control qs nd away s m
  have second := signComplement_correct control qs nd away u n
  have value : regValue qs out.basis=regValue qs s.basis := by
    rw [second.2.2,first.2.1 control away,first.2.2]
    have bound := regValue_lt qs s.basis
    cases flag : s.basis control <;> simp
    omega
  have phase : out.phase=s.phase := second.1.trans first.1
  have basis : out.basis=s.basis := by
    funext q
    by_cases hq : q∈qs
    · exact (regValue_eq_iff qs _ _).mp value q hq
    · exact (second.2.1 q hq).trans (first.2.1 q hq)
  change out=s
  cases eq : out with
  | mk p bs => rw [eq] at phase basis; cases s; simp_all

/-- R14 complements the second target before the first, after both
subtractions have finished. -/
def hmrPairUncomplement (cin : Wire) (b y : List Wire) : Program :=
  signComplement cin y ++ signComplement cin b

theorem hmrPairComplement_roundtrip (cin : Wire) (b y : List Wire) (nd : (cin::(b++y)).Nodup)
    (s : State) (m n : List Bool) :
    run (hmrPairUncomplement cin b y) n (run (hmrPairComplement cin b y) m s)=s := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have cb : cin∉b := fun h => hn.1 (List.mem_append_left _ h)
  have cy : cin∉y := fun h => hn.1 (List.mem_append_right _ h)
  simp only [hmrPairUncomplement,hmrPairComplement,run_append,
    (signComplement_counts cin b).2,(signComplement_counts cin y).2,List.drop_zero]
  rw [hmrSignComplement_twice cin y pair.2.1 cy,hmrSignComplement_twice cin b pair.1 cb]

end ECDSAAdd.Arithmetic.Paper935
