import ECDSAAdd.Arithmetic.Addition.Subtractor

namespace ECDSAAdd.Arithmetic

/-- 每位的四根线路只存一份，寄存器访问由此派生，长度天然一致。 -/
structure AdderLayout where
  bits : List AddBit
  cin : Wire

namespace AdderLayout

def width (L : AdderLayout) : Nat := L.bits.length
def x (L : AdderLayout) : List Wire := L.bits.map AddBit.x
def y (L : AdderLayout) : List Wire := L.bits.map AddBit.y
def out (L : AdderLayout) : List Wire := L.bits.map AddBit.out
def carry (L : AdderLayout) : List Wire := L.bits.map AddBit.carry
def wires (L : AdderLayout) : List Wire := L.cin :: addWires L.bits

end AdderLayout

/-- 按布局 L 计算 L.out ^= (L.x+L.y+L.cin) mod 2^n，n=L.width 是寄存器位宽。
要求 L.wires 无重复、L.carry 初始为零；L.x/L.y/L.cin 保持，L.carry 恢复为零。

参数：

- `L`：加法线路布局：x/y 是两个输入寄存器，out 是 XOR 输出，carry 是零进位工作区，cin 是输入进位；bits 从低到高组织各位。
-/
def add (L : AdderLayout) : Program := rippleAdder L.bits L.cin
/-- 按布局 L 计算 L.out ^= (L.x−L.y) mod 2^n，n=L.width 是寄存器位宽。
要求 L.wires 无重复，L.cin、L.carry 初始为零并在结束后恢复；L.x/L.y 保持。

参数：

- `L`：减法线路布局：x 是被减数、y 是减数、out 是差的 XOR 输出；carry/cin 是初末为零的进位工作位。
-/
def sub (L : AdderLayout) : Program := rippleSubtractor L.bits L.cin

/-- 将等长寄存器按位接到全加器；只组织线路编号，不产生门或新 wire。 -/
def registerAdderBits (x y out carry : List Wire) : List AddBit :=
  List.zipWith (fun xy oc => ⟨xy.1, xy.2, oc.1, oc.2⟩) (x.zip y) (out.zip carry)

/-- out ^= (x+y+cin) mod 2^n，n 是寄存器 x 的长度；输入 x/y/cin 保持。
要求 x/y/out/carry 四个列表等长、参与线路互异，carry 初始为零并在结束后恢复。

参数：

- `x`：第一个加数寄存器，小端排列，输入保持。
- `y`：第二个加数寄存器，小端排列，输入保持。
- `out`：小端 XOR 输出寄存器，初值不必为零。
- `carry`：进位工作寄存器，按低位到高位排列；初始为零，结束后恢复为零。
- `cin`：最低位的输入进位 wire，其原值参与加法，运算后保留。
-/
def addXor (x y out carry : List Wire) (cin : Wire) : Program :=
  rippleAdder (registerAdderBits x y out carry) cin

/-- out ^= (x−y) mod 2^n，n 是寄存器 x 的长度；输入 x/y 保持。
要求 x/y/out/carry 四个列表等长、参与线路互异，cin、carry 初始为零并在结束后恢复。

参数：

- `x`：被减数寄存器，小端排列，输入保持。
- `y`：减数寄存器，小端排列，输入保持。
- `out`：差的 XOR 输出寄存器，小端排列，初值不必为零。
- `carry`：进位工作寄存器，按低位到高位排列；初始为零，结束后恢复为零。
- `cin`：加法器的最低进位工作 wire，本接口要求初始为 0，结束后恢复为 0。
-/
def subXor (x y out carry : List Wire) (cin : Wire) : Program :=
  rippleSubtractor (registerAdderBits x y out carry) cin

/-- 任意输出初值均可：异或写入模 2^n 的和，恢复输入、相位和进位工作线。 -/
theorem add_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) (C : Bool) :
    {{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }} add L
    {{ L.x = X, L.y = Y, L.cin = C,
       L.out = (O ^^^ ((X + Y + C.toNat) % 2^L.width)), L.carry = 0 }} :=
  rippleAdder_xor_spec L.bits L.cin hnd X Y O C

/-- 任意输出初值均可：异或写入模 2^n 的差，恢复输入、相位和进位工作线。 -/
theorem sub_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) :
    {{ L.x = X, L.y = Y, L.cin = false, L.out = O, L.carry = 0 }} sub L
    {{ L.x = X, L.y = Y, L.cin = false,
       L.out = (O ^^^ ((X + 2^L.width - Y) % 2^L.width)), L.carry = 0 }} :=
  rippleSubtractor_xor_spec L.bits L.cin hnd X Y O

/-- 已计算的和可以用同一个前向程序再次 XOR 清零，无需反转测量程序。 -/
theorem add_erase_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y : Nat) (C : Bool) :
    {{ L.x = X, L.y = Y, L.cin = C,
       L.out = ((X + Y + C.toNat) % 2^L.width), L.carry = 0 }} add L
    {{ L.x = X, L.y = Y, L.cin = C, L.out = 0, L.carry = 0 }} := by
  simpa only [Nat.xor_self] using add_spec L hnd X Y ((X + Y + C.toNat) % 2^L.width) C

/-- 已计算的差可以用同一个前向减法程序再次 XOR 清零。 -/
theorem sub_erase_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y : Nat) :
    {{ L.x = X, L.y = Y, L.cin = false,
       L.out = ((X + 2^L.width - Y) % 2^L.width), L.carry = 0 }} sub L
    {{ L.x = X, L.y = Y, L.cin = false, L.out = 0, L.carry = 0 }} := by
  simpa only [Nat.xor_self] using sub_spec L hnd X Y ((X + 2^L.width - Y) % 2^L.width)

/-- 同一加法程序调用两次，对任意输出初值均恢复所有寄存器及相位。 -/
theorem add_twice_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) (C : Bool) :
    {{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }} (add L ++ add L)
    {{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }} := by
  have h := Triple.seq (add_spec L hnd X Y O C)
    (add_spec L hnd X Y (O ^^^ ((X + Y + C.toNat) % 2^L.width)) C)
  simpa only [Nat.xor_xor_cancel_right] using h

/-- 加法资源公式沿用同一个底层进位程序。 -/
theorem add_resources (L : AdderLayout) (hnd : L.wires.Nodup) :
    toffoliCount (add L) = L.width ∧ measurementCount (add L) = L.width ∧
    qubitCount (add L) = if L.bits.isEmpty then 0 else 4 * L.width + 1 :=
  ⟨rippleAdder_toffoliCount _ _, rippleAdder_measurementCount _ _, rippleAdder_qubitCount _ _ hnd⟩

/-- 减法资源公式沿用同一个底层补码程序。 -/
theorem sub_resources (L : AdderLayout) (hnd : L.wires.Nodup) :
    toffoliCount (sub L) = L.width ∧ measurementCount (sub L) = L.width ∧
    qubitCount (sub L) = 4 * L.width + 1 :=
  ⟨(rippleSubtractor_counts _ _).1, (rippleSubtractor_counts _ _).2,
    rippleSubtractor_qubitCount _ _ hnd⟩

end ECDSAAdd.Arithmetic
