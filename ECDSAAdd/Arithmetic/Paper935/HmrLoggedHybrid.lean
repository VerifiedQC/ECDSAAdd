import ECDSAAdd.Arithmetic.Paper935.HmrHybridCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrHybridRowLog (A : Arena) (control carry : Wire) (a b work : List Wire) :
    Option Arena :=
  if 0<b.length ∧ a.length=b.length ∧ (control::carry::(a++b)).Nodup ∧
      (∀q∈control::carry::(a++b),q∈A.live) then
    A.checkBorrow (hmrHybridCount A b.length) work
  else none

theorem compileHmrHybridRowLog_contract (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    0<b.length ∧ a.length=b.length ∧ (control::carry::(a++b)).Nodup ∧
      (∀q∈control::carry::(a++b),q∈A.live) ∧ A.checkBorrow (hmrHybridCount A b.length) work=some B := by
  unfold compileHmrHybridRowLog at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2.1,valid.2.2.2,h⟩
  next => simp at h

theorem compileHmrHybridRowLog_geometry (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    (control::carry::(a++b++work)).Nodup ∧ work.length < b.length := by
  have hc := compileHmrHybridRowLog_contract A B control carry a b work h
  have borrow := A.checkBorrow_contract B _ work hc.2.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  constructor
  · change ((control::carry::(a++b))++work).Nodup
    apply List.nodup_append'.mpr
    exact ⟨hc.2.2.1,borrow.2.1,List.disjoint_left.mpr (fun q hq hw =>
      Finset.disjoint_left.mp valid.2 (hc.2.2.2.1 q hq) (List.mem_toFinset.mpr hw))⟩
  · have count := borrow.1
    have limit := Nat.min_le_right (935-A.live.card) (b.length-1)
    unfold hmrHybridCount at count
    omega

theorem compileHmrHybridRowLog_run (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridRow control a b carry work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
    regValue b out.basis=(if s.basis control then
      (regValue a s.basis+regValue b s.basis+(s.basis carry).toNat)%2^b.length else regValue b s.basis) := by
  have hc := compileHmrHybridRowLog_contract A B control carry a b work h
  have geometry := compileHmrHybridRowLog_geometry A B control carry a b work h
  have borrow := A.checkBorrow_contract B _ work hc.2.2.2.2
  apply hmrHybridRow_run control carry a b work geometry.1 hc.2.1 geometry.2 s m
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridRowLog_return (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridRow control a b carry work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridRowLog_contract A B control carry a b work h
  have actual := compileHmrHybridRowLog_run A B control carry a b work h s m ready
  have readyOut : A.Ready (run (hmrHybridRow control a b carry work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (hc.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,A.checkBorrow_return B _ work hc.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
