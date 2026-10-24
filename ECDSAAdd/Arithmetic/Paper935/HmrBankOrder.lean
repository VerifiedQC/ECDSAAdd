import ECDSAAdd.Arithmetic.Paper935.BankCompiler
import ECDSAAdd.Arithmetic.Paper935.WindowResizePhase

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual source ordering differs at pair padding, addition headroom,
and exit shrinking. This ordering also determines temporary occupancy. -/
inductive HmrBankOrder where
  | entry | headroom | exit | reverseRegrow | reverseHeadroom | reverseExit
  deriving DecidableEq, Repr

def HmrBankOrder.rows (order : HmrBankOrder) (b : WindowBank) : List WindowRow :=
  match order with
  | .entry => [b.f,b.g,b.fv,b.gv]
  | .headroom => [b.g,b.f,b.gv,b.fv]
  | .exit => [b.g,b.f,b.fv,b.gv]
  | .reverseRegrow => [b.gv,b.fv,b.f,b.g]
  | .reverseHeadroom => [b.fv,b.gv,b.f,b.g]
  | .reverseExit => [b.gv,b.fv,b.g,b.f]

def HmrBankOrder.requests (order : HmrBankOrder) (b : WindowBank) (w : RowWindow) : List (WindowRow × Nat) :=
  match order with
  | .entry => [(b.f,w.f),(b.g,w.g),(b.fv,w.fv),(b.gv,w.gv)]
  | .headroom => [(b.g,w.g),(b.f,w.f),(b.gv,w.gv),(b.fv,w.fv)]
  | .exit => [(b.g,w.g),(b.f,w.f),(b.fv,w.fv),(b.gv,w.gv)]
  | .reverseRegrow => [(b.gv,w.gv),(b.fv,w.fv),(b.f,w.f),(b.g,w.g)]
  | .reverseHeadroom => [(b.fv,w.fv),(b.gv,w.gv),(b.f,w.f),(b.g,w.g)]
  | .reverseExit => [(b.gv,w.gv),(b.fv,w.fv),(b.g,w.g),(b.f,w.f)]

def HmrBankOrder.pack (order : HmrBankOrder) (rows : List WindowRow) : Option WindowBank :=
  match rows with
  | [a,b,c,d] => some (match order with
    | .entry => ⟨a,b,c,d⟩
    | .headroom => ⟨b,a,d,c⟩
    | .exit => ⟨b,a,c,d⟩
    | .reverseRegrow => ⟨c,d,b,a⟩
    | .reverseHeadroom => ⟨c,d,a,b⟩
    | .reverseExit => ⟨d,c,b,a⟩)
  | _ => none

theorem HmrBankOrder.pack_contract (order : HmrBankOrder) (rows : List WindowRow) (b : WindowBank)
    (h : order.pack rows=some b) : order.rows b=rows := by
  unfold HmrBankOrder.pack at h
  split at h
  next a b' c d => cases order <;> cases h <;> rfl
  next hbad => simp at h

def compileHmrBankResize (order : HmrBankOrder) (A : Arena) (b : WindowBank) (w : RowWindow) :
    Option (Arena × WindowBank × Program) := do
  let (C,rows,p) ← planWindowRows A (order.requests b w)
  let out ← order.pack rows
  pure (C,out,p)

theorem compileHmrBankResize_contract (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p)) :
    planWindowRows A (order.requests b w)=some (C,order.rows out,p) := by
  unfold compileHmrBankResize at h
  obtain ⟨⟨D,rows,q⟩,hp,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨bank,hb,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  rw [order.pack_contract rows out hb]
  exact hp

theorem compileHmrBankResize_resources (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p)) :
    ProperProgram p ∧ toffoliCount p=0 ∧ measurementCount p=0 ∧ wires p⊆arenaWires :=
  planWindowRows_resources _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h)

theorem compileHmrBankResize_phase (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p))
    (s : State) (m : List Bool) : (run p m s).phase=s.phase :=
  planWindowRows_phase _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h) s m

theorem compileHmrBankResize_correct (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p))
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
  have hc := planWindowRows_correct _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h) s m ready fitRows
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
