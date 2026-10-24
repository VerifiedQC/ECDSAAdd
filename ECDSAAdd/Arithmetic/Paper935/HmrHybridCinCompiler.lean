import ECDSAAdd.Arithmetic.Paper935.HmrHybridCin
import ECDSAAdd.Arithmetic.Paper935.HmrHybridSubCin
import ECDSAAdd.Arithmetic.Paper935.HmrHybridSubCompiler

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrHybridCin (A : Arena) (control cin carry : Wire) (a b : List Wire) :
    Option (Arena × List Wire) :=
  if (cin::control::carry::(a++b)).Nodup ∧ cin∈A.live then
    compileHmrHybridRow A control carry a b else none

theorem compileHmrHybridCin_contract (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work)) :
    (cin::control::carry::(a++b)).Nodup ∧ cin∈A.live ∧
      compileHmrHybridRow A control carry a b=some (B,work) := by
  unfold compileHmrHybridCin at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next => simp at h

theorem compileHmrHybridCin_exists (A : Arena) (control cin carry : Wire) (a b : List Wire)
    (positive : 0<b.length) (width : a.length=b.length)
    (nd : (cin::control::carry::(a++b)).Nodup)
    (owned : ∀q∈cin::control::carry::(a++b),q∈A.live) :
    ∃ B work,compileHmrHybridCin A control cin carry a b=some (B,work) := by
  obtain ⟨B,work,h⟩ := compileHmrHybridRow_exists A control carry a b positive width
    (List.nodup_cons.mp nd).2 (fun q hq => owned q (List.mem_cons_of_mem cin hq))
  exact ⟨B,work,by simp only [compileHmrHybridCin,if_pos (And.intro nd (owned cin (by simp))),h]⟩

theorem compileHmrHybridCin_run (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridRowCin control cin carry a b work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
      regValue b out.basis=(if s.basis control then
        (regValue a s.basis+regValue b s.basis+(s.basis cin).toNat)%2^b.length else regValue b s.basis) := by
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have row := compileHmrHybridRow_contract A B control carry a b work hc.2.2
  have geometry := compileHmrHybridRow_geometry A B control carry a b work hc.2.2
  have borrow := A.borrowMany_contract B _ work row.2.2.2.2
  have distinct := List.nodup_cons.mp hc.1
  have rest := List.nodup_cons.mp distinct.2
  have carryRest := List.nodup_cons.mp rest.2
  apply hmrHybridRowCin_run control cin carry a b work geometry.1 row.2.1 geometry.2
    (fun eq => distinct.1 (by simp [eq])) (fun eq => rest.1 (by simp [eq]))
    (fun mem => distinct.1 (by simp [mem]))
    (fun mem => carryRest.1 (List.mem_append_left _ mem)) s m ?_ zero
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridCin_return (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridRowCin control cin carry a b work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have row := compileHmrHybridRow_contract A B control carry a b work hc.2.2
  have actual := compileHmrHybridCin_run A B control cin carry a b work h s m ready zero
  have readyOut : A.Ready (run (hmrHybridRowCin control cin carry a b work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (row.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,hmrBorrow_return A B _ work row.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
