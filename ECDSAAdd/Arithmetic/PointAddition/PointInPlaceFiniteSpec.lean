import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceFlagSteps
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1
open scoped ECDSAAdd.ProofLanguage
open GateProof

-- Derive the individual flag transitions from the input and output predicates.
private theorem pointInPlaceFinite_steps (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool) :
    let C : Point := .some hc
    let O := inPlaceInfinity b R
    let D := inPlaceDouble b R C
    let I := inPlaceInversePoint b R C
    let G := inPlaceOrdinary b R C
    let H := b && decide (cy≠-cy)
    let S := if b then R+C else R
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L false false false false false)) (pointInPlaceDoubleEnable L cy) (PointInPlaceBoundary L R b (inPlaceFlagState L false false false false H)) ∧
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L false false false false H)) (equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode 0)) (PointInPlaceBoundary L R b (inPlaceFlagState L O false false false H)) ∧
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O false false false H)) (equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode C)) (PointInPlaceBoundary L R b (inPlaceFlagState L O D false false H)) ∧
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O D false false H)) (equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode (-C))) (PointInPlaceBoundary L R b (inPlaceFlagState L O D I false H)) ∧
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O D I false H)) (pointInPlaceGenericFlag L) (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G H)) ∧
    Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G H)) (pointInPlaceGeneric L cx cy (exceptionalSlope C)) (PointInPlaceBoundary L (if G then R+C else R) b (inPlaceFlagState L O D I G H)) ∧
    Triple (PointInPlaceBoundary L (if G then R+C else R) b (inPlaceFlagState L O D I G H)) (pointInPlaceCorners L C) (PointInPlaceBoundary L S b (inPlaceFlagState L O D I G H)) ∧
    Triple (PointInPlaceBoundary L S b (inPlaceFlagState L O D I G H)) (pointInPlaceGenericFlag L) (PointInPlaceBoundary L S b (inPlaceFlagState L O D I false H)) ∧
    Triple (PointInPlaceBoundary L S b (inPlaceFlagState L O D I false H)) (equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode C)) (PointInPlaceBoundary L S b (inPlaceFlagState L false D I false H)) ∧
    Triple (PointInPlaceBoundary L S b (inPlaceFlagState L false D I false H)) (equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode (C+C))) (PointInPlaceBoundary L S b (inPlaceFlagState L false false I false H)) ∧
    Triple (PointInPlaceBoundary L S b (inPlaceFlagState L false false I false H)) (equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode 0)) (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false H)) ∧
    Triple (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false H)) (pointInPlaceDoubleEnable L cy) (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false false)) := Proof
  let C : Point := .some hc
  let O := inPlaceInfinity b R
  let D := inPlaceDouble b R C
  let I := inPlaceInversePoint b R C
  let G := inPlaceOrdinary b R C
  let H := b && decide (cy≠-cy)
  let S := if b then R+C else R
  have hC : C≠0 := WeierstrassCurve.Affine.Point.some_ne_zero hc
  have hH : H=(b && !pointEqual C (-C)) := by
    apply Bool.eq_iff_iff.mpr
    simp only [H,Bool.and_eq_true,Bool.not_eq_true',decide_eq_true_eq]
    have hd := doubling_enabled_iff hc
    have he : pointEqual C (-C)=false ↔ C≠-C := by
      rw [Bool.eq_false_iff]
      exact not_congr (pointEqual_true_iff C (-C))
    exact and_congr_right (fun _ => hd.trans he.symm)
  have hD : (H && pointEqual R C)=D := by rw [hH]; rfl
  -- Classify the input into identity, doubling, inverse, and ordinary cases.
  have enableDoubling := pointFlag_doubleEnable L hw hn R b false false false false false cy
  simp only [Bool.false_xor] at enableDoubling
  have identifyInfinity := pointFlag_equalO L hw hn R 0 b false false false false H
  simp only [Bool.false_xor] at identifyInfinity
  have identifyDouble := pointFlag_equalD L hw hn R C b O false false false H
  simp only [Bool.false_xor,hD] at identifyDouble
  have identifyInverse := pointFlag_equalI L hw hn R (-C) b O D false false H
  simp only [Bool.false_xor] at identifyInverse
  have identifyOrdinary := pointFlag_generic L hw hn R b O D I false H
  simp only [Bool.false_xor] at identifyOrdinary
  have hread := inPlaceFlagState_read L hw hn O D I G H
  -- Update ordinary points, then the three exceptional cases.
  have ordinaryAddition := pointBoundary_generic L hw hn R b (inPlaceFlagState L O D I G H) hc
    hread.2.2.2.2.1 hread.2.2.2.2.2.1
    (fun hg => (inPlaceOrdinary_true b R C hC).mp (hread.2.2.2.1.symm.trans hg) |>.2)
  rw [hread.2.2.2.1] at ordinaryAddition
  have exceptionalAddition := pointBoundary_corners L hw hn R C hC b (inPlaceFlagState L O D I G H)
    hread.1 hread.2.1 hread.2.2.1
  -- Recompute the same predicates from the output and XOR away each flag.
  have clearOrdinary := pointFlag_generic L hw hn S b O D I G H
  have hgclear : ((((G ^^ b) ^^ O) ^^ D) ^^ I)=false := by
    dsimp only [G,inPlaceOrdinary,O,D,I]
    generalize inPlaceInfinity b R=o, inPlaceDouble b R C=d, inPlaceInversePoint b R C=i
    cases b <;> cases o <;> cases d <;> cases i <;> rfl
  rw [hgclear] at clearOrdinary
  have hf := inPlaceFlags_output b R C
  { (b && pointEqual S C)=O } as infinityRecognizedAtOutput by hf.1;
  { (b && pointEqual S 0)=I } as inverseRecognizedAtOutput by hf.2.2;
  have clearInfinity := pointFlag_equalO L hw hn S C b O D I false H
  rw [infinityRecognizedAtOutput,Bool.xor_self] at clearInfinity
  have clearDouble := pointFlag_equalD L hw hn S (C+C) b false D I false H
  have hdo : (H && pointEqual S (C+C))=D := by rw [hH]; exact hf.2.1
  rw [hdo,Bool.xor_self] at clearDouble
  have clearInverse := pointFlag_equalI L hw hn S 0 b false false I false H
  rw [inverseRecognizedAtOutput,Bool.xor_self] at clearInverse
  have clearEnable := pointFlag_doubleEnable L hw hn S b false false false false H cy
  simp only [show (H ^^ (b && decide (cy≠-cy)))=false from Bool.xor_self H] at clearEnable
  exact ⟨enableDoubling, identifyInfinity, identifyDouble, identifyInverse, identifyOrdinary, ordinaryAddition, exceptionalAddition, clearOrdinary, clearInfinity, clearDouble, clearInverse, clearEnable⟩

/-- 有限常量的完整原地点加：包括输入分类、普通分支、角落写回和输出清标志。 -/
theorem pointInPlaceFinite_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool) :
    Triple (PointInPlaceBoundary L R b (fun _ => false)) (pointInPlaceFinite L (.some hc) cx cy)
      (PointInPlaceBoundary L (if b then R+.some hc else R) b (fun _ => false)) := by
  let C : Point := .some hc
  let O := inPlaceInfinity b R
  let D := inPlaceDouble b R C
  let I := inPlaceInversePoint b R C
  let G := inPlaceOrdinary b R C
  let H := b && decide (cy≠-cy)
  let S := if b then R+C else R
  obtain ⟨enableDoubling, identifyInfinity, identifyDouble, identifyInverse, identifyOrdinary, ordinaryAddition, exceptionalAddition, clearOrdinary, clearInfinity, clearDouble, clearInverse, clearEnable⟩ :=
    pointInPlaceFinite_steps L hw hn R hc b
  -- O/D/I classify the three exceptional inputs; G selects ordinary addition; H enables doubling.
  simpa only [pointInPlaceFinite,List.append_assoc,inPlaceFlagState_zero] using (hoare_steps {
    Precondition { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L false false false false false)) };

    after command { call (pointInPlaceDoubleEnable L cy); }
    get { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L false false false false H)) } by exact enableDoubling;

    after command { call (equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode 0)); }
    get { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L O false false false H)) } by exact identifyInfinity;

    after command { call (equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode C)); }
    get { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L O D false false H)) } by exact identifyDouble;

    after command { call (equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode (-C))); }
    get { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L O D I false H)) } by exact identifyInverse;

    after command { call (pointInPlaceGenericFlag L); }
    get { satisfies (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G H)) } by exact identifyOrdinary;

    after command { call (pointInPlaceGeneric L cx cy (exceptionalSlope C)); }
    get { satisfies (PointInPlaceBoundary L (if G then R+C else R) b (inPlaceFlagState L O D I G H)) } by exact ordinaryAddition;

    after command { call (pointInPlaceCorners L C); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L O D I G H)) } by exact exceptionalAddition;

    after command { call (pointInPlaceGenericFlag L); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L O D I false H)) } by exact clearOrdinary;

    after command { call (equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode C)); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L false D I false H)) } by exact clearInfinity;

    after command { call (equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode (C+C))); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L false false I false H)) } by exact clearDouble;

    after command { call (equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode 0)); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false H)) } by exact clearInverse;

    after command { call (pointInPlaceDoubleEnable L cy); }
    get { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false false)) } by exact clearEnable;

    Conclusion { satisfies (PointInPlaceBoundary L S b (inPlaceFlagState L false false false false false)) };
  })


end ECDSAAdd.Arithmetic
