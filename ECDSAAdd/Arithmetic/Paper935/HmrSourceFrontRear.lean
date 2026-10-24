import ECDSAAdd.Arithmetic.Paper935.HmrFrontRowMath

namespace ECDSAAdd.Arithmetic.Paper935

def HmrSourceFront.rear (P : HmrSourceFront) (early : Bool) (frozen : Wire) (counter : List Wire) : Program :=
  P.addCounter early frozen counter ++ (P.shift early frozen ++ P.shrinking)

theorem HmrSourceFront.Compiled.rear_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (gfit : PayloadFits (fgWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.f z.g))
    (vfit : PayloadFits (vWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.fv z.gv))
    (even : (branchInt (s.basis P.sigma) (s.basis P.branch) z.f z.g)%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^vWidth:Nat):Int) ≤ z.fv)
    (upper : early=true ∨ s.basis frozen=false → z.fv < ((2^vWidth:Nat):Int))
    (fits : exitWidth.Fits (hmrShiftRows (hmrBranchRows z (s.basis P.sigma) (s.basis P.branch)) early (s.basis frozen))) :
    let out := run (P.rear early frozen counter) m s
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧
    P.exitBank.Encodes out.basis (hmrShiftRows (hmrBranchRows z (s.basis P.sigma) (s.basis P.branch)) early (s.basis frozen)) ∧
    regValue counter out.basis=(regValue counter s.basis+(if early then true else !s.basis frozen).toNat)%2^counter.length := by
  let mid := run (P.addCounter early frozen counter) m s
  let tape := m.drop (measurementCount (P.addCounter early frozen counter))
  let rows := hmrBranchRows z (s.basis P.sigma) (s.basis P.branch)
  have state := h.addCounter_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have encoded := h.addCounter_encodes P A bank fgWidth vWidth exitWidth early frozen counter s m z ready encodes gfit vfit
  have fixed := h.addCounter_fixed P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have frozenSame (he : early=false) : mid.basis frozen=s.basis frozen := fixed frozen (by simp [he])
  have active : (early=true ∨ mid.basis frozen=false) ↔ (early=true ∨ s.basis frozen=false) := by
    cases he : early
    · rw [frozenSame he]
    · simp
  have rowsSame : hmrShiftRows rows early (mid.basis frozen)=hmrShiftRows rows early (s.basis frozen) := by
    cases he : early
    · rw [frozenSame he]
    · rfl
  have shifted := h.shift_exit P A bank fgWidth vWidth exitWidth early frozen counter mid tape rows state.2.1 encoded even
    (fun ha => lower (active.mp ha)) (fun ha => upper (active.mp ha)) (by rw [rowsSame]; exact fits)
  have counterSame : regValue counter (run (P.shift early frozen++P.shrinking) tape mid).basis=regValue counter mid.basis :=
    regValue_congr _ _ _ (fun q hq => shifted.2.2.2 q (by simp [hmrFrontInputs,hq]))
  unfold HmrSourceFront.rear
  dsimp only
  rw [run_append,run_take]
  refine ⟨shifted.1.trans state.1,shifted.2.1,?_,counterSame.trans state.2.2.1⟩
  rw [rowsSame] at shifted
  exact shifted.2.2.1

end ECDSAAdd.Arithmetic.Paper935
