import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.WindowRowsTotal

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrBankOrder.pack_exists (order : HmrBankOrder) (rows : List WindowRow)
    (len : rows.length=4) : ∃ b,order.pack rows=some b := by
  obtain ⟨b,hb⟩ := bankOfRows_exists rows len
  have view := bankOfRows_contract rows b hb
  rw [←view]
  cases order <;> exact ⟨_,rfl⟩

theorem compileHmrBankResize_exists (order : HmrBankOrder) (A : Arena) (b : WindowBank)
    (w : RowWindow) (fixed : List Wire)
    (distinct : (fixed++(order.rows b).flatMap WindowRow.wires).Nodup)
    (owned : (fixed++(order.rows b).flatMap WindowRow.wires).toFinset⊆A.live)
    (budget : A.live.card+rowGrowth (order.requests b w)≤935) :
    ∃ C out p,compileHmrBankResize order A b w=some (C,out,p) ∧
      (fixed++(order.rows out).flatMap WindowRow.wires).Nodup ∧
      (fixed++(order.rows out).flatMap WindowRow.wires).toFinset⊆C.live ∧
      C.live.card≤A.live.card+rowGrowth (order.requests b w) := by
  have source : (order.requests b w).map Prod.fst=order.rows b := by cases order <;> rfl
  obtain ⟨C,rows,p,h,nd,own,cap⟩ := planWindowRows_exists (order.requests b w) A fixed
    (by simpa only [source] using distinct) (by simpa only [source] using owned) budget
  have len := planWindowRows_length (order.requests b w) A C rows p h
  have four : rows.length=4 := by cases order <;> simpa only [HmrBankOrder.requests,List.length_cons,List.length_nil] using len
  obtain ⟨out,packed⟩ := order.pack_exists rows four
  have outView := order.pack_contract rows out packed
  refine ⟨C,out,p,?_,?_,?_,cap⟩
  · unfold compileHmrBankResize
    rw [h]
    dsimp only [Bind.bind,Option.bind]
    rw [packed]
    rfl
  · simpa only [outView] using nd
  · simpa only [outView] using own

theorem compileHmrBankResize_external (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p))
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : b.Encodes s.basis z) (fits : w.Fits z) :
    ∀q∈A.live,q∉(order.rows b).flatMap WindowRow.wires →
      q∈C.live ∧ (run p m s).basis q=s.basis q := by
  unfold RowWindow.Fits at fits
  have fitRows : ∀r∈order.requests b w,PayloadFits r.2 (r.1.value s.basis) := by
    cases order <;> intro r hr <;>
      simp only [HmrBankOrder.requests,List.mem_cons,List.not_mem_nil,or_false] at hr
    all_goals rcases hr with rfl | rfl | rfl | rfl
    all_goals simp only [encodes.1,encodes.2.1,encodes.2.2.1,encodes.2.2.2]; tauto
  have hc := planWindowRows_correct _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h) s m ready fitRows
  have source : (order.requests b w).map Prod.fst=order.rows b := by cases order <;> rfl
  simpa only [source] using hc.2.2.2.2

end ECDSAAdd.Arithmetic.Paper935
