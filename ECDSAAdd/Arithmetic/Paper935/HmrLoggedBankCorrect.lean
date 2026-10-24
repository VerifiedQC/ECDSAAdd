import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRows

namespace ECDSAAdd.Arithmetic.Paper935

theorem planRowResizeLog_phase (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) (s : State) (m : List Bool) :
    (run p m s).phase=s.phase := by
  unfold planRowResizeLog at h
  split at h
  next valid =>
    split at h
    next grow =>
      split at h
      next selected =>
        obtain ⟨C,reserved,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        exact (growRow_frame r.sign fresh s m).1
      next rejected => simp at h
    next shrink =>
      split at h
      next empty => exact planRowResize_phase A B r out width p h s m
      next nonempty => simp at h
  next invalid => simp at h

theorem planWindowRowsLog_phase (requests : List (WindowRow × Nat))
    (logs : List (List Wire)) (A C : Arena) (outs : List WindowRow) (p : Program)
    (h : planWindowRowsLog A requests logs=some (C,outs,p)) (s : State) (m : List Bool) :
    (run p m s).phase=s.phase := by
  induction requests generalizing logs A C outs p s m with
  | nil =>
    cases logs with
    | cons fresh logs => simp [planWindowRowsLog] at h
    | nil =>
      simp only [planWindowRowsLog,Option.some.injEq,Prod.mk.injEq] at h
      rcases h with ⟨rfl,rfl,rfl⟩; rfl
  | cons request rest ih =>
    cases logs with
    | nil => simp [planWindowRowsLog] at h
    | cons fresh logs =>
      rcases request with ⟨row,width⟩
      simp only [planWindowRowsLog] at h
      split at h
      next valid =>
        cases hf : planRowResizeLog A row width fresh with
        | none => simp [hf] at h
        | some first =>
          rcases first with ⟨B,out,pf⟩
          simp only [hf] at h
          dsimp only [Bind.bind,Option.bind,Prod.fst,Prod.snd] at h
          cases ht : planWindowRowsLog B rest logs with
          | none => simp [ht] at h
          | some tail =>
            rcases tail with ⟨D,ot,pt⟩
            simp only [ht] at h
            split at h
            next valid' =>
              cases h
              rw [run_append,run_take]
              exact (ih logs B C ot pt ht _ _).trans (planRowResizeLog_phase A B row out width fresh pf hf s m)
            next valid' => simp at h
      next valid => simp at h

theorem compileHmrBankResizeLog_resources (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    ProperProgram p ∧ toffoliCount p=0 ∧ measurementCount p=0 ∧ wires p⊆arenaWires :=
  planWindowRowsLog_resources _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h)

theorem compileHmrBankResizeLog_phase (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (s : State) (m : List Bool) : (run p m s).phase=s.phase :=
  planWindowRowsLog_phase _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h) s m

theorem compileHmrBankResizeLog_correct (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : b.Encodes s.basis z) (fits : w.Fits z) :
    rowsOwned C (order.rows out) ∧ C.Ready (run p m s).basis ∧
    out.Encodes (run p m s).basis z ∧ out.Widths w := by
  unfold RowWindow.Fits at fits
  have fitRows : ∀r∈order.requests b w,PayloadFits r.2 (r.1.value s.basis) := by
    cases order <;> intro r hr <;>
      simp only [HmrBankOrder.requests,List.mem_cons,List.not_mem_nil,or_false] at hr
    all_goals rcases hr with rfl | rfl | rfl | rfl
    all_goals simp only [encodes.1,encodes.2.1,encodes.2.2.1,encodes.2.2.2]; tauto
  have hc := planWindowRowsLog_correct _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h) s m ready fitRows
  refine ⟨hc.1,hc.2.1,?_,?_⟩
  · have vals := hc.2.2.1
    cases order <;>
      simp only [HmrBankOrder.rows,HmrBankOrder.requests,List.map_cons,List.map_nil,List.cons.injEq,
        encodes.1,encodes.2.1,encodes.2.2.1,encodes.2.2.2] at vals
    all_goals unfold WindowBank.Encodes; tauto
  · have widths := hc.2.2.2.1
    cases order <;>
      simp only [HmrBankOrder.rows,HmrBankOrder.requests,List.map_cons,List.map_nil,List.cons.injEq] at widths
    all_goals unfold WindowBank.Widths; tauto

end ECDSAAdd.Arithmetic.Paper935
