import ECDSAAdd.Arithmetic.Shift
import ECDSAAdd.Framework.GateInverse

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source plain SWAP, expanded into its three CX gates. -/
def hmrSwap (a b : Wire) : Program := [.CX b a,.CX a b,.CX b a]

theorem hmrSwap_run (a b : Wire) (ne : a≠b) (s : State) (m : List Bool) :
    (run (hmrSwap a b) m s).phase=s.phase ∧
    (∀q,q≠a → q≠b → (run (hmrSwap a b) m s).basis q=s.basis q) ∧
    (run (hmrSwap a b) m s).basis a=s.basis b ∧
    (run (hmrSwap a b) m s).basis b=s.basis a := by
  refine ⟨rfl,?_,?_,?_⟩
  · intro q qa qb; simp [hmrSwap,run,writeBit,qa,qb]
  all_goals cases ha : s.basis a <;> cases hb : s.basis b <;>
    simp [hmrSwap,run,writeBit,ne,Ne.symm ne,ha,hb]

theorem hmrSwap_twice (a b : Wire) (ne : a≠b) (s : State) (m n : List Bool) :
    run (hmrSwap a b) n (run (hmrSwap a b) m s)=s := by
  have proper : ProperProgram (hmrSwap a b) := by simp [hmrSwap,ProperProgram,ProperGate,ne,Ne.symm ne]
  exact run_reverse_proper (hmrSwap a b) proper s m n

def hmrRotateRight : List Wire → Program
  | a::b::bs => hmrSwap a b ++ hmrRotateRight (b::bs)
  | _ => []

def hmrRotateLeft : List Wire → Program
  | a::b::bs => hmrRotateLeft (b::bs) ++ hmrSwap a b
  | _ => []

theorem hmrRotate_counts (qs : List Wire) :
    toffoliCount (hmrRotateRight qs)=0 ∧ measurementCount (hmrRotateRight qs)=0 ∧
    toffoliCount (hmrRotateLeft qs)=0 ∧ measurementCount (hmrRotateLeft qs)=0 := by
  induction qs with
  | nil => simp [hmrRotateRight,hmrRotateLeft,toffoliCount,measurementCount]
  | cons a qs ih => cases qs with
    | nil => simp [hmrRotateRight,hmrRotateLeft,toffoliCount,measurementCount]
    | cons b bs => simp [hmrRotateRight,hmrRotateLeft,toffoliCount_append,measurementCount_append,hmrSwap,toffoliCount,measurementCount,ih]

theorem hmrRotate_frame (qs : List Wire) (s : State) (m : List Bool) :
    (run (hmrRotateRight qs) m s).phase=s.phase ∧
    (∀q,q∉qs → (run (hmrRotateRight qs) m s).basis q=s.basis q) ∧
    (run (hmrRotateLeft qs) m s).phase=s.phase ∧
    (∀q,q∉qs → (run (hmrRotateLeft qs) m s).basis q=s.basis q) := by
  induction qs generalizing s with
  | nil => simp [hmrRotateRight,hmrRotateLeft,run]
  | cons a qs ih => cases qs with
    | nil => simp [hmrRotateRight,hmrRotateLeft,run]
    | cons b bs =>
      simp only [hmrRotateRight,hmrRotateLeft]
      rw [run_append,run_take,run_append,run_take,
        show measurementCount (hmrSwap a b)=0 from rfl,(hmrRotate_counts (b::bs)).2.2.2,List.drop_zero]
      have right := ih (run (hmrSwap a b) m s)
      have left := ih s
      refine ⟨right.1,?_,left.2.2.1,?_⟩
      · intro q hq
        have h : q≠a ∧ q≠b ∧ q∉bs := by simpa only [List.mem_cons,not_or] using hq
        rw [right.2.1 q (by simp [h.2.1,h.2.2])]
        simp [hmrSwap,run,writeBit,h.1,h.2.1]
      · intro q hq
        have h : q≠a ∧ q≠b ∧ q∉bs := by simpa only [List.mem_cons,not_or] using hq
        simp only [hmrSwap,run,writeBit,Function.update_of_ne h.1,Function.update_of_ne h.2.1]
        exact left.2.2.2 q (by simp [h.2.1,h.2.2])

end ECDSAAdd.Arithmetic.Paper935
