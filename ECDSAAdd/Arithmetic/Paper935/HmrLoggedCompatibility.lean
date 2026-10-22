import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrCounterStepLog_generic (A B : Arena) (early : Bool) (control : Wire)
    (qs work : List Wire) (h : compileHmrCounterStep A early control qs=some (B,work)) :
    compileHmrCounterStepLog A early control qs work=some B := by
  have c := compileHmrCounterStep_contract A B early control qs work h
  simp only [compileHmrCounterStepLog,if_pos (And.intro c.1 (And.intro c.2.1 c.2.2.1))]
  exact A.checkBorrow_generic B _ work c.2.2.2

theorem compileHmrHybridRowLog_generic (A B : Arena) (control carry : Wire)
    (a b work : List Wire) (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    compileHmrHybridRowLog A control carry a b work=some B := by
  have c := compileHmrHybridRow_contract A B control carry a b work h
  simp only [compileHmrHybridRowLog,if_pos (And.intro c.1 (And.intro c.2.1 (And.intro c.2.2.1 c.2.2.2.1)))]
  exact A.checkBorrow_generic B _ work c.2.2.2.2

theorem compileHmrHybridCinLog_generic (A B : Arena) (control cin carry : Wire)
    (a b work : List Wire) (h : compileHmrHybridCin A control cin carry a b=some (B,work)) :
    compileHmrHybridCinLog A control cin carry a b work=some B := by
  have c := compileHmrHybridCin_contract A B control cin carry a b work h
  simp only [compileHmrHybridCinLog,if_pos (And.intro c.1 c.2.1)]
  exact compileHmrHybridRowLog_generic A B control carry a b work c.2.2

theorem HmrHybridF4Plan.Compiled.logged (P : HmrHybridF4Plan) (A : Arena) (swap control : Wire)
    (a b x y : List Wire) (h : P.Compiled A swap control a b x y) :
    P.Logged A swap control a b x y := by
  exact ⟨h.owned,A.checkBorrow_generic _ _ _ h.flagBorrow,
    P.flagArena.checkBorrow_generic _ _ _ h.carryBorrow,h.distinct,h.apart,
    compileHmrHybridCinLog_generic _ _ _ _ _ _ _ _ h.first,
    compileHmrHybridCinLog_generic _ _ _ _ _ _ _ _ h.second⟩

end ECDSAAdd.Arithmetic.Paper935
