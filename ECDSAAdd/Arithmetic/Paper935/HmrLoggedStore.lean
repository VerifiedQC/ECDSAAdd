import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFlagsArena
import ECDSAAdd.Arithmetic.Paper935.History

namespace ECDSAAdd.Arithmetic.Paper935

def hmrLoggedStore (c3 b2 b3 b4 port : Wire) (record work : List Wire) : Program :=
  let w : Fin 6 → Wire := hmrBorrowPorts work
  hmrAllocatedFlags c3 b2 b3 b4 work ++ pushHistory (w 5) port record ++
    hmrFlagsRelease c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)

/-- F9/F13 and j-flag retirement use the actual finite brigade. All flag
anchor equations after the store are derived from its frame theorem. -/
theorem hmrLoggedStore_run (A B : Arena) (c3 b2 b3 b4 port : Wire) (record work : List Wire)
    (compiled : compileHmrFlagsLog A c3 b2 b3 b4 work=some B)
    (owned : (port::record).toFinset⊆A.live) (nd : (port::record).Nodup)
    (apart : List.Disjoint [c3,b2,b3,b4] (port::record))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (fits : (s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4)=true →
      2*regValue record s.basis+(s.basis port).toNat<2^record.length) :
    let selected := s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4
    let out := run (hmrLoggedStore c3 b2 b3 b4 port record work) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧ B.release work.toFinset out.basis=some A ∧
      out.basis port=(if selected then false else s.basis port) ∧
      regValue record out.basis=(if selected then
        2*regValue record s.basis+(s.basis port).toNat else regValue record s.basis) ∧
      ∀q∈A.live,q∉port::record → out.basis q=s.basis q := by
  let w : Fin 6 → Wire := hmrBorrowPorts work
  let first := hmrAllocatedFlags c3 b2 b3 b4 work
  let u := run first m s
  let tape := m.drop (measurementCount first)
  let v := run (pushHistory (w 5) port record) tape u
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work compiled
  have ports := hmrLoggedPorts_contract A B 6 work hc.2.2
  have initial := compileHmrFlagsLog_state A B c3 b2 b3 b4 work compiled s m ready
  have values := compileHmrFlagsLog_values A B c3 b2 b3 b4 work compiled s m ready
  have old (q : Wire) (hq : q∈port::record) : u.basis q=s.basis q :=
    initial.2.2 q (owned (List.mem_toFinset.mpr hq))
  have away (q : Wire) (hq : q∈A.live) (i : Fin 6) : q≠w i := by
    intro eq
    apply ports.2.2 i
    change w i∈A.live
    exact eq ▸ hq
  have notPort (i : Fin 6) : w i∉port::record := by
    intro hq
    exact away (w i) (owned (List.mem_toFinset.mpr hq)) i rfl
  have control : u.basis (w 5)=(s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4) := by
    have last := values.2.2.2.2.2
    rw [initial.2.2 c3 (hc.2.1 (by simp)),initial.2.2 b2 (hc.2.1 (by simp)),
      initial.2.2 b3 (hc.2.1 (by simp)),initial.2.2 b4 (hc.2.1 (by simp))] at last
    exact last
  have recEq : regValue record u.basis=regValue record s.basis :=
    regValue_congr _ _ _ (fun q hq => old q (List.mem_cons_of_mem _ hq))
  have push := pushHistory_spec (w 5) port record (List.nodup_cons.mpr ⟨notPort 5,nd⟩) u tape
    (by rw [control,recEq,old port (by simp)]; exact fits)
  have preserved : HmrFlagValues c3 b2 b3 b4 w v.basis := by
    apply values.frame c3 b2 b3 b4 w u.basis v.basis
    · intro q hq
      exact push.2.2.2.2 q (List.disjoint_left.mp apart hq)
    · intro i
      exact push.2.2.2.2 (w i) (notPort i)
  have vr : B.Ready v.basis := by
    intro q hq hn
    have notRecord : q∉port::record := by
      intro mem
      apply hn
      rw [A.checkBorrow_live B 6 work hc.2.2]
      exact Finset.mem_union_left _ (owned (List.mem_toFinset.mpr mem))
    rw [push.2.2.2.2 q notRecord]
    exact initial.2.1 q hq hn
  let tailTape := tape.drop (measurementCount (pushHistory (w 5) port record))
  have erase := compileHmrFlagsLog_erase A B c3 b2 b3 b4 work compiled v tailTape preserved
  have returned := compileHmrFlagsLog_erase_return A B c3 b2 b3 b4 work compiled v tailTape vr preserved
  have frame (q : Wire) (hq : q∈A.live) : hmrClearFlags w v.basis q=v.basis q := by
    simp only [hmrClearFlags,writeBit,Function.update_of_ne (away q hq _)]
  have recordSame : regValue record (hmrClearFlags w v.basis)=regValue record v.basis :=
    regValue_congr _ _ _ (fun q hq => frame q (owned (List.mem_toFinset.mpr (List.mem_cons_of_mem _ hq))))
  dsimp only
  rw [hmrLoggedStore,List.append_assoc,run_append,run_take,run_append,run_take]
  change (run (hmrFlagsRelease c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) tailTape v).phase=s.phase ∧ _
  rw [erase]
  dsimp only
  dsimp only at returned
  rw [erase] at returned
  refine ⟨push.1.trans initial.1,returned.1,returned.2,?_,?_,?_⟩
  · rw [frame port (owned (by simp)),push.2.2.1,control,old port (by simp)]
  · rw [recordSame,push.2.2.2.1,control,recEq,old port (by simp)]
  · intro q hq notRecord
    exact (frame q hq).trans ((push.2.2.2.2 q notRecord).trans (initial.2.2 q hq))

end ECDSAAdd.Arithmetic.Paper935
