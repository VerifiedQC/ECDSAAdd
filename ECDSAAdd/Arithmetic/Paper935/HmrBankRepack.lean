import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBankCorrect
import ECDSAAdd.Arithmetic.Paper935.FusedRepackAllocation

namespace ECDSAAdd.Arithmetic.Paper935

def WindowRow.repacked (r : WindowRow) (moves : List (Wire × Wire)) : WindowRow :=
  ⟨repackView moves r.payload,repackEquiv moves r.sign⟩

def WindowBank.repacked (b : WindowBank) (moves : List (Wire × Wire)) : WindowBank :=
  ⟨b.f.repacked moves,b.g.repacked moves,b.fv.repacked moves,b.gv.repacked moves⟩

theorem WindowRow.repacked_wires (r : WindowRow) (moves : List (Wire × Wire)) :
    (r.repacked moves).wires=repackView moves r.wires := by
  simp [WindowRow.repacked,WindowRow.wires,repackView_eq_map]

theorem WindowRow.repacked_value (r : WindowRow) (moves : List (Wire × Wire))
    (valid : ∀p∈moves,p.1≠p.2) (s : State) (m : List Bool) :
    (r.repacked moves).value (run (repack moves) m s).basis=r.value s.basis := by
  unfold WindowRow.value
  rw [WindowRow.repacked_wires]
  exact repack_rows moves valid r.wires s m

theorem WindowBank.repacked_rows (b : WindowBank) (moves : List (Wire × Wire))
    (order : HmrBankOrder) :
    (order.rows (b.repacked moves)).flatMap WindowRow.wires=
      repackView moves ((order.rows b).flatMap WindowRow.wires) := by
  cases order <;>
    simp [HmrBankOrder.rows,WindowBank.repacked,WindowRow.repacked_wires,repackView_eq_map]

theorem WindowBank.repacked_owned (b : WindowBank) (moves : List (Wire × Wire))
    (order : HmrBankOrder) (A C : Arena) (checked : A.checkRepack moves=some C)
    (owned : rowsOwned A (order.rows b)) : rowsOwned C (order.rows (b.repacked moves)) := by
  unfold rowsOwned
  rw [b.repacked_rows moves order]
  exact ⟨repackView_distinct moves _ owned.1,A.checkRepack_owned C moves checked _ owned.2⟩

theorem WindowBank.repacked_encodes (b : WindowBank) (moves : List (Wire × Wire))
    (valid : ∀p∈moves,p.1≠p.2) (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (encodes : b.Encodes s.basis z) :
    (b.repacked moves).Encodes (run (repack moves) m s).basis z := by
  unfold WindowBank.Encodes WindowBank.repacked
  simp only [WindowRow.repacked_value _ moves valid s m]
  exact encodes

theorem WindowBank.repacked_widths (b : WindowBank) (moves : List (Wire × Wire))
    (w : RowWindow) (widths : b.Widths w) : (b.repacked moves).Widths w := by
  simpa only [WindowBank.Widths,WindowBank.repacked,WindowRow.repacked,repackView_length] using widths

theorem repack_phase (moves : List (Wire × Wire)) (valid : ∀p∈moves,p.1≠p.2)
    (s : State) (m : List Bool) : (run (repack moves) m s).phase=s.phase := by
  induction moves generalizing s m with
  | nil => rfl
  | cons p ps ih =>
    rw [repack,run_append,run_take]
    exact (ih (fun q hq => valid q (by simp [hq])) _ _).trans
      (rehome_run p.1 p.2 (valid p (by simp)) s m).1

/-- The actual exit resize gates followed by the checked source relocation
journal. Numeric window assumptions concern the input to this stage only. -/
theorem hmrLoggedExit_repack (A B C : Arena) (bank out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (moves : List (Wire × Wire)) (p : Program)
    (resize : compileHmrBankResizeLog .exit A bank w logs=some (B,out,p))
    (checked : B.checkRepack moves=some C) (s : State) (m : List Bool)
    (z : ECDSAAdd.Divsteps.ZState) (ready : A.Ready s.basis)
    (encodes : bank.Encodes s.basis z) (fits : w.Fits z) :
    let t := run (p++repack moves) m s
    t.phase=s.phase ∧ C.Ready t.basis ∧
    rowsOwned C (HmrBankOrder.exit.rows (out.repacked moves)) ∧
    (out.repacked moves).Encodes t.basis z ∧ (out.repacked moves).Widths w := by
  have resized := compileHmrBankResizeLog_correct .exit A B bank out w logs p resize s m z ready encodes fits
  have legal := B.checkRepack_valid C moves checked
  have distinct : ∀q∈moves,q.1≠q.2 := fun q hq => (legal q hq).1
  have count := (compileHmrBankResizeLog_resources .exit A B bank out w logs p resize).2.2.1
  dsimp only
  rw [run_append,run_take,count,List.drop_zero]
  refine ⟨?_,B.checkRepack_ready C moves checked _ m resized.2.1,
    out.repacked_owned moves .exit B C checked resized.1,
    out.repacked_encodes moves distinct _ m z resized.2.2.1,
    out.repacked_widths moves w resized.2.2.2⟩
  exact (repack_phase moves distinct _ m).trans
    (compileHmrBankResizeLog_phase .exit A B bank out w logs p resize s m)

end ECDSAAdd.Arithmetic.Paper935
