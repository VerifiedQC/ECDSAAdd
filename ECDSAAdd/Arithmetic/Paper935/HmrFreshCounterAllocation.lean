import ECDSAAdd.Arithmetic.Paper935.HmrFreshCounterFree
import ECDSAAdd.Arithmetic.Paper935.HmrCounterAllocation

namespace ECDSAAdd.Arithmetic.Paper935

def hmrFreshPorts (counter work : List Wire) (keeper : Wire) (i : Fin 11) : Wire :=
  (counter++work++[keeper]).getD i.val 0

/-- The retained keeper is owned already; only four NEW prefix sites are borrowed. -/
def compileHmrFreshCounter (A : Arena) (counter : List Wire) (keeper : Wire) : Option (Arena × List Wire) :=
  if counter.length=6 ∧ (counter++[keeper]).Nodup ∧ (counter++[keeper]).toFinset⊆A.live
  then A.borrowMany 4 else none

theorem compileHmrFreshCounter_contract (A B : Arena) (counter work : List Wire) (keeper : Wire)
    (h : compileHmrFreshCounter A counter keeper=some (B,work)) :
    counter.length=6 ∧ (counter++[keeper]).Nodup ∧ (counter++[keeper]).toFinset⊆A.live ∧
      A.borrowMany 4=some (B,work) := by
  unfold compileHmrFreshCounter at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2,h⟩
  next invalid => simp at h

theorem compileHmrFreshCounter_exists (A : Arena) (counter : List Wire) (keeper : Wire)
    (len : counter.length=6) (distinct : (counter++[keeper]).Nodup)
    (owned : (counter++[keeper]).toFinset⊆A.live) (capacity : A.live.card+4≤935) :
    ∃ B work,compileHmrFreshCounter A counter keeper=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity 4).mpr capacity
  exact ⟨B,work,by simp only [compileHmrFreshCounter,if_pos (And.intro len (And.intro distinct owned)),h]⟩

theorem compileHmrFreshCounter_geometry (A B : Arena) (counter work : List Wire) (keeper : Wire)
    (h : compileHmrFreshCounter A counter keeper=some (B,work)) :
    Function.Injective (hmrFreshPorts counter work keeper) ∧ B.live.card=A.live.card+4 := by
  obtain ⟨len,distinct,owned,borrow⟩ := compileHmrFreshCounter_contract A B counter work keeper h
  have hc := A.borrowMany_contract B 4 work borrow
  have nd := (A.borrowMany_append B 4 work (counter++[keeper]) borrow distinct owned).1
  have perm := List.Perm.append_left counter (show ([keeper]++work).Perm (work++[keeper]) from List.perm_append_comm)
  have nd' : (counter++work++[keeper]).Nodup := by
    rw [List.append_assoc] at nd ⊢
    exact perm.nodup_iff.mp nd
  have length : (counter++work++[keeper]).length=11 := by simp [len,hc.1]
  refine ⟨?_,(A.borrowMany_live B 4 work borrow).2⟩
  intro i j eq
  have hi : i.val<(counter++work++[keeper]).length := by rw [length]; exact i.isLt
  have hj : j.val<(counter++work++[keeper]).length := by rw [length]; exact j.isLt
  have he : (counter++work++[keeper]).get ⟨i.val,hi⟩=(counter++work++[keeper]).get ⟨j.val,hj⟩ := by
    simpa only [hmrFreshPorts,List.getD_eq_get _ _ ⟨i.val,hi⟩,
      List.getD_eq_get _ _ ⟨j.val,hj⟩] using eq
  exact Fin.ext (congrArg (fun k : Fin (counter++work++[keeper]).length => k.val)
    ((List.nodup_iff_injective_get.mp nd') he))

theorem compileHmrFreshCounter_clean (A B : Arena) (counter work : List Wire) (keeper : Wire)
    (h : compileHmrFreshCounter A counter keeper=some (B,work)) (s : BasisState) (ready : A.Ready s)
    (i : Fin 11) (lower : (6 : Nat)≤ i.val) (upper : i.val<10) :
    s (hmrFreshPorts counter work keeper i)=false := by
  obtain ⟨len,_,_,borrow⟩ := compileHmrFreshCounter_contract A B counter work keeper h
  have hc := A.borrowMany_contract B 4 work borrow
  have zero := (A.reserve_ready B work.toFinset s ready hc.2.2).2
  apply zero
  apply List.mem_toFinset.mpr
  have bound : i.val-counter.length<work.length := by rw [len,hc.1]; omega
  rw [hmrFreshPorts,List.append_assoc,List.getD_append_right counter (work++[keeper]) 0 i.val (by omega),
    List.getD_append work [keeper] 0 _ bound,List.getD_eq_getElem work 0 bound]
  exact List.getElem_mem bound

theorem hmrFreshPorts_inputs (counter work : List Wire) (keeper : Wire) (len : counter.length=6) :
    [hmrFreshPorts counter work keeper 0,hmrFreshPorts counter work keeper 1,
      hmrFreshPorts counter work keeper 2,hmrFreshPorts counter work keeper 3,
      hmrFreshPorts counter work keeper 4,hmrFreshPorts counter work keeper 5]=counter := by
  simpa only [hmrCounterPorts,hmrFreshPorts,List.append_assoc] using
    hmrCounterPorts_inputs counter (work++[keeper]) len

theorem hmrFreshPorts_keeper (counter work : List Wire) (keeper : Wire)
    (len : counter.length=6) (wlen : work.length=4) :
    hmrFreshPorts counter work keeper 10=keeper := by
  change (counter++work++[keeper]).getD 10 0=keeper
  rw [List.getD_append_right (counter++work) [keeper] 0 10 (by simp [len,wlen])]
  simp [len,wlen]

/-- Actual freshly allocated prefix execution; the only semantic input is
the retained keeper value, while all work cleanliness comes from Ready. -/
theorem compileHmrFreshCounter_run (A B : Arena) (counter work : List Wire) (keeper : Wire)
    (h : compileHmrFreshCounter A counter keeper=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (value : s.basis keeper=decide (regValue counter s.basis=0)) :
    run (hmrFreshFree (hmrFreshPorts counter work keeper)) m s=
      ⟨s.phase,writeBit s.basis keeper false⟩ := by
  have hc := compileHmrFreshCounter_contract A B counter work keeper h
  have wlen := (A.borrowMany_contract B 4 work hc.2.2.2).1
  have result := hmrFreshFree_run (hmrFreshPorts counter work keeper)
    (compileHmrFreshCounter_geometry A B counter work keeper h).1 s m
  rw [hmrFreshValue_zero,hmrFreshPorts_inputs counter work keeper hc.1,
    hmrFreshPorts_keeper counter work keeper hc.1 wlen] at result
  apply result _ value
  exact ⟨compileHmrFreshCounter_clean A B counter work keeper h _ ready 6 (by decide) (by decide),
    compileHmrFreshCounter_clean A B counter work keeper h _ ready 7 (by decide) (by decide),
    compileHmrFreshCounter_clean A B counter work keeper h _ ready 8 (by decide) (by decide),
    compileHmrFreshCounter_clean A B counter work keeper h _ ready 9 (by decide) (by decide)⟩

end ECDSAAdd.Arithmetic.Paper935
