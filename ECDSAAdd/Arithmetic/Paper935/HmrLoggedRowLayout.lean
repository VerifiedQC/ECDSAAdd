import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBankCorrect
import ECDSAAdd.Arithmetic.Paper935.RowResizeTotal

namespace ECDSAAdd.Arithmetic.Paper935

theorem planRowResizeLog_layout (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) :
    out.payload.length=width ∧ out.wires.Nodup ∧ out.wires.toFinset⊆B.live := by
  let s : State := ⟨false,fun _ => false⟩
  have zero : r.value s.basis=0 := by
    unfold WindowRow.value WindowRow.wires
    rw [signedRegValue_msb]
    have hz := (regValue_zero (r.payload++[r.sign]) s.basis).mpr (fun _ _ => rfl)
    simp [hz,s]
  have fits : PayloadFits width (r.value s.basis) := by
    rw [zero]
    have positive : 0<(2^width:Nat) := Nat.pow_pos (by decide)
    unfold PayloadFits
    constructor <;> omega
  have result := planRowResizeLog_correct A B r out width fresh p h s [] (fun _ _ _ => rfl) fits
  refine ⟨result.1,?_,?_⟩
  · have nd := List.nodup_cons.mp result.2.1
    apply List.nodup_append'.mpr
    exact ⟨nd.2,by simp,List.disjoint_left.mpr
      (fun q hq hs => nd.1 ((List.mem_singleton.mp hs) ▸ hq))⟩
  · simpa only [WindowRow.wires,List.toFinset_append,List.toFinset_cons,List.toFinset_nil,
      Finset.union_singleton,Finset.insert_empty] using result.2.2.1


theorem planWindowRowsLog_external (requests : List (WindowRow × Nat))
    (logs : List (List Wire)) (A C : Arena) (outs : List WindowRow) (p : Program)
    (h : planWindowRowsLog A requests logs=some (C,outs,p)) (s : State) (m : List Bool)
    (q : Wire) (owned : q∈A.live) (away : q∉(requests.map Prod.fst).flatMap WindowRow.wires) :
    q∈C.live ∧ q∉outs.flatMap WindowRow.wires ∧ (run p m s).basis q=s.basis q := by
  induction requests generalizing logs A C outs p s m with
  | nil =>
    cases logs with
    | cons fresh logs => simp [planWindowRowsLog] at h
    | nil =>
      simp only [planWindowRowsLog,Option.some.injEq,Prod.mk.injEq] at h
      rcases h with ⟨rfl,rfl,rfl⟩
      exact ⟨owned,by simp,rfl⟩
  | cons request rest ih =>
    cases logs with
    | nil => simp [planWindowRowsLog] at h
    | cons fresh logs =>
      rcases request with ⟨row,width⟩
      simp only [planWindowRowsLog] at h
      split at h
      next hv =>
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
            next hv' =>
              cases h
              have noRow : q∉row.wires := by
                intro hq
                apply away
                simp [hq]
              have noRest : q∉(rest.map Prod.fst).flatMap WindowRow.wires := by
                intro hq
                apply away
                simp [hq]
              have first := planRowResizeLog_locality A B row out width fresh pf hf s m q owned noRow
              have tail := ih logs B C ot pt ht (run pf m s) (m.drop (measurementCount pf)) first.1 noRest
              have noOut : q∉out.wires := fun hq =>
                noRow (planRowResizeLog_old_sites A B row out width fresh pf hf q hq owned)
              refine ⟨tail.1,?_,?_⟩
              · simpa only [List.flatMap_cons,List.mem_append,not_or] using ⟨noOut,tail.2.1⟩
              · rw [run_append,run_take]
                exact tail.2.2.trans first.2
            next hv' => simp at h
      next hv => simp at h


theorem planWindowRowsLog_static_owned (requests : List (WindowRow × Nat))
    (logs : List (List Wire)) (A C : Arena) (outs : List WindowRow) (p : Program)
    (h : planWindowRowsLog A requests logs=some (C,outs,p)) : rowsOwned C outs := by
  cases requests with
  | nil =>
    cases logs with
    | cons fresh logs => simp [planWindowRowsLog] at h
    | nil =>
      cases h
      simp [rowsOwned]
  | cons request rest =>
    cases logs with
    | nil => simp [planWindowRowsLog] at h
    | cons fresh logs =>
      rcases request with ⟨row,width⟩
      rw [planWindowRowsLog] at h
      split at h
      next initial =>
        obtain ⟨⟨B,out,pf⟩,hf,h⟩ := Option.bind_eq_some_iff.mp h
        obtain ⟨⟨D,tail,pt⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
        dsimp only at h
        split at h
        next final => cases h; exact final
        next bad => simp at h
      next bad => simp at h


theorem planWindowRowsLog_widths (requests : List (WindowRow × Nat)) (logs : List (List Wire)) (A C : Arena)
    (outs : List WindowRow) (p : Program)
    (h : planWindowRowsLog A requests logs=some (C,outs,p)) :
    outs.map (fun r => r.payload.length)=requests.map Prod.snd := by
  induction requests generalizing logs A C outs p with
  | nil =>
    cases logs with
    | cons fresh logs => simp [planWindowRowsLog] at h
    | nil =>
      cases h
      rfl
  | cons request rest ih =>
    cases logs with
    | nil => simp [planWindowRowsLog] at h
    | cons fresh logs =>
      rcases request with ⟨row,width⟩
      rw [planWindowRowsLog] at h
      split at h
      next inputCheck =>
        obtain ⟨⟨B,out,pf⟩,first,h⟩ := Option.bind_eq_some_iff.mp h
        obtain ⟨⟨D,tail,q⟩,remaining,h⟩ := Option.bind_eq_some_iff.mp h
        dsimp only at h
        split at h
        next outputCheck =>
          cases h
          simp only [List.map_cons]
          rw [(planRowResizeLog_layout A B row out width fresh pf first).1,ih logs B C tail q remaining]
        next invalid => simp at h
      next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
