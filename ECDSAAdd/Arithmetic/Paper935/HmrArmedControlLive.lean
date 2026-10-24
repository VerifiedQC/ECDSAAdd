import ECDSAAdd.Arithmetic.Paper935.HmrLoggedControlLive
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeepLive

namespace ECDSAAdd.Arithmetic.Paper935

/-- Net live-set change of the same accepted armed plan: only the two
retained arithmetic flags are retired. This does not bound intermediate peaks. -/
theorem HmrArmedControlPlan.Logged.final_live (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need) :
    P.outputArena.live=(A.live.erase sigma).erase branch := by
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp offset P.freezePlan h.freeze
  have live := fc.live P.freezePlan A P.freezeArena g frozen timestamp offset
  have zc := compileHmrZeroLog_contract A P.freezePlan.zeroArena g 16 P.freezePlan.zeroPlans P.freezePlan.zeroKeeper fc.zero
  have fresh := (compileHmrBlockedLog_order A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1).1
  have zeroOwned := (compileHmrBlockedLog_owned A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1).1
  have fireFresh : P.freezePlan.fire∉A.live := by
    intro mem
    apply (hmrLoggedPorts_contract P.freezePlan.zeroArena P.freezeArena 1 P.freezePlan.fireWork fc.borrow).2.2 (0 : Fin 1)
    exact zeroOwned mem
  have keepFresh (q : Wire) (mem : q∈A.live) : q∉(P.freezePlan.zeroPlans.map HmrBlockPlan.keeper).toFinset := by
    intro hk
    obtain ⟨R,hr,eq⟩ := List.mem_map.mp (List.mem_toFinset.mp hk)
    exact fresh R hr (eq ▸ mem)
  rw [h.output_live P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need,live]
  ext q
  have fireAway : q∈A.live → q≠P.freezePlan.fire := fun mem eq => fireFresh (eq ▸ mem)
  have keeperAway := keepFresh q
  simp only [Finset.mem_erase,Finset.mem_sdiff,Finset.mem_insert,Finset.mem_union]
  tauto

theorem HmrArmedControlPlan.Logged.final_card (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need) :
    P.outputArena.live.card+2=A.live.card := by
  have sigmaOwned : sigma∈A.live := h.inputs.2.2.2.2.2.2.2.1 (by simp)
  have branchOwned : branch∈A.live := h.inputs.2.2.2.1 (by simp)
  have apart : sigma≠branch := by
    intro eq
    have no := List.disjoint_left.mp h.anchorsApart (show sigma∈hmrSourceClassAnchors true sign P.counterKeeper frozen sigma by simp [hmrSourceClassAnchors])
    exact no (by simp [eq])
  rw [h.final_live P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need]
  have c1 := Finset.card_erase_add_one sigmaOwned
  have c2 := Finset.card_erase_add_one (Finset.mem_erase.mpr ⟨Ne.symm apart,branchOwned⟩)
  omega

end ECDSAAdd.Arithmetic.Paper935
