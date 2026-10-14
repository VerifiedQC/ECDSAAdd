import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceClearSlope
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1
open scoped ECDSAAdd.ProofLanguage
open GateProof

-- Normalize the arithmetic result of each individual step.
private theorem pointInPlaceGeneric_true_steps (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) (hX : X≠cx)
    (hk : cx-genericX X Y cx cy=0 → genericSlope X Y cx cy=k) :
    let a := genericSlope X Y cx cy
    let d := cx-genericX X Y cx cy
    Triple (PointInPlaceValues L X Y 0 true false false) (pointInPlaceConstantAdd L L.point.x (-cx)) (PointInPlaceValues L (X-cx) Y 0 true false false) ∧
    Triple (PointInPlaceValues L (X-cx) Y 0 true false false) (pointInPlaceConstantAdd L L.point.y (-cy)) (PointInPlaceValues L (X-cx) (Y-cy) 0 true false false) ∧
    Triple (PointInPlaceValues L (X-cx) (Y-cy) 0 true false false) (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y)) (PointInPlaceValues L (X-cx) (Y-cy) a true false false) ∧
    Triple (PointInPlaceValues L (X-cx) (Y-cy) a true false false) (montMulSub L.inPlaceMultiply p) (PointInPlaceValues L (X-cx) 0 a true false false) ∧
    Triple (PointInPlaceValues L (X-cx) 0 a true false false) (copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none L.inPlaceSlope L.inPlaceSquare.y) (PointInPlaceValues L ((X-cx)-a*a) 0 a true false false) ∧
    Triple (PointInPlaceValues L ((X-cx)-a*a) 0 a true false false) (pointInPlaceConstantAdd L L.point.x (3*cx)) (PointInPlaceValues L d 0 a true false false) ∧
    Triple (PointInPlaceValues L d 0 a true false false) (montMulAdd L.inPlaceMultiply p) (PointInPlaceValues L d (a*d) a true false false) ∧
    Triple (PointInPlaceValues L d (a*d) a true false false) (pointInPlaceClearSlope L k) (PointInPlaceValues L d (a*d) 0 true false false) ∧
    Triple (PointInPlaceValues L d (a*d) 0 true false false) (pointInPlaceNegate L) (PointInPlaceValues L (-d) (a*d) 0 true false false) ∧
    Triple (PointInPlaceValues L (-d) (a*d) 0 true false false) (pointInPlaceConstantAdd L L.point.x cx) (PointInPlaceValues L (genericX X Y cx cy) (a*d) 0 true false false) ∧
    Triple (PointInPlaceValues L (genericX X Y cx cy) (a*d) 0 true false false) (pointInPlaceConstantAdd L L.point.y (-cy)) (PointInPlaceValues L (genericX X Y cx cy) (genericY X Y cx cy) 0 true false false) := Proof
  let a := genericSlope X Y cx cy
  let d := cx-genericX X Y cx cy
  have hv := generic_inplace_values X Y cx cy hX
  { (Y-cy)-a*(X-cx)=0 } as translatedYClears by hv.1;
  { (X-cx)-a*a+3*cx=d } as intermediateX by hv.2.1;
  { a*d-cy=genericY X Y cx cy } as finalY by hv.2.2;
  { -d+cx=genericX X Y cx cy } as finalX by (by dsimp [d]; ring);
  have translateX := pointStep_addX L hw hn X Y 0 true false false (-cx)
  have translateY := pointStep_addY L hw hn (X-cx) Y 0 true false false (-cy)
  simp only [if_true,← sub_eq_add_neg] at translateX translateY
  have computeSlope := pointStep_divideAdd L hw hn (X-cx) (Y-cy) 0 true false false
    (fun _ => sub_ne_zero.mpr hX)
  have ha : (Y-cy)/(X-cx)=a := by rfl
  simp only [if_true,zero_add,ha] at computeSlope
  have clearTranslatedY := (pointStep_product L hw hn (X-cx) (Y-cy) a true false false).2
  rw [translatedYClears] at clearTranslatedY
  have subtractSquare := pointStep_square L hw hn (X-cx) 0 a true false false
  have formIntermediateX := pointStep_addX L hw hn ((X-cx)-a*a) 0 a true false false (3*cx)
  simp only [if_true] at formIntermediateX
  rw [intermediateX] at formIntermediateX
  have formIntermediateY := (pointStep_product L hw hn d 0 a true false false).1
  simp only [zero_add] at formIntermediateY
  have clearSlope := pointInPlaceClearSlope_spec L hw hn d (a*d) a k true (fun _ => rfl)
    (fun _ hd => hk hd) (by simp)
  have negateX := pointStep_negate L hw hn d (a*d) 0 true false false
  simp only [if_true] at negateX
  have finishX := pointStep_addX L hw hn (-d) (a*d) 0 true false false cx
  simp only [if_true] at finishX
  rw [finalX] at finishX
  have finishY := pointStep_addY L hw hn (genericX X Y cx cy) (a*d) 0 true false false (-cy)
  simp only [if_true,← sub_eq_add_neg] at finishY
  rw [finalY] at finishY
  exact ⟨translateX, translateY, computeSlope, clearTranslatedY, subtractSquare, formIntermediateX, formIntermediateY, clearSlope, negateX, finishX, finishY⟩

/-- 普通分支为真时的原地公式；例外斜率条件由曲线点数学引理提供。 -/
theorem pointInPlaceGeneric_true (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) (hX : X≠cx)
    (hk : cx-genericX X Y cx cy=0 → genericSlope X Y cx cy=k) :
    Triple (PointInPlaceValues L X Y 0 true false false) (pointInPlaceGeneric L cx cy k)
      (PointInPlaceValues L (genericX X Y cx cy) (genericY X Y cx cy) 0 true false false) := by
  let a := genericSlope X Y cx cy
  let d := cx-genericX X Y cx cy
  obtain ⟨translateX, translateY, computeSlope, clearTranslatedY, subtractSquare, formIntermediateX, formIntermediateY, clearSlope, negateX, finishX, finishY⟩ :=
    pointInPlaceGeneric_true_steps L hw hn X Y cx cy k hX hk
  simpa only [pointInPlaceGeneric_program,List.append_assoc] using (hoare_steps {
    Precondition { satisfies (PointInPlaceValues L X Y 0 true false false) };

    after command { call (pointInPlaceConstantAdd L L.point.x (-cx)); }
    get { satisfies (PointInPlaceValues L (X-cx) Y 0 true false false) } by exact translateX;

    after command { call (pointInPlaceConstantAdd L L.point.y (-cy)); }
    get { satisfies (PointInPlaceValues L (X-cx) (Y-cy) 0 true false false) } by exact translateY;

    after command { call (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y)); }
    get { satisfies (PointInPlaceValues L (X-cx) (Y-cy) a true false false) } by exact computeSlope;

    after command { call (montMulSub L.inPlaceMultiply p); }
    get { satisfies (PointInPlaceValues L (X-cx) 0 a true false false) } by exact clearTranslatedY;

    after command { call (copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none L.inPlaceSlope L.inPlaceSquare.y); }
    get { satisfies (PointInPlaceValues L ((X-cx)-a*a) 0 a true false false) } by exact subtractSquare;

    after command { call (pointInPlaceConstantAdd L L.point.x (3*cx)); }
    get { satisfies (PointInPlaceValues L d 0 a true false false) } by exact formIntermediateX;

    after command { call (montMulAdd L.inPlaceMultiply p); }
    get { satisfies (PointInPlaceValues L d (a*d) a true false false) } by exact formIntermediateY;

    after command { call (pointInPlaceClearSlope L k); }
    get { satisfies (PointInPlaceValues L d (a*d) 0 true false false) } by exact clearSlope;

    after command { call (pointInPlaceNegate L); }
    get { satisfies (PointInPlaceValues L (-d) (a*d) 0 true false false) } by exact negateX;

    after command { call (pointInPlaceConstantAdd L L.point.x cx); }
    get { satisfies (PointInPlaceValues L (genericX X Y cx cy) (a*d) 0 true false false) } by exact finishX;

    after command { call (pointInPlaceConstantAdd L L.point.y (-cy)); }
    get { satisfies (PointInPlaceValues L (genericX X Y cx cy) (genericY X Y cx cy) 0 true false false) } by exact finishY;

    Conclusion { satisfies (PointInPlaceValues L (genericX X Y cx cy) (genericY X Y cx cy) 0 true false false) };
  })

-- With generic=false, the controlled updates are identities and the slope is zero.
private theorem pointInPlaceGeneric_false_steps (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) :
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceConstantAdd L L.point.x (-cx)) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceConstantAdd L L.point.y (-cy)) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y)) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (montMulSub L.inPlaceMultiply p) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none L.inPlaceSlope L.inPlaceSquare.y) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceConstantAdd L L.point.x (3*cx)) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (montMulAdd L.inPlaceMultiply p) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceClearSlope L k) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceNegate L) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceConstantAdd L L.point.x cx) (PointInPlaceValues L X Y 0 false false false) ∧
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceConstantAdd L L.point.y (-cy)) (PointInPlaceValues L X Y 0 false false false) := Proof
  have translateX := pointStep_addX L hw hn X Y 0 false false false (-cx)
  have translateY := pointStep_addY L hw hn X Y 0 false false false (-cy)
  have computeSlope := pointStep_divideAdd L hw hn X Y 0 false false false (by simp)
  have clearTranslatedY := (pointStep_product L hw hn X Y 0 false false false).2
  have subtractSquare := pointStep_square L hw hn X Y 0 false false false
  have formIntermediateX := pointStep_addX L hw hn X Y 0 false false false (3*cx)
  have formIntermediateY := (pointStep_product L hw hn X Y 0 false false false).1
  have clearSlope := pointInPlaceClearSlope_spec L hw hn X Y 0 k false (by simp) (by simp) (by simp)
  have negateX := pointStep_negate L hw hn X Y 0 false false false
  have finishX := pointStep_addX L hw hn X Y 0 false false false cx
  have finishY := pointStep_addY L hw hn X Y 0 false false false (-cy)
  simp only [Bool.false_eq_true,if_false,add_zero,zero_mul,sub_zero] at translateX translateY computeSlope clearTranslatedY subtractSquare formIntermediateX formIntermediateY negateX finishX finishY
  exact ⟨translateX, translateY, computeSlope, clearTranslatedY, subtractSquare, formIntermediateX, formIntermediateY, clearSlope, negateX, finishX, finishY⟩

/-- 未选中的分支斜率始终为零，仍执行同一固定门列并恢复全部工作区。 -/
theorem pointInPlaceGeneric_false (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) :
    Triple (PointInPlaceValues L X Y 0 false false false) (pointInPlaceGeneric L cx cy k)
      (PointInPlaceValues L X Y 0 false false false) := by
  obtain ⟨translateX, translateY, computeSlope, clearTranslatedY, subtractSquare, formIntermediateX, formIntermediateY, clearSlope, negateX, finishX, finishY⟩ :=
    pointInPlaceGeneric_false_steps L hw hn X Y cx cy k
  simpa only [pointInPlaceGeneric_program,List.append_assoc] using (hoare_steps {
    Precondition { satisfies (PointInPlaceValues L X Y 0 false false false) };

    after command { call (pointInPlaceConstantAdd L L.point.x (-cx)); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact translateX;

    after command { call (pointInPlaceConstantAdd L L.point.y (-cy)); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact translateY;

    after command { call (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y)); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact computeSlope;

    after command { call (montMulSub L.inPlaceMultiply p); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact clearTranslatedY;

    after command { call (copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none L.inPlaceSlope L.inPlaceSquare.y); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact subtractSquare;

    after command { call (pointInPlaceConstantAdd L L.point.x (3*cx)); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact formIntermediateX;

    after command { call (montMulAdd L.inPlaceMultiply p); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact formIntermediateY;

    after command { call (pointInPlaceClearSlope L k); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact clearSlope;

    after command { call (pointInPlaceNegate L); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact negateX;

    after command { call (pointInPlaceConstantAdd L L.point.x cx); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact finishX;

    after command { call (pointInPlaceConstantAdd L L.point.y (-cy)); }
    get { satisfies (PointInPlaceValues L X Y 0 false false false) } by exact finishY;

    Conclusion { satisfies (PointInPlaceValues L X Y 0 false false false) };
  })

end ECDSAAdd.Arithmetic
