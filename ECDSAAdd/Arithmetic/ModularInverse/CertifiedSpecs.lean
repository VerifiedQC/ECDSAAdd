import ECDSAAdd.Arithmetic.ModularInverse.InverseLoopSpec

namespace ECDSAAdd.Arithmetic.CertifiedSpecs

/-- 将既有 Kaliski 结果连接到独立的模逆元含义，不改变初始化条件。 -/
theorem inverseLoop (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%16=15)
    (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0,
       L.first.done=false, L.work=0, L.out=O }}
      Arithmetic.inverseLoop L q
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0,
       L.first.done=false, L.work=0, L.out=(O ^^^ ((a : ZMod q)⁻¹).val) }} := by
  have h := inverseLoop_xor_spec L hnd hn hw hlow harith ha ht hout q a O hq ho hx0 hx hcop
  rw [kaliski_correct q a 256 (by omega) hq hx0 (hx.trans hq) hcop] at h
  exact h

end ECDSAAdd.Arithmetic.CertifiedSpecs
