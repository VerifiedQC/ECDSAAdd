import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontRepack

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrSourceFrontLog_run (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (logs : HmrFrontAllocationLog)
    (compiled : compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth early frozen counter logs=some P)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (frozenZero : (if early then false else s.basis frozen)=true → z.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z).z) :
    let out := run (P.program early frozen counter) m s
    let expected := if (if early then false else s.basis frozen) then z else ECDSAAdd.Divsteps.zStep z
    out.phase=s.phase ∧ P.exitArena.Ready out.basis ∧ P.exitBank.Encodes out.basis expected ∧
    signedRegValue counter out.basis=expected.z := by
  have checkedFront := compileHmrSourceFrontLog_contract A bank fgWidth vWidth exitWidth early frozen counter logs P compiled
  exact checkedFront.run_math P A bank fgWidth vWidth exitWidth early frozen counter
    s m z ready encodes counterValue fodd frozenZero prefit exitfit zfit

theorem compileHmrSourceFrontLog_repack_run (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (logs : HmrFrontAllocationLog)
    (compiled : compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth early frozen counter logs=some P)
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
  have checkedFront := compileHmrSourceFrontLog_contract A bank fgWidth vWidth exitWidth early frozen counter logs P compiled
  exact checkedFront.run_repacked_counter P A bank fgWidth vWidth exitWidth early frozen counter C moves checked away
    s m z ready encodes counterValue fodd frozenZero prefit exitfit zfit

end ECDSAAdd.Arithmetic.Paper935
