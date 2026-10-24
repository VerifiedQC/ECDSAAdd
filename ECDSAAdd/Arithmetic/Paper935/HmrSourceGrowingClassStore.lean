import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassStore
import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassExtend
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRecordGrow

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual class/flag allocation followed by history growth and retirement.
The resulting arena retains precisely the newly borrowed history cells. -/
theorem HmrSourceClassPlan.Logged.growing_store_cycle (P : HmrSourceClassPlan) (A B C : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma b2 b3 b4 port : Wire) (record fresh work : List Wire)
    (need : Nat) (h : P.Logged A armed sign zeroFlag frozen sigma)
    (flags : compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 work=some B)
    (grow : compileHmrRecordGrowLog B record need fresh=some C)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [P.equality.top,b2,b3,b4] (port::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors armed sign zeroFlag frozen sigma) (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : let u := run (P.program sign zeroFlag) m s
      (u.basis P.equality.top && !u.basis b2 && !u.basis b3 && !u.basis b4)=true →
        2*regValue (record++fresh) u.basis+(u.basis port).toNat<2^(record++fresh).length) :
    ∃A',compileHmrRecordGrowLog A record need fresh=some A' ∧
      let out := run (P.storeCycle sign zeroFlag b2 b3 b4 port (record++fresh) work) m s
      out.phase=s.phase ∧ A'.Ready out.basis ∧
        (∀q∈A.live,q∉port::record → out.basis q=s.basis q) := by
  have fc := compileHmrFlagsLog_contract P.equalityArena B P.equality.top b2 b3 b4 work flags
  have gc := compileHmrRecordGrowLog_contract B C record need fresh grow
  obtain ⟨D,pd,dc⟩ := P.equalityArena.checkBorrow_commute B C 6 (need-record.length)
    work fresh fc.2.2 gc.2.2.2
  obtain ⟨A',B',aa,pb,extended⟩ := h.extend P A D armed sign zeroFlag frozen sigma (need-record.length) fresh pd
  let Q := HmrSourceClassPlan.mk B' P.positiveWork D P.equalityWork P.equality
  have aq : A.live⊆A'.live := by rw [A.checkBorrow_live A' _ fresh aa]; exact Finset.subset_union_left
  have ed : P.equalityArena.live⊆D.live := by rw [P.equalityArena.checkBorrow_live D _ fresh pd]; exact Finset.subset_union_left
  have qflags : compileHmrFlagsLog Q.equalityArena Q.equality.top b2 b3 b4 work=some C := by
    change compileHmrFlagsLog D P.equality.top b2 b3 b4 work=some C
    have own := Finset.Subset.trans fc.2.1 ed
    simp only [compileHmrFlagsLog,fc.1,own]
    exact dc
  have recordOwned : record.toFinset⊆A.live := by
    intro q hq; exact owned (List.mem_toFinset.mpr (List.mem_cons_of_mem _ (List.mem_toFinset.mp hq)))
  have grew : compileHmrRecordGrowLog A record need fresh=some A' := by
    simp only [compileHmrRecordGrowLog,gc.1,recordOwned,gc.2.2.1,and_self,ite_true]
    exact aa
  have gr := compileHmrRecordGrowLog_ready A A' record need fresh grew s.basis ready
  have free := ((A.reserve_success fresh.toFinset).mp ⟨A',(A.checkBorrow_contract A' _ fresh aa).2.2⟩).2
  have eqFree := ((P.equalityArena.reserve_success fresh.toFinset).mp
    ⟨D,(P.equalityArena.checkBorrow_contract D _ fresh pd).2.2⟩).2
  have away (q : Wire) (hq : q∈A.live) : q∉fresh :=
    fun mem => Finset.disjoint_left.mp free hq (List.mem_toFinset.mpr mem)
  have allOwned : (port::(record++fresh)).toFinset⊆A'.live := by
    intro q hq
    rcases List.mem_cons.mp (List.mem_toFinset.mp hq) with eq|mem
    · subst q; exact aq (owned (by simp))
    · exact gr.2.2.2.1 (List.mem_toFinset.mpr mem)
  have allNd : (port::(record++fresh)).Nodup := by
    apply List.nodup_cons.mpr
    refine ⟨?_,gr.2.1⟩
    intro mem
    rcases List.mem_append.mp mem with old|new
    · exact (List.nodup_cons.mp nd).1 old
    · exact away port (owned (by simp)) new
  have allApart : List.Disjoint [Q.equality.top,b2,b3,b4] (port::(record++fresh)) := by
    apply List.disjoint_left.mpr
    intro q hq mem
    rcases List.mem_cons.mp mem with eq|mem
    · exact List.disjoint_left.mp apart hq (by simp [eq])
    · rcases List.mem_append.mp mem with old|new
      · exact List.disjoint_left.mp apart hq (List.mem_cons_of_mem _ old)
      · exact Finset.disjoint_left.mp eqFree (fc.2.1 (List.mem_toFinset.mpr hq)) (List.mem_toFinset.mpr new)
  have allAnchors : List.Disjoint (hmrSourceClassAnchors armed sign zeroFlag frozen sigma) (port::(record++fresh)) := by
    apply List.disjoint_left.mpr
    intro q hq mem
    rcases List.mem_cons.mp mem with eq|mem
    · exact List.disjoint_left.mp anchorsApart hq (by simp [eq])
    · rcases List.mem_append.mp mem with old|new
      · exact List.disjoint_left.mp anchorsApart hq (List.mem_cons_of_mem _ old)
      · exact away q (h.owned (List.mem_toFinset.mpr hq)) new
  have result := extended.store_cycle Q A' C armed sign zeroFlag frozen sigma b2 b3 b4 port
    (record++fresh) work qflags allOwned allNd allApart allAnchors s m gr.1 fits
  refine ⟨A',grew,result.1,result.2.1,?_⟩
  intro q hq hn
  apply result.2.2.2.2 q (aq hq)
  intro mem
  rcases List.mem_cons.mp mem with eq|mem
  · exact hn (by simp [eq])
  · rcases List.mem_append.mp mem with old|new
    · exact hn (List.mem_cons_of_mem _ old)
    · exact away q hq new

end ECDSAAdd.Arithmetic.Paper935
