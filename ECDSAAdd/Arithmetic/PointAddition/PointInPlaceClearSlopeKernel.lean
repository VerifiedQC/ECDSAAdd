import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceConditions
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1
open scoped ECDSAAdd.ProofLanguage
open GateProof

-- Local branch algebra and control-bit normalization; no program composition.
private theorem pointInPlaceClearSlopeKernel_spec_steps (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) (hA : G=false → A=0) :
    let E := decide (X=0)
    let Q := G && !E
    let Z := G && E
    let A' := if Q then A-Y/X else A
    Triple (PointInPlaceValues L X Y A G false false) (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero) (PointInPlaceValues L X Y A G E false) ∧
    Triple (PointInPlaceValues L X Y A G E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true) (PointInPlaceValues L X Y A G E Q) ∧
    Triple (PointInPlaceValues L X Y A G E Q) (divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)) (PointInPlaceValues L X Y A' G E Q) ∧
    Triple (PointInPlaceValues L X Y A' G E Q) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true) (PointInPlaceValues L X Y A' G E false) ∧
    Triple (PointInPlaceValues L X Y A' G E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false) (PointInPlaceValues L X Y A' G E Z) ∧
    Triple (PointInPlaceValues L X Y A' G E Z) (maskedConstant L.core.equalNegY L.inPlaceSlope k.val) (PointInPlaceValues L X Y 0 G E Z) ∧
    Triple (PointInPlaceValues L X Y 0 G E Z) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false) (PointInPlaceValues L X Y 0 G E false) ∧
    Triple (PointInPlaceValues L X Y 0 G E false) (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero) (PointInPlaceValues L X Y 0 G false false) := Proof
  let E := decide (X=0)
  let Q := G && !E
  let Z := G && E
  let A' := if Q then A-Y/X else A
  have hX : Q=true → X≠0 := by
    intro hq hx
    simp [Q,E,hx] at hq
  -- After controlled division, only the enabled zero-denominator branch retains a slope.
  have hclear : A'=(if Z then k else 0) := Proof
    We split on G=true
    Case enabled =>
      We split on X=0
      Case zeroDenominator =>
        have exceptionalSlope := hk enabled zeroDenominator
        { A'=k } as slopeRetained by (by simp [A',Q,E,zeroDenominator,exceptionalSlope]);
        conclude { A'=(if Z then k else 0) } by
          (by simpa [Z,E,enabled,zeroDenominator] using slopeRetained);
      Otherwise nonzeroDenominator =>
        have quotient : Y/X=A := by
          rw [hY enabled]
          exact mul_div_cancel_right₀ A nonzeroDenominator
        { A'=0 } as slopeSubtracted by
          (by simp [A',Q,E,enabled,nonzeroDenominator,quotient]);
        conclude { A'=(if Z then k else 0) } by
          (by simpa [Z,E,enabled,nonzeroDenominator] using slopeSubtracted);
    Otherwise disabled =>
      have controlOff : G=false := Bool.eq_false_iff.mpr disabled
      { A=0 } as initialSlopeZero by hA controlOff;
      conclude { A'=(if Z then k else 0) } by
        (by simp [A',Q,Z,controlOff,initialSlopeZero]);
  have h1 := pointStep_zero L hw hn X Y A G false
  have h2 := pointStep_quotient L hw hn X Y A G E false true
  simp only [Bool.false_xor] at h1 h2
  have h3 := pointStep_divideSub L hw hn X Y A G E Q hX
  have h4 := pointStep_quotient L hw hn X Y A' G E Q true
  have hQ : (Q ^^ (G && !E))=false := by simp [Q]
  simp only [ite_true,hQ] at h4
  have h5 := pointStep_quotient L hw hn X Y A' G E false false
  simp only [Bool.false_xor,Bool.false_eq_true,ite_false] at h5
  have h6 := pointStep_clearSlope L hw hn X Y A' G E Z k hclear
  have h7 := pointStep_quotient L hw hn X Y 0 G E Z false
  have hZ : (Z ^^ (G && E))=false := by simp [Z]
  simp only [Bool.false_eq_true,ite_false,hZ] at h7
  have h8 := pointStep_zero L hw hn X Y 0 G E
  have hE : (E ^^ decide (X=0))=false := by simp [E]
  rw [hE] at h8
  exact ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩

/-- 独立判零后分别执行双控制减商和常量 XOR，最后清除判零位及控制工作位。 -/
theorem pointInPlaceClearSlopeKernel_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) (hA : G=false → A=0) :
    Triple (PointInPlaceValues L X Y A G false false) (pointInPlaceClearSlopeKernel L k)
      (PointInPlaceValues L X Y 0 G false false) := by
  let E := decide (X=0)
  let Q := G && !E
  let Z := G && E
  let A' := if Q then A-Y/X else A
  obtain ⟨testX, enableDivision, subtractQuotient, clearDivisionControl, enableConstant, clearSlope, clearConstantControl, uncomputeTest⟩ :=
    pointInPlaceClearSlopeKernel_spec_steps L hw hn X Y A k G hY hk hA
  simpa only [pointInPlaceClearSlopeKernel_program,List.append_assoc] using (hoare_steps {
    Precondition { satisfies (PointInPlaceValues L X Y A G false false) };

    after command { call (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero); }
    get { satisfies (PointInPlaceValues L X Y A G E false) } by exact testX;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true); }
    get { satisfies (PointInPlaceValues L X Y A G E Q) } by exact enableDivision;

    after command { call (divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)); }
    get { satisfies (PointInPlaceValues L X Y A' G E Q) } by exact subtractQuotient;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true); }
    get { satisfies (PointInPlaceValues L X Y A' G E false) } by exact clearDivisionControl;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false); }
    get { satisfies (PointInPlaceValues L X Y A' G E Z) } by exact enableConstant;

    after command { call (maskedConstant L.core.equalNegY L.inPlaceSlope k.val); }
    get { satisfies (PointInPlaceValues L X Y 0 G E Z) } by exact clearSlope;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false); }
    get { satisfies (PointInPlaceValues L X Y 0 G E false) } by exact clearConstantControl;

    after command { call (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero); }
    get { satisfies (PointInPlaceValues L X Y 0 G false false) } by exact uncomputeTest;

    Conclusion { satisfies (PointInPlaceValues L X Y 0 G false false) };
  })

-- The disabled branch permits any slope and either zero-test outcome.
private theorem pointInPlaceClearSlopeKernel_disabled_steps (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) :
    let E := decide (X=0)
    Triple (PointInPlaceValues L X Y A false false false) (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (maskedConstant L.core.equalNegY L.inPlaceSlope k.val) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false) (PointInPlaceValues L X Y A false E false) ∧
    Triple (PointInPlaceValues L X Y A false E false) (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero) (PointInPlaceValues L X Y A false false false) := Proof
  let E := decide (X=0)
  have h1 := pointStep_zero L hw hn X Y A false false
  have hc n := pointStep_quotient L hw hn X Y A false E false n
  have hd := pointStep_divideSub L hw hn X Y A false E false (by simp)
  have hm := pointStep_maskedSlopeOff L hw hn X Y A false E k
  have h8 := pointStep_zero L hw hn X Y A false E
  simp only [Bool.false_xor] at h1
  simp only [Bool.false_and,Bool.false_xor] at hc
  simp only [Bool.false_eq_true,ite_false] at hd
  have hE : (E ^^ decide (X=0))=false := by simp [E]
  rw [hE] at h8
  exact ⟨h1, hc true, hd, hc true, hc false, hm, hc false, h8⟩

/-- generic=0 时保留任意初始斜率，包括 point.x=0 的情况；两个临时位仍恢复零。 -/
theorem pointInPlaceClearSlopeKernel_disabled (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) :
    Triple (PointInPlaceValues L X Y A false false false) (pointInPlaceClearSlopeKernel L k)
      (PointInPlaceValues L X Y A false false false) := by
  let E := decide (X=0)
  obtain ⟨testX, enableDivision, subtractQuotient, clearDivisionControl, enableConstant, clearSlope, clearConstantControl, uncomputeTest⟩ :=
    pointInPlaceClearSlopeKernel_disabled_steps L hw hn X Y A k
  simpa only [pointInPlaceClearSlopeKernel_program,List.append_assoc] using (hoare_steps {
    Precondition { satisfies (PointInPlaceValues L X Y A false false false) };

    after command { call (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact testX;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact enableDivision;

    after command { call (divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact subtractQuotient;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact clearDivisionControl;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact enableConstant;

    after command { call (maskedConstant L.core.equalNegY L.inPlaceSlope k.val); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact clearSlope;

    after command { call (doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false); }
    get { satisfies (PointInPlaceValues L X Y A false E false) } by exact clearConstantControl;

    after command { call (zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero); }
    get { satisfies (PointInPlaceValues L X Y A false false false) } by exact uncomputeTest;

    Conclusion { satisfies (PointInPlaceValues L X Y A false false false) };
  })

end ECDSAAdd.Arithmetic
