# 寄存器交换

本模块交换两个同宽寄存器的内容，包括受控与无控制形式。交换保留两边的数据，不是将一边覆盖成另一边。

## 契约

[SwapRegisters.lean](SwapRegisters.lean) 的 `swapRegisters_spec` 保证控制为真时交换，否则原样保持；`exchangeRegisters_spec` 无条件交换。寄存器必须等长，所有源/目标线路互异；受控版本的控制也必须在它们之外。没有初始全零要求。

## 算法与证明

无控制交换对每一对位执行三次 CX，利用 XOR 交换恒等式。受控交换使用两次 CX 和一次 CCX，控制为假时两个 CX 相互抵消。证明先建立单对位更新公式，再按列表归纳，保证已处理的位不会覆盖其他位。

门列不包含测量，输入相位与目标寄存器之外的位保持。将其中一个寄存器设为零只是常见使用方式：交换后新值进入原地目标，旧位置变零；清理旧数据本身仍需要调用者另行完成。

## 修改与验证

布局、规格、逐线保持和资源均在同一文件。依赖 [RegisterXor](../RegisterXor/README.md)，上层用于原地算术与点加。查询 `swapRegisters_resources` / `exchangeRegisters_resources` 时不要混用两种门数。在仓库根目录运行 `scripts/verify.sh`。
