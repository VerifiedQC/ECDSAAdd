import ECDSAAdd.Arithmetic.Paper935.HmrLoggedDropLive
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeepLive

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrZeroLog_drop_return (A B C : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire) (qs : List HmrBlockFreePlan)
    {logs drops : List (List Wire)}
    (zero : compileHmrZeroLog A bits size logs=some (B,ps,keeper))
    (drop : compileHmrBlockedDropLog B ps drops=some (C,qs)) : C=A := by
  have zc := compileHmrZeroLog_contract A B bits size ps keeper zero
  have before := compileHmrBlockedLog_live A B none _ ps zc.2.1
  have after := compileHmrBlockedDropLog_live B C ps qs drop
  have fresh := (compileHmrBlockedLog_order A B none _ ps zc.2.1).1
  have eq : C.live=A.live := by
    rw [after,before]
    ext q
    have away : q∈A.live → q∉(ps.map HmrBlockPlan.keeper).toFinset := by
      intro mem hk
      obtain ⟨R,hr,eq⟩ := List.mem_map.mp (List.mem_toFinset.mp hk)
      exact fresh R hr (eq ▸ mem)
    simp only [Finset.mem_sdiff,Finset.mem_union]
    tauto
  cases A; cases C; cases eq; rfl

end ECDSAAdd.Arithmetic.Paper935
