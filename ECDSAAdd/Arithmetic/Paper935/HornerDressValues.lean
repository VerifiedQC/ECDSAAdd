import ECDSAAdd.Arithmetic.Paper935.HornerDress

namespace ECDSAAdd.Arithmetic.Paper935

/-- The dressed addend is the exact width-bounded bitwise complement on
an enabled lane, not a field negation. -/
theorem hornerDress_word (ctrl : Wire) (dress word : List Wire) (s : BasisState)
    (inside : ∀q∈word,q∈dress) :
    regValue word (fun q => if q∈dress then s q ^^ s ctrl else s q)=
      if s ctrl then 2^word.length-1-regValue word s else regValue word s := by
  have same : regValue word (fun q => if q∈dress then s q ^^ s ctrl else s q)=
      regValue word (fun q => s q ^^ s ctrl) :=
    regValue_congr _ _ _ (by intro q hq; simp only [if_pos (inside q hq)])
  rw [same]
  cases h : s ctrl
  · simp
  · simpa using regValue_complement word s

/-- Dressing does not change the already written accumulator word. -/
theorem hornerDress_word_frame (ctrl : Wire) (dress word : List Wire) (s : BasisState)
    (outside : ∀q∈word,q∉dress) :
    regValue word (fun q => if q∈dress then s q ^^ s ctrl else s q)=regValue word s :=
  regValue_congr _ _ _ (by intro q hq; simp only [if_neg (outside q hq)])

end ECDSAAdd.Arithmetic.Paper935
