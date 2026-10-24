import ECDSAAdd.Arithmetic.Paper935.HmrLoggedDropLive
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem Arena.release_live_eq (A C : Arena) (xs : Finset Wire) (s : BasisState)
    (h : A.release xs s=some C) : C.live=A.live\xs := by
  unfold Arena.release at h
  split at h
  next good => cases h; rfl
  next bad => simp at h

theorem compileHmrFreezeEndLog_live (A C : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (ps : List HmrBlockPlan) (P : HmrFreezeEndPlan)
    {eqLog fireLog : List Wire} {logs : List (List Wire)}
    (h : compileHmrFreezeEndLog A record offset zf frozen fire ps eqLog fireLog logs=some (C,P)) :
    C.live=A.live.erase fire\(ps.map HmrBlockPlan.keeper).toFinset := by
  unfold compileHmrFreezeEndLog at h
  obtain ⟨⟨B,F⟩,hf,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨⟨D,qs⟩,hd,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  obtain ⟨E,_,release⟩ := compileHmrFireDropLog_contract A B record offset zf frozen fire F hf
  have live := A.release_live_eq B {fire} (fun _ => false) release
  rw [compileHmrBlockedDropLog_live B C ps qs hd,live]
  simp only [Finset.sdiff_singleton_eq_erase]

theorem compileHmrSigmaDropLog_live (A C : Arena) (armed : Bool) (frozen fire fv1 sigma : Wire)
    (work : List Wire) (h : compileHmrSigmaDropLog A armed frozen fire fv1 sigma work=some C) :
    C.live=A.live.erase sigma := by
  unfold compileHmrSigmaDropLog at h
  obtain ⟨B,_,release⟩ := Option.bind_eq_some_iff.mp h
  simpa only [Finset.sdiff_singleton_eq_erase] using A.release_live_eq C {sigma} (fun _ => false) release

theorem HmrArmedControlPlan.Logged.output_live (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need) :
    P.outputArena.live=((P.freezeArena.live.erase sigma).erase P.freezePlan.fire\
      (P.freezePlan.zeroPlans.map HmrBlockPlan.keeper).toFinset).erase branch := by
  have sigmaLive := compileHmrSigmaDropLog_live P.freezeArena P.sigmaArena true frozen P.freezePlan.fire fv1 sigma
    P.log.sigmaGuard h.sigmaDrop
  have endLive := compileHmrFreezeEndLog_live P.sigmaArena P.endArena timestamp offset P.freezePlan.zeroKeeper frozen
    P.freezePlan.fire P.freezePlan.zeroPlans P.endPlan h.freezeDrop
  have branchLive := P.endArena.release_live_eq P.outputArena {branch} (fun _ => false) h.branchDrop
  rw [branchLive,endLive,sigmaLive]
  simp only [Finset.sdiff_singleton_eq_erase]

end ECDSAAdd.Arithmetic.Paper935
