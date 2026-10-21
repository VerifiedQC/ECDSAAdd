import ECDSAAdd.Arithmetic.Paper935.HmrLiteralKeeper
import ECDSAAdd.Arithmetic.Registers

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrLadderValue_literals (a : HmrLiteral) (cs : List HmrLadderCell) (s : BasisState) :
    hmrLadderValue a cs s=(a::cs.map HmrLadderCell.literal).all (fun l => l.value s) := by
  simp [hmrLadderValue,Function.comp_def]

/-- The logical block value is independent of the chosen temporary wires. -/
theorem hmrLadderValue_reallocate (a : HmrLiteral) (cs ds : List HmrLadderCell)
    (same : cs.map HmrLadderCell.literal=ds.map HmrLadderCell.literal) (s : BasisState) :
    hmrLadderValue a cs s=hmrLadderValue a ds s := by
  rw [hmrLadderValue_literals,hmrLadderValue_literals,same]

theorem hmrNegativeLiterals_zero (bits : List Wire) (s : BasisState) :
    (bits.map (fun q => (⟨q,false⟩ : HmrLiteral))).all (fun l => l.value s)=
      decide (regValue bits s=0) := by
  apply Bool.eq_iff_iff.mpr
  simp [HmrLiteral.value,regValue_zero]

theorem hmrPreviousKeeper_zero (keeper : Wire) (bits : List Wire) (s : BasisState) :
    ((⟨keeper,true⟩ : HmrLiteral)::bits.map (fun q => (⟨q,false⟩ : HmrLiteral))).all
      (fun l => l.value s)=(s keeper && decide (regValue bits s=0)) := by
  change (s keeper && (bits.map (fun q => (⟨q,false⟩ : HmrLiteral))).all
    (fun l => l.value s))=_
  rw [hmrNegativeLiterals_zero]

end ECDSAAdd.Arithmetic.Paper935
