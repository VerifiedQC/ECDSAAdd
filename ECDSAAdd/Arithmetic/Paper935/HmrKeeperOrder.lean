import ECDSAAdd.Arithmetic.Paper935.HmrBlockedDrop

namespace ECDSAAdd.Arithmetic.Paper935

def HmrBlockPlan.literals (P : HmrBlockPlan) : List HmrLiteral :=
  P.head::P.cells.map HmrLadderCell.literal

def HmrKeeperOrdered : List HmrBlockPlan → Prop
  | [] => True
  | P::ps => (∀Q∈ps,Q.keeper∉P.keeper::P.literals.map HmrLiteral.wire) ∧ HmrKeeperOrdered ps

def HmrKeeperValues (ps : List HmrBlockPlan) (s : BasisState) : Prop :=
  ∀P∈ps,s P.keeper=P.literals.all (fun l => l.value s)

theorem compileHmrBlocked_order (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    (h : compileHmrBlocked A previous blocks=some (B,ps)) :
    (∀P∈ps,P.keeper∉A.live) ∧ HmrKeeperOrdered ps := by
  induction blocks generalizing A previous ps with
  | nil =>
    simp only [compileHmrBlocked,Option.some.injEq,Prod.mk.injEq] at h
    obtain ⟨rfl,rfl⟩ := h
    exact ⟨by intro P hp; simp at hp,trivial⟩
  | cons bits blocks ih =>
    simp only [compileHmrBlocked] at h
    obtain ⟨⟨C,P⟩,head,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,qs⟩,tail,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    have rest := ih C (some P.keeper) qs tail
    have live := (compileHmrBlockKeep_run A C (hmrBlockLiterals previous bits) P head
      ⟨false,fun _ => false⟩ [] (by intro q hq hn; rfl)).2.1
    have monotone : A.live⊆C.live := by rw [live]; exact Finset.subset_insert _ _
    obtain ⟨E,work,he,_⟩ := compileHmrBlockKeep_contract A C (hmrBlockLiterals previous bits) P head
    have contract := compileHmrBlock_contract A E (hmrBlockLiterals previous bits) work P he
    have own (q : Wire) (hq : q∈P.keeper::P.literals.map HmrLiteral.wire) : q∈C.live := by
      rcases List.mem_cons.mp hq with eq | mem
      · rw [eq,live]; simp
      · apply monotone
        apply contract.1
        apply List.mem_toFinset.mpr
        simpa only [HmrBlockPlan.literals,contract.2.2.1] using mem
    refine ⟨?_,?_,rest.2⟩
    · intro Q hq
      rcases List.mem_cons.mp hq with rfl | mem
      · exact compileHmrBlockKeep_fresh A C _ Q head
      · exact fun ha => rest.1 Q mem (monotone ha)
    · intro Q hq mem
      exact rest.1 Q hq (own Q.keeper mem)

end ECDSAAdd.Arithmetic.Paper935
