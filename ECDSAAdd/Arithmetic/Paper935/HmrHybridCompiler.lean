import ECDSAAdd.Arithmetic.Paper935.HmrHybridRow
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source `_hybrid_k` at the actual arena census, after the shared carry
has been allocated. No numerical census is supplied as a hypothesis. -/
def hmrHybridCount (A : Arena) (width : Nat) : Nat := min (935-A.live.card) (width-1)

def compileHmrHybridRow (A : Arena) (control carry : Wire) (a b : List Wire) :
    Option (Arena × List Wire) :=
  if 0<b.length ∧ a.length=b.length ∧ (control::carry::(a++b)).Nodup ∧
      (∀q∈control::carry::(a++b),q∈A.live) then
    A.borrowMany (hmrHybridCount A b.length)
  else none

theorem compileHmrHybridRow_contract (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    0<b.length ∧ a.length=b.length ∧ (control::carry::(a++b)).Nodup ∧
      (∀q∈control::carry::(a++b),q∈A.live) ∧ A.borrowMany (hmrHybridCount A b.length)=some (B,work) := by
  unfold compileHmrHybridRow at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2.1,valid.2.2.2,h⟩
  next => simp at h

theorem compileHmrHybridRow_exists (A : Arena) (control carry : Wire) (a b : List Wire)
    (positive : 0<b.length) (width : a.length=b.length) (nd : (control::carry::(a++b)).Nodup)
    (owned : ∀q∈control::carry::(a++b),q∈A.live) :
    ∃ B work,compileHmrHybridRow A control carry a b=some (B,work) := by
  have bound := A.peak_bound
  have cap : A.live.card+hmrHybridCount A b.length≤935 := by
    have := Nat.min_le_left (935-A.live.card) (b.length-1)
    unfold hmrHybridCount
    omega
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity (hmrHybridCount A b.length)).mpr cap
  exact ⟨B,work,by simp only [compileHmrHybridRow,if_pos (And.intro positive (And.intro width (And.intro nd owned))),h]⟩

theorem compileHmrHybridRow_geometry (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    (control::carry::(a++b++work)).Nodup ∧ work.length < b.length := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have borrow := A.borrowMany_contract B _ work hc.2.2.2.2
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

theorem compileHmrHybridRow_run (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridRow control a b carry work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
    regValue b out.basis=(if s.basis control then
      (regValue a s.basis+regValue b s.basis+(s.basis carry).toNat)%2^b.length else regValue b s.basis) := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have geometry := compileHmrHybridRow_geometry A B control carry a b work h
  have borrow := A.borrowMany_contract B _ work hc.2.2.2.2
  apply hmrHybridRow_run control carry a b work geometry.1 hc.2.1 geometry.2 s m
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridRow_return (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrHybridRow control a b carry work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have actual := compileHmrHybridRow_run A B control carry a b work h s m ready
  have readyOut : A.Ready (run (hmrHybridRow control a b carry work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (hc.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,hmrBorrow_return A B _ work hc.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
