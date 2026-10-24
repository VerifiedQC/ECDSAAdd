import ECDSAAdd.Arithmetic.Paper935.HmrAndChain

namespace ECDSAAdd.Arithmetic.Paper935

inductive HmrClassMode where
  | early | forwardArmed | reverseArmed

def hmrClassChain (mode : HmrClassMode) (w : Fin 9 → Wire) : List HmrAndStage :=
  ⟨w 0,w 1,w 5,false,false⟩ :: match mode with
  | .early => [⟨w 2,w 5,w 8,false,false⟩]
  | .forwardArmed => [⟨w 3,w 2,w 6,false,false⟩,⟨w 6,w 5,w 8,true,false⟩]
  | .reverseArmed => [⟨w 3,w 2,w 6,false,false⟩,⟨w 6,w 5,w 7,true,false⟩,
      ⟨w 7,w 4,w 8,true,false⟩]

def hmrClassValue (mode : HmrClassMode) (w : Fin 9 → Wire) (s : BasisState) : Bool :=
  let zpos := !s (w 0) && !s (w 1)
  match mode with
  | .early => !s (w 2) && !zpos
  | .forwardArmed => !s (w 3) && !s (w 2) && !zpos
  | .reverseArmed => !s (w 3) && !s (w 2) && !zpos && !s (w 4)

theorem hmrClass_ready (mode : HmrClassMode) (w : Fin 9 → Wire) (hw : Function.Injective w)
    (s : BasisState) (clean : s (w 5)=false ∧ s (w 6)=false ∧ s (w 7)=false ∧ s (w 8)=false) :
    HmrAndReady (hmrClassChain mode w) s := by
  obtain ⟨h5,h6,h7,h8⟩ := clean
  cases mode <;> simp [hmrClassChain,HmrAndReady,HmrAndStage.advance,writeBit,hw.eq_iff,h5,h6,h7,h8]

theorem hmrClass_value (mode : HmrClassMode) (w : Fin 9 → Wire) (hw : Function.Injective w)
    (s : BasisState) :
    (hmrAndAdvance (hmrClassChain mode w) s) (w 8)=hmrClassValue mode w s := by
  cases mode <;> simp [hmrClassChain,hmrAndAdvance,HmrAndStage.advance,hmrClassValue,writeBit,hw.eq_iff]

/-- The three source class-flag chains: early, armed forward, and armed reverse. -/
theorem hmrClass_run (mode : HmrClassMode) (w : Fin 9 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 5)=false ∧ s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false) :
    run (hmrAndSweep (hmrClassChain mode w)) m s=
      ⟨s.phase,hmrAndAdvance (hmrClassChain mode w) s.basis⟩ :=
  hmrAndSweep_run _ s m (hmrClass_ready mode w hw _ clean)

theorem hmrClass_release (mode : HmrClassMode) (w : Fin 9 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 5)=false ∧ s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false) :
    run (hmrAndUnsweep (hmrClassChain mode w)) m
      ⟨s.phase,hmrAndAdvance (hmrClassChain mode w) s.basis⟩=s :=
  hmrAndUnsweep_run _ s m (hmrClass_ready mode w hw _ clean)

theorem hmrClass_counts (mode : HmrClassMode) (w : Fin 9 → Wire) :
    toffoliCount (hmrAndSweep (hmrClassChain mode w))=(match mode with | .early => 2 | .forwardArmed => 3 | .reverseArmed => 4) ∧
    measurementCount (hmrAndUnsweep (hmrClassChain mode w))=(match mode with | .early => 2 | .forwardArmed => 3 | .reverseArmed => 4) := by
  cases mode <;> simp [hmrClassChain,hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,
    HmrAndStage.release,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,toffoliCount,measurementCount]

end ECDSAAdd.Arithmetic.Paper935
