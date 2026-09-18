# AND 计算与测量清理

本模块展示怎样计算一个 AND 辅助位，再通过测量和即时相位修正将它清零，同时恢复完整状态。它不是返回 AND 值的永久输出接口。

## 接口与前提

[And.lean](And.lean) 的 andComputeErase 先执行 CCX a b anc，再测量 anc：结果为 1 时做 CZ a b，为 0 时不修正。

andComputeErase_spec 要求三条线互异、anc 初始为 false；对任意输入 A、B，结束时二者保持且 anc=false，Triple 同时保证相位恢复。更底层 andComputeErase_correct 要求两个控制分别不同于 anc，直接证明对任意测量记录完整 State 恢复。

## 为什么正确

CCX 将 A AND B 写入零辅助位。测量清零引入的相位恰由结果为 1 时的 CZ 抵消；控制位未被改动，所以这项修正使用的仍是同一个 AND。证明展开执行语义，分别处理两种测量结果，并证明所有线路及相位恢复。

同程序资源定理给出 1 个 Toffoli、1 次测量，三线互异时静态线路数为 3。不能由本示范推断任意带测量程序都可倒放来清理。

## 依赖、修改与验证

依赖 [Framework](../../Framework/README.md) 中的 Hoare 证明与执行语义。Arithmetic 中相关测量清理证明必须满足各自适用的不变量，不能省略相位条件。

运行 `scripts/verify.sh`；其中检查本模块的完整恢复、Triple 和资源定理。该目录仅此功能，因此只保留这一份 README。

[返回项目地图](../../../docs/MODULES.md)。
