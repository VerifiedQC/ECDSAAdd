# 除法累加

本模块把 `分子 / 分母` 模 `p` 的值受控加到或减出目标寄存器。它通过求逆与乘法实现除法，并在完成后清空整个内部工作区。

## 调用契约

[DivideSpec.lean](DivideSpec.lean) 的 `divideAdd_spec` / `divideSub_spec` 使用 [Divide.lean](Divide.lean) 中的 `DivideLayout`。分母 `D`、分子 `E`、目标 `Z` 都必须 `<p`；只在控制 `B=true` 时要求 `D≠0`。输入/输出各 256 位，内部位宽、互异性和零工作区由布局前提规定。

启用时 `acc ← (Z ± D⁻¹×E) mod p`；禁用时 acc 保持。分母、分子、控制、目标外线路和相位保持，工作区最终为零。它是模加累积接口，不是 XOR 输出。

## 算法与证明思路

```text
装载安全分母 → 准备逆元 → 受控乘积累加 → 恢复求逆 → 卸载
```

安全分母在启用时为 `D`，禁用时为 1。这样禁用分支即使 `D=0` 也满足内部非零求逆条件；乘积累加的控制保证最终目标不变。控制位不通过测量决定。

准备逆元之后保留全部求逆历史，乘积段只读取逆元并更新 acc，再用原来的历史恢复求逆。因而不需要额外复制一套逆元输出再清理。

## 共享工作区与关键引理

`L.borrow = L.inner.temp ++ L.inner.arithmetic.wires` 是准备后已证为零的区域。索引 0 借作目标的额外高位，其后连续部分映射为 Montgomery 工作区。逆元和求逆历史都不属于这段借用区，细节见[求逆说明](../ModularInverse/README.md)。

`DivideLayoutProof` 证明乘法视图的位宽、互异性及借用关系；`DivideProduct` 证明受控乘积结束后只改变外部 256 位 acc，包含额外高位的归还。`DivideState` 把这些逐线保持性质连接到求逆的中间状态。`DivideSpec` 因此能把恢复所需的完整历史传过乘积段，最后卸载到全零工作区。

## 文件与维护

`Divide` 定义布局和完整门列；`DivideLoad` 证明装卸；`DivideSupport` 证明支持集；`DivideResources` 汇总同程序成本；`DivideLayoutProof/Product/State/Spec` 完成上述组合证明。

依赖 [ModularInverse](../ModularInverse/README.md) 的准备/恢复及 [ModularMultiplication](../ModularMultiplication/README.md) 的受控累加适配器。上层为原地点加；变化会传到其规格和资源。改动借用区时不能只检查长度，还要证明它与所有活跃历史互异。在仓库根目录运行 `scripts/verify.sh`，重点覆盖 `divideAdd_spec`、`divideSub_spec`、`divide_frame` 和资源定理。
