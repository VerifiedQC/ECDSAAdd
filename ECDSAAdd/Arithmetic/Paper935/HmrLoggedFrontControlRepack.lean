import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontCorrect
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontPrepare
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontControlValues
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRepack

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Arithmetic.Divsteps

theorem HmrSourceFront.Logged.run_repacked_control_values (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (C : Arena) (moves : List (Wire × Wire))
    (checked : P.exitArena.checkRepack moves=some C)
    (away : ∀p∈moves,p.1∉P.branch::P.sigma::(if early then [] else [frozen]))
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    :
    let out := run (P.program early frozen counter++repack moves) m s
    out.basis P.sigma=decide (0≤z.z ∧ z.g%2=1) ∧
    out.basis P.branch=decide (ECDSAAdd.Divsteps.bbit z=1) ∧
    (early=false → out.basis frozen=s.basis frozen) := by
  have values := h.run_control_values P A bank fgWidth vWidth exitWidth early frozen counter s m z
    ready encodes counterValue fodd frozenZero prefit exitfit
  have geom := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have fixed := loggedBank_fixed _ _ _ _ _ _ _ h.shrinking
    (P.branch::P.sigma::hmrFrontInputs early frozen counter) geom.1 geom.2
  have owned : ∀q∈P.branch::P.sigma::(if early then [] else [frozen]), q∈P.exitArena.live := by
    intro q hq
    apply fixed.2.1
    simp only [List.mem_toFinset,List.mem_cons,hmrFrontInputs,List.mem_append]
    simp only [List.mem_cons] at hq
    rcases hq with hb | hs | hf
    · exact Or.inl (Or.inl hb)
    · exact Or.inl (Or.inr (Or.inl hs))
    · exact Or.inl (Or.inr (Or.inr (Or.inr hf)))
  have frame (q : Wire) (hq : q∈P.branch::P.sigma::(if early then [] else [frozen])) :=
    P.exitArena.checkRepack_frame C moves checked q (owned q hq)
      (fun p hp eq => away p hp (eq ▸ hq))
      (run (P.program early frozen counter) m s) (m.drop (measurementCount (P.program early frozen counter)))
  dsimp only
  rw [run_append,run_take]
  refine ⟨(frame P.sigma (by simp)).trans values.1,
    (frame P.branch (by simp)).trans values.2.1, ?_⟩
  intro he
  exact (frame frozen (by simp [he])).trans (values.2.2 he)

end ECDSAAdd.Arithmetic.Paper935
