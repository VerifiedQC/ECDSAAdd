import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontShiftValue
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontExit

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.shift_fixed (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis) :
    ∀q∈P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.f.wires++P.headBank.gv.wires),
      (run (P.shift early frozen) m s).basis q=s.basis q := by
  have geo := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have perm : ((P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.f.wires++P.headBank.gv.wires))++
      (P.headBank.g.wires++P.headBank.fv.wires)).Perm
      (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.rows.flatMap WindowRow.wires)) := by
    apply List.perm_iff_count.mpr
    intro q
    simp [WindowBank.rows,List.count_cons,List.count_append,Nat.add_comm,Nat.add_left_comm,Nat.add_assoc]
  have sep := (List.nodup_append'.mp (perm.nodup_iff.mpr geo.1)).2.2
  have frame := (h.shift_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready).2.2
  intro q member
  apply frame
  intro hit
  apply List.disjoint_left.mp sep member
  rcases List.mem_append.mp hit with hg | hv
  · exact List.mem_append_left _ (List.mem_append_left _ hg)
  · exact List.mem_append_right _ (List.mem_append_left _ hv)

def hmrShiftRows (z : ECDSAAdd.Divsteps.ZState) (early frozen : Bool) : ECDSAAdd.Divsteps.ZState :=
  {z with g:=z.g/2, fv:=if early then 2*z.fv else if frozen then z.fv else 2*z.fv}

theorem HmrSourceFront.Compiled.shift_encodes (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (even : z.g%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^vWidth:Nat):Int) ≤ z.fv)
    (upper : early=true ∨ s.basis frozen=false → z.fv < ((2^vWidth:Nat):Int)) :
    P.headBank.Encodes (run (P.shift early frozen) m s).basis (hmrShiftRows z early (s.basis frozen)) := by
  have values := h.shift_value P A bank fgWidth vWidth exitWidth early frozen counter s m
    (by rw [encodes.2.1]; exact even) (by rw [encodes.2.2.1]; exact lower)
    (by rw [encodes.2.2.1]; exact upper)
  have fixed := h.shift_fixed P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have keep (r : WindowRow) (subset : ∀q∈r.wires,q∈P.headBank.f.wires++P.headBank.gv.wires) :
      r.value (run (P.shift early frozen) m s).basis=r.value s.basis := by
    unfold WindowRow.value signedRegValue
    rw [regValue_congr _ _ _ (by
      intro q hq
      apply fixed
      simp only [List.mem_cons,List.mem_append]
      have sub := subset q hq
      simp only [List.mem_append] at sub
      exact Or.inr (Or.inr (by tauto)))]
  refine ⟨(keep _ (fun q hq => List.mem_append_left _ hq)).trans encodes.1,?_,?_,
    (keep _ (fun q hq => List.mem_append_right _ hq)).trans encodes.2.2.2⟩
  · simpa only [encodes.2.1] using values.1
  · simpa only [encodes.2.2.1] using values.2

theorem HmrSourceFront.Compiled.shift_exit (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (even : z.g%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^vWidth:Nat):Int) ≤ z.fv)
    (upper : early=true ∨ s.basis frozen=false → z.fv < ((2^vWidth:Nat):Int))
    (fits : exitWidth.Fits (hmrShiftRows z early (s.basis frozen))) :
    let out := run (P.shift early frozen++P.shrinking) m s
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧
    P.exitBank.Encodes out.basis (hmrShiftRows z early (s.basis frozen)) ∧
    ∀q∈P.branch::P.sigma::hmrFrontInputs early frozen counter,out.basis q=s.basis q := by
  let mid := run (P.shift early frozen) m s
  let tape := m.drop (measurementCount (P.shift early frozen))
  have shifted := h.shift_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have encoded := h.shift_encodes P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes even lower upper
  have exited := h.exit_state P A bank fgWidth vWidth exitWidth early frozen counter mid tape
    (hmrShiftRows z early (s.basis frozen)) shifted.2.1 encoded fits
  have fixed := h.shift_fixed P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  dsimp only
  rw [run_append,run_take]
  refine ⟨exited.1.trans shifted.1,exited.2.1,exited.2.2.1,?_⟩
  intro q hq
  rw [exited.2.2.2 q hq]
  apply fixed
  simp only [List.mem_cons,List.mem_append] at hq ⊢
  rcases hq with hb | hs | hc
  · exact Or.inl hb
  · exact Or.inr (Or.inl hs)
  · exact Or.inr (Or.inr (Or.inl (Or.inl hc)))

end ECDSAAdd.Arithmetic.Paper935
