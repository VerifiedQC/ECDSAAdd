import ECDSAAdd.Arithmetic.HornerResources

namespace ECDSAAdd.Arithmetic

/-- 三个适配器共享临时积；公开输出不与内核累加器重叠。 -/
structure MulAdapterLayout where
  x : List Wire
  y : List Wire
  out : List Wire
  unary : ModUnaryLayout

namespace MulAdapterLayout

def product (F : MulAdapterLayout) : List Wire := F.unary.z
def core (F : MulAdapterLayout) : MulInPlaceLayout := ⟨F.x,F.y,F.unary⟩
def work (F : MulAdapterLayout) : List Wire := F.product++F.unary.work
def wires (F : MulAdapterLayout) : List Wire := F.x++F.y++F.out++F.work
def width (F : MulAdapterLayout) : Nat := F.unary.low.length

def Widths (F : MulAdapterLayout) : Prop := F.core.Widths F.width ∧ F.out.length=F.width+1

def addView (F : MulAdapterLayout) : ModInPlaceLayout :=
  { toModAddCoreLayout := ⟨F.product,F.out.take F.width,F.out.getD F.width F.unary.high,
      F.unary.constant,F.unary.carry,F.unary.cin⟩,
    mask := F.unary.mask,flag := F.unary.flag }

theorem core_nodup (F : MulAdapterLayout) (hnd : F.wires.Nodup) : F.core.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,core,product,MulInPlaceLayout.wires,MulInPlaceLayout.acc,
    MulInPlaceLayout.work,List.count_append] at h ⊢
  omega

theorem product_length (F : MulAdapterLayout) : F.product.length=F.width+1 := by
  simp [product,width,ModUnaryLayout.z]

theorem out_split (F : MulAdapterLayout) (hw : F.Widths) :
    F.out.take F.width++[F.out.getD F.width F.unary.high]=F.out := by
  have hi : F.width<F.out.length := by rw [hw.2]; omega
  have hd : F.out.drop F.width=[F.out.getD F.width F.unary.high] := by
    rw [List.drop_eq_getElem_cons hi]
    have hz : F.out.drop (F.width+1)=[] := by rw [← hw.2,List.drop_length]
    simp [hz,List.getD_eq_getElem?_getD,List.getElem?_eq_getElem hi]
  rw [← hd,List.take_append_drop]

theorem add_ports (F : MulAdapterLayout) (hw : F.Widths) :
    F.addView.a=F.product ∧ F.addView.z=F.out ∧ F.addView.work=F.unary.work := by
  exact ⟨rfl,F.out_split hw,rfl⟩

theorem add_widths (F : MulAdapterLayout) (hw : F.Widths) : F.addView.Widths F.width := by
  refine ⟨⟨F.product_length,?_,hw.1.unary.constant,hw.1.unary.carry⟩,hw.1.unary.mask⟩
  change (F.out.take F.width).length=F.width
  simp [hw.2]

theorem add_nodup (F : MulAdapterLayout) (hw : F.Widths) (hnd : F.wires.Nodup) : F.addView.wires.Nodup := by
  have he : F.addView.wires=F.product++F.out++F.unary.work := by
    change F.addView.a++F.addView.z++F.addView.work=_
    rw [(F.add_ports hw).1,(F.add_ports hw).2.1,(F.add_ports hw).2.2]
  rw [he]
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,List.count_append] at h ⊢
  omega

theorem product_out_nodup (F : MulAdapterLayout) (hnd : F.wires.Nodup) : (F.product++F.out).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,List.count_append] at h ⊢
  omega

theorem out_disjoint (F : MulAdapterLayout) (hnd : F.wires.Nodup) :
    (F.x++F.y++F.product++F.unary.work).Disjoint F.out := by
  apply List.disjoint_left.mpr; intro q hq ho
  have h1 := List.count_pos_iff.mpr hq
  have h2 := List.count_pos_iff.mpr ho
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,List.count_append] at h h1
  omega

end MulAdapterLayout

def mulXor (F : MulAdapterLayout) (p : Nat) : Program :=
  mulInto F.core p ++ copyRegister none F.product F.out ++ mulClear F.core p

def mulAdd (F : MulAdapterLayout) (p : Nat) : Program :=
  mulInto F.core p ++ modAddInPlace F.addView p ++ mulClear F.core p

def mulSub (F : MulAdapterLayout) (p : Nat) : Program :=
  mulInto F.core p ++ modSubInPlace F.addView p ++ mulClear F.core p

end ECDSAAdd.Arithmetic
