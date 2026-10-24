import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassReturn
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedStore

namespace ECDSAAdd.Arithmetic.Paper935

def HmrSourceClassPlan.storeCycle (P : HmrSourceClassPlan) (sign zeroFlag b2 b3 b4 port : Wire)
    (record work : List Wire) : Program :=
  P.program sign zeroFlag ++ hmrLoggedStore P.equality.top b2 b3 b4 port record work ++
    P.cleanup sign zeroFlag

/-- Actual class computation, finite history storage and class retirement.
All delayed cleanup equations follow from the store's owned-bit frame. -/
theorem HmrSourceClassPlan.Logged.store_cycle (P : HmrSourceClassPlan) (A B : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma b2 b3 b4 port : Wire) (record work : List Wire)
    (h : P.Logged A armed sign zeroFlag frozen sigma)
    (compiled : compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 work=some B)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [P.equality.top,b2,b3,b4] (port::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors armed sign zeroFlag frozen sigma) (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : let u := run (P.program sign zeroFlag) m s
      (u.basis P.equality.top && !u.basis b2 && !u.basis b3 && !u.basis b4)=true →
        2*regValue record u.basis+(u.basis port).toNat<2^record.length) :
    let u := run (P.program sign zeroFlag) m s
    let selected := u.basis P.equality.top && !u.basis b2 && !u.basis b3 && !u.basis b4
    let out := run (P.storeCycle sign zeroFlag b2 b3 b4 port record work) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧
      out.basis port=(if selected then false else u.basis port) ∧
      regValue record out.basis=(if selected then
        2*regValue record u.basis+(u.basis port).toNat else regValue record u.basis) ∧
      (∀q∈A.live,q∉port::record → out.basis q=s.basis q) := by
  let u := run (P.program sign zeroFlag) m s
  let tape := m.drop (measurementCount (P.program sign zeroFlag))
  let body := hmrLoggedStore P.equality.top b2 b3 b4 port record work
  let v := run body tape u
  have geom := h.geometry P A armed sign zeroFlag frozen sigma
  have eqc := compileHmrEqualityLog_contract P.positiveArena P.equalityArena _ 0
    P.equalityWork P.equality h.equality
  have contains : P.positiveArena.live⊆P.equalityArena.live := by
    rw [P.positiveArena.checkBorrow_live P.equalityArena _ P.equalityWork eqc.2.1]
    exact Finset.subset_union_left
  have allContains : A.live⊆P.equalityArena.live := Finset.Subset.trans geom.2.2.2 contains
  have first := h.run_state P A armed sign zeroFlag frozen sigma s m ready
  have stored := hmrLoggedStore_run P.equalityArena B P.equality.top b2 b3 b4 port record work
    compiled (Finset.Subset.trans owned allContains) nd apart u tape first.2.1 fits
  have eqFree := ((P.positiveArena.reserve_success P.equalityWork.toFinset).mp
    ⟨P.equalityArena,(P.positiveArena.checkBorrow_contract P.equalityArena _ P.equalityWork eqc.2.1).2.2⟩).2
  have positiveAway : P.positive∉port::record := by
    intro mem
    exact geom.2.2.1 P.positive (owned (List.mem_toFinset.mpr mem)) rfl
  have inputOwned : (hmrSourceClassInputs armed frozen sigma P.positive).toFinset⊆P.positiveArena.live := eqc.1.1
  have sitesOwned : (hmrSourceClassInputs armed frozen sigma P.positive++P.equalityWork).toFinset⊆P.equalityArena.live := by
    intro q hq
    rw [P.positiveArena.checkBorrow_live P.equalityArena _ P.equalityWork eqc.2.1]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with inp|wk
    · exact Finset.mem_union_left _ (inputOwned (List.mem_toFinset.mpr inp))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr wk)
  have sitesAway (q : Wire)
      (hq : q∈(hmrSourceClassInputs armed frozen sigma P.positive++P.equalityWork).toFinset) :
      q∉port::record := by
    intro mem
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with inp|wk
    · have aa := List.disjoint_left.mp anchorsApart
      cases armed <;> simp only [hmrSourceClassInputs,Bool.false_eq_true,ite_false,ite_true,
        List.mem_cons,List.not_mem_nil,or_false] at inp
      · rcases inp with rfl|rfl
        · exact aa (by simp [hmrSourceClassAnchors]) mem
        · exact positiveAway mem
      · rcases inp with rfl|rfl|rfl
        · exact aa (by simp [hmrSourceClassAnchors]) mem
        · exact aa (by simp [hmrSourceClassAnchors]) mem
        · exact positiveAway mem
    · exact Finset.disjoint_left.mp eqFree (geom.2.2.2 (owned (List.mem_toFinset.mpr mem)))
        (List.mem_toFinset.mpr wk)
  have keep (q : Wire) (hq : q∈hmrSourceClassAnchors armed sign zeroFlag frozen sigma) :
      v.basis q=s.basis q := by
    have own := h.owned (List.mem_toFinset.mpr hq)
    rw [stored.2.2.2.2.2 q (allContains own) (List.disjoint_left.mp anchorsApart hq)]
    exact first.2.2.1 q own
  have positiveValue : v.basis P.positive=(!v.basis sign && !v.basis zeroFlag) := by
    rw [stored.2.2.2.2.2 P.positive (contains geom.2.1) positiveAway,first.2.2.2.1,
      keep sign (by cases armed <;> simp [hmrSourceClassAnchors]),
      keep zeroFlag (by cases armed <;> simp [hmrSourceClassAnchors])]
  have retired := h.erase_return P A armed sign zeroFlag frozen sigma s.basis ready v
    (tape.drop (measurementCount body)) stored.2.1
    (by intro q hq; rw [stored.2.2.2.2.2 q (sitesOwned hq) (sitesAway q hq)];
        have state := congrArg (fun st : State => st.basis q) first.1; exact state)
    positiveValue
  have phase : u.phase=s.phase := by change (run (P.program sign zeroFlag) m s).phase=s.phase; rw [first.1]
  dsimp only
  rw [HmrSourceClassPlan.storeCycle,List.append_assoc,run_append,run_take,run_append,run_take]
  refine ⟨retired.1.trans (stored.1.trans phase),retired.2.1,?_,?_,?_⟩
  · rw [retired.2.2.1 port (owned (by simp))]
    exact stored.2.2.2.1
  · rw [regValue_congr record _ v.basis (fun q hq =>
      retired.2.2.1 q (owned (by simp [hq]))) ]
    exact stored.2.2.2.2.1
  ·
    intro q hq hn
    rw [retired.2.2.1 q hq,stored.2.2.2.2.2 q (allContains hq) hn]
    exact first.2.2.1 q hq

end ECDSAAdd.Arithmetic.Paper935
