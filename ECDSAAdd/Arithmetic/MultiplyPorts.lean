import ECDSAAdd.Arithmetic.PoolLayout
import ECDSAAdd.Arithmetic.MulAdapterResources

namespace ECDSAAdd.Arithmetic

/-- 临时积与 scratch 共享池前 1029 位；三个公开接口直接接线。 -/
def poolMul (w : Nat → Wire) (x y out : List Wire) : MulAdapterLayout :=
  ⟨x,y,out,⟨wireBlock w 0 256,w 256,wireBlock w 257 257,
    wireBlock w 514 256,w 770,wireBlock w 771 257,w 1028⟩⟩

theorem poolMul_inputs (w : Nat → Wire) (x y out : List Wire) :
    (poolMul w x y out).x=x ∧ (poolMul w x y out).y=y ∧ (poolMul w x y out).out=out :=
  ⟨rfl,rfl,rfl⟩

theorem poolMul_width (w : Nat → Wire) (x y out : List Wire) : (poolMul w x y out).width=256 := by
  simp [poolMul,MulAdapterLayout.width,wireBlock_length]

theorem poolMul_work (w : Nat → Wire) (x y out : List Wire) :
    (poolMul w x y out).work=wireBlock w 0 1029 := by
  change (wireBlock w 0 256++[w 256])++
    ((wireBlock w 257 257++wireBlock w 514 256++[w 770])++wireBlock w 771 257++[w 1028])=_
  have h256 : [w 256]=wireBlock w 256 1 := by simp [wireBlock,List.range']
  have h770 : [w 770]=wireBlock w 770 1 := by simp [wireBlock,List.range']
  have h1028 : [w 1028]=wireBlock w 1028 1 := by simp [wireBlock,List.range']
  rw [h256,h770,h1028,wireBlock_append w 0 256 1,wireBlock_append w 257 257 256,
    wireBlock_append w 257 513 1,wireBlock_append w 257 514 257,wireBlock_append w 257 771 1,
    wireBlock_append w 0 257 772]

theorem poolMul_widths (w : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=256) (ho : out.length=257) : (poolMul w x y out).Widths := by
  refine ⟨⟨?_,?_,?_,?_,?_,?_⟩,?_⟩
  all_goals simp [poolMul,MulAdapterLayout.core,MulAdapterLayout.width,wireBlock_length,hx,hy,ho]

theorem poolMul_nodup (w : Nat → Wire) (x y out : List Wire)
    (h : (x++y++out++wireBlock w 0 1029).Nodup) : (poolMul w x y out).wires.Nodup := by
  change (x++y++out++(poolMul w x y out).work).Nodup
  rw [poolMul_work]
  exact h

end ECDSAAdd.Arithmetic
