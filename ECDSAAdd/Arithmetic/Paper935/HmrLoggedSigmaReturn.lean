import ECDSAAdd.Arithmetic.Paper935.HmrLoggedSigma
import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrSigmaLog_run (A B : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire) (h : compileHmrSigmaLog A armed frozen fire fv1 sigma work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis sigma=(if armed then s.basis fv1 && !(s.basis frozen && !s.basis fire)
      else s.basis fv1)) :
    let out := run (hmrSigmaDeath armed frozen fire fv1 sigma (hmrBorrowPorts work (0 : Fin 1))) m s
    out=⟨s.phase,writeBit s.basis sigma false⟩ ∧ A.Ready out.basis ∧
      B.release work.toFinset out.basis=some A := by
  have finalReady : A.Ready (writeBit s.basis sigma false) := by
    intro q hq hn
    by_cases eq : q=sigma
    · subst q; exact Function.update_self _ _ _
    · simpa only [writeBit,Function.update_of_ne eq] using ready q hq hn
  cases armed with
  | false =>
    simp only [compileHmrSigmaLog,Bool.false_eq_true,ite_false] at h
    split at h
    next valid =>
      obtain ⟨rfl,distinct,owned⟩ := valid
      cases h
      have result := hmrSigmaDeath_early frozen fire fv1 sigma (hmrBorrowPorts [] (0 : Fin 1)) s m value
      dsimp only
      rw [result]
      refine ⟨rfl,finalReady,?_⟩
      simp [Arena.release]
    next invalid => simp at h
  | true =>
    have hc := compileHmrSigmaLog_armed_contract A B frozen fire fv1 sigma work h
    have result := compileHmrSigmaLog_armed_run A B frozen fire fv1 sigma work h s m ready value
    dsimp only
    rw [result]
    exact ⟨rfl,finalReady,A.checkBorrow_return B 1 work hc.2.2 _ finalReady⟩

/-- F15 releases sigma only after its actual value has been cleared. -/
def compileHmrSigmaDropLog (A : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire) : Option Arena := do
  let _ ← compileHmrSigmaLog A armed frozen fire fv1 sigma work
  A.release {sigma} (fun _ => false)

theorem compileHmrSigmaDropLog_run (A D : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire) (h : compileHmrSigmaDropLog A armed frozen fire fv1 sigma work=some D)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis sigma=(if armed then s.basis fv1 && !(s.basis frozen && !s.basis fire)
      else s.basis fv1)) :
    let out := run (hmrSigmaDeath armed frozen fire fv1 sigma (hmrBorrowPorts work (0 : Fin 1))) m s
    out=⟨s.phase,writeBit s.basis sigma false⟩ ∧ D.Ready out.basis ∧
      A.release {sigma} out.basis=some D := by
  unfold compileHmrSigmaDropLog at h
  obtain ⟨B,compiled,released⟩ := Option.bind_eq_some_iff.mp h
  have result := compileHmrSigmaLog_run A B armed frozen fire fv1 sigma work compiled s m ready value
  let out := run (hmrSigmaDeath armed frozen fire fv1 sigma (hmrBorrowPorts work (0 : Fin 1))) m s
  have clean : ∀q∈({sigma} : Finset Wire),out.basis q=false := by
    intro q hq
    have eq := Finset.mem_singleton.mp hq
    subst q
    rw [show out=⟨s.phase,writeBit s.basis sigma false⟩ from result.1]
    exact Function.update_self _ _ _
  have actual : A.release {sigma} out.basis=some D := by
    rw [A.release_clean_eq _ _ clean]
    exact released
  exact ⟨result.1,A.release_ready D {sigma} out.basis result.2.1 actual,actual⟩

end ECDSAAdd.Arithmetic.Paper935
