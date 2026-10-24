import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrHybridResources

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrHybridF4Plan.Compiled.counts (P : HmrHybridF4Plan) (A : Arena) (swap control : Wire)
    (a b x y : List Wire) (h : P.Compiled A swap control a b x y) :
    toffoliCount (P.program swap control a b x y)=
      1+(3*b.length-2-hmrHybridCount P.carryArena b.length)+(3*y.length-2-hmrHybridCount P.carryArena y.length) ∧
    measurementCount (P.program swap control a b x y)=
      hmrHybridCount P.carryArena b.length+hmrHybridCount P.carryArena y.length+1 := by
  have first := compileHmrHybridRow_counts P.carryArena P.firstArena control P.carry a b P.firstWork
    (compileHmrHybridCin_contract P.carryArena P.firstArena control P.flag P.carry a b P.firstWork h.first).2.2
  have second := compileHmrHybridRow_counts P.carryArena P.secondArena control P.carry x y P.secondWork
    (compileHmrHybridCin_contract P.carryArena P.secondArena control P.flag P.carry x y P.secondWork h.second).2.2
  simp [HmrHybridF4Plan.program,hmrHybridF4,hmrHybridPairCore,hmrPairComplement,hmrHybridPairAdd,
    hmrHybridRowCin,toffoliCount_append,measurementCount_append,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
    toffoliCount,measurementCount,(signComplement_counts P.flag b).1,(signComplement_counts P.flag b).2,
    (signComplement_counts P.flag y).1,(signComplement_counts P.flag y).2,first.1,first.2,second.1,second.2,Nat.add_assoc]

theorem HmrHybridF4Plan.Compiled.census (P : HmrHybridF4Plan) (A : Arena) (swap control : Wire)
    (a b x y : List Wire) (h : P.Compiled A swap control a b x y) :
    P.flagArena.live.card=A.live.card+1 ∧ P.carryArena.live.card=A.live.card+2 ∧
    P.firstArena.live.card=P.carryArena.live.card+hmrHybridCount P.carryArena b.length ∧
    P.secondArena.live.card=P.carryArena.live.card+hmrHybridCount P.carryArena y.length ∧
    P.firstArena.live.card≤935 ∧ P.secondArena.live.card≤935 := by
  have flag := (A.borrowMany_live P.flagArena 1 P.flagWork h.flagBorrow).2
  have carry := (P.flagArena.borrowMany_live P.carryArena 1 P.carryWork h.carryBorrow).2
  have first := compileHmrHybridRow_census P.carryArena P.firstArena control P.carry a b P.firstWork
    (compileHmrHybridCin_contract P.carryArena P.firstArena control P.flag P.carry a b P.firstWork h.first).2.2
  have second := compileHmrHybridRow_census P.carryArena P.secondArena control P.carry x y P.secondWork
    (compileHmrHybridCin_contract P.carryArena P.secondArena control P.flag P.carry x y P.secondWork h.second).2.2
  exact ⟨flag,by omega,first.1,second.1,first.2,second.2⟩

end ECDSAAdd.Arithmetic.Paper935
