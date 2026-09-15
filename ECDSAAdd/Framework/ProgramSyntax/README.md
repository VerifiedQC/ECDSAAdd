# 程序与指令语法

本模块定义项目使用什么指令表示电路，只负责程序表示，不保证任意程序正确。

## 接口

[Syntax.lean](Syntax.lean) 定义 Wire、BasisState、State、Correction、Instr 和 Program。线路编号是自然数；基态为线路到布尔值的函数；State 另带一个布尔相位标志。

Instr 包含 X、CX、CCX、measureX。测量指令只按结果选择即时 Z/CZ 修正列表，不能借此选择任意后续算术。Program 是指令列表；prog 和 if meas 宏是这些数据的语法糖。

## 边界与实现

measurementCount 也定义在此，因为执行语义需要按测量次数拆分记录；组合计数规则在 [ResourceCounting](../ResourceCounting/README.md)。本次不为追求目录纯粹性拆开已有定义。

语法没有自动强制线路互异、辅助位初始清零或相位恢复。这些条件由具体规格证明。宏展开成普通构造器，不引入额外程序语义。

## 修改与验证

依赖 Mathlib 与 Lean 宏接口。加入指令必须同步更新 [Execution](../Execution/README.md)、资源计数和相关证明；只改宏也应核对展开含义。运行 `scripts/verify.sh`，不把“能解析”当作“已证明正确”。

[返回项目地图](../../../docs/MODULES.md)。
