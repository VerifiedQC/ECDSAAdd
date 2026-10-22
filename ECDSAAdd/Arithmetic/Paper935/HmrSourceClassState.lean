import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassLog
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEqualityState

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceClassPlan.Logged.geometry (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) (h : P.Logged A armed sign zeroFlag frozen sigma) :
    [sign,zeroFlag,P.positive].Nodup ∧ P.positive∈P.positiveArena.live ∧
      (∀q∈A.live,q≠P.positive) ∧ A.live⊆P.positiveArena.live := by
  have ports := hmrLoggedPorts_contract A P.positiveArena 1 P.positiveWork h.positiveBorrow
  have away (q : Wire) (hq : q∈A.live) : q≠P.positive := by
    intro eq
    apply ports.2.2 (0 : Fin 1)
    change P.positive∈A.live
    exact eq ▸ hq
  have own (q : Wire) (hq : q∈hmrSourceClassAnchors armed sign zeroFlag frozen sigma) : q∈A.live :=
    h.owned (List.mem_toFinset.mpr hq)
  have signOwn := own sign (by cases armed <;> simp [hmrSourceClassAnchors])
  have zeroOwn := own zeroFlag (by cases armed <;> simp [hmrSourceClassAnchors])
  have ne : sign≠zeroFlag := by
    have distinct := h.distinct
    cases armed <;> simp only [hmrSourceClassAnchors,Bool.false_eq_true,ite_false,ite_true] at distinct
    all_goals exact fun eq => (List.nodup_cons.mp distinct).1 (by simp [eq])
  refine ⟨by simp [ne,away sign signOwn,away zeroFlag zeroOwn],ports.2.1 0,away,?_⟩
  rw [A.checkBorrow_live P.positiveArena 1 P.positiveWork h.positiveBorrow]
  exact Finset.subset_union_left

theorem HmrSourceClassPlan.Logged.positive_ready (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) (h : P.Logged A armed sign zeroFlag frozen sigma)
    (s : BasisState) (ready : A.Ready s) :
    P.positiveArena.Ready (writeBit s P.positive (!s sign && !s zeroFlag)) := by
  have geom := h.geometry P A armed sign zeroFlag frozen sigma
  intro q hq hn
  have ne : q≠P.positive := fun eq => hn (eq ▸ geom.2.1)
  have old : q∉A.live := fun mem => hn (geom.2.2.2 mem)
  simpa [writeBit,ne] using ready q hq old

theorem HmrSourceClassPlan.Logged.run_state (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) (h : P.Logged A armed sign zeroFlag frozen sigma)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let mid := writeBit s.basis P.positive (!s.basis sign && !s.basis zeroFlag)
    let out := run (P.program sign zeroFlag) m s
    out=⟨s.phase,hmrAndAdvance P.equality.stages mid⟩ ∧ P.equalityArena.Ready out.basis ∧
      (∀q∈A.live,out.basis q=s.basis q) ∧
      out.basis P.positive=(!s.basis sign && !s.basis zeroFlag) ∧
      out.basis P.equality.top=decide (regValue (hmrSourceClassInputs armed frozen sigma P.positive) mid=0) := by
  have geom := h.geometry P A armed sign zeroFlag frozen sigma
  have clean := hmrLoggedPorts_clean A P.positiveArena 1 P.positiveWork h.positiveBorrow s.basis ready 0
  have first := hmrPolarAnd_run sign zeroFlag P.positive false false geom.1 s m clean
  simp only [Bool.false_eq_true,ite_false] at first
  let u : State := ⟨s.phase,writeBit s.basis P.positive (!s.basis sign && !s.basis zeroFlag)⟩
  have ur := h.positive_ready P A armed sign zeroFlag frozen sigma s.basis ready
  have second := compileHmrEqualityLog_state P.positiveArena P.equalityArena _ 0
    P.equalityWork P.equality h.equality u
    (m.drop (measurementCount (hmrPolarAnd sign zeroFlag P.positive false false))) ur
  dsimp only
  rw [HmrSourceClassPlan.program,run_append,run_take,first]
  refine ⟨second.1,second.2.1,?_,?_,second.2.2.2⟩
  · intro q hq
    rw [second.2.2.1 q (geom.2.2.2 hq)]
    exact Function.update_of_ne (geom.2.2.1 q hq) _ _
  · rw [second.2.2.1 P.positive geom.2.1]
    exact Function.update_self _ _ _

theorem HmrSourceClassPlan.Logged.value (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) (h : P.Logged A armed sign zeroFlag frozen sigma)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    (run (P.program sign zeroFlag) m s).basis P.equality.top=
      ((if armed then !s.basis frozen else true) && !s.basis sigma &&
        !(!s.basis sign && !s.basis zeroFlag)) := by
  have result := h.run_state P A armed sign zeroFlag frozen sigma s m ready
  have geom := h.geometry P A armed sign zeroFlag frozen sigma
  have own (q : Wire) (hq : q∈hmrSourceClassAnchors armed sign zeroFlag frozen sigma) : q∈A.live :=
    h.owned (List.mem_toFinset.mpr hq)
  have sigmaNe := geom.2.2.1 sigma (own sigma (by cases armed <;> simp [hmrSourceClassAnchors]))
  rw [result.2.2.2.2]
  cases armed with
  | false =>
    cases hs : s.basis sigma <;> cases hp : (!s.basis sign && !s.basis zeroFlag) <;>
      simp_all [hmrSourceClassInputs,writeBit,regValue]
  | true =>
    have frozenNe := geom.2.2.1 frozen (own frozen (by simp [hmrSourceClassAnchors]))
    cases hf : s.basis frozen <;> cases hs : s.basis sigma <;>
      cases hp : (!s.basis sign && !s.basis zeroFlag) <;>
      simp_all [hmrSourceClassInputs,writeBit,regValue]

theorem HmrSourceClassPlan.Logged.census (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) (h : P.Logged A armed sign zeroFlag frozen sigma) :
    P.positiveArena.live.card=A.live.card+1 ∧
    P.equalityArena.live.card=A.live.card+(if armed then 3 else 2) ∧
    P.equalityArena.live.card≤935 := by
  have first := A.checkBorrow_card P.positiveArena 1 P.positiveWork h.positiveBorrow
  have eqc := compileHmrEqualityLog_contract P.positiveArena P.equalityArena _ 0
    P.equalityWork P.equality h.equality
  have second := P.positiveArena.checkBorrow_card P.equalityArena _ P.equalityWork eqc.2.1
  refine ⟨first,?_,P.equalityArena.peak_bound⟩
  cases armed <;> simp only [hmrSourceClassInputs,Bool.false_eq_true,ite_false,ite_true,List.length_cons,List.length_nil] at second ⊢ <;> omega

end ECDSAAdd.Arithmetic.Paper935
