# 大小比较

本模块保持两个输入，把“小于”的结果 XOR 到一位目标：`target ^= (X<Y)`。受控版本写入 `control AND (X<Y)`；目标不必初始为零。

## 契约

[Compare.lean](Compare.lean) 提供 `compareLt_spec`、`maskedCompareLt_spec`、`compareLtConst_spec` 和 `maskedCompareLtConst_spec`。输入和进位链满足定理规定的长度，控制、目标、输入和工作线路互异；比较所需进位/输入进位初始为零。常量接口还需要零常数字以及可表示的常量范围。

执行后输入、控制、工作区和相位恢复，只翻转目标。比较按无符号自然数解释，不能直接用于补码有符号数。

## 算法与证明

比较使用 `X + NOT(Y) + 1` 的最高进位：有进位表示 `X≥Y`，没有进位表示 `X<Y`。因此无需保存完整差值，只构造进位链并翻转最终目标。

`compareChain_correct` 从单比特 majority 的进位性质出发，递归证明读到最高进位时得到所需关系。随后清理进位并恢复临时取反的输入。常量版本先装入 `K`，复用同一比较器，再卸载常量。测量只用于清进位，不决定后续比较流程。

## 依赖、修改与验证

全部程序、正确性、支持与资源在 `Compare.lean`。它依赖 [Addition](../Addition/README.md) 的进位构造与清理，以及 [RegisterXor](../RegisterXor/README.md) 的常量装卸。`compareLt_resources` 给出普通和受控版本各自的精确资源。

上层用途包括模加法的借位清理、模减半的奇偶清理和 Kaliski 活动比较。修改输出极性时尤其要核对这些调用者。在仓库根目录运行 `scripts/verify.sh`；仅输入输出数值正确还不够，必须保持工作位与相位保证。
