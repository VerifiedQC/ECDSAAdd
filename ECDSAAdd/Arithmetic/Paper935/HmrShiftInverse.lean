import ECDSAAdd.Arithmetic.Paper935.HmrShiftFrame
import ECDSAAdd.Arithmetic.Paper935.RowStageInverse

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrRotate_reverse (payload : List Wire) :
    (hmrRotateRight payload).reverse=hmrRotateLeft payload ∧
    (hmrRotateLeft payload).reverse=hmrRotateRight payload := by
  induction payload with
  | nil => exact ⟨rfl,rfl⟩
  | cons low tail ih => cases tail with
    | nil => exact ⟨rfl,rfl⟩
    | cons next rest => simp [hmrRotateRight,hmrRotateLeft,List.reverse_append,ih,hmrSwap]

theorem hmrRotate_proper (payload : List Wire) (nd : payload.Nodup) :
    ProperProgram (hmrRotateRight payload) ∧ ProperProgram (hmrRotateLeft payload) := by
  induction payload with
  | nil => simp [hmrRotateRight,hmrRotateLeft,ProperProgram]
  | cons low tail ih => cases tail with
    | nil => simp [hmrRotateRight,hmrRotateLeft,ProperProgram]
    | cons next rest =>
      have hn := List.nodup_cons.mp nd
      have ne : low≠next := fun eq => hn.1 (by simp [eq])
      have swap : ProperProgram (hmrSwap low next) := by
        simp [hmrSwap,ProperProgram,ProperGate,ne,Ne.symm ne]
      simp only [hmrRotateRight,hmrRotateLeft,properProgram_append]
      exact ⟨⟨swap,(ih hn.2).1⟩,⟨(ih hn.2).2,swap⟩⟩

theorem hmrShift_free_proper (sign : Wire) (payload : List Wire) (nd : (sign::payload).Nodup) :
    ProperProgram (hmrShiftDown sign payload) ∧ ProperProgram (hmrShiftUpFree sign payload) := by
  cases payload with
  | nil => simp [hmrShiftDown,hmrShiftUpFree,ProperProgram]
  | cons low tail =>
    have topMem : (low::tail).getLastD 0∈low::tail := by
      rw [List.getLastD_cons]; exact List.getLastD_mem_cons
    have hn := List.nodup_cons.mp nd
    have ne : sign≠(low::tail).getLastD 0 := fun eq => hn.1 (eq ▸ topMem)
    have gate : ProperProgram [.CX sign ((low::tail).getLastD 0)] := by
      simpa only [ProperProgram,List.mem_singleton,forall_eq,ProperGate] using ne
    simp only [hmrShiftDown,hmrShiftUpFree,properProgram_append]
    exact ⟨⟨(hmrRotate_proper _ hn.2).1,gate⟩,⟨gate,(hmrRotate_proper _ hn.2).2⟩⟩

/-- Source free shift-up and shift-down are each other's explicit inverse;
only their ordinary CX/SWAP streams are reversed here. -/
theorem hmrShift_free_roundtrip (sign : Wire) (payload : List Wire)
    (nd : (sign::payload).Nodup) (s : State) (m n : List Bool) :
    run (hmrShiftUpFree sign payload) n (run (hmrShiftDown sign payload) m s)=s ∧
    run (hmrShiftDown sign payload) n (run (hmrShiftUpFree sign payload) m s)=s := by
  have reverse : (hmrShiftDown sign payload).reverse=hmrShiftUpFree sign payload := by
    cases payload with
    | nil => rfl
    | cons low tail => simp only [hmrShiftDown,hmrShiftUpFree,List.reverse_append,
        List.reverse_singleton,(hmrRotate_reverse (low::tail)).1]
  have inverse : (hmrShiftUpFree sign payload).reverse=hmrShiftDown sign payload := by
    rw [←reverse,List.reverse_reverse]
  have proper := hmrShift_free_proper sign payload nd
  constructor
  · simpa only [reverse] using run_reverse_proper _ proper.1 s m n
  · simpa only [inverse] using run_reverse_proper _ proper.2 s m n

/-- Source `_shift_up_inv` is the ascending controlled payload chain
followed by the same controlled sign gate. -/
def hmrShiftUpInv (alive sign : Wire) (payload : List Wire) : Program :=
  match payload with
  | [] => []
  | _::_ => shiftRight alive payload ++ [.CCX alive sign (payload.getLastD 0)]

theorem hmrControlledRotate_reverse (alive : Wire) (payload : List Wire) :
    (shiftLeft alive payload).reverse=shiftRight alive payload := by
  induction payload with
  | nil => rfl
  | cons low tail ih => cases tail with
    | nil => rfl
    | cons next rest => simp [shiftLeft,shiftRight,List.reverse_append,ih,cswap]

theorem hmrShiftUp_proper (alive sign : Wire) (payload : List Wire)
    (nd : (alive::sign::payload).Nodup) : ProperProgram (hmrShiftUp alive sign payload) := by
  cases payload with
  | nil => simp [hmrShiftUp,ProperProgram]
  | cons low tail =>
    have h := List.nodup_cons.mp nd
    have hn : (alive::low::tail).Nodup := List.nodup_cons.mpr
      ⟨fun hp => h.1 (List.mem_cons_of_mem sign hp),(List.nodup_cons.mp h.2).2⟩
    have topMem : (low::tail).getLastD 0∈low::tail := by
      rw [List.getLastD_cons]; exact List.getLastD_mem_cons
    have ca : alive≠(low::tail).getLastD 0 := fun eq => (List.nodup_cons.mp hn).1 (eq ▸ topMem)
    have cs : sign≠(low::tail).getLastD 0 := fun eq => (List.nodup_cons.mp h.2).1 (eq ▸ topMem)
    rw [hmrShiftUp,properProgram_append]
    exact ⟨by simpa only [ProperProgram,List.mem_singleton,forall_eq,ProperGate] using And.intro ca cs,
      shiftLeft_proper alive (low::tail) hn⟩

theorem hmrShiftUp_reverse (alive sign : Wire) (payload : List Wire) :
    (hmrShiftUp alive sign payload).reverse=hmrShiftUpInv alive sign payload := by
  cases payload with
  | nil => rfl
  | cons low tail => simp only [hmrShiftUp,hmrShiftUpInv,List.reverse_append,
      List.reverse_singleton,hmrControlledRotate_reverse]

theorem hmrShiftUp_roundtrip (alive sign : Wire) (payload : List Wire)
    (nd : (alive::sign::payload).Nodup) (s : State) (m n : List Bool) :
    run (hmrShiftUpInv alive sign payload) n (run (hmrShiftUp alive sign payload) m s)=s ∧
    run (hmrShiftUp alive sign payload) n (run (hmrShiftUpInv alive sign payload) m s)=s := by
  have proper := hmrShiftUp_proper alive sign payload nd
  have reverse := hmrShiftUp_reverse alive sign payload
  constructor
  · simpa only [reverse] using run_reverse_proper _ proper s m n
  · have p := run_reverse_proper _ (properProgram_reverse _ proper) s m n
    rw [List.reverse_reverse,reverse] at p
    exact p

def hmrShiftUpArmedInv (frozen sign : Wire) (payload : List Wire) : Program :=
  [.X frozen] ++ hmrShiftUpInv frozen sign payload ++ [.X frozen]

theorem hmrShiftUpArmed_roundtrip (frozen sign : Wire) (payload : List Wire)
    (nd : (frozen::sign::payload).Nodup) (s : State) (m n : List Bool) :
    run (hmrShiftUpArmedInv frozen sign payload) n (run (hmrShiftUpArmed frozen sign payload) m s)=s ∧
    run (hmrShiftUpArmed frozen sign payload) n (run (hmrShiftUpArmedInv frozen sign payload) m s)=s := by
  have proper : ProperProgram (hmrShiftUpArmed frozen sign payload) := by
    simp only [hmrShiftUpArmed,properProgram_append]
    exact ⟨⟨by simp [ProperProgram,ProperGate],hmrShiftUp_proper frozen sign payload nd⟩,
      by simp [ProperProgram,ProperGate]⟩
  have reverse : (hmrShiftUpArmed frozen sign payload).reverse=hmrShiftUpArmedInv frozen sign payload := by
    simp [hmrShiftUpArmed,hmrShiftUpArmedInv,List.reverse_append,hmrShiftUp_reverse]
  constructor
  · simpa only [reverse] using run_reverse_proper _ proper s m n
  · have p := run_reverse_proper _ (properProgram_reverse _ proper) s m n
    rw [List.reverse_reverse,reverse] at p
    exact p

end ECDSAAdd.Arithmetic.Paper935
