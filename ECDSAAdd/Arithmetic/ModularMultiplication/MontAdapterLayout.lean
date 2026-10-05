import ECDSAAdd.Arithmetic.ModularMultiplication.MontResources
import ECDSAAdd.Arithmetic.ModularAddition.ModInPlaceSubtract

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL
namespace MontLayout

/-- 标准积的257位视图；中段借用共享区的前缀，历史保持存活。 -/
def product (M : MontLayout) : List Wire := M.z.take 257

def addView (M : MontLayout) : ModInPlaceLayout :=
  { toModAddCoreLayout := ⟨M.product,M.out.take 256,M.out.getD 256 M.fZ,
      M.first.table.take 257,M.first.carry.take 256,M.first.cin⟩,
    mask := M.first.mask.take 257,flag := M.first.scratch.headD M.fA }

theorem out_split (M : MontLayout) (hw : M.Widths) :
    M.out.take 256++[M.out.getD 256 M.fZ]=M.out := by
  have hi : 256<M.out.length := by simp [hw.out]
  have hd : M.out.drop 256=[M.out.getD 256 M.fZ] := by
    rw [List.drop_eq_getElem_cons hi]
    have hz : M.out.drop 257=[] := by rw [←hw.out,List.drop_length]
    simp [hz,List.getD_eq_getElem?_getD,List.getElem?_eq_getElem hi]
  rw [←hd,List.take_append_drop]

theorem add_ports (M : MontLayout) (hw : M.Widths) :
    M.addView.a=M.product ∧ M.addView.z=M.out := ⟨rfl,M.out_split hw⟩

theorem add_widths (M : MontLayout) (hw : M.Widths) : M.addView.Widths 256 := by
  constructor
  · constructor <;> simp [addView,product,hw.z,hw.out,hw.first.table,hw.first.carry]
  · simp [addView,hw.first.mask]

theorem add_work_sublist (M : MontLayout) (hw : M.Widths) :
    M.addView.work.Sublist (M.first.table++M.first.carry++[M.first.cin]++M.first.mask++M.first.scratch) := by
  have hf : [M.first.scratch.headD M.fA].Sublist M.first.scratch := by
    apply List.singleton_sublist.mpr
    cases h : M.first.scratch with
    | nil => have hh := hw.first.scratch; simp [h] at hh
    | cons a as => simp
  exact ((((List.take_sublist 257 M.first.table).append (List.take_sublist 256 M.first.carry)).append
    (List.Sublist.refl [M.first.cin])).append (List.take_sublist 257 M.first.mask)).append hf

theorem add_work_subset (M : MontLayout) (hw : M.Widths) : M.addView.work⊆M.shared := by
  intro w h
  have hh := (M.add_work_sublist hw).subset h
  simp only [shared,MontStageLayout.work,List.mem_append,List.mem_cons,List.not_mem_nil] at hh ⊢
  tauto

theorem add_nodup (M : MontLayout) (hw : M.Widths) (hnd : M.wires.Nodup) : M.addView.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro w
  have h := List.nodup_iff_count.mp hnd w
  have hz := (List.take_sublist 257 M.z).count_le w
  have hs := (M.add_work_sublist hw).count_le w
  change (M.addView.a++M.addView.z++M.addView.work).count w≤1
  rw [(M.add_ports hw).1,(M.add_ports hw).2]
  simp only [wires,work,activeA,activeZ,shared,MontStageLayout.work,product,List.count_append] at h hs hz ⊢
  omega

theorem out_disjoint (M : MontLayout) (hnd : M.wires.Nodup) :
    (M.x++M.y++M.work).Disjoint M.out := by
  apply List.disjoint_left.mpr; intro w h ho
  have h1 := List.count_pos_iff.mpr h
  have h2 := List.count_pos_iff.mpr ho
  have hn := List.nodup_iff_count.mp hnd w
  simp only [wires,List.count_append] at hn h1
  omega

theorem product_value (M : MontLayout) (hw : M.Widths) (s : BasisState) (V : Nat)
    (hv : regValue M.z s=V) (hV : V<2^257) : regValue M.product s=V := by
  rw [product,mont_low_value M.z 257 (by simp [hw.z]) s,hv,Nat.mod_eq_of_lt hV]

theorem controlled_add_nodup (c : Wire) (M : MontLayout) (hw : M.Widths)
    (hnd : (c::M.wires).Nodup) : (c::M.addView.wires).Nodup := by
  apply List.nodup_cons.mpr
  constructor
  · intro hm
    have hh : c∈M.product++M.out++M.addView.work := by
      simpa only [ModInPlaceLayout.wires,(M.add_ports hw).1,(M.add_ports hw).2] using hm
    simp only [List.mem_append] at hh
    apply (List.nodup_cons.mp hnd).1
    rcases hh with (hh|hh)|hh
    · have hz : c∈M.z := List.mem_of_mem_take hh
      simp [MontLayout.wires,MontLayout.work,MontLayout.activeZ,hz]
    · simp [MontLayout.wires,hh]
    · have hs := M.add_work_subset hw hh
      simp [MontLayout.wires,MontLayout.work,hs]
  · exact M.add_nodup hw hnd.tail

end MontLayout

/-- 模积的作用域配方：工作区由 M 绑定，x/y 是实际输入。
两段历史一直存活到块结束；restore 调用原 uncompute，不倒转含测量门列。 -/
abbrev montProductValue (M : MontLayout) (x y : List Wire) (p : Nat) :
    CircuitDSL.Computed (List Wire) :=
  let layout := { M with x := x, y := y }
  ⟨M.product, montMulCompute layout p, montMulUncompute layout p⟩

structure MontOutputOps where
  modProductValue : List Wire → List Wire → Nat → CircuitDSL.Computed (List Wire)
  modAddAssign : List Wire → List Wire → Nat → Program
  modSubAssign : List Wire → List Wire → Nat → Program
  controlledModAddAssign : Wire → List Wire → List Wire → Nat → Program
  controlledModSubAssign : Wire → List Wire → List Wire → Nat → Program

def montOutputContext (M : MontLayout) : CircuitDSL.Context MontOutputOps := {
  operations := {
    modProductValue := montProductValue M
    modAddAssign := (modAssignContext M.addView).operations.modAddAssign
    modSubAssign := (modAssignContext M.addView).operations.modSubAssign
    controlledModAddAssign := (modAssignContext M.addView).operations.controlledModAddAssign
    controlledModSubAssign := (modAssignContext M.addView).operations.controlledModSubAssign
  }
}

/-- M.out ^= M.x*M.y mod p。
要求 M.x<p、M.y<2^256，p 为素数、p<2^256、p mod 16=15。 -/
def montMulXor (M : MontLayout) (p : Nat) : Program :=
  prog using (montOutputContext M) {
    with product := (M.x * M.y) mod p {
      M.out ^= product;
    };
  }

/-- M.out ← (M.out+M.x*M.y) mod p，M.out 的初值小于 p。
乘数和模数条件同 montMulXor。 -/
def montMulAdd (M : MontLayout) (p : Nat) : Program :=
  prog using (montOutputContext M) {
    let out := M.addView.low;
    with product := (M.x * M.y) mod p {
      out = (product + out) mod p;
    };
  }

/-- M.out ← (M.out−M.x*M.y) mod p，M.out 的初值小于 p。
乘数和模数条件同 montMulXor。 -/
def montMulSub (M : MontLayout) (p : Nat) : Program :=
  prog using (montOutputContext M) {
    let out := M.addView.low;
    with product := (M.x * M.y) mod p {
      out = (out - product) mod p;
    };
  }

/-- M.out ← (M.out+c·M.x*M.y) mod p；c 是控制位。
输入与模数条件同 montMulAdd。 -/
def montMulControlledAdd (c : Wire) (M : MontLayout) (p : Nat) : Program :=
  prog using (montOutputContext M) {
    let out := M.addView.low;
    with product := (M.x * M.y) mod p {
      control c { out = (product + out) mod p; };
    };
  }

/-- M.out ← (M.out−c·M.x*M.y) mod p；c 是控制位。
输入与模数条件同 montMulSub。 -/
def montMulControlledSub (c : Wire) (M : MontLayout) (p : Nat) : Program :=
  prog using (montOutputContext M) {
    let out := M.addView.low;
    with product := (M.x * M.y) mod p {
      control c { out = (out - product) mod p; };
    };
  }

/-- 作用域展开为原来的计算—使用—恢复门列。 -/
theorem montMulXor_program (M : MontLayout) (p : Nat) : montMulXor M p =
    montMulCompute M p ++ copyRegister none M.product M.out ++ montMulUncompute M p := rfl

theorem montMulAdd_program (M : MontLayout) (p : Nat) : montMulAdd M p =
    montMulCompute M p ++ modAddInPlace M.addView p ++ montMulUncompute M p := rfl

theorem montMulSub_program (M : MontLayout) (p : Nat) : montMulSub M p =
    montMulCompute M p ++ modSubInPlace M.addView p ++ montMulUncompute M p := rfl

theorem montMulControlledAdd_program (c : Wire) (M : MontLayout) (p : Nat) :
    montMulControlledAdd c M p =
    montMulCompute M p ++ controlledModAdd c M.addView p ++ montMulUncompute M p := rfl

theorem montMulControlledSub_program (c : Wire) (M : MontLayout) (p : Nat) :
    montMulControlledSub c M p =
    montMulCompute M p ++ controlledModSub c M.addView p ++ montMulUncompute M p := rfl

end ECDSAAdd.Arithmetic
