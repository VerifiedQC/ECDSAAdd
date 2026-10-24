import ECDSAAdd.Arithmetic.Paper935.HmrLoggedResize
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder

namespace ECDSAAdd.Arithmetic.Paper935

/-- Replay checked growth addresses in request order. Extra or missing log
entries fail; all borrows use reserve and all row layouts are checked. -/
def planWindowRowsLog (A : Arena) : List (WindowRow × Nat) → List (List Wire) →
    Option (Arena × List WindowRow × Program)
  | [],[] => some (A,[],[])
  | (row,width)::rest,fresh::logs =>
    if rowsOwned A (row::rest.map Prod.fst) then do
      let (B,out,p) ← planRowResizeLog A row width fresh
      let (C,outs,q) ← planWindowRowsLog B rest logs
      if rowsOwned C (out::outs) then pure (C,out::outs,p++q) else none
    else none
  | _,_ => none

/-- The source-log variant of the bank resize checker. The original
compileHmrBankResize and its address-selection policy are unchanged. -/
def compileHmrBankResizeLog (order : HmrBankOrder) (A : Arena) (b : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) : Option (Arena × WindowBank × Program) := do
  let (C,rows,p) ← planWindowRowsLog A (order.requests b w) logs
  let out ← order.pack rows
  pure (C,out,p)

theorem compileHmrBankResizeLog_contract (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program)
    (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    planWindowRowsLog A (order.requests b w) logs=some (C,order.rows out,p) := by
  unfold compileHmrBankResizeLog at h
  obtain ⟨⟨D,rows,q⟩,hp,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨bank,hb,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  rw [order.pack_contract rows out hb]
  exact hp

theorem planRowResizeLog_generic (A B : Arena) (r out : WindowRow) (width : Nat) (p : Program)
    (h : planRowResize A r width=some (B,out,p)) :
    ∃fresh,planRowResizeLog A r width fresh=some (B,out,p) := by
  have original := h
  unfold planRowResize at h
  split at h
  next valid =>
    split at h
    next grows =>
      obtain ⟨⟨C,fresh⟩,borrowed,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have contract := A.borrowMany_contract B _ fresh borrowed
      refine ⟨fresh,?_⟩
      simp only [planRowResizeLog,if_pos valid,if_pos grows,contract.1,contract.2.1,and_self,if_true]
      rw [contract.2.2]
      rfl
    next shrinks =>
      exact ⟨[],by simpa only [planRowResizeLog,if_pos valid,if_neg shrinks,if_true] using original⟩
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
