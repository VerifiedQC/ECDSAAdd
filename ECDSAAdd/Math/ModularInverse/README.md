# 模逆元的数学证明

本模块证明 Kaliski 迭代能得到逆元，并解释如何消除其缩放因子。它提供电路的数学依据，不单独证明门列正确性或辅助线路恢复。

## 主要入口

[kaliski_correct](KaliskiInverse.lean) 证明奇模数 p、p<2^n、0<a<2^n、p 与 a 互素时，固定 2n 轮迭代和相应减半得到模逆元；kaliski_inverse_p 是 secp256k1 非零规范输入的实例。

[InverseScaleFactor.lean](InverseScaleFactor.lean) 的 kaliski_montgomery_scale 连接当前电路采用的查表和单段 Montgomery 缩放。其要求包括 q%16=15、q<2^256、0<X<q 和互素，不能简写成任意模数均适用。

## 证明链

[Kaliski.lean](Kaliski.lean) 定义状态 u,v,r,s,k。不变量包含 u*s+v*r=p、互素关系，以及将系数与 2^k 连接的模等式。迭代使 u*v 缩小，在固定位宽给出的轮数内终止；终态 u=1、v=0，因而 −r 携带乘上 2^k 的逆元。

[KaliskiInverse.lean](KaliskiInverse.lean) 利用数学减半消去 2^k，得到正确性。当前电路用查表值 R*2^(−k) 配合一次 Montgomery 代替逐轮减半；InverseScaleFactor 证明两种表达对应同一逆元。

## 其余证明文件

| 文件 | 作用 |
| --- | --- |
| [KaliskiRound](KaliskiRound.lean) | 两位分支记录、活动计数、单轮分解与恢复 |
| [KaliskiOneBit](KaliskiOneBit.lean) | 从更新后的系数奇偶重建交换分支的数学依据 |
| [KaliskiTerminal](KaliskiTerminal.lean) | 终态常量、r 的范围与偶性、取负恢复等式 |

一位记录或终态常量引理的存在不表示完整求逆电路已采用相应优化。当前实际程序见 [Arithmetic/ModularInverse](../../Arithmetic/ModularInverse/README.md)。

## 修改与验证

依赖 [ModularDoubling](../ModularDoubling/README.md)、[ModularMultiplication](../ModularMultiplication/README.md) 及 [FieldPrimality](../FieldPrimality/README.md)。修改不变量、轮数或缩放时复查电路循环、逆元准备/恢复，以及除法和点加。运行 `scripts/verify.sh`，检查数学正确性与电路规格两条证据链。

[返回项目地图](../../../docs/MODULES.md)。
