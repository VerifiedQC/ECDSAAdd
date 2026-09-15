# 程序规格与组合证明

本模块让调用者通过“前提 → 程序 → 保证”使用电路，不必重新证明它的内部每一步。

## 接口与断言

[Hoare.lean](Hoare.lean) 定义 Holds、regValue、PointReg、Triple 和 {{ ... }} 语法。单线读布尔值，线路列表按小端读自然数，点寄存器由有限点标志和两个坐标组成；无穷远点采用全零表示。

Triple 对所有初始 State 和所有测量记录要求：若前置断言成立，则最终相位等于初始相位且后置断言成立。清零、输入保持与线路互异需要在具体规格中给出，不能从记号本身推断。

## 为什么能组合

- Triple.seq：前段后置条件接后段前置条件；通过执行记录拆分和相位等式传递证明。
- Triple.conseq：加强前提、削弱结论。
- Triple.frame：携带仅依赖程序支持集外线路的额外断言；需要证明该断言的外部依赖条件。

这些规则不允许任意忽略工作位或活跃历史，也不是一般量子态 Hoare 逻辑的额外承诺。

## 修改与验证

依赖 [ResourceCounting](../ResourceCounting/README.md) 和 [曲线定义](../../Math/CurveDefinition/README.md)。具体数学正确性由 Math 提供，寄存器执行性质由 Circuit/Arithmetic 组合证明。

改变编码、读取或 Triple 的含义会影响全库。运行 `scripts/verify.sh`；脚本检查 Triple.seq/conseq/frame 及上层公共入口的公理依赖。

[返回项目地图](../../../docs/MODULES.md)。
