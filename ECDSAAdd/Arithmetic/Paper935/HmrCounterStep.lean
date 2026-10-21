import ECDSAAdd.Arithmetic.Paper935.HmrCounterDecrement
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

/-- Literal source `_z_step`, in either traversal direction. -/
def hmrCounterStep (early dec : Bool) (frozen : Wire) (qs work : List Wire) : Program :=
  if early then
    if dec then hmrEarlyDecrement qs work else hmrEarlyIncrement qs work
  else if dec then hmrArmedDecrement frozen qs work else hmrArmedIncrement frozen qs work

def hmrCounterStepBasis (early dec : Bool) (frozen : Wire) (qs : List Wire) (s : BasisState) : BasisState :=
  if dec then hmrDecrementBasis qs (if early then true else !s frozen) s
  else hmrCarryBasis qs (if early then true else !s frozen) s

def compileHmrCounterStep (A : Arena) (early : Bool) (frozen : Wire) (qs : List Wire) :
    Option (Arena × List Wire) :=
  if qs.length=6 ∧ (frozen::qs).Nodup ∧ (∀q∈frozen::qs,q∈A.live) then
    A.borrowMany (if early then 4 else 5)
  else none

theorem compileHmrCounterStep_contract (A B : Arena) (early : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work)) :
    qs.length=6 ∧ (frozen::qs).Nodup ∧ (∀q∈frozen::qs,q∈A.live) ∧
      A.borrowMany (if early then 4 else 5)=some (B,work) := by
  unfold compileHmrCounterStep at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2,h⟩
  next => simp at h

theorem compileHmrCounterStep_exists (A : Arena) (early : Bool) (frozen : Wire) (qs : List Wire)
    (length : qs.length=6) (nd : (frozen::qs).Nodup) (owned : ∀q∈frozen::qs,q∈A.live)
    (capacity : A.live.card+(if early then 4 else 5)≤935) :
    ∃ B work,compileHmrCounterStep A early frozen qs=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity (if early then 4 else 5)).mpr capacity
  exact ⟨B,work,by simp only [compileHmrCounterStep,if_pos (And.intro length (And.intro nd owned)),h]⟩

theorem compileHmrCounterStep_run (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrCounterStep early dec frozen qs work) m s=
      ⟨s.phase,hmrCounterStepBasis early dec frozen qs s.basis⟩ := by
  have hc := compileHmrCounterStep_contract A B early frozen qs work h
  have borrow := A.borrowMany_contract B (if early then 4 else 5) work hc.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have clean : ∀q∈work,s.basis q=false := by
    intro q hq
    exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)
  have nd : (frozen::(qs++work)).Nodup := by
    change ((frozen::qs)++work).Nodup
    apply List.nodup_append'.mpr
    refine ⟨hc.2.1,borrow.2.1,?_⟩
    exact List.disjoint_left.mpr (fun q hq hw => Finset.disjoint_left.mp valid.2 (hc.2.2.1 q hq) (List.mem_toFinset.mpr hw))
  cases he : early with
  | false =>
    have length : work.length+1=qs.length := by simp [he] at borrow; omega
    cases dec
    · exact hmrArmedIncrement_run frozen qs work nd length s m clean
    · exact hmrArmedDecrement_run frozen qs work nd length s m clean
  | true =>
    cases qs with
    | nil => simp at hc
    | cons q rest =>
      have length : work.length+1=rest.length := by simp [he] at borrow; simp only [List.length_cons] at hc; omega
      have tailND := (List.nodup_cons.mp nd).2
      cases dec
      · exact hmrEarlyIncrement_run q rest work tailND length s m clean
      · exact hmrEarlyDecrement_run q rest work tailND length s m clean

theorem hmrCounterStepBasis_outside (early dec : Bool) (frozen : Wire) (qs : List Wire) (s : BasisState)
    (q : Wire) (outside : q∉qs) : hmrCounterStepBasis early dec frozen qs s q=s q := by
  cases dec
  · exact hmrCarryBasis_outside qs _ s q outside
  · exact hmrDecrementBasis_outside qs _ s q outside

/-- Scratch is actually clean after the measured circuit, so it can be
returned to the original arena even though the live counter has changed. -/
theorem compileHmrCounterStep_return (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrCounterStep early dec frozen qs work) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧ B.release work.toFinset out.basis=some A ∧
      ∀q,q∉qs → out.basis q=s.basis q := by
  have hc := compileHmrCounterStep_contract A B early frozen qs work h
  have actual := compileHmrCounterStep_run A B early dec frozen qs work h s m ready
  have frame : ∀q,q∉qs → (run (hmrCounterStep early dec frozen qs work) m s).basis q=s.basis q := by
    intro q hq; rw [actual]; exact hmrCounterStepBasis_outside early dec frozen qs s.basis q hq
  have readyOut : A.Ready (run (hmrCounterStep early dec frozen qs work) m s).basis := by
    intro q bound absent
    rw [frame q (fun hq => absent (hc.2.2.1 q (List.mem_cons_of_mem frozen hq)))]
    exact ready q bound absent
  exact ⟨by rw [actual],readyOut,hmrBorrow_return A B _ work hc.2.2.2 _ readyOut,frame⟩

end ECDSAAdd.Arithmetic.Paper935
