import ECDSAAdd.Arithmetic.Paper935.HmrZero6Cycle
import ECDSAAdd.Arithmetic.Paper935.BorrowGeometry

namespace ECDSAAdd.Arithmetic.Paper935

def hmrCounterPorts (counter work : List Wire) (i : Fin 12) : Wire :=
  (counter++work).getD i.val 0

/-- Allocate the six fresh sites in source creation order: five chain
leaves followed by the keeper. This is a component allocator, not a walk. -/
def compileHmrCounter (A : Arena) (counter : List Wire) : Option (Arena × List Wire) :=
  if counter.length=6 ∧ counter.Nodup ∧ counter.toFinset⊆A.live then A.borrowMany 6 else none

theorem compileHmrCounter_contract (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) :
    counter.length=6 ∧ counter.Nodup ∧ counter.toFinset⊆A.live ∧ A.borrowMany 6=some (B,work) := by
  unfold compileHmrCounter at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2,h⟩
  next invalid => simp at h

theorem compileHmrCounter_exists (A : Arena) (counter : List Wire)
    (len : counter.length=6) (distinct : counter.Nodup) (owned : counter.toFinset⊆A.live)
    (capacity : A.live.card+6≤935) : ∃ B work,compileHmrCounter A counter=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity 6).mpr capacity
  exact ⟨B,work,by simp [compileHmrCounter,len,distinct,owned,h]⟩

theorem compileHmrCounter_geometry (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) :
    Function.Injective (hmrCounterPorts counter work) ∧ B.live.card=A.live.card+6 := by
  obtain ⟨len,distinct,owned,borrow⟩ := compileHmrCounter_contract A B counter work h
  have hc := A.borrowMany_contract B 6 work borrow
  have nd := (A.borrowMany_append B 6 work counter borrow distinct owned).1
  have length : (counter++work).length=12 := by simp [len,hc.1]
  refine ⟨?_,(A.borrowMany_live B 6 work borrow).2⟩
  intro i j eq
  have hi : i.val<(counter++work).length := by rw [length]; exact i.isLt
  have hj : j.val<(counter++work).length := by rw [length]; exact j.isLt
  have he : (counter++work).get ⟨i.val,hi⟩=(counter++work).get ⟨j.val,hj⟩ := by
    simpa only [hmrCounterPorts,List.getD_eq_get _ _ ⟨i.val,hi⟩,
      List.getD_eq_get _ _ ⟨j.val,hj⟩] using eq
  have ids := (List.nodup_iff_injective_get.mp nd) he
  exact Fin.ext (congrArg (fun k : Fin (counter++work).length => k.val) ids)

theorem compileHmrCounter_clean (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) (s : BasisState) (ready : A.Ready s)
    (i : Fin 12) (hscratch : (6 : Nat) ≤ i.val) : s (hmrCounterPorts counter work i)=false := by
  obtain ⟨len,_,_,borrow⟩ := compileHmrCounter_contract A B counter work h
  have hc := A.borrowMany_contract B 6 work borrow
  have zero := (A.reserve_ready B work.toFinset s ready hc.2.2).2
  apply zero
  apply List.mem_toFinset.mpr
  have bound : i.val-counter.length<work.length := by rw [len,hc.1]; omega
  rw [hmrCounterPorts,List.getD_append_right counter work 0 i.val (by omega),
    List.getD_eq_getElem work 0 bound]
  exact List.getElem_mem bound

theorem hmrCounterPorts_inputs (counter work : List Wire) (len : counter.length=6) :
    [hmrCounterPorts counter work 0,hmrCounterPorts counter work 1,
      hmrCounterPorts counter work 2,hmrCounterPorts counter work 3,
      hmrCounterPorts counter work 4,hmrCounterPorts counter work 5]=counter := by
  rcases counter with _ | ⟨c0,counter⟩
  · simp at len
  rcases counter with _ | ⟨c1,counter⟩
  · simp at len
  rcases counter with _ | ⟨c2,counter⟩
  · simp at len
  rcases counter with _ | ⟨c3,counter⟩
  · simp at len
  rcases counter with _ | ⟨c4,counter⟩
  · simp at len
  rcases counter with _ | ⟨c5,counter⟩
  · simp at len
  simp only [List.length_cons] at len
  have empty : counter=[] := List.length_eq_zero_iff.mp (by omega)
  subst counter
  rfl

/-- The source keeper computation on actual borrowed sites, with all clean
entry conditions derived from the arena rather than assumed separately. -/
theorem compileHmrCounter_run (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    run (hmrZero6Keep (hmrCounterPorts counter work)) m s=
      ⟨s.phase,writeBit s.basis (hmrCounterPorts counter work 11)
        (decide (regValue counter s.basis=0))⟩ := by
  have result := hmrZero6Keep_zero (hmrCounterPorts counter work)
    (compileHmrCounter_geometry A B counter work h).1 s m
  rw [hmrCounterPorts_inputs counter work (compileHmrCounter_contract A B counter work h).1] at result
  apply result
  · exact ⟨compileHmrCounter_clean A B counter work h _ ready 6 (by decide),
      compileHmrCounter_clean A B counter work h _ ready 7 (by decide),
      compileHmrCounter_clean A B counter work h _ ready 8 (by decide),
      compileHmrCounter_clean A B counter work h _ ready 9 (by decide),
      compileHmrCounter_clean A B counter work h _ ready 10 (by decide)⟩
  · exact compileHmrCounter_clean A B counter work h _ ready 11 (by decide)

end ECDSAAdd.Arithmetic.Paper935
