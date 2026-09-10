import ECDSAAdd.Arithmetic.PoolLayout
import ECDSAAdd.Arithmetic.MultiplyLayout

namespace ECDSAAdd.Arithmetic

/-- 模乘直接连接三个接口；两份模算术布局和 256 个倍数寄存器共享池的前 69908 位。 -/
def poolMul (w : Nat → Wire) (x y out : List Wire) : MulLayout :=
  ⟨x,out,(List.range 256).map (fun i => ⟨y.getD i 0,wireBlock w (4116+257*i) 257⟩),
    poolMod w 0 256,poolMod w 2058 256⟩

theorem poolMul_inputs (w : Nat → Wire) (x y out : List Wire) (hy : y.length=256) :
    (poolMul w x y out).x=x ∧ (poolMul w x y out).y=y ∧ (poolMul w x y out).out=out := by
  refine ⟨rfl,?_,rfl⟩
  simp only [poolMul,MulLayout.y,List.map_map]
  apply List.ext_getElem
  · simp [hy]
  · intro i hi hj
    simp [List.getElem_map,List.getElem_range,List.getD, List.getElem?_eq_getElem hj]

theorem poolMul_work (w : Nat → Wire) (x y out : List Wire) :
    (poolMul w x y out).work=wireBlock w 0 69908 := by
  simp only [poolMul,MulLayout.work,poolMod_wires,List.flatMap_map]
  change wireBlock w 0 2058++wireBlock w 2058 2058++
    (List.range 256).flatMap (fun i => wireBlock w (4116+257*i) 257)=_
  rw [wireBlock_flatMap]
  rw [show (2058:Nat)=0+2058 from rfl,wireBlock_append]
  rw [show (4116:Nat)=0+(2058+2058) from rfl,wireBlock_append]

theorem poolMul_widths (w : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (ho : out.length=257) : (poolMul w x y out).Widths := by
  simp only [MulLayout.Widths,MulLayout.width,poolMul,poolMod_width]
  refine ⟨True.intro,hx,ho,by simp,?_⟩
  intro b hb
  obtain ⟨i,hi,rfl⟩ := List.mem_map.mp hb
  exact wireBlock_length _ _ _

theorem poolMul_nodup (w : Nat → Wire) (x y out : List Wire) (hy : y.length=256)
    (h : (x++y++out++wireBlock w 0 69908).Nodup) : (poolMul w x y out).wires.Nodup := by
  apply (MulLayout.interface_perm _).nodup_iff.mp
  rw [(poolMul_inputs w x y out hy).1,(poolMul_inputs w x y out hy).2.1,
    (poolMul_inputs w x y out hy).2.2,poolMul_work]
  exact h

end ECDSAAdd.Arithmetic
