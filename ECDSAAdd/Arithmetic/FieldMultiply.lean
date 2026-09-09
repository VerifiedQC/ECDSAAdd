import ECDSAAdd.Arithmetic.MultiplyLayout
import ECDSAAdd.Math.BitcoinCurve

namespace ECDSAAdd.Arithmetic

/-- secp256k1 模 p 乘法的首版 O(n²) 空间基线。 -/
def fieldMul (L : MulLayout) : Program := modMul L p

/-- 乘数 y 是 256 位寄存器；无需额外假设 Y < p。 -/
theorem fieldMul_zero_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width = 256) (X Y : Nat) (hX : X < p) :
    {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} fieldMul L
    {{ L.x = X, L.y = Y, L.out = ((X*Y)%p), L.work = 0 }} :=
  modMul_zero_spec L hnd hw p X Y (by norm_num [p]) (by rw [hn]; norm_num [p]) hX

theorem fieldMul_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width = 256) (X Y O : Nat) (hX : X < p) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} fieldMul L
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X*Y)%p)), L.work = 0 }} :=
  modMul_spec L hnd hw p X Y O (by norm_num [p]) (by rw [hn]; norm_num [p]) hX

theorem fieldMul_resources (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width = 256) :
    toffoliCount (fieldMul L) = 2892800 ∧ measurementCount (fieldMul L) = 2105344 ∧
    qubitCount (fieldMul L) = 70678 := by
  simpa only [hn, fieldMul] using modMul_resources L hnd hw (by omega) p

end ECDSAAdd.Arithmetic
