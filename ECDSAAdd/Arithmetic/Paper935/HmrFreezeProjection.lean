import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeepLive

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrArena_eq_of_live (A B : Arena) (h : A.live=B.live) : A=B := by
  cases A; cases B; cases h; rfl

/-- Reconstruct the full checked F7 result from its small plan projection
and independently proved live-set formulas. -/
theorem compileHmrFreezeLog_of_projection (A C : Arena) (bits : List Wire) (frozen : Wire)
    (record : List Wire) (offset : Nat) (logs : List (List Wire)) (fireWork : List Wire)
    (P : HmrFreezePlan)
    (shape : (compileHmrFreezeLog A bits frozen record offset logs fireWork).map
      (fun (_,Q) => (Q.zeroPlans,Q.zeroKeeper,Q.fireWork))=some (P.zeroPlans,P.zeroKeeper,P.fireWork))
    (zeroLive : P.zeroArena.live=A.live∪(P.zeroPlans.map HmrBlockPlan.keeper).toFinset)
    (live : C.live=insert P.fire (A.live∪(P.zeroPlans.map HmrBlockPlan.keeper).toFinset)) :
    compileHmrFreezeLog A bits frozen record offset logs fireWork=some (C,P) := by
  cases h : compileHmrFreezeLog A bits frozen record offset logs fireWork with
  | none => simp [h] at shape
  | some result =>
    rcases result with ⟨B,Q⟩
    rw [h] at shape
    simp only [Option.map_some,Option.some.injEq,Prod.mk.injEq] at shape
    have fc := compileHmrFreezeLog_contract A B bits frozen record offset Q h
    have zc := compileHmrZeroLog_contract A Q.zeroArena bits 16 Q.zeroPlans Q.zeroKeeper fc.zero
    have zl := compileHmrBlockedLog_live A Q.zeroArena none _ Q.zeroPlans zc.2.1
    rw [shape.1] at zl
    have za : Q.zeroArena=P.zeroArena := hmrArena_eq_of_live _ _ (zl.trans zeroLive.symm)
    have qp : Q=P := by
      cases Q; cases P
      simp only [HmrFreezePlan.mk.injEq]
      exact ⟨za,shape.1,shape.2.1,shape.2.2⟩
    have bl := fc.live Q A B bits frozen record offset
    rw [qp] at bl
    have bc : B=C := hmrArena_eq_of_live _ _ (bl.trans live.symm)
    rw [bc,qp]

end ECDSAAdd.Arithmetic.Paper935
