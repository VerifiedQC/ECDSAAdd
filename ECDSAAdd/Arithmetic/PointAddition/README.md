# 椭圆曲线点加

本模块把任意合法 secp256k1 点 `R` 与经典常量点 `C` 相加。它处理普通坐标公式及无穷远点、互逆点、倍点等情况，并把算术辅助位和分类标志全部清理。

## 先选输出接口

| 需求 | 公开入口 | 保证 |
| --- | --- | --- |
| 受控原地更新 | [ControlledPointAddSpec.lean](ControlledPointAddSpec.lean) 的 `controlledPointAdd_spec` | `point ← if b then R+C else R`，控制保持，work 清零 |
| 写入零输出点寄存器 | [PointAddSpec.lean](PointAddSpec.lean) 的 `pointAddOut_spec` | 输入 R 保持，输出 R+C，work 清零 |
| 任意位串输出 | 同文件 `pointAddOut_xor_spec` | 以点编码按位 XOR，输入保持 |

`R,C` 是合法点类型；布局要求位宽正确、全局线路互异，工作区初始为零。普通点加不额外要求横坐标不同，这些情况由电路内部分支处理。点编码使用有限点标志和两个坐标；无穷远点采用全零表示。C 是构造期参数，不是第二个可变点寄存器。

## 两种实现为何同时保留

XOR 输出要求保持 R，因此使用“计算候选 → 按分类写输出 → 清候选与标志”的路径。受控原地更新可以利用新旧坐标关系清除中间量，当前使用除法中心的原地路径。两者完成同一个点加功能，但程序和资源不同。

### XOR 候选路径

普通情形用横纵坐标差构造斜率，再求输出坐标。非普通分支把候选求逆的分母设为 1，使每条分支都合法执行同一算术门列。输出阶段按输入分类选择普通候选、常量点或倍点；互逆点给出无穷远点。

候选程序保留输入，因此可以按依赖逆序再次执行各前向 XOR 子程序清理中间值。`PointCandidateSpec` 把域公式与寄存器自然数代表元连接；`PointClassification` 和 `PointAddSpec` 把分类结果接到完整群律，覆盖特殊情况。

### 受控原地路径

`PointInPlaceProgram` 先从原点计算分类标志。普通分支平移坐标，通过一次除法获得斜率，以乘积更新坐标，再从更新后的坐标用第二次除法清斜率。第二次除数为零的特殊斜率通过已知常量处理，不把零输入传给已启用的求逆。

整个路径包含两次除法中各自的乘积，以及三个外部乘积。无穷远、倍点和互逆点通过互斥的常量写回处理；最后根据输出重算分类并清标志。控制为假时也必须证明最终所有数据和工作位恢复。C 为无穷远点时，受控原地入口在构造期直接给空程序。

数学依据在 [AffineFormula.lean](../../Math/AffineFormula.lean) 和 [PointInPlace.lean](../../Math/PointInPlace.lean)：前者给完整 affine 群律，后者给原地更新与输出侧清理的等式。电路证明将这些等式、各算术模块的 Triple 和布局保持条件逐段组合。

## 模块内部文件地图

| 文件组 | 作用 |
| --- | --- |
| `PointAddSpec/Resources`、`ControlledPointAddSpec/Resources` | 最终公共规格与同程序成本 |
| `PointAddLayout/State/Frames/Stages/Support`、`ControlledPoint*` | 点寄存器、外层控制、装配及支持集 |
| `PointCandidate*` | 普通候选的布局、程序、阶段值、证明和清理 |
| `PointFlag*`、`PointClassification/Selectors` | 输入分类和各输出贡献的选择 |
| `PointOutput*`、`SelectedPointOutput`、`PointConstantProof/PointCopyProof` | 点编码的 XOR 输出及特殊情况 |
| `PointInPlace*` | 原地路径的布局、普通分支、例外、斜率/标志清理和整体证明 |
| `CandidatePool/FieldFrame/SafeDivisor` | 跨算术模块的工作池支持、逐线保持及安全分母 |

这些文件共同服务于点加，不把每个分类位或证明阶段再拆成独立功能模块。`FieldFrame` 在此组合多种算术接口的保持性质；低层算术自身的契约由其各自模块负责。

## 修改与验证

依赖 [ModularAddition](../ModularAddition/README.md)、[ModularMultiplication](../ModularMultiplication/README.md)、[ModularInverse](../ModularInverse/README.md)、[Division](../Division/README.md)、[Equality](../Equality/README.md) 及数据搬运模块。更换算术实现时检查两条点加路径，不能只更新最终受控程序的成本。

公共布局分配与实际门列触及的支持集不同；资源结论在各 `Resources/Counts/Wires/Support` 文件中。修改分类或清理时，复查控制为假、无穷远点、互逆点、倍点及例外斜率。在仓库根目录运行 `scripts/verify.sh`，最终规格、相位恢复、工作位清零和资源证明都必须通过。
