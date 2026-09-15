# 整数加法

本模块计算固定宽度的二进制和，并提供减法作为相反方向的运算。这里结果按 `2^n` 截断；模 secp256k1 素数的运算由 [ModularAddition](../ModularAddition/README.md) 负责。

## 怎么使用

| 接口 | 目标更新 | 条件 |
| --- | --- | --- |
| [Layout.lean](Layout.lean) 的 `add_spec` | `O XOR ((X+Y+C) % 2^n)` | 进位工作区为零，`C` 是保留的输入进位 |
| 同文件 `sub_spec` | `O XOR ((X+2^n-Y) % 2^n)` | 输入进位及进位工作区为零 |
| [InPlaceAdder.lean](InPlaceAdder.lean) 的 `addInPlace_spec` / `subInPlace_spec` | 原地加到或减出 `y` | 源保持，进位工作区为零；减法接口要求输入进位为零 |
| 同文件 `maskedAddConst_spec`、`maskedAddInPlace_spec` 等 | 受控常量或寄存器加法及逆向减法 | 掩码/常数字初始为零，相关线路互异 |
| [Counter.lean](Counter.lean) 的 `counterInc_spec` / `counterDec_spec` | 10 位计数加减控制位，结果写入另一银行 | 按模 1024 运算，另一银行及规定工作区为零 |

各接口都有具体的等长与 `Nodup` 前提。零输出是 XOR 形式的特例。若需要完整整数和而非截断，需留足高位，参见 `rippleAdder_wide_spec`。

## 为什么能算对，又清掉进位

一位全加器将三个输入拆为和位与进位：`a+b+c = sum + 2*carry`。`FullAdder.lean` 用布尔恒等式证明它；`RippleAdder.lean` 沿小端位序归纳，把上一位进位传到下一位，最后拼成整个整数的低 n 位。

临时进位不是可以直接丢弃的数据。`eraseCarry` 在已知进位等于对应 majority 值时，用测量和即时 CZ 修正清零它并恢复相位。XOR 加法保持原输入，因此可在返回过程中清理进位。

原地加法会改写 `y`，所以它先擦除当前进位，再写和位，确保清理时仍能使用正确的输入关系。减法利用补码或两层取反组合加法，而不是逆序执行含测量的加法器。

受控加法先生成来源掩码，完成加法后清掩码。`MeasuredMaskedAdder.lean` 的 `eraseMask` 使用测量完成最后一步，前提是控制和来源仍保持。计数器则用加/减两次前向 XOR 调用清旧银行；控制为假时数值不变，但物理银行角色仍交换。

## 源码与维护

`FullAdder → RippleAdder → Subtractor → Layout` 给出 XOR 接口；`InPlaceAdder` 给出原地和受控接口；`MeasuredMaskedAdder` 给出测量清掩码版本；`Counter` 是加减一的专门封装。Kaliski 使用的旧银行适配器 `MaskedAdder` 随调用方放在 [ModularInverse](../ModularInverse/README.md)。

资源定理就在各接口文件中，不把不同位宽或 XOR/原地成本混用。修改进位清理会影响比较、模加法、模乘与求逆。在仓库根目录执行 `scripts/verify.sh`，检查相位、进位和掩码恢复与同程序资源。
