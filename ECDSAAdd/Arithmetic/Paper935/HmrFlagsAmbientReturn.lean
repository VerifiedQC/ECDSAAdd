import ECDSAAdd.Arithmetic.Paper935.HmrFlagsReturn

namespace ECDSAAdd.Arithmetic.Paper935

/-- A later branch allocation stays live when R12 returns the older flag
borrow. No stack-order assumption is made about arena releases. -/
theorem compileHmrFlags_erase_in (A B C : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (contains : B.live⊆C.live)
    (s : State) (m : List Bool) (ready : C.Ready s.basis)
    (values : HmrFlagValues c3 b2 b3 b4 (hmrBorrowPorts work) s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let out := run (hmrFlagsRelease c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m s
    ∃D,C.release work.toFinset out.basis=some D ∧ D.Ready out.basis ∧ D.live=C.live\work.toFinset := by
  have hc := (compileHmrFlags_contract A B c3 b2 b3 b4 work h).2.2
  have ports := hmrBorrowPorts_contract A B 6 work hc
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have inj : Function.Injective w := ports.1
  have clean : ∀i : Fin 6,hmrClearFlags w s.basis (w i)=false := by
    intro i
    fin_cases i <;> simp [hmrClearFlags,writeBit,inj.eq_iff]
  have kept : C.Ready (hmrClearFlags w s.basis) := by
    intro q hq hn
    have away (i : Fin 6) : q≠w i := by
      intro eq
      apply hn
      rw [eq]
      exact contains (ports.2.1 i)
    simp only [hmrClearFlags,writeBit,Function.update_of_ne (away _)]
    exact ready q hq hn
  have owned : work.toFinset⊆C.live := by
    intro q hq
    apply contains
    rw [(A.borrowMany_live B 6 work hc).1]
    exact Finset.mem_union_right _ hq
  have zeros : ∀q∈work.toFinset,hmrClearFlags w s.basis q=false := by
    intro q hq
    obtain ⟨i,eq⟩ := hmrBorrowPorts_surjective A B 6 work hc q (List.mem_toFinset.mp hq)
    rw [←eq]
    exact clean i
  obtain ⟨D,release⟩ := (C.release_success work.toFinset (hmrClearFlags w s.basis)).mpr ⟨owned,zeros⟩
  dsimp only
  rw [compileHmrFlags_erase A B c3 b2 b3 b4 work h s m values]
  refine ⟨D,release,C.release_ready D work.toFinset _ kept release,?_⟩
  unfold Arena.release at release
  rw [if_pos ⟨owned,zeros⟩] at release
  cases release
  rfl

end ECDSAAdd.Arithmetic.Paper935
