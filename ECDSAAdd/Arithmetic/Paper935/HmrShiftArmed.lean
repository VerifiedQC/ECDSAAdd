import ECDSAAdd.Arithmetic.Paper935.HmrShiftUp
import ECDSAAdd.Arithmetic.Paper935.HmrControlledRotate

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source `_shift_up`: controlled sign clearing precedes the descending
payload CSWAP chain. -/
def hmrShiftUp (alive sign : Wire) (payload : List Wire) : Program :=
  match payload with
  | [] => []
  | _::_ => [.CCX alive sign (payload.getLastD 0)] ++ shiftLeft alive payload

/-- Full-state relation to the free program, including arbitrary input
phase. This does not assume the payload's numerical fit. -/
theorem hmrShiftUp_select (alive sign low : Wire) (tail : List Wire)
    (nd : (alive::sign::low::tail).Nodup) (s : State) (m : List Bool) :
    run (hmrShiftUp alive sign (low::tail)) m s=
      if s.basis alive then run (hmrShiftUpFree sign (low::tail)) m s else s := by
  have h := List.nodup_cons.mp nd
  have hn : (alive::low::tail).Nodup := List.nodup_cons.mpr
    ⟨fun hp => h.1 (List.mem_cons_of_mem sign hp),(List.nodup_cons.mp h.2).2⟩
  have topMem : (low::tail).getLastD 0∈low::tail := by
    rw [List.getLastD_cons]; exact List.getLastD_mem_cons
  have ne : alive≠(low::tail).getLastD 0 := fun eq =>
    (List.nodup_cons.mp hn).1 (eq ▸ topMem)
  rw [hmrShiftUp,hmrShiftUpFree,run_append,run_take,run_append,run_take]
  rw [hmrControlledRotate_left alive (low::tail) hn]
  have control : (run [.CCX alive sign ((low::tail).getLastD 0)] m s).basis alive=s.basis alive := by
    simp only [run,writeBit,Function.update_of_ne ne]
  rw [control]
  cases hc : s.basis alive
  · simp only [Bool.false_eq_true,if_false]
    simp [run,writeBit,hc]
  · simp only [if_true]
    congr 1
    simp [run,writeBit,hc]

/-- Source armed wrapper uses the negation of the frozen bit and restores
that bit after the shift. -/
def hmrShiftUpArmed (frozen sign : Wire) (payload : List Wire) : Program :=
  [.X frozen] ++ hmrShiftUp frozen sign payload ++ [.X frozen]

theorem hmrShiftUp_value (alive sign low top : Wire) (tail lo : List Wire)
    (view : low::tail=lo++[top]) (nd : (alive::sign::low::tail).Nodup)
    (s : State) (m : List Bool)
    (lower : s.basis alive=true → -((2^lo.length:Nat):Int) ≤ signedRegValue ((low::tail)++[sign]) s.basis)
    (upper : s.basis alive=true → signedRegValue ((low::tail)++[sign]) s.basis < ((2^lo.length:Nat):Int)) :
    signedRegValue ((low::tail)++[sign]) (run (hmrShiftUp alive sign (low::tail)) m s).basis=
      if s.basis alive then 2*signedRegValue ((low::tail)++[sign]) s.basis
      else signedRegValue ((low::tail)++[sign]) s.basis := by
  rw [hmrShiftUp_select alive sign low tail nd]
  cases hc : s.basis alive
  · rfl
  · exact hmrShiftUpFree_value sign low top tail lo view (List.nodup_cons.mp nd).2 s m (lower hc) (upper hc)

end ECDSAAdd.Arithmetic.Paper935
