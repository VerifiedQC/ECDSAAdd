# 寄存器移位

本模块用交换网络将位串循环左移或右移；当移出的位已知为零时，这也实现无损的乘二或除二。左右方向是同一个位移操作的一对逆过程。

## 怎么使用

| 入口 | 含义与额外前提 |
| --- | --- |
| [Shift.lean](Shift.lean) 的 `shiftRight_spec` | 受控右移；启用时输入必须为偶数，才等于精确除二 |
| 同文件 `shiftLeft_spec` | 受控左移；启用时 `2X` 必须能放进原位宽 |
| [Rotate.lean](Rotate.lean) 的 `rotateRight_spec` / `rotateLeft_spec` | 无控制版本，同样分别要求偶数和无溢出 |

寄存器线路互异；受控版本还要求控制与数据互异。若需要任意位串的循环结果，查看 `shiftRight_value` 等内部值公式，不要套用有前提的算术规格。

## 算法与证明

沿寄存器依次交换相邻位，把最低位移到最高位，得到右旋；反向顺序的交换得到左旋。受控交换原语 `cswap` 在 `Shift.lean` 中证明，无控制 `swapBits` 在 `Rotate.lean` 中证明。

读值公式包含“移出位进入另一端”的贡献。偶数前提使右移的这项为零；无溢出前提使左移最高位为零，从而获得整数乘除二。所有门都无测量，因此可以用相反顺序的交换证明左右互逆。

## 依赖与验证

依赖 [RegisterXor](../RegisterXor/README.md) 的小端寄存器性质，用于 [ModularDoubling](../ModularDoubling/README.md) 与求逆的移位步骤。空列表和短寄存器的支持集单独由资源定理处理，不套用非空情况的线路数。

修改时检查位序、控制为假的行为、偶数/溢出前提；在仓库根目录运行 `scripts/verify.sh`。资源入口是 `shift_resources`、`rotate_counts`、`rotate_wires`。
