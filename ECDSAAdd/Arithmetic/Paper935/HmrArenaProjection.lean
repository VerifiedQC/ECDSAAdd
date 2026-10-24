import ECDSAAdd.Arithmetic.Paper935.HmrFreezeProjection
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedControlLive

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrArenaResult_of_accept (result : Option Arena) (C : Arena)
    (accept : result.map (fun _ => true)=some true)
    (live : ∀B,result=some B → B.live=C.live) : result=some C := by
  cases h : result with
  | none => simp [h] at accept
  | some B => rw [hmrArena_eq_of_live B C (live B h)]

theorem hmrPairResult_of_projection {α : Type} (result : Option (Arena × α)) (C : Arena) (P : α)
    (shape : result.map Prod.snd=some P)
    (live : ∀B,result=some (B,P) → B.live=C.live) : result=some (C,P) := by
  cases h : result with
  | none => simp [h] at shape
  | some value =>
    rcases value with ⟨B,Q⟩
    simp only [h,Option.map_some,Option.some.injEq] at shape
    subst Q
    rw [hmrArena_eq_of_live B C (live B h)]

theorem compileHmrZeroLog_of_projection (A C : Arena) (bits : List Wire) (size : Nat)
    (logs : List (List Wire)) (ps : List HmrBlockPlan) (keeper : Wire)
    (shape : (compileHmrZeroLog A bits size logs).map Prod.snd=some (ps,keeper))
    (live : C.live=A.live∪(ps.map HmrBlockPlan.keeper).toFinset) :
    compileHmrZeroLog A bits size logs=some (C,ps,keeper) := by
  apply hmrPairResult_of_projection _ C (ps,keeper) shape
  intro B hb
  have hc := compileHmrZeroLog_contract A B bits size ps keeper hb
  exact (compileHmrBlockedLog_live A B none _ ps hc.2.1).trans live.symm

theorem compileHmrBlockedDropLog_of_projection (A C : Arena) (ps : List HmrBlockPlan)
    (logs : List (List Wire)) (qs : List HmrBlockFreePlan)
    (shape : (compileHmrBlockedDropLog A ps logs).map Prod.snd=some qs)
    (live : C.live=A.live\(ps.map HmrBlockPlan.keeper).toFinset) :
    compileHmrBlockedDropLog A ps logs=some (C,qs) := by
  apply hmrPairResult_of_projection _ C qs shape
  intro B hb
  exact (compileHmrBlockedDropLog_live A B ps qs hb).trans live.symm

theorem compileHmrFlagsLog_of_accept (A C : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (accept : (compileHmrFlagsLog A c3 b2 b3 b4 work).map (fun _ => true)=some true)
    (live : C.live=A.live∪work.toFinset) : compileHmrFlagsLog A c3 b2 b3 b4 work=some C := by
  apply hmrArenaResult_of_accept _ C accept
  intro B hb
  exact (A.checkBorrow_live B 6 work (compileHmrFlagsLog_contract A B c3 b2 b3 b4 work hb).2.2).trans live.symm

theorem compileHmrSigmaDropLog_of_accept (A C : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire)
    (accept : (compileHmrSigmaDropLog A armed frozen fire fv1 sigma work).map (fun _ => true)=some true)
    (live : C.live=A.live.erase sigma) : compileHmrSigmaDropLog A armed frozen fire fv1 sigma work=some C := by
  apply hmrArenaResult_of_accept _ C accept
  intro B hb
  exact (compileHmrSigmaDropLog_live A B armed frozen fire fv1 sigma work hb).trans live.symm

theorem compileHmrBranchRetirement_of_accept (A C : Arena) (branch : Wire)
    (accept : (compileHmrBranchRetirement A branch).map (fun _ => true)=some true)
    (live : C.live=A.live.erase branch) : compileHmrBranchRetirement A branch=some C := by
  apply hmrArenaResult_of_accept _ C accept
  intro B hb
  have eq := A.release_live_eq B {branch} (fun _ => false) hb
  simpa only [Finset.sdiff_singleton_eq_erase] using eq.trans (by simpa only [Finset.sdiff_singleton_eq_erase] using live.symm)

end ECDSAAdd.Arithmetic.Paper935
