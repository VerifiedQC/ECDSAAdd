# 椭圆曲线点加

本模块实现 secp256k1 点与经典常量点相加的电路，包括 XOR 输出、受控原地更新、特殊点分支及辅助位清理。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [ControlledPointAddSpec.lean](ControlledPointAddSpec.lean)

合法点 R、控制 b 和零工作区下，原地点变为 `if b then R+C else R`，控制保持，工作区恢复零；覆盖有限常量点和无穷远常量点。

### controlledPointAdd

实现约定：[controlledPointAdd_spec](ControlledPointAddSpec.lean#L18)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ L.control=b,L.point=R,L.work=0 }
controlledPointAdd L C
{ L.control=b,L.point=(if b then R+C else R),L.work=0 }
```

## [ControlledPointOutput.lean](ControlledPointOutput.lean)

控制关闭不改输出，开启时把普通候选、倍点常量和无穷远输入对应常量点的选定编码异或到输出；输出之外的位及相位不变。该文件证明输出阶段，不单独证明完整点加。

### controlledPointOutput

正确性由 [controlledPointOutput_correct](ControlledPointOutput.lean#L11) 证明：

控制关闭时输出不变；控制开启时，按分类标志把普通候选、倍点常量和无穷远输入对应的常量点异或到输出，保持输出以外的状态并恢复相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (s₀[L.genericSelect]=false ∧ s₀[L.doubleSelect]=false ∧ s₀[L.infinitySelect]=false) }
controlledPointOutput L C
{ s₁.phase=s₀.phase
  ∧ s₁[L.core.output.finite] = (s₀[L.core.output.finite]) XOR (s₀[L.control] AND (s₀[L.core.generic] XOR
    (s₀[L.core.double] AND pointFinite (C+C)) XOR (!s₀[L.core.input.finite] AND pointFinite C)))
  ∧ val₁(L.core.output.x) = val₀(L.core.output.x) XOR (if s₀[L.control] then (if s₀[L.core.generic] then
    val₀(L.core.candidateX.take 256) else 0) XOR (if s₀[L.core.double] then pointX (C+C) else 0) XOR (if
    !s₀[L.core.input.finite] then pointX C else 0) else 0)
  ∧ val₁(L.core.output.y) = val₀(L.core.output.y) XOR (if s₀[L.control] then (if s₀[L.core.generic] then
    val₀(L.core.candidateY.take 256) else 0) XOR (if s₀[L.core.double] then pointY (C+C) else 0) XOR (if
    !s₀[L.core.input.finite] then pointY C else 0) else 0)
  ∧ (∀ w∉PointAddLayout.pointWires L.core.output, s₁[w]=s₀[w]) }
```

## [FieldFrame.lean](FieldFrame.lean)

域减法、乘法和非零输入求逆分别把相应结果异或到输出；每种操作都保持输出之外的所有基态位与相位。

### fieldSub

正确性由 [fieldSub_correct](FieldFrame.lean#L9) 证明：

将两个输入在 secp256k1 域中的差异或到输出，保持输出外基态位与相位。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width=256`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.x)<p) ∧ (val₀(L.y)<p) ∧ (val₀(L.work)=0) }
fieldSub L
{ s₁.phase=s₀.phase
  ∧ (∀ w∉L.out,s₁[w]=s₀[w])
  ∧ val₁(L.out)=val₀(L.out) XOR ((val₀(L.x)+p-val₀(L.y))%p) }
```

### fieldMul

正确性由 [fieldMul_correct](FieldFrame.lean#L19) 证明：

将模乘的接口规格提升为逐线保持，以便复用共享工作区。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.x)<p) ∧ (val₀(L.work)=0) }
fieldMul L
{ s₁.phase=s₀.phase
  ∧ (∀ w∉L.out,s₁[w]=s₀[w])
  ∧ val₁(L.out)=val₀(L.out) XOR ((val₀(L.x)*val₀(L.y))%p) }
```

### fieldInverse

正确性由 [fieldInverse_correct](FieldFrame.lean#L36) 证明：

求逆只改变输出位，全部借用工作位逐线恢复；定义域仍要求正的规范输入。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。

```text
{ 初始状态 = s₀ ∧ (0<val₀(L.x)) ∧ (val₀(L.x)<p) ∧ (val₀(L.work)=0) }
fieldInverse L
{ s₁.phase=s₀.phase
  ∧ (∀ w∉L.out,s₁[w]=s₀[w])
  ∧ val₁(L.out)=val₀(L.out) XOR (((val₀(L.x) : Fp)⁻¹).val) }
```

## [PointAddSpec.lean](PointAddSpec.lean)

将 R+C 的有限点标志与两个坐标分别异或到输出编码，保持输入 R 并恢复零工作区；输出初始编码无穷远点时，最终直接编码 R+C。

### pointAddOut_xor

实现约定：[pointAddOut_xor_spec](PointAddSpec.lean#L55)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ L.input=R,L.output.finite=OF,L.output.x=OX,L.output.y=OY,L.work=0 }
pointAddOut L C
{ L.input=R,L.output.finite=(OF XOR pointFinite (R+C)), L.output.x=(OX XOR pointX (R+C)),L.output.y=(OY XOR
    pointY (R+C)),L.work=0 }
```

### pointAddOut

实现约定：[pointAddOut_spec](PointAddSpec.lean#L71)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ L.input=R,L.output=(0 : Point),L.work=0 }
pointAddOut L C
{ L.input=R,L.output=(R+C),L.work=0 }
```

## [PointCandidateProof.lean](PointCandidateProof.lean)

在 CandidateValues 断言下，compute 从输入 X、Y 和零候选区得到 candidateResult 指定的差值、逆元、斜率与候选坐标，clear 将它们清零；保持输入及普通分支标志。

### pointCandidate_compute

实现约定：[pointCandidate_compute_spec](PointCandidateProof.lean#L38)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `X<p`。
- `Y<p`。
- `G=true → X≠cx.val`。

```text
{ CandidateValues L (candidateInitial X Y) G s₀.basis }
pointCandidateCompute L cx cy
{ CandidateValues L (candidateResult G X Y cx.val cy.val) G s₁.basis }
```

### pointCandidate_clear

实现约定：[pointCandidate_clear_spec](PointCandidateProof.lean#L309)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `X<p`。
- `Y<p`。
- `G=true → X≠cx.val`。

```text
{ CandidateValues L (candidateResult G X Y cx.val cy.val) G s₀.basis }
pointCandidateClear L cx cy
{ CandidateValues L (candidateInitial X Y) G s₁.basis }
```

## [PointCandidateSpec.lean](PointCandidateSpec.lean)

逐寄存器给出候选计算与清理的前后值：compute 保留候选坐标及其差值、斜率、逆元等中间量，常量寄存器和共享池清零；clear 再清零全部候选中间量，输入和普通分支标志保持。

### pointCandidate_zero

实现约定：[pointCandidate_zero_spec](PointCandidateSpec.lean#L25)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `X<p`。
- `Y<p`。
- `G=true → X≠cx.val`。

记 `V = candidateResult G X Y cx.val cy.val`。

```text
{ L.extendedX=X, L.extendedY=Y, L.dx=0, L.dy=0, L.slope=0, L.square=0, L.offset=0, L.candidateX=0, L.delta=0,
    L.product=0, L.candidateY=0, L.constant=0, L.divisor=0, L.inverse=0, L.pool=0, L.generic=G }
pointCandidateCompute L cx cy
{ L.extendedX=X, L.extendedY=Y, L.dx=V .dx, L.dy=V .dy, L.slope=V .slope, L.square=V .square, L.offset=V
    .offset, L.candidateX=V .x, L.delta=V .delta, L.product=V .product, L.candidateY=V .y, L.constant=0,
    L.divisor=V .divisor, L.inverse=V .inverse, L.pool=0, L.generic=G }
```

### pointCandidate_cleanup

实现约定：[pointCandidate_cleanup_spec](PointCandidateSpec.lean#L61)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `X<p`。
- `Y<p`。
- `G=true → X≠cx.val`。

记 `V = candidateResult G X Y cx.val cy.val`。

```text
{ L.extendedX=X, L.extendedY=Y, L.dx=V .dx, L.dy=V .dy, L.slope=V .slope, L.square=V .square, L.offset=V
    .offset, L.candidateX=V .x, L.delta=V .delta, L.product=V .product, L.candidateY=V .y, L.constant=0,
    L.divisor=V .divisor, L.inverse=V .inverse, L.pool=0, L.generic=G }
pointCandidateClear L cx cy
{ L.extendedX=X, L.extendedY=Y, L.dx=0, L.dy=0, L.slope=0, L.square=0, L.offset=0, L.candidateX=0, L.delta=0,
    L.product=0, L.candidateY=0, L.constant=0, L.divisor=0, L.inverse=0, L.pool=0, L.generic=G }
```

## [PointConstantProof.lean](PointConstantProof.lean)

控制开启时将点常量 C 的完整编码异或到目标，关闭则不变；目标外所有位与相位保持。

### maskedPointConstant

正确性由 [maskedPointConstant_correct](PointConstantProof.lean#L19) 证明：

控制开启时将常量点 C 的完整编码异或到目标，关闭时不改变目标；目标外状态与相位保持不变。

适用前提：

- `PointAddLayout.pointWires r` 中的 wire 互不相同。
- `c∉PointAddLayout.pointWires r`。
- `r.x.length=256`。
- `r.y.length=256`。

```text
{ 初始状态 = s₀ }
maskedPointConstant c r C
{ s₁.phase=s₀.phase
  ∧ s₁[r.finite] = (s₀[r.finite]) XOR (s₀[c] AND pointFinite C)
  ∧ val₁(r.x) = val₀(r.x) XOR (if s₀[c] then pointX C else 0)
  ∧ val₁(r.y) = val₀(r.y) XOR (if s₀[c] then pointY C else 0)
  ∧ (∀ w∉PointAddLayout.pointWires r, s₁[w]=s₀[w]) }
```

## [PointCopyProof.lean](PointCopyProof.lean)

点复制异或源点的有限标志和坐标；普通候选输出仅在 generic 开启时异或候选低 256 位坐标和有限标志。两者都保持输出外所有位与相位。

### pointGenericOutput

正确性由 [pointGenericOutput_correct](PointCopyProof.lean#L59) 证明：

普通分支开启时，将候选坐标低 256 位及有限点标志异或到输出，保持其他状态与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
pointGenericOutput L
{ s₁.phase=s₀.phase
  ∧ s₁[L.output.finite] = (s₀[L.output.finite]) XOR (s₀[L.generic])
  ∧ val₁(L.output.x) = val₀(L.output.x) XOR (if s₀[L.generic] then val₀(L.candidateX.take 256) else 0)
  ∧ val₁(L.output.y) = val₀(L.output.y) XOR (if s₀[L.generic] then val₀(L.candidateY.take 256) else 0)
  ∧ (∀ w∉PointAddLayout.pointWires L.output, s₁[w]=s₀[w]) }
```

### pointCopy

正确性由 [pointCopy_correct](PointCopyProof.lean#L102) 证明：

点复制将源点的有限标志和两个坐标异或到目标，保持目标之外的状态与相位。

适用前提：

- `PointAddLayout.pointWires a++PointAddLayout.pointWires b` 中的 wire 互不相同。
- `a.x.length=b.x.length`。
- `a.y.length=b.y.length`。

```text
{ 初始状态 = s₀ }
pointCopy a b
{ s₁.phase=s₀.phase
  ∧ s₁[b.finite] = (s₀[b.finite]) XOR (s₀[a.finite])
  ∧ val₁(b.x) = val₀(b.x) XOR (val₀(a.x))
  ∧ val₁(b.y) = val₀(b.y) XOR (val₀(a.y))
  ∧ (∀ w∉PointAddLayout.pointWires b, s₁[w]=s₀[w]) }
```

## [PointEncoding.lean](PointEncoding.lean)

只把 `控制 AND (R=C)` 异或到目标位，保持其他所有基态位与相位。

### equalPoint

正确性由 [equalPoint_correct](PointEncoding.lean#L69) 证明：

全点相等检测可以区分O与所有有限点，不需坐标非零假设。

适用前提：

- `r.x.length=256`。
- `r.y.length=256`。
- `work.length=513`。
- `c::t::PointAddLayout.pointWires r++work` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (Holds.holds s₀[r] R) ∧ (val₀(work)=0) }
equalConstant c t (zeroPorts (PointAddLayout.pointWires r) work) (pointCode C)
{ s₁.phase=s₀.phase
  ∧ s₁[t] = s₀[t] XOR (s₀[c] AND pointEqual R C)
  ∧ (∀ w, w ∉ {t} → s₁[w] = s₀[w]) }
```

## [PointFlagProof.lean](PointFlagProof.lean)

比较端口只写目标相等标志；分类计算得到 equalX、equalNegY、generic、double 四位，清理将四位恢复为零，其他基态位与相位不变。

### equalPorts

正确性由 [equalPorts_correct](PointFlagProof.lean#L6) 证明：

适用前提：

- `src.length=work.length`。
- `c::t::src++work` 中的 wire 互不相同。
- `k<2^src.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(work)=0) }
equalConstant c t (zeroPorts src work) k
{ s₁.phase=s₀.phase
  ∧ s₁[t] = s₀[t] XOR (s₀[c] AND decide (val₀(src)=k))
  ∧ (∀ w, w ∉ {t} → s₁[w] = s₀[w]) }
```

### pointFlagsCompute

正确性由 [pointFlagsCompute_correct](PointFlagProof.lean#L51) 证明：

检测链在每次调用后清零，四个分支标志之外每一根线都保持。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

记 `ex = s₀[L.input.finite] AND decide (val₀(L.input.x)=cx.val)`；`ey = s₀[L.input.finite] AND decide (val₀(L.input.y)=(-cy).val)`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.pool)=0) ∧ (∀ w∈L.flags,s₀[w]=false) }
pointFlagsCompute L cx cy
{ s₁.phase=s₀.phase
  ∧ s₁[L.equalX] = ex
  ∧ s₁[L.equalNegY] = ey
  ∧ s₁[L.generic] = s₀[L.input.finite] AND !ex
  ∧ s₁[L.double] = ex AND !ey
  ∧ (∀ w, w ∉ {L.equalX, L.equalNegY, L.generic, L.double} → s₁[w] = s₀[w]) }
```

### pointFlagsClear

正确性由 [pointFlagsClear_correct](PointFlagProof.lean#L212) 证明：

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (val₀(L.pool)=0) ∧ (s₀[L.equalX]=(s₀[L.input.finite] AND decide (val₀(L.input.x)=cx.val))) ∧
    (s₀[L.equalNegY]=(s₀[L.input.finite] AND decide (val₀(L.input.y)=(-cy).val))) ∧
    (s₀[L.generic]=(s₀[L.input.finite] AND !s₀[L.equalX])) ∧ (s₀[L.double]=(s₀[L.equalX] AND
    !s₀[L.equalNegY])) }
pointFlagsClear L cx cy
{ s₁.phase=s₀.phase
  ∧ s₁[L.equalX] = false
  ∧ s₁[L.equalNegY] = false
  ∧ s₁[L.generic] = false
  ∧ s₁[L.double] = false
  ∧ (∀ w, w ∉ {L.equalX, L.equalNegY, L.generic, L.double} → s₁[w] = s₀[w]) }
```

## [PointFlags.lean](PointFlags.lean)

只将 `finite AND NOT equalX` 异或到 generic，将 `equalX AND NOT equalNegY` 异或到 double，其他基态位与相位不变。

### pointBranchFlags

正确性由 [pointBranchFlags_correct](PointFlags.lean#L10) 证明：

适用前提：

- `[f,ex,ey,g,d]` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
pointBranchFlags f ex ey g d
{ s₁.phase=s₀.phase
  ∧ s₁[g] = s₀[g] XOR (s₀[f] AND !s₀[ex])
  ∧ s₁[d] = s₀[d] XOR (s₀[ex] AND !s₀[ey])
  ∧ (∀ w, w ∉ {g, d} → s₁[w] = s₀[w]) }
```

## [PointInPlaceClearSlope.lean](PointInPlaceClearSlope.lean)

在斜率与输出坐标满足给定关系的前提下，把斜率 A 清零，保持 X、Y、普通分支标志和两个为假的辅助标志。

### pointInPlaceClearSlope

实现约定：[pointInPlaceClearSlope_spec](PointInPlaceClearSlope.lean#L7)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `G=true → Y=A*X`。
- `G=true → X=0 → A=k`。
- `G=false → A=0`。

```text
{ PointInPlaceValues L X Y A G false false s₀.basis }
pointInPlaceClearSlope L k
{ PointInPlaceValues L X Y 0 G false false s₁.basis }
```

## [PointInPlaceConstant.lean](PointInPlaceConstant.lean)

控制 B 开启时将 k 模加到 Z，关闭时 Z 不变；装载常量的寄存器和工作区从零恢复为零，控制保持。

### constant_program

实现约定：[constant_program_spec](PointInPlaceConstant.lean#L49)。

适用前提：

- 布局满足位宽条件 `M.Widths 256`。
- `c::M.wires` 中的 wire 互不相同。
- `k<p`。
- `Z<p`。

```text
{ c=B,M.a=0,M.z=Z,M.work=0 }
(maskedConstant c M.a k ++ modAddInPlace M p ++ maskedConstant c M.a k)
{ c=B,M.a=0,M.z=(Z+(if B then k else 0))%p,M.work=0 }
```

### pointInPlaceConstantAdd

正确性由 [pointInPlaceConstantAdd_correct](PointInPlaceConstant.lean#L99) 证明：

常数加法在低256位上给出规范结果，源、目标高位及其余线路逐线恢复。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `r=L.point.x ∨ r=L.point.y`。
- `Z<p`。

```text
{ 初始状态 = s₀ ∧ (s₀[L.core.generic]=B) ∧ (val₀(r)=Z) ∧ (val₀(L.inPlaceBorrow)=0) }
pointInPlaceConstantAdd L r k
{ s₁.phase=s₀.phase
  ∧ val₁(r)=(Z+(if B then k.val else 0))%p
  ∧ (∀ q∉r,s₁[q]=s₀[q]) }
```

## [PointInPlaceFiniteSpec.lean](PointInPlaceFiniteSpec.lean)

在 PointInPlaceBoundary 边界状态断言下，对有限常量点 C 原地执行受控 R+C，保留控制，最终各标志恢复为零。

### pointInPlaceFinite

实现约定：[pointInPlaceFinite_spec](PointInPlaceFiniteSpec.lean#L7)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `curve.toAffine.Nonsingular cx cy`。

```text
{ PointInPlaceBoundary L R b (fun _ => false) s₀.basis }
pointInPlaceFinite L (.some hc) cx cy
{ PointInPlaceBoundary L (if b then R+.some hc else R) b (fun _ => false) s₁.basis }
```

## [PointInPlaceFlagGates.lean](PointInPlaceFlagGates.lean)

generic 异或外部控制与三个选择标志；double 异或 `控制 AND (cy≠−cy)`。每个门只修改其目标标志，其余基态位和相位不变。

### pointInPlaceGenericFlag

正确性由 [pointInPlaceGenericFlag_correct](PointInPlaceFlagGates.lean#L12) 证明：

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
pointInPlaceGenericFlag L
{ s₁.phase=s₀.phase
  ∧ s₁[L.core.generic] = (((s₀[L.core.generic] XOR s₀[L.control]) XOR s₀[L.infinitySelect]) XOR
    s₀[L.doubleSelect]) XOR s₀[L.genericSelect]
  ∧ (∀ w, w ∉ {L.core.generic} → s₁[w] = s₀[w]) }
```

### pointInPlaceDoubleEnable

正确性由 [pointInPlaceDoubleEnable_correct](PointInPlaceFlagGates.lean#L25) 证明：

```text
{ 初始状态 = s₀ }
pointInPlaceDoubleEnable L cy
{ s₁.phase=s₀.phase
  ∧ s₁[L.core.double] = s₀[L.core.double] XOR (s₀[L.control] AND decide (cy≠-cy))
  ∧ (∀ w, w ∉ {L.core.double} → s₁[w] = s₀[w]) }
```

## [PointInPlaceIntegration.lean](PointInPlaceIntegration.lean)

完整寄存器规格为：控制 b 与点 R 保持约定编码，点更新为 `if b then R+C else R`，整个工作区从零恢复为零。

### pointInPlaceFinite_full

实现约定：[pointInPlaceFinite_full_spec](PointInPlaceIntegration.lean#L57)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `curve.toAffine.Nonsingular cx cy`。

```text
{ L.control=b,L.point=R,L.work=0 }
pointInPlaceFinite L (.some hc) cx cy
{ L.control=b,L.point=(if b then R+.some hc else R),L.work=0 }
```

## [PointInPlaceNegate.lean](PointInPlaceNegate.lean)

普通分支标志 B 开启时把 A 变为 `(p−A) mod p`，否则保持 A；标志保持，辅助目标与工作区从零恢复为零。

### pointInPlaceNegate

实现约定：[pointInPlaceNegate_spec](PointInPlaceNegate.lean#L55)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `A<p`。

```text
{ L.core.generic=B,L.inPlaceNegate.a=A,L.inPlaceNegate.z=0,L.inPlaceNegate.work=0 }
pointInPlaceNegate L
{ L.core.generic=B,L.inPlaceNegate.a=(if B then (p-A)%p else A), L.inPlaceNegate.z=0,L.inPlaceNegate.work=0 }
```

正确性由 [pointInPlaceNegate_correct](PointInPlaceNegate.lean#L86) 证明：

取负后仅输入x的低位改变，临时差、高位与所有其它线路恢复。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `A<p`。

```text
{ 初始状态 = s₀ ∧ (s₀[L.core.generic]=B) ∧ (val₀(L.point.x)=A) ∧ (val₀(L.inPlaceBorrow)=0) }
pointInPlaceNegate L
{ s₁.phase=s₀.phase
  ∧ val₁(L.point.x)=(if B then (p-A)%p else A)
  ∧ (∀ q∉L.point.x,s₁[q]=s₀[q]) }
```

## [PointInPlaceProduct.lean](PointInPlaceProduct.lean)

纵坐标分别变为 `(Y+(A·X mod p)) mod p` 或 `(Y+p−(A·X mod p)) mod p`；纵坐标之外所有位与相位保持。

### pointInPlaceProduct

正确性由 [pointInPlaceProduct_correct](PointInPlaceProduct.lean#L7) 证明：

外部乘加/乘减只改当前y；两个扩展高位和全部借用位在边界归零。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `A<p`。
- `X<p`。
- `Y<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.inPlaceSlope)=A) ∧ (val₀(L.point.x)=X) ∧ (val₀(L.point.y)=Y) ∧ (val₀(L.inPlaceBorrow)=0)
    }
montMulAdd L.inPlaceMultiply p
{ s₁.phase=s₀.phase
  ∧ val₁(L.point.y)=(Y+(A*X)%p)%p
  ∧ (∀ q∉L.point.y,s₁[q]=s₀[q]) }
```

```text
{ 初始状态 = s₀ ∧ (val₀(L.inPlaceSlope)=A) ∧ (val₀(L.point.x)=X) ∧ (val₀(L.point.y)=Y) ∧ (val₀(L.inPlaceBorrow)=0)
    }
montMulSub L.inPlaceMultiply p
{ s₁.phase=s₀.phase
  ∧ val₁(L.point.y)=(Y+p-(A*X)%p)%p
  ∧ (∀ q∉L.point.y,s₁[q]=s₀[q]) }
```

## [PointInPlaceSquare.lean](PointInPlaceSquare.lean)

保留斜率 A，把目标 X 更新为 `(X+p−(A·A mod p)) mod p`，复制斜率用的寄存器与工作区从零恢复为零。

### square_program

实现约定：[square_program_spec](PointInPlaceSquare.lean#L55)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `A<p`。
- `X<p`。

```text
{ (squareAdapter L).x=A,(squareAdapter L).y=0,(squareAdapter L).out=X,(squareAdapter L).work=0 }
squareProgram L
{ (squareAdapter L).x=A,(squareAdapter L).y=0, (squareAdapter L).out=(X+p-(A*A)%p)%p,(squareAdapter L).work=0
    }
```

### pointInPlaceSquare

正确性由 [pointInPlaceSquare_correct](PointInPlaceSquare.lean#L103) 证明：

减平方块在边界只改变当前x，独立乘数S与Montgomery工作区全部归零。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `A<p`。
- `X<p`。

记 `P = copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++ copyRegister none L.inPlaceSlope L.inPlaceSquare.y`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.inPlaceSlope)=A) ∧ (val₀(L.point.x)=X) ∧ (val₀(L.inPlaceBorrow)=0) }
P
{ s₁.phase=s₀.phase
  ∧ val₁(L.point.x)=(X+p-(A*A)%p)%p
  ∧ (∀ q∉L.point.x,s₁[q]=s₀[q]) }
```

## [PointOutputProof.lean](PointOutputProof.lean)

负控制常量输出只在控制为假时异或点常量；完整输出阶段按普通、倍点、无穷远输入标志异或对应编码。输出外所有位和相位保持。

### negativePointConstant

正确性由 [negativePointConstant_correct](PointOutputProof.lean#L6) 证明：

控制位为假时将常量点 C 的编码异或到目标，为真时不改变目标；控制位、其他状态与相位保持不变。

适用前提：

- `PointAddLayout.pointWires r` 中的 wire 互不相同。
- `c∉PointAddLayout.pointWires r`。
- `r.x.length=256`。
- `r.y.length=256`。

```text
{ 初始状态 = s₀ }
negativePointConstant c r C
{ s₁.phase=s₀.phase
  ∧ s₁[r.finite] = (s₀[r.finite]) XOR ((!s₀[c]) AND pointFinite C)
  ∧ val₁(r.x) = val₀(r.x) XOR (if !s₀[c] then pointX C else 0)
  ∧ val₁(r.y) = val₀(r.y) XOR (if !s₀[c] then pointY C else 0)
  ∧ (∀ w∉PointAddLayout.pointWires r, s₁[w]=s₀[w]) }
```

### pointOutput

正确性由 [pointOutput_correct](PointOutputProof.lean#L41) 证明：

按普通、倍点和无穷远输入标志，将相应候选或常量点的编码异或到输出，并保持其他状态与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
pointOutput L C
{ s₁.phase=s₀.phase
  ∧ s₁[L.output.finite] = (s₀[L.output.finite]) XOR (s₀[L.generic] XOR (s₀[L.double] AND pointFinite (C+C))
    XOR (!s₀[L.input.finite] AND pointFinite C))
  ∧ val₁(L.output.x) = val₀(L.output.x) XOR ((if s₀[L.generic] then val₀(L.candidateX.take 256) else 0) XOR
    (if s₀[L.double] then pointX (C+C) else 0) XOR (if !s₀[L.input.finite] then pointX C else 0))
  ∧ val₁(L.output.y) = val₀(L.output.y) XOR ((if s₀[L.generic] then val₀(L.candidateY.take 256) else 0) XOR
    (if s₀[L.double] then pointY (C+C) else 0) XOR (if !s₀[L.input.finite] then pointY C else 0))
  ∧ (∀ w∉PointAddLayout.pointWires L.output, s₁[w]=s₀[w]) }
```

## [PointSelectors.lean](PointSelectors.lean)

三个选择位分别异或外部控制与普通、倍点、输入无穷远条件的 AND；其余所有基态位与相位不变。

### pointSelectors

正确性由 [pointSelectors_correct](PointSelectors.lean#L18) 证明：

三个输出选择位分别异或外部控制与普通、倍点、输入无穷远标志的 AND，其他基态位与相位不变。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
pointSelectors L
{ s₁.phase=s₀.phase
  ∧ s₁[L.genericSelect] = s₀[L.genericSelect] XOR (s₀[L.control] AND s₀[L.core.generic])
  ∧ s₁[L.doubleSelect] = s₀[L.doubleSelect] XOR (s₀[L.control] AND s₀[L.core.double])
  ∧ s₁[L.infinitySelect] = s₀[L.infinitySelect] XOR (s₀[L.control] AND !s₀[L.core.input.finite])
  ∧ (∀ w, w ∉ {L.genericSelect, L.doubleSelect, L.infinitySelect} → s₁[w] = s₀[w]) }
```

## [SafeDivisor.lean](SafeDivisor.lean)

目标异或普通分支的源值，非普通分支则异或 1；目标外所有位与相位不变。只有目标初始为零时，它才直接保存这个安全分母。

### safeDivisor

正确性由 [safeDivisor_correct](SafeDivisor.lean#L9) 证明：

普通分支开启时向目标异或源值，否则异或常量 1，保持目标外基态位与相位。

适用前提：

- `src.length=(head::tail).length`。
- `g::src++(head::tail)` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
safeDivisor g src head tail
{ s₁.phase=s₀.phase
  ∧ (∀ w∉head::tail,s₁[w]=s₀[w])
  ∧ val₁(head::tail)= val₀(head::tail) XOR (if s₀[g] then val₀(src) else 1) }
```

## [SelectedPointOutput.lean](SelectedPointOutput.lean)

按三个选择位异或普通候选、倍点常量及无穷远输入对应常量点的编码，保持输出外所有位和相位。

### selectedPointOutput

正确性由 [selectedPointOutput_correct](SelectedPointOutput.lean#L21) 证明：

输出程序按三个选择标志分别异或普通候选、倍点常量和输入无穷远时的常量点，保持其他状态与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
selectedPointOutput L C
{ s₁.phase=s₀.phase
  ∧ s₁[L.core.output.finite] = (s₀[L.core.output.finite]) XOR (s₀[L.genericSelect] XOR (s₀[L.doubleSelect] AND
    pointFinite (C+C)) XOR (s₀[L.infinitySelect] AND pointFinite C))
  ∧ val₁(L.core.output.x) = val₀(L.core.output.x) XOR ((if s₀[L.genericSelect] then
    val₀(L.core.candidateX.take 256) else 0) XOR (if s₀[L.doubleSelect] then pointX (C+C) else 0) XOR (if
    s₀[L.infinitySelect] then pointX C else 0))
  ∧ val₁(L.core.output.y) = val₀(L.core.output.y) XOR ((if s₀[L.genericSelect] then
    val₀(L.core.candidateY.take 256) else 0) XOR (if s₀[L.doubleSelect] then pointY (C+C) else 0) XOR (if
    s₀[L.infinitySelect] then pointY C else 0))
  ∧ (∀ w∉PointAddLayout.pointWires L.core.output, s₁[w]=s₀[w]) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [ControlledPointResources.lean](ControlledPointResources.lean)

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，不是有限点 (0,0)。

  - `controlledPointOutput L C`：T = `518`，M = `0`。
  - `controlledPointAddOut L (.some hc)`：T = `9321834`，M = `6147424`，Q = `9784`。
  - `controlledPointAdd L (.some hc)`：T = `8946186`，M = `5772554`，Q = `6218`。
  - `controlledPointAdd L 0`：T = `0`，M = `0`，Q = `0`。

### [PointAddResources.lean](PointAddResources.lean)

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，其分支仍需点复制线路。

  - `pointAddOut L (.some hc)`：T = `9321828`，M = `6147424`，Q = `9780`。
  - `pointAddOut L 0`：T = `0`，M = `0`，Q = `1026`。

### [PointCandidateResources.lean](PointCandidateResources.lean)

- 资源：

  - `pointSubConstant L x out k`：T = `1284`，M = `1028`。
  - `pointSquare L`：T = `379424`，M = `379424`。
  - `pointCandidateCompute L cx cy` / `pointCandidateClear L cx cy`：T = `4660144`，M = `3073200`。

### [PointFlagResources.lean](PointFlagResources.lean)

- 资源：`pointFlagsCompute L cx cy` / `pointFlagsClear L cx cy`：T = `514`，M = `512`。

### [PointFlags.lean](PointFlags.lean)

- 资源：`pointBranchFlags f ex ey g d`：T = `2`，M = `0`。

### [PointInPlaceCounts.lean](PointInPlaceCounts.lean)

- 资源：

  - `pointInPlaceConstantAdd L r k`：T = `1023`，M = `1023`。
  - `pointInPlaceNegate L`：T = `3838`，M = `2558`。
  - `pointInPlaceGeneric L cx cy lambdaStar`：T = `8943108`，M = `5769476`。
  - `pointInPlaceFinite L C cx cy`：T = `8946186`，M = `5772554`。

### [PointInPlaceResources.lean](PointInPlaceResources.lean)

- 资源：`pointInPlaceFinite L C cx cy`：Q = `6218`。

### [PointOutputResources.lean](PointOutputResources.lean)

- 资源：

  - `maskedPointConstant c r C` / `negativePointConstant c r C` / `pointCopy a b`：T = `0`，M = `0`。
  - `pointGenericOutput L` / `pointOutput L C`：T = `512`，M = `0`。

### [PointSelectors.lean](PointSelectors.lean)

- 资源：`pointSelectors L`：T = `3`，M = `0`。

### [SafeDivisor.lean](SafeDivisor.lean)

- 资源：`safeDivisor g src head tail`：T = `src.length`，M = `0`。

### [SelectedPointOutput.lean](SelectedPointOutput.lean)

- 资源：`selectedPointOutput L C`：T = `512`，M = `0`。
