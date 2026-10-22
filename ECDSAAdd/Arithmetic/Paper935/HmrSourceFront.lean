import ECDSAAdd.Arithmetic.Paper935.HmrBankOrderTotal
import ECDSAAdd.Arithmetic.Paper935.HmrRouteStage
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrCounterStep
import ECDSAAdd.Arithmetic.Paper935.HmrShiftArmedValue

namespace ECDSAAdd.Arithmetic.Paper935

/-- Static plan for F1–F6 after any boundary arm allocation and before
repack/history. Sigma and bw remain live in the exit arena. -/
structure HmrSourceFront where
  pairArena : Arena
  pairBank : WindowBank
  padding : Program
  sigmaArena : Arena
  sigmaWork : List Wire
  branchArena : Arena
  branchWork : List Wire
  headArena : Arena
  headBank : WindowBank
  headroom : Program
  arithmetic : HmrHybridF4Plan
  counterArena : Arena
  counterWork : List Wire
  exitArena : Arena
  exitBank : WindowBank
  shrinking : Program

def HmrSourceFront.sigma (P : HmrSourceFront) : Wire := hmrBorrowPorts P.sigmaWork (0 : Fin 1)
def HmrSourceFront.branch (P : HmrSourceFront) : Wire := hmrBorrowPorts P.branchWork (0 : Fin 1)

/-- An early step has no allocated frozen bit. The counter implementation
ignores its control argument then; sigma supplies its checked owned site
without adding an artificial live wire to the arena. -/
def hmrFrontCounterControl (early : Bool) (sigma frozen : Wire) : Wire := if early then sigma else frozen

def HmrFrontEntryValid (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire) : Prop :=
  0<fgWidth ∧ 0<vWidth ∧ counter.length=6 ∧
  bank.f.payload.length≤fgWidth ∧ bank.g.payload.length≤fgWidth ∧
  bank.fv.payload.length≤vWidth ∧ bank.gv.payload.length≤vWidth ∧
  exitWidth.f≤fgWidth+1 ∧ exitWidth.g≤fgWidth+1 ∧
  exitWidth.fv≤vWidth+1 ∧ exitWidth.gv≤vWidth+1 ∧
  (counter++(if early then [] else [frozen])).Nodup ∧
  (∀q∈counter++(if early then [] else [frozen]),q∈A.live) ∧
  Disjoint (counter++(if early then [] else [frozen])).toFinset
    (bank.rows.flatMap WindowRow.wires).toFinset

instance hmrFrontEntryDecidable (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire) :
    Decidable (HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter) := by
  unfold HmrFrontEntryValid
  infer_instance

def compileHmrSourceFront (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire) : Option HmrSourceFront := do
  if ¬HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter then none else do
    let pairWidth : RowWindow := ⟨fgWidth,fgWidth,vWidth,vWidth⟩
    let headWidth : RowWindow := ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩
    let (B,pair,pad) ← compileHmrBankResize .entry A bank pairWidth
    let (S,sw) ← B.borrowMany 1
    let sigma := hmrBorrowPorts sw (0 : Fin 1)
    let (V,vw) ← S.borrowMany 1
    let branch := hmrBorrowPorts vw (0 : Fin 1)
    let (H,head,room) ← compileHmrBankResize .headroom V pair headWidth
    let arithmetic ← compileHmrHybridF4 H sigma branch head.f.wires head.g.wires head.fv.wires head.gv.wires
    let (K,kw) ← compileHmrCounterStep H early (hmrFrontCounterControl early sigma frozen) counter
    let (C,out,shrink) ← compileHmrBankResize .exit H head exitWidth
    pure ⟨B,pair,pad,S,sw,V,vw,H,head,room,arithmetic,K,kw,C,out,shrink⟩

def HmrSourceFront.program (P : HmrSourceFront) (early : Bool) (frozen : Wire) (counter : List Wire) : Program :=
  P.padding ++
  hmrPolarAnd (counter.getLastD 0) (P.pairBank.g.payload.headD 0) P.sigma false true ++
  hmrRouteStage P.sigma P.pairBank.f.wires P.pairBank.g.wires P.pairBank.fv.wires P.pairBank.gv.wires counter ++
  [.CX (P.pairBank.g.payload.headD 0) P.branch] ++
  P.headroom ++
  P.arithmetic.program P.sigma P.branch P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires ++
  hmrCounterStep early false (hmrFrontCounterControl early P.sigma frozen) counter P.counterWork ++
  hmrShiftDown P.headBank.g.sign P.headBank.g.payload ++
  (if early then hmrShiftUpFree P.headBank.fv.sign P.headBank.fv.payload
   else hmrShiftUpArmed frozen P.headBank.fv.sign P.headBank.fv.payload) ++
  P.shrinking

structure HmrSourceFront.Compiled (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire) : Prop where
  entry : HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter
  padding : compileHmrBankResize .entry A bank ⟨fgWidth,fgWidth,vWidth,vWidth⟩=some (P.pairArena,P.pairBank,P.padding)
  sigmaBorrow : P.pairArena.borrowMany 1=some (P.sigmaArena,P.sigmaWork)
  branchBorrow : P.sigmaArena.borrowMany 1=some (P.branchArena,P.branchWork)
  headroom : compileHmrBankResize .headroom P.branchArena P.pairBank
    ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩=some (P.headArena,P.headBank,P.headroom)
  arithmetic : compileHmrHybridF4 P.headArena P.sigma P.branch
    P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires=some P.arithmetic
  counter : compileHmrCounterStep P.headArena early (hmrFrontCounterControl early P.sigma frozen) counter=
    some (P.counterArena,P.counterWork)
  shrinking : compileHmrBankResize .exit P.headArena P.headBank exitWidth=some (P.exitArena,P.exitBank,P.shrinking)

theorem compileHmrSourceFront_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire) (P : HmrSourceFront)
    (h : compileHmrSourceFront A bank fgWidth vWidth exitWidth early frozen counter=some P) :
    P.Compiled A bank fgWidth vWidth exitWidth early frozen counter := by
  unfold compileHmrSourceFront at h
  split at h
  next bad => simp at h
  next good =>
    obtain ⟨⟨B,pair,pad⟩,hp,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨S,sw⟩,hs,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨V,vw⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨H,head,room⟩,hh,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨arith,ha,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨K,kw⟩,hk,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨C,out,shrink⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨not_not.mp good,hp,hs,hb,hh,ha,hk,hc⟩

theorem hmrFrontCounterControl_program (early dec : Bool) (sigma frozen : Wire) (counter work : List Wire) :
    hmrCounterStep early dec (hmrFrontCounterControl early sigma frozen) counter work=
      hmrCounterStep early dec frozen counter work := by
  cases early <;> cases dec <;> rfl

end ECDSAAdd.Arithmetic.Paper935
