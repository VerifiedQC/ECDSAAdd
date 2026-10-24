import ECDSAAdd.Arithmetic.Paper935.HmrCachedDecoderRelease

namespace ECDSAAdd.Arithmetic.Paper935

inductive HmrDecodeOp where
  | leaf (a b t : Wire) (positive : Bool)
  | payload (a b t : Wire)

def HmrDecodeOp.program : HmrDecodeOp → Program
  | .leaf a b t p => hmrLiteralAnd a b t p
  | .payload a b t => [.CCX a b t]

def HmrDecodeOp.advance : HmrDecodeOp → BasisState → BasisState
  | .leaf a b t p,s => writeBit s t (s a && (if p then s b else !s b))
  | .payload a b t,s => writeBit s t (s t ^^ (s a && s b))

def HmrDecodeOp.Ready : HmrDecodeOp → BasisState → Prop
  | .leaf a b t _,s => [a,b,t].Nodup ∧ s t=false
  | .payload a b t,_ => a≠t ∧ b≠t

theorem HmrDecodeOp.count (op : HmrDecodeOp) : measurementCount op.program=0 := by
  cases op with
  | leaf a b t p => cases p <;> rfl
  | payload a b t => rfl

theorem HmrDecodeOp.run (op : HmrDecodeOp) (s : State) (m : List Bool)
    (ready : op.Ready s.basis) :
    ECDSAAdd.run op.program m s=⟨s.phase,op.advance s.basis⟩ := by
  cases op with
  | leaf a b t p => exact hmrLiteralAnd_run a b t p ready.1 s m ready.2
  | payload a b t => rfl

def hmrDecodeAdvance : List HmrDecodeOp → BasisState → BasisState
  | [],s => s
  | op::ops,s => hmrDecodeAdvance ops (op.advance s)

def HmrDecodeReady : List HmrDecodeOp → BasisState → Prop
  | [],_ => True
  | op::ops,s => op.Ready s ∧ HmrDecodeReady ops (op.advance s)

theorem hmrDecodeOps_run (ops : List HmrDecodeOp) (s : State) (m : List Bool)
    (ready : HmrDecodeReady ops s.basis) :
    run (ops.flatMap HmrDecodeOp.program) m s=⟨s.phase,hmrDecodeAdvance ops s.basis⟩ := by
  induction ops generalizing s m with
  | nil => rfl
  | cons op ops ih =>
    rw [List.flatMap_cons,run_append,run_take,op.count,List.drop_zero,op.run s m ready.1]
    exact ih ⟨s.phase,op.advance s.basis⟩ m ready.2

def hmrDecoderOps (w : Fin 19 → Wire) : List HmrDecodeOp :=
  [.payload (w 0) (w 6) (w 13),.payload (w 0) (w 9) (w 13),
   .payload (w 1) (w 10) (w 13),.leaf (w 1) (w 4) (w 14) false,
   .payload (w 14) (w 7) (w 13),.leaf (w 2) (w 3) (w 15) false,
   .payload (w 15) (w 10) (w 13),.leaf (w 2) (w 4) (w 16) true,
   .payload (w 16) (w 10) (w 13),.payload (w 15) (w 11) (w 13),
   .payload (w 16) (w 11) (w 13),.payload (w 2) (w 12) (w 13),
   .payload (w 15) (w 8) (w 13),.leaf (w 2) (w 4) (w 17) false,
   .payload (w 17) (w 8) (w 13),.leaf (w 2) (w 5) (w 18) false,
   .payload (w 18) (w 8) (w 13)]

theorem hmrDecoderOps_program (w : Fin 19 → Wire) :
    (hmrDecoderOps w).flatMap HmrDecodeOp.program=hmrDecoderCompute w := by
  simp [hmrDecoderOps,HmrDecodeOp.program,hmrDecoderCompute,List.append_assoc]

end ECDSAAdd.Arithmetic.Paper935
