import ECDSAAdd.Arithmetic.MulAdapterResources
import ECDSAAdd.Math.BitcoinCurve

namespace ECDSAAdd.Arithmetic

/-- secp256k1 模乘：Horner 临时积、XOR 输出、前向清理，静态空间 O(n)。 -/
def fieldMul (L : MulAdapterLayout) : Program := mulXor L p

/-- 任意输出 XOR 规格保持；乘数范围由 256 位寄存器自动给出。 -/
theorem fieldMul_spec (L : MulAdapterLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width=256) (X Y O : Nat) (hX : X<p) :
    {{ L.x=X,L.y=Y,L.out=O,L.work=0 }} fieldMul L
    {{ L.x=X,L.y=Y,L.out=(O ^^^ ((X*Y)%p)),L.work=0 }} := by
  intro s m h
  have hy : Y<2^L.width := by
    have hb := regValue_lt L.y s.basis
    rw [show L.y.length=L.width from hw.1.y] at hb
    exact h.1.1.2 ▸ hb
  exact mulXor_spec L p X Y O hw hnd (by norm_num [p]) (by rw [hn]; norm_num [p]) hX hy s m h

theorem fieldMul_zero_spec (L : MulAdapterLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width=256) (X Y : Nat) (hX : X<p) :
    {{ L.x=X,L.y=Y,L.out=0,L.work=0 }} fieldMul L
    {{ L.x=X,L.y=Y,L.out=((X*Y)%p),L.work=0 }} := by
  simpa only [Nat.zero_xor] using fieldMul_spec L hnd hw hn X Y 0 hX

theorem fieldMul_resources (L : MulAdapterLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width=256) :
    toffoliCount (fieldMul L)=1178880 ∧ measurementCount (fieldMul L)=916736 ∧
    qubitCount (fieldMul L)=1799 := by
  have hc := mulAdapter_counts L p hw hnd (by omega)
  have hq := mulAdapter_resources L p hw hnd (by omega)
  simpa only [hn,fieldMul] using And.intro hc.1 (And.intro hc.2.1 hq.1)

end ECDSAAdd.Arithmetic
