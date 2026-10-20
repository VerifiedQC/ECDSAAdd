import ECDSAAdd.Arithmetic.Paper935.HmrLiteralAnd

namespace ECDSAAdd.Arithmetic.Paper935

/-- Ports 0..2: j2/j3/j4; 3..5: f[1..3]; 6..8: gv[1..3];
9..12: fv[3,5,6,7]; 13: prediction; 14..18: cached leaves A..E.
This is the emission order of engine.py:1501–1539 with production constants. -/
def hmrDecoderCompute (w : Fin 19 → Wire) : Program :=
  [.CCX (w 0) (w 6) (w 13),.CCX (w 0) (w 9) (w 13),
   .CCX (w 1) (w 10) (w 13)] ++
  hmrLiteralAnd (w 1) (w 4) (w 14) false ++
  [.CCX (w 14) (w 7) (w 13)] ++
  hmrLiteralAnd (w 2) (w 3) (w 15) false ++
  [.CCX (w 15) (w 10) (w 13)] ++
  hmrLiteralAnd (w 2) (w 4) (w 16) true ++
  [.CCX (w 16) (w 10) (w 13),
   .CCX (w 15) (w 11) (w 13),.CCX (w 16) (w 11) (w 13),
   .CCX (w 2) (w 12) (w 13),.CCX (w 15) (w 8) (w 13)] ++
  hmrLiteralAnd (w 2) (w 4) (w 17) false ++
  [.CCX (w 17) (w 8) (w 13)] ++
  hmrLiteralAnd (w 2) (w 5) (w 18) false ++
  [.CCX (w 18) (w 8) (w 13)]

/-- Only the retained AND trails are released, in reverse allocation order.
The payload CCX gates are not reversed. -/
def hmrDecoderRelease (w : Fin 19 → Wire) : Program :=
  hmrLiteralRelease (w 2) (w 5) (w 18) false ++
  hmrLiteralRelease (w 2) (w 4) (w 17) false ++
  hmrLiteralRelease (w 2) (w 4) (w 16) true ++
  hmrLiteralRelease (w 2) (w 3) (w 15) false ++
  hmrLiteralRelease (w 1) (w 4) (w 14) false

def hmrDecoderValue (w : Fin 19 → Wire) (s : BasisState) : Bool :=
  (s (w 0) && s (w 6)) ^^ (s (w 0) && s (w 9)) ^^
  (s (w 1) && s (w 10)) ^^ ((s (w 1) && !s (w 4)) && s (w 7)) ^^
  ((s (w 2) && !s (w 3)) && s (w 10)) ^^
  ((s (w 2) && s (w 4)) && s (w 10)) ^^
  ((s (w 2) && !s (w 3)) && s (w 11)) ^^
  ((s (w 2) && s (w 4)) && s (w 11)) ^^
  (s (w 2) && s (w 12)) ^^
  ((s (w 2) && !s (w 3)) && s (w 8)) ^^
  ((s (w 2) && !s (w 4)) && s (w 8)) ^^
  ((s (w 2) && !s (w 5)) && s (w 8))

def hmrDecoderComputed (w : Fin 19 → Wire) (s : BasisState) : BasisState :=
  writeBit (writeBit (writeBit (writeBit (writeBit (writeBit s
    (w 14) (s (w 1) && !s (w 4)))
    (w 15) (s (w 2) && !s (w 3)))
    (w 16) (s (w 2) && s (w 4)))
    (w 17) (s (w 2) && !s (w 4)))
    (w 18) (s (w 2) && !s (w 5)))
    (w 13) (s (w 13) ^^ hmrDecoderValue w s)

theorem hmrDecoder_counts (w : Fin 19 → Wire) :
    toffoliCount (hmrDecoderCompute w ++ hmrDecoderRelease w)=17 ∧
    measurementCount (hmrDecoderCompute w ++ hmrDecoderRelease w)=5 := by
  simp [hmrDecoderCompute,hmrDecoderRelease,hmrLiteralAnd,hmrLiteralRelease,
    toffoliCount,measurementCount]

theorem hmrDecoderCompute_run (w : Fin 19 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCompute w) m s=⟨s.phase,hmrDecoderComputed w s.basis⟩ := by
  obtain ⟨h14,h15,h16,h17,h18⟩ := clean
  simp [hmrDecoderCompute,hmrLiteralAnd,run,writeBit,hw.eq_iff,h14,h15,h16,h17,h18,
    hmrDecoderComputed,hmrDecoderValue]
  funext q
  simp only [Function.update_apply]
  split_ifs <;> simp_all [hw.eq_iff]

end ECDSAAdd.Arithmetic.Paper935
