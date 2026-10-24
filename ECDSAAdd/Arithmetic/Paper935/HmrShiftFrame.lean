import ECDSAAdd.Arithmetic.Paper935.HmrShiftArmed

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrShift_counts (sign alive : Wire) (payload : List Wire) :
    toffoliCount (hmrShiftDown sign payload)=0 ∧ measurementCount (hmrShiftDown sign payload)=0 ∧
    toffoliCount (hmrShiftUpFree sign payload)=0 ∧ measurementCount (hmrShiftUpFree sign payload)=0 ∧
    toffoliCount (hmrShiftUp alive sign payload)=payload.length ∧ measurementCount (hmrShiftUp alive sign payload)=0 ∧
    toffoliCount (hmrShiftUpArmed alive sign payload)=payload.length ∧ measurementCount (hmrShiftUpArmed alive sign payload)=0 := by
  cases payload with
  | nil => simp [hmrShiftDown,hmrShiftUpFree,hmrShiftUp,hmrShiftUpArmed,toffoliCount,measurementCount]
  | cons low tail =>
    have plain := hmrRotate_counts (low::tail)
    have controlled := shift_counts alive (low::tail)
    simp [hmrShiftDown,hmrShiftUpFree,hmrShiftUp,hmrShiftUpArmed,toffoliCount_append,
      measurementCount_append,plain,controlled,toffoliCount,measurementCount,Nat.add_comm]

theorem hmrShift_free_frame (sign : Wire) (payload : List Wire) (s : State) (m : List Bool) :
    (run (hmrShiftDown sign payload) m s).phase=s.phase ∧
    (∀q,q∉payload → (run (hmrShiftDown sign payload) m s).basis q=s.basis q) ∧
    (run (hmrShiftUpFree sign payload) m s).phase=s.phase ∧
    (∀q,q∉payload → (run (hmrShiftUpFree sign payload) m s).basis q=s.basis q) := by
  cases payload with
  | nil => simp [hmrShiftDown,hmrShiftUpFree,run]
  | cons low tail =>
    have topMem : (low::tail).getLastD 0∈low::tail := by
      rw [List.getLastD_cons]; exact List.getLastD_mem_cons
    let t := run [.CX sign ((low::tail).getLastD 0)] m s
    have right := hmrRotate_frame (low::tail) s m
    have left := hmrRotate_frame (low::tail) t m
    rw [hmrShiftDown,hmrShiftUpFree,run_append,run_take,run_append,run_take,
      (hmrRotate_counts (low::tail)).2.1,List.drop_zero]
    refine ⟨right.1,?_,left.2.2.1,?_⟩
    · intro q hq
      have ne : q≠(low::tail).getLastD 0 := fun eq => hq (eq ▸ topMem)
      simp only [run,writeBit,Function.update_of_ne ne]
      exact right.2.1 q hq
    · intro q hq
      change (run (hmrRotateLeft (low::tail)) m t).basis q=s.basis q
      rw [left.2.2.2 q hq]
      have ne : q≠(low::tail).getLastD 0 := fun eq => hq (eq ▸ topMem)
      simp only [t,run,writeBit,Function.update_of_ne ne]

theorem hmrShiftUp_frame (alive sign : Wire) (payload : List Wire)
    (nd : (alive::sign::payload).Nodup) (s : State) (m : List Bool) :
    (run (hmrShiftUp alive sign payload) m s).phase=s.phase ∧
    (∀q,q∉payload → (run (hmrShiftUp alive sign payload) m s).basis q=s.basis q) := by
  cases payload with
  | nil => simp [hmrShiftUp,run]
  | cons low tail =>
    rw [hmrShiftUp_select alive sign low tail nd]
    cases s.basis alive
    · exact ⟨rfl,fun _ _ => rfl⟩
    · exact (hmrShift_free_frame sign (low::tail) s m).2.2

theorem hmrShiftUpArmed_frame (frozen sign : Wire) (payload : List Wire)
    (nd : (frozen::sign::payload).Nodup) (s : State) (m : List Bool) :
    (run (hmrShiftUpArmed frozen sign payload) m s).phase=s.phase ∧
    (∀q,q∉payload → (run (hmrShiftUpArmed frozen sign payload) m s).basis q=s.basis q) := by
  let t := run [.X frozen] m s
  have h := hmrShiftUp_frame frozen sign payload nd t m
  have away : frozen∉payload := fun hp => (List.nodup_cons.mp nd).1 (List.mem_cons_of_mem sign hp)
  rw [hmrShiftUpArmed,run_append,run_take,run_append,run_take]
  simp only [measurementCount_append,show measurementCount [.X frozen]=0 from rfl,
    (hmrShift_counts sign frozen payload).2.2.2.2.2.1,Nat.zero_add,List.drop_zero]
  refine ⟨h.1,?_⟩
  intro q hq
  by_cases eq : q=frozen
  · subst q
    simp only [run,writeBit,Function.update_self]
    change (!(run (hmrShiftUp frozen sign payload) m t).basis frozen)=s.basis frozen
    rw [h.2 frozen away]
    simp [t,run,writeBit]
  · simp only [run,writeBit,Function.update_of_ne eq]
    change (run (hmrShiftUp frozen sign payload) m t).basis q=s.basis q
    rw [h.2 q hq]
    simp only [t,run,writeBit,Function.update_of_ne eq]

end ECDSAAdd.Arithmetic.Paper935
