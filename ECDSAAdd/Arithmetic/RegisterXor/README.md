# 寄存器 XOR

本模块把一个寄存器或经典常量按位异或进目标：`dst ← dst XOR value`。目标初始为零时表现为复制；重复写入同一值时可清除原来的副本。它不执行整数加法。

## 怎么使用

| 需求 | 接口和保证 |
| --- | --- |
| 写入寄存器值 | [Copy.lean](Copy.lean) 的 `copyRegister_spec`：源保持，目标 XOR 源 |
| 受控写入 | 同文件 `maskedCopy_spec`：控制为真才 XOR，控制和源保持 |
| 写入经典常量 | [Constant.lean](Constant.lean) 的 `xorConstant_spec`；受控版本见 [MaskedConstant.lean](MaskedConstant.lean) 的 `maskedConstant_correct` |
| 把已经证明的 XOR 计算包装成条件选择 | [ConditionalXor.lean](ConditionalXor.lean) 的 `conditionalXor_correct` |

来源和目标等宽，全部参与线路满足各定理的互异要求；常量必须能放入目标位宽。XOR 目标可以有初值。`Registers.lean` 中小端读值的范围和逐位相等引理是这些接口的共同基础；`notRegister` 相当于 XOR 全一位串。

## 算法与证明思路

每一位的无控制写入是一枚 CX，受控写入是一枚 CCX。证明先说明这一位正确翻转，再按寄存器列表归纳，用 `xor_value_step` 将位结果组合成整数 XOR。源与目标互异保证写目标不会改变后续读取的源。

常量装载只在常量位为 1 的位置施门。由于 `x XOR k XOR k = x`，相同程序既能装载常量，也能在值未被破坏时卸载。源副本的清理同样要求原源仍然存在。

`conditionalXor` 先调用核得到候选，再向目标选择性写入，最后再次调用核清候选；它要求核有对应的 XOR 与工作区恢复契约。不能据此把任意程序当成可重复清理的核。

## 修改与验证

基本写入电路不含测量；条件包装继承核对所有测量记录的相位保证。资源与支持定理和程序位于同一文件。`Registers.lean` 的读值引理被几乎所有算术模块依赖，修改其陈述会有广泛影响。

文件索引：`Registers` 是小端表示与按位取反，`Copy` 是寄存器 XOR，`Constant/MaskedConstant` 是常量 XOR，`ConditionalXor` 是条件组合及其局部保持证明。

在仓库根目录运行 `scripts/verify.sh`；共同语义与验证约定见[项目地图](../../../docs/MODULES.md)。本 README 是本模块唯一的人类阅读入口，精确前提以链接的 Lean 定理为准。
