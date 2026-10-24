import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassState
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEqualityReturn
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedReturn

namespace ECDSAAdd.Arithmetic.Paper935

/-- F14/F15 retire the actual class chain and positive bit after history
storage. The intervening state may have changed data and phase. -/
theorem HmrSourceClassPlan.Logged.erase_return (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (h : P.Logged A armed sign zeroFlag frozen sigma)
    (before : BasisState) (initial : A.Ready before) (current : State) (m : List Bool)
    (ready : P.equalityArena.Ready current.basis)
    (preserved : ∀q∈(hmrSourceClassInputs armed frozen sigma P.positive++P.equalityWork).toFinset,
      current.basis q=hmrAndAdvance P.equality.stages
        (writeBit before P.positive (!before sign && !before zeroFlag)) q)
    (positive : current.basis P.positive=(!current.basis sign && !current.basis zeroFlag)) :
    let out := run (P.cleanup sign zeroFlag) m current
    out.phase=current.phase ∧ A.Ready out.basis ∧
      (∀q∈A.live,out.basis q=current.basis q) ∧
      P.positiveArena.release P.positiveWork.toFinset out.basis=some A := by
  have geom := h.geometry P A armed sign zeroFlag frozen sigma
  have eqret := compileHmrEqualityLog_erase_return P.positiveArena P.equalityArena _ 0
    P.equalityWork P.equality h.equality _
    (h.positive_ready P A armed sign zeroFlag frozen sigma before initial) current m ready preserved
  let u := run (hmrAndUnsweep P.equality.stages) m current
  have own (q : Wire) (hq : q∈hmrSourceClassAnchors armed sign zeroFlag frozen sigma) :
      q∈P.positiveArena.live := geom.2.2.2 (h.owned (List.mem_toFinset.mpr hq))
  have us : u.basis sign=current.basis sign := eqret.2.2.2 sign
    (own sign (by cases armed <;> simp [hmrSourceClassAnchors]))
  have uz : u.basis zeroFlag=current.basis zeroFlag := eqret.2.2.2 zeroFlag
    (own zeroFlag (by cases armed <;> simp [hmrSourceClassAnchors]))
  have up : u.basis P.positive=current.basis P.positive := eqret.2.2.2 P.positive geom.2.1
  have polar := hmrPolarRelease_run sign zeroFlag P.positive false false geom.1 u
    (m.drop (measurementCount (hmrAndUnsweep P.equality.stages)))
    (by simpa only [Bool.false_eq_true,ite_false,us,uz,up] using positive)
  let finalBasis := writeBit u.basis P.positive false
  have pr : P.positiveArena.Ready finalBasis := by
    intro q hq hn
    have ne : q≠P.positive := fun eq => hn (eq ▸ geom.2.1)
    simpa only [finalBasis,writeBit,Function.update_of_ne ne] using eqret.2.1 q hq hn
  have ret := hmrLogged_return_current A P.positiveArena 1 P.positiveWork h.positiveBorrow
    finalBasis pr (by intro i; have hi : i=(0 : Fin 1) := Fin.eq_zero i; subst i; exact Function.update_self _ _ _)
  dsimp only
  rw [HmrSourceClassPlan.cleanup,run_append,run_take]
  change (run (hmrPolarRelease sign zeroFlag P.positive false false) _ u).phase=_ ∧ _
  rw [polar]
  refine ⟨eqret.1,ret.1,?_,ret.2⟩
  intro q hq
  change writeBit u.basis P.positive false q=current.basis q
  rw [show writeBit u.basis P.positive false q=u.basis q from
    Function.update_of_ne (geom.2.2.1 q hq) _ _]
  exact eqret.2.2.2 q (geom.2.2.2 hq)

end ECDSAAdd.Arithmetic.Paper935
