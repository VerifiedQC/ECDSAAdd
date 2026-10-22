import ECDSAAdd.Arithmetic.Paper935.HmrLoggedStore
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRecordGrow
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowCommute

namespace ECDSAAdd.Arithmetic.Paper935

/-- The source checks history growth while flags are live. Commutation of
checked reservations lets the existing gate proof consume that exact order;
no address choice or changed gate order is introduced. -/
theorem hmrLoggedGrowingStore_run (A B C : Arena) (c3 b2 b3 b4 port : Wire)
    (record fresh work : List Wire) (need : Nat)
    (flags : compileHmrFlagsLog A c3 b2 b3 b4 work=some B)
    (grow : compileHmrRecordGrowLog B record need fresh=some C)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [c3,b2,b3,b4] (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : (s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4)=true →
      2*regValue record s.basis+(s.basis port).toNat<2^need) :
    ∃ D,compileHmrRecordGrowLog A record need fresh=some D ∧
      let selected := s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4
      let out := run (hmrLoggedStore c3 b2 b3 b4 port (record++fresh) work) m s
      out.phase=s.phase ∧ D.Ready out.basis ∧ C.release work.toFinset out.basis=some D ∧
        out.basis port=(if selected then false else s.basis port) ∧
        regValue (record++fresh) out.basis=(if selected then
          2*regValue record s.basis+(s.basis port).toNat else regValue record s.basis) ∧
        ∀q∈A.live,q∉port::record → out.basis q=s.basis q := by
  have fc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work flags
  have gc := compileHmrRecordGrowLog_contract B C record need fresh grow
  obtain ⟨D,ad,dc⟩ := A.checkBorrow_commute B C 6 (need-record.length) work fresh fc.2.2 gc.2.2.2
  have contains : A.live⊆D.live := by
    rw [A.checkBorrow_live D _ fresh ad]
    exact Finset.subset_union_left
  have recordOwned : record.toFinset⊆A.live := by
    intro q hq
    exact owned (List.mem_toFinset.mpr (List.mem_cons_of_mem _ (List.mem_toFinset.mp hq)))
  have gd : compileHmrRecordGrowLog A record need fresh=some D := by
    simp only [compileHmrRecordGrowLog,gc.1,recordOwned,gc.2.2.1,and_self,ite_true]
    exact ad
  have grown := compileHmrRecordGrowLog_ready A D record need fresh gd s.basis ready
  have compiled : compileHmrFlagsLog D c3 b2 b3 b4 work=some C := by
    have own := Finset.Subset.trans fc.2.1 contains
    simp only [compileHmrFlagsLog,fc.1,own]
    exact dc
  have free := ((A.reserve_success fresh.toFinset).mp
    ⟨D,(A.checkBorrow_contract D _ fresh ad).2.2⟩).2
  have away (q : Wire) (hq : q∈A.live) : q∉fresh := by
    intro hf
    exact Finset.disjoint_left.mp free hq (List.mem_toFinset.mpr hf)
  have allOwned : (port::(record++fresh)).toFinset⊆D.live := by
    intro q hq
    rcases List.mem_cons.mp (List.mem_toFinset.mp hq) with eq|mem
    · subst q; exact contains (owned (by simp))
    · exact grown.2.2.2.1 (List.mem_toFinset.mpr mem)
  have allNd : (port::(record++fresh)).Nodup := by
    apply List.nodup_cons.mpr
    refine ⟨?_,grown.2.1⟩
    intro mem
    rcases List.mem_append.mp mem with old|new
    · exact (List.nodup_cons.mp nd).1 old
    · exact away port (owned (by simp)) new
  have allApart : List.Disjoint [c3,b2,b3,b4] (port::(record++fresh)) := by
    apply List.disjoint_left.mpr
    intro q hq mem
    rcases List.mem_cons.mp mem with eq|mem
    · exact List.disjoint_left.mp apart hq (by simp [eq])
    · rcases List.mem_append.mp mem with old|new
      · exact List.disjoint_left.mp apart hq (List.mem_cons_of_mem _ old)
      · exact away q (fc.2.1 (List.mem_toFinset.mpr hq)) new
  have result := hmrLoggedStore_run D C c3 b2 b3 b4 port (record++fresh) work compiled
    allOwned allNd allApart s m grown.1
    (by rw [grown.2.2.2.2,grown.2.2.1]; exact fits)
  refine ⟨D,gd,result.1,result.2.1,result.2.2.1,result.2.2.2.1,?_,?_⟩
  · simpa only [grown.2.2.2.2] using result.2.2.2.2.1
  · intro q hq hn
    apply result.2.2.2.2.2 q (contains hq)
    simpa only [List.mem_cons,List.mem_append,not_or] using
      ⟨(show q≠port ∧ q∉record from by simpa only [List.mem_cons,not_or] using hn).1,
       (show q≠port ∧ q∉record from by simpa only [List.mem_cons,not_or] using hn).2,away q hq⟩

end ECDSAAdd.Arithmetic.Paper935
