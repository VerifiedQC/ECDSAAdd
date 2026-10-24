import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- F17 records an X outcome without immediate correction. Its phase debt
must be cancelled by the corresponding reverse branch, not discarded here. -/
def hmrBranchRetirement (branch : Wire) : Program := [.measureX branch [] []]

def compileHmrBranchRetirement (A : Arena) (branch : Wire) : Option Arena :=
  A.release {branch} (fun _ => false)

theorem hmrBranchRetirement_run (A D : Arena) (branch : Wire)
    (h : compileHmrBranchRetirement A branch=some D)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrBranchRetirement branch) m s
    out=⟨s.phase ^^ (m.headD false && s.basis branch),writeBit s.basis branch false⟩ ∧
      D.Ready out.basis ∧ A.release {branch} out.basis=some D := by
  have result : run (hmrBranchRetirement branch) m s=
      ⟨s.phase ^^ (m.headD false && s.basis branch),writeBit s.basis branch false⟩ := by
    cases m with
    | nil => rfl
    | cons bit rest => cases bit <;> rfl
  have finalReady : A.Ready (writeBit s.basis branch false) := by
    intro q hq hn
    by_cases eq : q=branch
    · subst q; exact Function.update_self _ _ _
    · simpa only [writeBit,Function.update_of_ne eq] using ready q hq hn
  have actual : A.release {branch} (writeBit s.basis branch false)=some D := by
    rw [A.release_clean_eq _ _ (by intro q hq; have eq := Finset.mem_singleton.mp hq; subst q; exact Function.update_self _ _ _)]
    exact h
  dsimp only
  rw [result]
  exact ⟨rfl,A.release_ready D {branch} _ finalReady actual,actual⟩

end ECDSAAdd.Arithmetic.Paper935
