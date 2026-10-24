import ECDSAAdd.Arithmetic.Paper935.HmrReadPlan

namespace ECDSAAdd.Arithmetic.Paper935

def HmrReadPlan.readHistory (P : HmrReadPlan) (L : HmrReadLayout) : Program :=
  P.flags L ++ P.pop L

/-- R4 and R5 preserve owned row data, retain every jflag, and establish
clean unused sites before R6 borrows its prediction/cache. -/
theorem HmrReadPlan.Compiled.read_state (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (recordOwned : L.record.toFinset⊆A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let first := run (P.flags L) m s
    let out := run (P.readHistory L) m s
    out.phase=s.phase ∧ P.popArena.Ready out.basis ∧
    (∀q∈A.live,q∉L.record → out.basis q=s.basis q) ∧
    (∀i : Fin 6,out.basis (P.flag i)=first.basis (P.flag i)) ∧
    out.basis P.output=(first.basis (P.flag 5) && decide (regValue L.record s.basis%2=1)) := by
  let first := run (P.flags L) m s
  let tape := m.drop (measurementCount (P.flags L))
  let out := run (P.pop L) tape first
  have flags := compileHmrFlags_state A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags s m ready
  have pop := compileHmrPop_run P.flagArena P.popArena (P.flag 5) L.record P.popWork
    compiled.pop first tape flags.2.1
  have hc := compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags
  have ports := hmrBorrowPorts_contract A P.flagArena 6 P.flagWork hc.2.2
  have oldOwned (q : Wire) (hq : q∈A.live) : q∈P.flagArena.live := by
    rw [(A.borrowMany_live P.flagArena 6 P.flagWork hc.2.2).1]
    exact Finset.mem_union_left _ hq
  have recordEq : regValue L.record first.basis=regValue L.record s.basis := by
    apply regValue_congr
    intro q hq
    exact flags.2.2 q (recordOwned (List.mem_toFinset.mpr hq))
  dsimp only
  rw [HmrReadPlan.readHistory,run_append,run_take]
  refine ⟨pop.1.trans flags.1,pop.2.1,?_,?_,?_⟩
  · intro q hq hr
    exact (pop.2.2.2.2.2 q (oldOwned q hq) hr).trans (flags.2.2 q hq)
  · intro i
    apply pop.2.2.2.2.2 (P.flag i) (ports.2.1 i)
    intro mem
    exact ports.2.2 i (recordOwned (List.mem_toFinset.mpr mem))
  · exact pop.2.2.2.1.trans (congrArg (fun n => first.basis (P.flag 5) && decide (n%2=1)) recordEq)

end ECDSAAdd.Arithmetic.Paper935
