import ECDSAAdd.Arithmetic.Paper935.HmrHybridCinCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedHybrid

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrHybridCinLog (A : Arena) (control cin carry : Wire) (a b work : List Wire) :
    Option Arena :=
  if (cin::control::carry::(a++b)).Nodup ∧ cin∈A.live then
    compileHmrHybridRowLog A control carry a b work else none

theorem compileHmrHybridCinLog_contract (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCinLog A control cin carry a b work=some B) :
    (cin::control::carry::(a++b)).Nodup ∧ cin∈A.live ∧
      compileHmrHybridRowLog A control carry a b work=some B := by
  unfold compileHmrHybridCinLog at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next => simp at h

theorem compileHmrHybridCinLog_run (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCinLog A control cin carry a b work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridRowCin control cin carry a b work) m s
    out.phase=s.phase ∧ (∀q,q∉b → out.basis q=s.basis q) ∧
      regValue b out.basis=(if s.basis control then
        (regValue a s.basis+regValue b s.basis+(s.basis cin).toNat)%2^b.length else regValue b s.basis) := by
  have hc := compileHmrHybridCinLog_contract A B control cin carry a b work h
  have row := compileHmrHybridRowLog_contract A B control carry a b work hc.2.2
  have geometry := compileHmrHybridRowLog_geometry A B control carry a b work hc.2.2
  have borrow := A.checkBorrow_contract B _ work row.2.2.2.2
  have distinct := List.nodup_cons.mp hc.1
  have rest := List.nodup_cons.mp distinct.2
  have carryRest := List.nodup_cons.mp rest.2
  apply hmrHybridRowCin_run control cin carry a b work geometry.1 row.2.1 geometry.2
    (fun eq => distinct.1 (by simp [eq])) (fun eq => rest.1 (by simp [eq]))
    (fun mem => distinct.1 (by simp [mem]))
    (fun mem => carryRest.1 (List.mem_append_left _ mem)) s m ?_ zero
  intro q hq
  exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2 q (List.mem_toFinset.mpr hq)

theorem compileHmrHybridCinLog_return (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCinLog A control cin carry a b work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridRowCin control cin carry a b work) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrHybridCinLog_contract A B control cin carry a b work h
  have row := compileHmrHybridRowLog_contract A B control carry a b work hc.2.2
  have actual := compileHmrHybridCinLog_run A B control cin carry a b work h s m ready zero
  have readyOut : A.Ready (run (hmrHybridRowCin control cin carry a b work) m s).basis := by
    intro q bound absent
    rw [actual.2.1 q (fun hq => absent (row.2.2.2.1 q (by simp [hq])))]
    exact ready q bound absent
  exact ⟨readyOut,A.checkBorrow_return B _ work row.2.2.2.2 _ readyOut⟩

end ECDSAAdd.Arithmetic.Paper935
