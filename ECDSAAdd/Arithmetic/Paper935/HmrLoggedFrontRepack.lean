import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontRepack
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontCorrect

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.run_repacked (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (C : Arena) (moves : List (Wire × Wire))
    (checked : P.exitArena.checkRepack moves=some C)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z).z) :
    let out := run (P.program early frozen counter++repack moves) m s
    let expected := if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z
    out.phase=s.phase ∧ C.Ready out.basis ∧ (P.exitBank.repacked moves).Encodes out.basis expected ∧
    signedRegValue (repackView moves counter) out.basis=expected.z := by
  let mid := run (P.program early frozen counter) m s
  let tape := m.drop (measurementCount (P.program early frozen counter))
  have front := h.run_math P A bank fgWidth vWidth exitWidth early frozen counter s m z
    ready encodes counterValue fodd frozenZero prefit exitfit zfit
  have legal := P.exitArena.checkRepack_valid C moves checked
  have distinct : ∀q∈moves,q.1≠q.2 := fun q hq => (legal q hq).1
  dsimp only
  rw [run_append,run_take]
  refine ⟨(repack_phase moves distinct mid tape).trans front.1,
    P.exitArena.checkRepack_ready C moves checked mid tape front.2.1,
    P.exitBank.repacked_encodes moves distinct mid tape _ front.2.2.1,?_⟩
  exact (repack_rows moves distinct counter mid tape).trans front.2.2.2


theorem HmrSourceFront.Logged.run_repacked_counter (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (C : Arena) (moves : List (Wire × Wire))
    (checked : P.exitArena.checkRepack moves=some C)
    (away : ∀p∈moves,p.1∉counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z).z) :
    let out := run (P.program early frozen counter++repack moves) m s
    let expected := if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z
    out.phase=s.phase ∧ C.Ready out.basis ∧ (P.exitBank.repacked moves).Encodes out.basis expected ∧
    signedRegValue counter out.basis=expected.z := by
  have geom := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have fixed := loggedBank_fixed _ _ _ _ _ _ _ h.shrinking
    (P.branch::P.sigma::hmrFrontInputs early frozen counter) geom.1 geom.2
  have owned : ∀q∈counter,q∈P.exitArena.live := by
    intro q hq
    apply fixed.2.1
    simp only [List.mem_toFinset,List.mem_append,List.mem_cons,hmrFrontInputs]
    tauto
  have view := P.exitArena.checkRepack_fixed_view C moves checked counter owned away
  have result := h.run_repacked P A bank fgWidth vWidth exitWidth early frozen counter C moves checked
    s m z ready encodes counterValue fodd frozenZero prefit exitfit zfit
  simpa only [view] using result


end ECDSAAdd.Arithmetic.Paper935
