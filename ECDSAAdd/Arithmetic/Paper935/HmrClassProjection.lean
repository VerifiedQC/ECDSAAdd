import ECDSAAdd.Arithmetic.Paper935.HmrArenaProjection

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrSourceClassLog_of_projection (A : Arena) (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (positiveLog equalityLog : List Wire) (P : HmrSourceClassPlan)
    (shape : (compileHmrSourceClassLog A armed sign zeroFlag frozen sigma positiveLog equalityLog).map
      (fun Q => (Q.positiveWork,Q.equalityWork,Q.equality))=some (P.positiveWork,P.equalityWork,P.equality))
    (positiveLive : P.positiveArena.live=A.live∪P.positiveWork.toFinset)
    (equalityLive : P.equalityArena.live=P.positiveArena.live∪P.equalityWork.toFinset) :
    compileHmrSourceClassLog A armed sign zeroFlag frozen sigma positiveLog equalityLog=some P := by
  cases h : compileHmrSourceClassLog A armed sign zeroFlag frozen sigma positiveLog equalityLog with
  | none => simp [h] at shape
  | some Q =>
    simp only [h,Option.map_some,Option.some.injEq,Prod.mk.injEq] at shape
    have hc := compileHmrSourceClassLog_contract A armed sign zeroFlag frozen sigma positiveLog equalityLog Q h
    have pl := A.checkBorrow_live Q.positiveArena 1 Q.positiveWork hc.positiveBorrow
    rw [shape.1] at pl
    have pa : Q.positiveArena=P.positiveArena := hmrArena_eq_of_live _ _ (pl.trans positiveLive.symm)
    have eq := compileHmrEqualityLog_contract Q.positiveArena Q.equalityArena
      (hmrSourceClassInputs armed frozen sigma Q.positive) 0 Q.equalityWork Q.equality hc.equality
    have el := Q.positiveArena.checkBorrow_live Q.equalityArena _ Q.equalityWork eq.2.1
    rw [pa,shape.2.1] at el
    have ea : Q.equalityArena=P.equalityArena := hmrArena_eq_of_live _ _ (el.trans equalityLive.symm)
    have qp : Q=P := by
      cases Q; cases P
      simp only [HmrSourceClassPlan.mk.injEq]
      exact ⟨pa,shape.1,ea,shape.2.1,shape.2.2⟩
    rw [qp]

theorem compileHmrFireDropLog_of_projection (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (eqLog fireLog : List Wire) (P : HmrFirePlan)
    (shape : (compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog).map
      (fun (_,Q) => (Q.equalityWork,Q.equality,Q.fireWork))=some (P.equalityWork,P.equality,P.fireWork))
    (equalityLive : P.equalityArena.live=A.live∪P.equalityWork.toFinset)
    (live : C.live=A.live.erase fire) :
    compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog=some (C,P) := by
  cases h : compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog with
  | none => simp [h] at shape
  | some result =>
    rcases result with ⟨B,Q⟩
    simp only [h,Option.map_some,Option.some.injEq,Prod.mk.injEq] at shape
    obtain ⟨D,fireChecked,release⟩ := compileHmrFireDropLog_contract A B record offset zf frozen fire Q h
    have hc := compileHmrFireLog_contract A D record offset zf frozen fire Q fireChecked
    have eq := compileHmrEqualityLog_contract A Q.equalityArena record offset Q.equalityWork Q.equality hc.2.1
    have el := A.checkBorrow_live Q.equalityArena _ Q.equalityWork eq.2.1
    rw [shape.1] at el
    have ea : Q.equalityArena=P.equalityArena := hmrArena_eq_of_live _ _ (el.trans equalityLive.symm)
    have qp : Q=P := by
      cases Q; cases P
      simp only [HmrFirePlan.mk.injEq]
      exact ⟨ea,shape.1,shape.2.1,shape.2.2⟩
    have bl := A.release_live_eq B {fire} (fun _ => false) release
    have bc : B=C := hmrArena_eq_of_live _ _ (by simpa only [Finset.sdiff_singleton_eq_erase] using bl.trans (by simpa only [Finset.sdiff_singleton_eq_erase] using live.symm))
    rw [bc,qp]

end ECDSAAdd.Arithmetic.Paper935
