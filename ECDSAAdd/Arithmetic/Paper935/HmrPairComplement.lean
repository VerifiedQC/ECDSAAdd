import ECDSAAdd.Arithmetic.Paper935.HmrHybridPair

namespace ECDSAAdd.Arithmetic.Paper935

/-- F4 complements both target rows before either addition. -/
def hmrPairComplement (cin : Wire) (b y : List Wire) : Program :=
  signComplement cin b ++ signComplement cin y

theorem hmrPairComplement_run (cin : Wire) (b y : List Wire) (nd : (cin::(b++y)).Nodup)
    (s : State) (m : List Bool) :
    let out := run (hmrPairComplement cin b y) m s
    out.phase=s.phase ∧ (∀q,q∉b++y → out.basis q=s.basis q) ∧
    regValue b out.basis=(if s.basis cin then 2^b.length-1-regValue b s.basis else regValue b s.basis) ∧
    regValue y out.basis=(if s.basis cin then 2^y.length-1-regValue y s.basis else regValue y s.basis) := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have cb : cin∉b := fun h => hn.1 (List.mem_append_left _ h)
  have cy : cin∉y := fun h => hn.1 (List.mem_append_right _ h)
  let u := run (signComplement cin b) m s
  have first := signComplement_correct cin b pair.1 cb s m
  have second := signComplement_correct cin y pair.2.1 cy u m
  have oldY : regValue y u.basis=regValue y s.basis := regValue_congr _ _ _
    (fun q hq => first.2.1 q (fun hb => List.disjoint_left.mp pair.2.2 hb hq))
  dsimp only
  rw [hmrPairComplement,run_append,run_take,(signComplement_counts cin b).2,List.drop_zero]
  refine ⟨second.1.trans first.1,?_,?_,?_⟩
  · intro q hq
    exact (second.2.1 q (fun hy => hq (List.mem_append_right _ hy))).trans
      (first.2.1 q (fun hb => hq (List.mem_append_left _ hb)))
  · rw [regValue_congr b _ u.basis (fun q hq => second.2.1 q (List.disjoint_left.mp pair.2.2 hq))]
    exact first.2.2
  · rw [second.2.2,oldY,first.2.1 cin cb]

theorem hmrPairComplement_ready (A : Arena) (cin : Wire) (b y : List Wire)
    (nd : (cin::(b++y)).Nodup) (owned : ∀q∈b++y,q∈A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    A.Ready (run (hmrPairComplement cin b y) m s).basis := by
  intro q bound absent
  rw [(hmrPairComplement_run cin b y nd s m).2.1 q (fun hq => absent (owned q hq))]
  exact ready q bound absent

theorem hmrPairComplement_measurements (cin : Wire) (b y : List Wire) :
    measurementCount (hmrPairComplement cin b y)=0 := by
  simp only [hmrPairComplement,measurementCount_append,(signComplement_counts cin b).2,
    (signComplement_counts cin y).2,Nat.add_zero]

end ECDSAAdd.Arithmetic.Paper935
