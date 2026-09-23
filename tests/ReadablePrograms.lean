import ECDSAAdd

-- Each equation freezes the pre-refactor instruction list for arbitrary inputs.
-- These are kernel-checked equalities, not just sample executions.
namespace ECDSAAdd.Arithmetic
open Instr Correction Secp256k1

-- RegisterXor/ConditionalXor.lean: conditionalXor
example (kernel : Program) (c : Wire) (src temp dst : List Wire) :
    conditionalXor kernel c src temp dst =
  kernel ++ copyRegister none src dst ++ copyRegister (some c) src dst ++
  copyRegister (some c) temp dst ++ kernel := by rfl

-- Equality/EqualConstant.lean: equalConstant
example (control target : Wire) (bs : List ZeroBit) (k : Nat) :
    equalConstant control target bs k =
  xorConstant (bs.map ZeroBit.input) k ++ zeroControlled control target bs ++
    xorConstant (bs.map ZeroBit.input) k := by rfl

-- Comparison/Compare.lean: compareLt
example (control : Option Wire) (x y carry : List Wire) (cin target : Wire) :
    compareLt control x y carry cin target =
  notRegister (cin :: y) ++ compareChain control x y carry cin target ++ notRegister (cin :: y) := by rfl

-- Comparison/Compare.lean: compareLtConst
example (control : Option Wire) (x T carry : List Wire) (cin target : Wire) (K : Nat) :
    compareLtConst control x T carry cin target K =
  xorConstant T K ++ compareLt control x T carry cin target ++ xorConstant T K := by rfl

-- ModularAddition/ModInPlace.lean: modAddCore
example (L : ModAddCoreLayout) (p : Nat) :
    modAddCore L p =
  -- 1. 高位初始零；扩宽寄存器容纳完整 A+Z。
  addInPlace L.a L.z L.carry L.cin ++
  -- 2. 试减 p；结果最高位记录 A+Z<p。装卸常数不影响该标志。
  xorConstant L.constant p ++ subInPlace L.constant L.z L.carry L.cin ++
  xorConstant L.constant p ++
  -- 3. 借位为真时只向低位加回 p，最高位保持直到最后比较。
  maskedAddConst L.high (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin p ++
  -- 4. 规范结果小于源当且仅当曾约减；比较后 X 清原借位。
  compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high] := by rfl

-- ModularAddition/Modular.lean: modAdd
example (L : ModLayout) (q : Nat) :
    modAdd L q =
  let load := xorConstant (L.reg .modulus) q
  let sum := add (L.adder .x .y .total .carrySum L.cinSum)
  let difference := sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)
  load ++ sum ++ difference ++ selectXor L.selector L.high.diff ++ difference ++ sum ++ load := by rfl

-- ModularAddition/Modular.lean: modSub
example (L : ModLayout) (q : Nat) :
    modSub L q =
  let load := xorConstant (L.reg .modulus) q
  let difference := sub (L.adder .x .y .diff .carryDiff L.cinDiff)
  let correction := add (L.adder .diff .modulus .total .carrySum L.cinSum)
  load ++ difference ++ correction ++ selectXor L.selector L.high.diff ++ correction ++ difference ++ load := by rfl

-- ModularAddition/ModInPlaceWrappers.lean: controlledModAdd
example (c : Wire) (L : ModInPlaceLayout) (p : Nat) :
    controlledModAdd c L p =
  copyRegister (some c) (L.a.take L.low.length) (L.mask.take L.low.length) ++
  modAddCore L.maskedCore p ++
  copyRegister (some c) (L.a.take L.low.length) (L.mask.take L.low.length) := by rfl

-- ModularAddition/ModInPlaceSubtract.lean: modSubInPlace
example (L : ModInPlaceLayout) (p : Nat) :
    modSubInPlace L p =
  negRaw L p ++ modAddInPlace L p ++ negRaw L p := by rfl

-- ModularAddition/ModInPlaceSubtract.lean: controlledModSub
example (c : Wire) (L : ModInPlaceLayout) (p : Nat) :
    controlledModSub c L p =
  negRaw L p ++ controlledModAdd c L p ++ negRaw L p := by rfl

-- ModularAddition/ModInPlaceNegate.lean: negRaw
example (L : ModInPlaceLayout) (p : Nat) :
    negRaw L p =
  notRegister L.a ++ xorConstant L.constant (p+1) ++
  addInPlace L.constant L.a L.carry L.cin ++ xorConstant L.constant (p+1) := by rfl

-- ModularDoubling/ModUnary.lean: dblInPlace
example (U : ModUnaryLayout) (p : Nat) :
    dblInPlace U p =
  rotateLeft U.z ++ xorConstant U.constant p ++ subInPlace U.constant U.z U.carry U.cin ++
  xorConstant U.constant p ++
  maskedAddConst U.high (U.constant.take U.low.length) U.low
    (U.carry.take (U.low.length-1)) U.cin p ++ [.X U.high,.CX U.bit U.high] := by rw [dblInPlace_program]

-- ModularDoubling/ModUnary.lean: halfInPlace
example (U : ModUnaryLayout) (p : Nat) :
    halfInPlace U p =
  [.CX U.bit U.flag] ++ maskedAddConst U.flag U.constant U.z U.carry U.cin p ++
  rotateRight U.z ++
  compareLtConst none U.low (U.constant.take U.low.length) U.carry U.cin U.flag ((p+1)/2) ++
  [.X U.flag] := by rfl

-- ModularMultiplication/MontPrepare.lean: montLookupAdd
example (L : MontStageLayout) (addr : List Wire) (K : Nat) :
    montLookupAdd L addr K =
  montLookup L addr K ++ addInPlace L.table L.acc L.carry L.cin ++ montLookup L addr K := by rfl

-- ModularMultiplication/MontPrepare.lean: montLookupSub
example (L : MontStageLayout) (addr : List Wire) (K : Nat) :
    montLookupSub L addr K =
  montLookup L addr K ++ subInPlace L.table L.acc L.carry L.cin ++ montLookup L addr K := by rfl

-- ModularMultiplication/MontPrepare.lean: montReduce
example (L : MontStageLayout) (p i : Nat) :
    montReduce L p i =
  copyRegister none (L.acc.take 4) (L.record i) ++
  montLookupAdd L (L.record i) p ++ rotateRightBits L.acc 4 := by rfl

-- ModularMultiplication/MontPrepare.lean: montRestoreReduce
example (L : MontStageLayout) (p i : Nat) :
    montRestoreReduce L p i =
  rotateLeftBits L.acc 4 ++ montLookupSub L (L.record i) p ++
  copyRegister none (L.acc.take 4) (L.record i) := by rfl

-- ModularMultiplication/MontPrepare.lean: montWindow
example (L : MontStageLayout) (x y : List Wire) (p i : Nat) :
    montWindow L x y p i =
  montAddDigit L x y i ++ montReduce L p i := by rfl

-- ModularMultiplication/MontPrepare.lean: montRestoreWindow
example (L : MontStageLayout) (x y : List Wire) (p i : Nat) :
    montRestoreWindow L x y p i =
  montRestoreReduce L p i ++ montSubDigit L x y i := by rfl

-- ModularMultiplication/MontPrepare.lean: constMontWindow
example (L : MontStageLayout) (y : List Wire) (p K i : Nat) :
    constMontWindow L y p K i =
  montLookupAdd L ((y.drop (4*i)).take 4) K ++ montReduce L p i := by rfl

-- ModularMultiplication/MontPrepare.lean: constMontRestoreWindow
example (L : MontStageLayout) (y : List Wire) (p K i : Nat) :
    constMontRestoreWindow L y p K i =
  montRestoreReduce L p i ++ montLookupSub L ((y.drop (4*i)).take 4) K := by rfl

-- ModularMultiplication/MontPrepare.lean: montConstantAdd
example (L : MontStageLayout) (K : Nat) :
    montConstantAdd L K =
  xorConstant L.table K ++ addInPlace L.table L.acc L.carry L.cin ++ xorConstant L.table K := by rfl

-- ModularMultiplication/MontPrepare.lean: montConstantSub
example (L : MontStageLayout) (K : Nat) :
    montConstantSub L K =
  xorConstant L.table K ++ subInPlace L.table L.acc L.carry L.cin ++ xorConstant L.table K := by rfl

-- ModularMultiplication/MontPrepare.lean: montNormalize
example (L : MontStageLayout) (p : Nat) :
    montNormalize L p =
  montConstantSub L p ++ [.CX (L.acc.getD 260 L.flag) L.flag] ++
  maskedAddConst L.flag L.table L.acc L.carry L.cin p := by rfl

-- ModularMultiplication/MontPrepare.lean: montDenormalize
example (L : MontStageLayout) (p : Nat) :
    montDenormalize L p =
  maskedSubConst L.flag L.table L.acc L.carry L.cin p ++
  [.CX (L.acc.getD 260 L.flag) L.flag] ++ montConstantAdd L p := by rfl

-- ModularMultiplication/MontPrepare.lean: montPrepare
example (L : MontStageLayout) (x y : List Wire) (p : Nat) :
    montPrepare L x y p =
  montPrepareRounds L x y p 64 ++ montNormalize L p := by rfl

-- ModularMultiplication/MontPrepare.lean: montRestore
example (L : MontStageLayout) (x y : List Wire) (p : Nat) :
    montRestore L x y p =
  montDenormalize L p ++ montRestoreRounds L x y p 64 := by rfl

-- ModularMultiplication/MontPrepare.lean: constPrepare
example (L : MontStageLayout) (y : List Wire) (p K : Nat) :
    constPrepare L y p K =
  constPrepareRounds L y p K 64 ++ montNormalize L p := by rfl

-- ModularMultiplication/MontPrepare.lean: constRestore
example (L : MontStageLayout) (y : List Wire) (p K : Nat) :
    constRestore L y p K =
  montDenormalize L p ++ constRestoreRounds L y p K 64 := by rfl

-- ModularMultiplication/MontLayout.lean: montP
example (M : MontLayout) (p : Nat) :
    montP M p =
  montPrepare M.first M.x M.y p ++ constPrepare M.second M.a p (montgomeryConversion p) := by rfl

-- ModularMultiplication/MontLayout.lean: montQ
example (M : MontLayout) (p : Nat) :
    montQ M p =
  constRestore M.second M.a p (montgomeryConversion p) ++ montRestore M.first M.x M.y p := by rfl

-- ModularMultiplication/MontAdapterLayout.lean: montMulXor
example (M : MontLayout) (p : Nat) :
    montMulXor M p =
  montP M p ++ copyRegister none M.product M.out ++ montQ M p := by rfl

-- ModularMultiplication/MontAdapterLayout.lean: montMulAdd
example (M : MontLayout) (p : Nat) :
    montMulAdd M p =
  montP M p ++ modAddInPlace M.addView p ++ montQ M p := by rfl

-- ModularMultiplication/MontAdapterLayout.lean: montMulSub
example (M : MontLayout) (p : Nat) :
    montMulSub M p =
  montP M p ++ modSubInPlace M.addView p ++ montQ M p := by rfl

-- ModularMultiplication/MontAdapterLayout.lean: montMulControlledAdd
example (c : Wire) (M : MontLayout) (p : Nat) :
    montMulControlledAdd c M p =
  montP M p ++ controlledModAdd c M.addView p ++ montQ M p := by rfl

-- ModularMultiplication/MontAdapterLayout.lean: montMulControlledSub
example (c : Wire) (M : MontLayout) (p : Nat) :
    montMulControlledSub c M p =
  montP M p ++ controlledModSub c M.addView p ++ montQ M p := by rfl

-- ModularInverse/RoundBody.lean: swapDataPairs
example (L : RoundDataLayout) (c : Wire) :
    swapDataPairs L c =
  swapRegisters c L.u L.v ++ swapRegisters c L.r L.s := by rfl

-- ModularInverse/RoundBody.lean: kaliskiBodyProgram
example (L : RoundDataLayout) (active swap subtract : Wire) :
    kaliskiBodyProgram L active swap subtract =
  swapDataPairs L swap ++ inplaceArithmetic L .u .v subtract true ++
  inplaceArithmetic L .r .s subtract false ++ shiftRight active L.u ++ shiftLeft active L.s ++
  swapDataPairs L swap := by rfl

-- ModularInverse/RoundBody.lean: kaliskiUnbodyProgram
example (L : RoundDataLayout) (active swap subtract : Wire) :
    kaliskiUnbodyProgram L active swap subtract =
  swapDataPairs L swap ++ shiftRight active L.s ++ shiftLeft active L.u ++
  inplaceArithmetic L .r .s subtract true ++ inplaceArithmetic L .u .v subtract false ++
  swapDataPairs L swap := by rfl

-- ModularInverse/KaliskiRound.lean: recordRound
example (L : KaliskiRoundLayout) :
    recordRound L =
  [.CCX L.active L.u.head! L.oddWork, .CCX L.oddWork L.v.head! L.bothWork,
   .CX L.bothWork L.subtract, .CX L.oddWork L.swap] ++
  compareLt (some L.bothWork) L.v L.u (L.data.reg .carry) L.cin L.swap ++
  [.CCX L.oddWork L.v.head! L.bothWork, .CCX L.active L.u.head! L.oddWork] := by rw [recordRound_program]

-- ModularInverse/KaliskiRound.lean: kaliskiRound
example (L : KaliskiRoundLayout) (i : Nat) :
    kaliskiRound L i =
  loadActive L ++ recordRound L ++ kaliskiBodyProgram L.data L.active L.swap L.subtract ++
  counterInc L.counter ++ zeroControlled L.active L.done (L.data.zeroBits .v) ++ roundActiveXor L i := by rfl

-- ModularInverse/KaliskiRound.lean: kaliskiUnround
example (L : KaliskiRoundLayout) (i : Nat) :
    kaliskiUnround L i =
  roundActiveXor L i ++ zeroControlled L.active L.done (L.data.zeroBits .v) ++
  kaliskiUnbodyProgram L.data L.active L.swap L.subtract ++ counterDec L.counter.swapCounter ++
  recordRound L ++ loadActive L := by rfl

-- ModularInverse/InverseCompute.lean: inverseCompute
example (L : InverseLoopLayout) (q : Nat) :
    inverseCompute L q =
  -- 第一阶段：u/v/r/s/k 演化 512 轮，records 保存各轮分支。
  kaliskiLoop L.first 0 L.records ++
  -- 将 (−r) mod q 写入初始为零的 a；temp 与模算术工作区恢复为零。
  negativeInit L.arithmetic q L.middle.r L.temp L.a ++
  -- 第二阶段：十位k查表与单段Montgomery缩放；y/carry保存缩放历史，B清零。
  L.scaling.prepare q := by rfl

-- ModularInverse/InverseCompute.lean: inverseUncompute
example (L : InverseLoopLayout) (q : Nat) :
    inverseUncompute L q =
  -- 清除缩放历史，将a恢复为(−r) mod q，轮工作区重新全部为零。
  L.scaling.restore q ++
  -- negativeInit 是 XOR 模块：再写同一个值，将 a 清零。
  negativeInit L.arithmetic q L.middle.r L.temp L.a ++
  -- 利用保存的分支恢复第一阶段初值，同时清 records。
  kaliskiUnloop L.first 0 L.records := by rfl

-- ModularInverse/InverseCompute.lean: inverseLoop
example (L : InverseLoopLayout) (q : Nat) :
    inverseLoop L q =
  inverseCompute L q ++ copyRegister none L.a L.out ++ inverseUncompute L q := by rfl

-- ModularInverse/InverseScale.lean: exchange
namespace InverseScaleLayout
example (L : InverseScaleLayout) :
    exchange L =
  copyRegister none L.a (L.stage.acc.take 257) ++
  copyRegister none (L.stage.acc.take 257) L.a ++
  copyRegister none L.a (L.stage.acc.take 257) := by rfl
end InverseScaleLayout

-- ModularInverse/InverseScale.lean: prepare
namespace InverseScaleLayout
example (L : InverseScaleLayout) (q : Nat) :
    prepare L q =
  L.lookup q ++ montPrepare L.stage L.factor (L.a.take 256) q ++ L.exchange ++ L.lookup q := by rfl
end InverseScaleLayout

-- ModularInverse/InverseScale.lean: restore
namespace InverseScaleLayout
example (L : InverseScaleLayout) (q : Nat) :
    restore L q =
  L.lookup q ++ L.exchange ++ montRestore L.stage L.factor (L.a.take 256) q ++ L.lookup q := by rfl
end InverseScaleLayout

-- ModularInverse/InverseLayout.lean: inverseLoad
example (L : InverseLayout) :
    inverseLoad L =
  copyRegister none L.x L.vLow ++ xorConstant L.inner.first.u p ++ xorConstant L.inner.first.s 1 := by rfl

-- ModularInverse/InverseLayout.lean: inverseUnload
example (L : InverseLayout) :
    inverseUnload L =
  xorConstant L.inner.first.s 1 ++ xorConstant L.inner.first.u p ++ copyRegister none L.x L.vLow := by rfl

-- ModularInverse/InverseLayout.lean: fieldInverse
example (L : InverseLayout) :
    fieldInverse L =
  inverseLoad L ++ inverseLoop L.inner p ++ inverseUnload L := by rfl

-- Division/Divide.lean: divideLoad
example (L : DivideLayout) :
    divideLoad L =
  [.X L.vBit,.CX L.control L.vBit] ++
  copyRegister (some L.control) L.denominator L.vLow ++
  xorConstant L.inner.first.u p ++ xorConstant L.inner.first.s 1 := by rfl

-- Division/Divide.lean: divideUnload
example (L : DivideLayout) :
    divideUnload L =
  xorConstant L.inner.first.s 1 ++ xorConstant L.inner.first.u p ++
  copyRegister (some L.control) L.denominator L.vLow ++
  [.CX L.control L.vBit,.X L.vBit] := by rw [divideUnload_program]

-- Division/Divide.lean: divideAdd
example (L : DivideLayout) :
    divideAdd L =
  divideLoad L ++ inverseCompute L.inner p ++ montMulControlledAdd L.control L.multiply p ++
  inverseUncompute L.inner p ++ divideUnload L := by rfl

-- Division/Divide.lean: divideSub
example (L : DivideLayout) :
    divideSub L =
  divideLoad L ++ inverseCompute L.inner p ++ montMulControlledSub L.control L.multiply p ++
  inverseUncompute L.inner p ++ divideUnload L := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceConstantAdd
example (L : ControlledPointLayout) (r : List Wire) (k : Fp) :
    pointInPlaceConstantAdd L r k =
  let M := L.inPlaceConstant r
  maskedConstant L.core.generic M.a k.val ++ modAddInPlace M p ++ maskedConstant L.core.generic M.a k.val := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceNegate
example (L : ControlledPointLayout) :
    pointInPlaceNegate L =
  controlledModSub L.core.generic L.inPlaceNegate p ++
  swapRegisters L.core.generic L.point.x L.inPlaceNegate.low ++
  controlledModAdd L.core.generic L.inPlaceNegate p := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceClearSlope
example (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlope L lambdaStar =
  equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 ++
  [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] ++
  divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
  maskedConstant L.core.equalX L.inPlaceSlope lambdaStar.val ++
  [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] ++
  equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 := by rw [pointInPlaceClearSlope_program]

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceGeneric
example (L : ControlledPointLayout) (cx cy lambdaStar : Fp) :
    pointInPlaceGeneric L cx cy lambdaStar =
  pointInPlaceConstantAdd L L.point.x (-cx) ++
  pointInPlaceConstantAdd L L.point.y (-cy) ++
  divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y) ++
  montMulSub L.inPlaceMultiply p ++
  copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
  montMulSub L.inPlaceSquare p ++
  copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
  pointInPlaceConstantAdd L L.point.x (3*cx) ++
  montMulAdd L.inPlaceMultiply p ++
  pointInPlaceClearSlope L lambdaStar ++
  pointInPlaceNegate L ++
  pointInPlaceConstantAdd L L.point.x cx ++
  pointInPlaceConstantAdd L L.point.y (-cy) := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceGenericFlag
example (L : ControlledPointLayout) :
    pointInPlaceGenericFlag L =
  [.CX L.control L.core.generic,.CX L.infinitySelect L.core.generic,
    .CX L.doubleSelect L.core.generic,.CX L.genericSelect L.core.generic] := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceCorners
example (L : ControlledPointLayout) (C : Point) :
    pointInPlaceCorners L C =
  maskedPointConstant L.infinitySelect L.point C ++
  maskedPointConstant L.doubleSelect L.point C ++
  maskedPointConstant L.doubleSelect L.point (C+C) ++
  maskedPointConstant L.genericSelect L.point (-C) := by rfl

-- PointAddition/PointInPlaceProgram.lean: pointInPlaceFinite
example (L : ControlledPointLayout) (C : Point) (cx cy : Fp) :
    pointInPlaceFinite L C cx cy =
  pointInPlaceDoubleEnable L cy ++
  equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode 0) ++
  equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode C) ++
  equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode (-C)) ++
  pointInPlaceGenericFlag L ++
  pointInPlaceGeneric L cx cy (exceptionalSlope C) ++
  pointInPlaceCorners L C ++
  pointInPlaceGenericFlag L ++
  equalConstant L.control L.infinitySelect L.inPlacePointZero (pointCode C) ++
  equalConstant L.core.double L.doubleSelect L.inPlacePointZero (pointCode (C+C)) ++
  equalConstant L.control L.genericSelect L.inPlacePointZero (pointCode 0) ++
  pointInPlaceDoubleEnable L cy := by rfl

-- PointAddition/PointCandidate.lean: pointSubConstant
example (L : PointAddLayout) (x out : List Wire) (k : Nat) :
    pointSubConstant L x out k =
  xorConstant L.constant k++fieldSub (poolSub L.poolWire x L.constant out)++
    xorConstant L.constant k := by rfl

-- PointAddition/PointCandidate.lean: pointSquare
example (L : PointAddLayout) :
    pointSquare L =
  copyRegister none L.slope L.constant++
    fieldMul (poolMul L.poolWire L.slope (L.constant.take 256) L.square)++
    copyRegister none L.slope L.constant := by rfl

-- PointAddition/PointCandidate.lean: pointCandidateCompute
example (L : PointAddLayout) (cx cy : Fp) :
    pointCandidateCompute L cx cy =
  pointSubConstant L L.extendedX L.dx cx.val++
  pointSubConstant L L.extendedY L.dy cy.val++
  safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail++
  fieldInverse (poolInverse L.poolWire L.divisor L.inverse)++
  fieldMul (poolMul L.poolWire L.dy L.inverse L.slope)++
  pointSquare L++
  fieldSub (poolSub L.poolWire L.square L.extendedX L.offset)++
  pointSubConstant L L.offset L.candidateX cx.val++
  fieldSub (poolSub L.poolWire L.extendedX L.candidateX L.delta)++
  fieldMul (poolMul L.poolWire L.delta (L.slope.take 256) L.product)++
  fieldSub (poolSub L.poolWire L.product L.extendedY L.candidateY) := by rfl

-- PointAddition/PointCandidate.lean: pointCandidateClear
example (L : PointAddLayout) (cx cy : Fp) :
    pointCandidateClear L cx cy =
  fieldSub (poolSub L.poolWire L.product L.extendedY L.candidateY)++
  fieldMul (poolMul L.poolWire L.delta (L.slope.take 256) L.product)++
  fieldSub (poolSub L.poolWire L.extendedX L.candidateX L.delta)++
  pointSubConstant L L.offset L.candidateX cx.val++
  fieldSub (poolSub L.poolWire L.square L.extendedX L.offset)++
  pointSquare L++
  fieldMul (poolMul L.poolWire L.dy L.inverse L.slope)++
  fieldInverse (poolInverse L.poolWire L.divisor L.inverse)++
  safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail++
  pointSubConstant L L.extendedY L.dy cy.val++
  pointSubConstant L L.extendedX L.dx cx.val := by rfl

-- PointAddition/PointOutput.lean: maskedPointConstant
example (c : Wire) (r : PointReg) (C : Point) :
    maskedPointConstant c r C =
  maskedConstant c [r.finite] (pointFinite C).toNat++
    maskedConstant c r.x (pointX C)++maskedConstant c r.y (pointY C) := by rfl

-- PointAddition/PointOutput.lean: pointGenericOutput
example (L : PointAddLayout) :
    pointGenericOutput L =
  [.CX L.generic L.output.finite]++
    copyRegister (some L.generic) (L.candidateX.take 256) L.output.x++
    copyRegister (some L.generic) (L.candidateY.take 256) L.output.y := by rfl

-- PointAddition/PointOutput.lean: negativePointConstant
example (c : Wire) (r : PointReg) (C : Point) :
    negativePointConstant c r C =
  [.X c]++maskedPointConstant c r C++[.X c] := by rfl

-- PointAddition/PointOutput.lean: pointOutput
example (L : PointAddLayout) (C : Point) :
    pointOutput L C =
  pointGenericOutput L++maskedPointConstant L.double L.output (C+C)++
    negativePointConstant L.input.finite L.output C := by rfl

-- PointAddition/PointOutput.lean: pointCopy
example (a b : PointReg) :
    pointCopy a b =
  [.CX a.finite b.finite]++copyRegister none a.x b.x++copyRegister none a.y b.y := by rfl

-- PointAddition/ControlledPointLayout.lean: pointSelectors
example (L : ControlledPointLayout) :
    pointSelectors L =
  [.CCX L.control L.core.generic L.genericSelect,
   .CCX L.control L.core.double L.doubleSelect,
   .X L.core.input.finite,.CCX L.control L.core.input.finite L.infinitySelect,.X L.core.input.finite] := by rfl

-- PointAddition/ControlledPointLayout.lean: selectedPointOutput
example (L : ControlledPointLayout) (C : Point) :
    selectedPointOutput L C =
  pointGenericOutput L.selected++maskedPointConstant L.doubleSelect L.core.output (C+C)++
    maskedPointConstant L.infinitySelect L.core.output C := by rfl

-- PointAddition/ControlledPointLayout.lean: controlledPointOutput
example (L : ControlledPointLayout) (C : Point) :
    controlledPointOutput L C =
  pointSelectors L++selectedPointOutput L C++pointSelectors L := by rfl

end ECDSAAdd.Arithmetic
