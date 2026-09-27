import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceConditions

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

/-- 独立判零后分别执行双控制减商和常量 XOR，最后清除判零位及控制工作位。 -/
theorem pointInPlaceClearSlope_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) (hA : G=false → A=0) :
    Triple (PointInPlaceValues L X Y A G false false) (pointInPlaceClearSlope L k)
      (PointInPlaceValues L X Y 0 G false false) := by
  let E := decide (X=0)
  let Q := G && !E
  let Z := G && E
  let A' := if Q then A-Y/X else A
  have hX : Q=true → X≠0 := by
    intro hq hx
    simp [Q,E,hx] at hq
  have hclear : A'=(if Z then k else 0) := by
    cases hg : G
    · simp [A',Q,Z,E,hg,hA hg]
    · by_cases hx : X=0
      · simp [A',Q,Z,E,hg,hx,hk hg hx]
      · have hd : Y/X=A := by rw [hY hg]; exact mul_div_cancel_right₀ A hx
        simp [A',Q,Z,E,hg,hx,hd]
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
  have h := ((((((h1.seq h2).seq h3).seq h4).seq h5).seq h6).seq h7).seq h8
  simpa only [pointInPlaceClearSlope_program,List.append_assoc] using h

/-- generic=0 时保留任意初始斜率，包括 point.x=0 的情况；两个临时位仍恢复零。 -/
theorem pointInPlaceClearSlope_disabled (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) :
    Triple (PointInPlaceValues L X Y A false false false) (pointInPlaceClearSlope L k)
      (PointInPlaceValues L X Y A false false false) := by
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
  have h := ((((((h1.seq (hc true)).seq hd).seq (hc true)).seq (hc false)).seq hm).seq (hc false)).seq h8
  simpa only [pointInPlaceClearSlope_program,List.append_assoc] using h

end ECDSAAdd.Arithmetic
