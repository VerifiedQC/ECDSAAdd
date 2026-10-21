import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4
import ECDSAAdd.Arithmetic.Paper935.HmrHybridPairCoreInverse
import ECDSAAdd.Arithmetic.Paper935.HmrMeasuredEnvelope

namespace ECDSAAdd.Arithmetic.Paper935

/-- Literal R14: one u mint, second/first subtraction, second/first
complement, then a single u retirement. -/
def hmrHybridF4Inverse (swap control cin carry : Wire) (a b x y wa wb : List Wire) : Program :=
  hmrMeasuredEnvelope swap control cin (hmrHybridPairCoreInverse control cin carry a b x y wa wb)

theorem hmrHybridF4_roundtrip (A B C : Arena) (swap control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (nd : (swap::control::cin::carry::((a++x)++(b++y))).Nodup)
    (apart : (a++b).Disjoint (x++y)) (s : State) (m n : List Bool)
    (ready : A.Ready s.basis) (zero : s.basis carry=false) (clean : s.basis cin=false) :
    run (hmrHybridF4Inverse swap control cin carry a b x y wa wb) n
      (run (hmrHybridF4 swap control cin carry a b x y wa wb) m s)=s := by
  have owned := (compileHmrHybridCin_contract A B control cin carry a b wa first).2.1
  have hn := List.nodup_cons.mp nd
  have hc := List.nodup_cons.mp hn.2
  have hu := List.nodup_cons.mp hc.2
  have qu : swap≠cin := fun eq => hn.1 (by simp [eq])
  have cu : control≠cin := fun eq => hc.1 (by simp [eq])
  have qc : swap≠control := fun eq => hn.1 (by simp [eq])
  have ku : carry≠cin := fun eq => hu.1 (by simp [←eq])
  have localND : [swap,control,cin].Nodup := by simp [qc,qu,cu]
  let t : State := ⟨s.phase,writeBit s.basis cin (s.basis swap && s.basis control)⟩
  have tReady : A.Ready t.basis := by
    intro q bound absent
    have ne : q≠cin := fun eq => absent (eq ▸ owned)
    simpa only [t,writeBit,Function.update_of_ne ne] using ready q bound absent
  have tZero : t.basis carry=false := by simpa [t,writeBit,ku] using zero
  have tFlag : t.basis cin=(s.basis swap && t.basis control) := by simp [t,writeBit,cu]
  have core := hmrHybridPairCore_run A B C control cin carry a b x y wa wb first second hn.2 apart
    (s.basis swap) t m tReady tZero tFlag
  have smallND : (cin::carry::(b++y)).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have bound := List.nodup_iff_count.mp nd q
    simp only [List.count_cons,List.count_append] at bound ⊢
    omega
  change run (hmrMeasuredEnvelope swap control cin (hmrHybridPairCoreInverse control cin carry a b x y wa wb)) n
    (run (hmrMeasuredEnvelope swap control cin (hmrHybridPairCore control cin carry a b x y wa wb)) m s)=s
  apply hmrMeasuredEnvelope_roundtrip swap control cin _ _ localND s m n clean
  · dsimp only
    intro q hq
    apply core.2.2.1 q
    have sep := (List.nodup_append'.mp
      (show ((swap::control::cin::carry::(a++x))++(b++y)).Nodup from nd)).2.2
    apply List.disjoint_left.mp sep
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl <;> simp
  · exact hmrHybridPairCore_roundtrip A B C control cin carry a b x y wa wb first second smallND t m n tReady tZero

end ECDSAAdd.Arithmetic.Paper935
