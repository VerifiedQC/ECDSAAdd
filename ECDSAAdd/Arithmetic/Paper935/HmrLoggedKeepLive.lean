import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeeperOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreeze

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockedLog_live (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps)) :
    B.live=A.live∪(ps.map HmrBlockPlan.keeper).toFinset := by
  induction blocks generalizing A previous ps logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedLog] at h
    | nil =>
      simp only [compileHmrBlockedLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      simp
  | cons bits blocks ih =>
    cases logs with
    | nil => simp [compileHmrBlockedLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedLog] at h
      obtain ⟨⟨C,P⟩,head,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,qs⟩,tail,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have live := (compileHmrBlockKeepLog_run A C (hmrBlockLiterals previous bits) P head
        ⟨false,fun _ => false⟩ [] (by intro q hq hn; rfl)).2.1
      rw [ih C (some P.keeper) qs tail,live]
      ext q
      simp only [Finset.mem_union,Finset.mem_insert,List.map_cons,List.toFinset_cons]
      tauto

theorem HmrFreezePlan.Logged.live (P : HmrFreezePlan) (A C : Arena) (bits : List Wire)
    (frozen : Wire) (record : List Wire) (offset : Nat)
    {logs : List (List Wire)} (h : P.Logged logs A C bits frozen record offset) :
    C.live=insert P.fire (A.live∪(P.zeroPlans.map HmrBlockPlan.keeper).toFinset) := by
  have zc := compileHmrZeroLog_contract A P.zeroArena bits 16 P.zeroPlans P.zeroKeeper h.zero
  have zeroLive := compileHmrBlockedLog_live A P.zeroArena none _ P.zeroPlans zc.2.1
  have len := (P.zeroArena.checkBorrow_contract C 1 P.fireWork h.borrow).1
  have one : P.fireWork.toFinset={P.fire} := by
    rcases List.length_eq_one_iff.mp len with ⟨q,hq⟩
    simp [HmrFreezePlan.fire,hmrBorrowPorts,hq]
  rw [P.zeroArena.checkBorrow_live C 1 P.fireWork h.borrow,zeroLive,one]
  ext q
  simp only [Finset.mem_union,Finset.mem_singleton,Finset.mem_insert]
  tauto

end ECDSAAdd.Arithmetic.Paper935
