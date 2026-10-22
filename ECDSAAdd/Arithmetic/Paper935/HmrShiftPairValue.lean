import ECDSAAdd.Arithmetic.Paper935.HmrShiftRowValue

namespace ECDSAAdd.Arithmetic.Paper935

private theorem row_value_congr (r : WindowRow) (s t : BasisState)
    (eq : ∀q∈r.wires,s q=t q) : r.value s=r.value t := by
  unfold WindowRow.value signedRegValue
  rw [regValue_congr _ _ _ eq]

/-- F6 in source order: g down, then fv up. The numerical hypotheses
are ordinary input properties, not assertions about the output program. -/
theorem hmrShiftPair_value (g v : WindowRow) (early : Bool) (frozen : Wire)
    (nd : (g.wires++v.wires).Nodup)
    (armed : early=false → frozen∉g.wires++v.wires)
    (gn : g.payload≠[]) (vn : v.payload≠[]) (s : State) (m : List Bool)
    (even : g.value s.basis%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^(v.payload.length-1):Nat):Int) ≤ v.value s.basis)
    (upper : early=true ∨ s.basis frozen=false → v.value s.basis < ((2^(v.payload.length-1):Nat):Int)) :
    let out := run (hmrShiftDown g.sign g.payload ++
      (if early then hmrShiftUpFree v.sign v.payload else hmrShiftUpArmed frozen v.sign v.payload)) m s
    g.value out.basis=g.value s.basis/2 ∧
    v.value out.basis=(if early then 2*v.value s.basis else
      if s.basis frozen then v.value s.basis else 2*v.value s.basis) := by
  have parts := List.nodup_append'.mp nd
  have gp : (g.sign::g.payload).Perm g.wires := by
    change ([g.sign]++g.payload).Perm (g.payload++[g.sign]); exact List.perm_append_comm
  have vp : (v.sign::v.payload).Perm v.wires := by
    change ([v.sign]++v.payload).Perm (v.payload++[v.sign]); exact List.perm_append_comm
  have gnd := gp.nodup_iff.mpr parts.1
  have vnd := vp.nodup_iff.mpr parts.2.1
  let mid := run (hmrShiftDown g.sign g.payload) m s
  have down := hmrShiftDown_row g gn gnd s m even
  have frame := (hmrShift_free_frame g.sign g.payload s m).2.1
  have vSame : v.value mid.basis=v.value s.basis := row_value_congr v _ _ (by
    intro q hq
    exact frame q (fun hg => List.disjoint_left.mp parts.2.2 (List.mem_append_left _ hg) hq))
  have frozenSame (he : early=false) : mid.basis frozen=s.basis frozen :=
    frame frozen (fun hg => armed he (List.mem_append_left _ (List.mem_append_left _ hg)))
  have vArmed (he : early=false) : (frozen::v.sign::v.payload).Nodup :=
    List.nodup_cons.mpr ⟨fun hv => armed he (List.mem_append_right _ (vp.mem_iff.mp hv)),vnd⟩
  dsimp only
  rw [run_append,run_take,(hmrShift_counts g.sign frozen g.payload).2.1,List.drop_zero]
  have gFrame (t : State) (hframe : ∀q,q∉v.payload → t.basis q=mid.basis q) :
      g.value t.basis=g.value mid.basis := row_value_congr g _ _ (by
    intro q hq
    exact hframe q (fun hv => List.disjoint_left.mp parts.2.2 hq (List.mem_append_left _ hv)))
  cases he : early
  · simp only [Bool.false_eq_true,if_false]
    have lo : mid.basis frozen=false → -((2^(v.payload.length-1):Nat):Int) ≤ v.value mid.basis := by
      rw [vSame,frozenSame he]; exact fun hf => lower (Or.inr hf)
    have hi : mid.basis frozen=false → v.value mid.basis < ((2^(v.payload.length-1):Nat):Int) := by
      rw [vSame,frozenSame he]; exact fun hf => upper (Or.inr hf)
    have up := hmrShiftUpArmed_row v frozen vn (vArmed he) mid m lo hi
    refine ⟨(gFrame _ (hmrShiftUpArmed_frame frozen v.sign v.payload (vArmed he) mid m).2).trans down,?_⟩
    simpa only [vSame,frozenSame he] using up
  · simp only [if_true]
    have up := hmrShiftUpFree_row v vn vnd mid m (by rw [vSame]; exact lower (Or.inl he))
      (by rw [vSame]; exact upper (Or.inl he))
    refine ⟨(gFrame _ (hmrShift_free_frame v.sign v.payload mid m).2.2.2).trans down,?_⟩
    simpa only [vSame] using up

end ECDSAAdd.Arithmetic.Paper935
