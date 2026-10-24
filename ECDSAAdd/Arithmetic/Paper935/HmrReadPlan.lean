import ECDSAAdd.Arithmetic.Paper935.HmrRowFlags
import ECDSAAdd.Arithmetic.Paper935.HmrRowDecoder
import ECDSAAdd.Arithmetic.Paper935.HmrPopAllocation

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrReadLayout where
  c3 : Wire
  f : List Wire
  gv : List Wire
  fv : List Wire
  fs : Wire
  gvs : Wire
  fvs : Wire
  record : List Wire

def HmrReadLayout.rows (L : HmrReadLayout) : List Wire :=
  (L.f++[L.fs])++(L.gv++[L.gvs])++(L.fv++[L.fvs])

structure HmrReadPlan where
  flagArena : Arena
  popArena : Arena
  decoderArena : Arena
  flagWork : List Wire
  popWork : List Wire
  decoderWork : List Wire

def HmrReadPlan.flag (P : HmrReadPlan) (i : Fin 6) : Wire := hmrBorrowPorts P.flagWork i

def HmrReadPlan.output (P : HmrReadPlan) : Wire := hmrBorrowPorts P.popWork (0 : Fin 1)

def HmrReadPlan.inputs (P : HmrReadPlan) (L : HmrReadLayout) : Fin 13 → Wire :=
  hmrRowDecoderInputs (P.flag 0) (P.flag 2) (P.flag 4) L.f L.gv L.fv L.fs L.gvs L.fvs

def HmrReadPlan.decoderPorts (P : HmrReadPlan) (L : HmrReadLayout) : Fin 19 → Wire :=
  hmrAllocatedDecoderPorts (P.inputs L) P.decoderWork

def HmrReadPlan.flags (P : HmrReadPlan) (L : HmrReadLayout) : Program :=
  hmrAllocatedFlags L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3)
    (hmrRowPos L.fv L.fvs 4) P.flagWork

def HmrReadPlan.pop (P : HmrReadPlan) (L : HmrReadLayout) : Program :=
  popHistory (P.flag 5) P.output L.record

def HmrReadPlan.program (P : HmrReadPlan) (L : HmrReadLayout) : Program :=
  P.flags L ++ P.pop L ++ hmrDecoderCompute (P.decoderPorts L)

structure HmrReadPlan.Compiled (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout) : Prop where
  flags : compileHmrFlags A L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3)
    (hmrRowPos L.fv L.fvs 4)=some (P.flagArena,P.flagWork)
  pop : compileHmrPop P.flagArena (P.flag 5) L.record=some (P.popArena,P.popWork)
  decoder : compileHmrDecoder P.popArena (P.inputs L)=some (P.decoderArena,P.decoderWork)

/-- Source R4--R6 order: create jflags, borrow and fill the branch port,
then borrow prediction and cached leaves. -/
def compileHmrRead (A : Arena) (L : HmrReadLayout) : Option HmrReadPlan := do
  let (B,jf) ← compileHmrFlags A L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4)
  let (C,bw) ← compileHmrPop B (hmrBorrowPorts jf (5 : Fin 6)) L.record
  let (D,cache) ← compileHmrDecoder C (hmrRowDecoderInputs (hmrBorrowPorts jf (0 : Fin 6))
    (hmrBorrowPorts jf (2 : Fin 6)) (hmrBorrowPorts jf (4 : Fin 6)) L.f L.gv L.fv L.fs L.gvs L.fvs)
  pure ⟨B,C,D,jf,bw,cache⟩

theorem compileHmrRead_contract (A : Arena) (L : HmrReadLayout) (P : HmrReadPlan)
    (h : compileHmrRead A L=some P) : P.Compiled A L := by
  cases hf : compileHmrFlags A L.c3 (hmrRowPos L.fv L.fvs 2) (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) with
  | none => simp [compileHmrRead,hf] at h
  | some pair =>
    rcases pair with ⟨B,jf⟩
    cases hp : compileHmrPop B (hmrBorrowPorts jf (5 : Fin 6)) L.record with
    | none => simp [compileHmrRead,hf,hp] at h
    | some pair =>
      rcases pair with ⟨C,bw⟩
      cases hd : compileHmrDecoder C (hmrRowDecoderInputs (hmrBorrowPorts jf (0 : Fin 6))
          (hmrBorrowPorts jf (2 : Fin 6)) (hmrBorrowPorts jf (4 : Fin 6)) L.f L.gv L.fv L.fs L.gvs L.fvs) with
      | none => simp [compileHmrRead,hf,hp,hd] at h
      | some pair =>
        rcases pair with ⟨D,cache⟩
        simp [compileHmrRead,hf,hp,hd] at h
        cases h
        exact ⟨hf,hp,hd⟩

end ECDSAAdd.Arithmetic.Paper935
