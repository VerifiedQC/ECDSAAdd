import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRear
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontEntryFrame

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.rear_fixed (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : P.headArena.Ready s.basis) (encodes : P.headBank.Encodes s.basis z)
    (gfit : PayloadFits (fgWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.f z.g))
    (vfit : PayloadFits (vWidth+1) (branchInt (s.basis P.sigma) (s.basis P.branch) z.fv z.gv))
    (even : (branchInt (s.basis P.sigma) (s.basis P.branch) z.f z.g)%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^vWidth:Nat):Int) ≤ z.fv)
    (upper : early=true ∨ s.basis frozen=false → z.fv < ((2^vWidth:Nat):Int))
    (fits : exitWidth.Fits (hmrShiftRows (hmrBranchRows z (s.basis P.sigma) (s.basis P.branch)) early (s.basis frozen))) :
    ∀q∈P.branch::P.sigma::(if early then [] else [frozen]),
      (run (P.rear early frozen counter) m s).basis q=s.basis q := by
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
  intro q hq
  unfold HmrSourceFront.rear
  rw [run_append,run_take]
  have mem : q∈P.branch::P.sigma::hmrFrontInputs early frozen counter := by
    simp only [List.mem_cons] at hq ⊢
    rcases hq with hb | hs | hf
    · exact Or.inl hb
    · exact Or.inr (Or.inl hs)
    · right; right
      cases he : early
      · simp only [he, Bool.false_eq_true, ite_false, List.mem_singleton] at hf
        subst q
        simp [hmrFrontInputs]
      · simp [he] at hf
  have memFixed : q∈P.branch::P.sigma::((if early then [] else [frozen]) ++ P.headBank.f.wires ++ P.headBank.fv.wires) := by
    simp only [List.mem_cons] at hq ⊢
    rcases hq with hb | hs | hf
    · exact Or.inl hb
    · exact Or.inr (Or.inl hs)
    · exact Or.inr (Or.inr (List.mem_append.mpr (Or.inl (List.mem_append.mpr (Or.inl hf)))))
  exact (shifted.2.2.2 q mem).trans (fixed q memFixed)

end ECDSAAdd.Arithmetic.Paper935
