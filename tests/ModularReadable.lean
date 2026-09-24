import ECDSAAdd.Arithmetic.ModularAddition.Modular

-- 试写版已经合入正式实现；这里仅保留寄存器接口的回归检查，不再复制一份算法。
namespace ECDSAAdd.Arithmetic

private theorem columns_rebuild (bs : List AddBit) :
    registerAdderBits (bs.map AddBit.x) (bs.map AddBit.y)
      (bs.map AddBit.out) (bs.map AddBit.carry) = bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    cases b with
    | mk x y out carry =>
      simpa [registerAdderBits] using congrArg (List.cons (AddBit.mk x y out carry)) ih

example (L : AdderLayout) : addXor L.x L.y L.out L.carry L.cin = add L := by
  simp only [addXor, add, AdderLayout.x, AdderLayout.y, AdderLayout.out,
    AdderLayout.carry, columns_rebuild]

example (L : AdderLayout) : subXor L.x L.y L.out L.carry L.cin = sub L := by
  simp only [subXor, sub, AdderLayout.x, AdderLayout.y, AdderLayout.out,
    AdderLayout.carry, columns_rebuild]

private theorem select_columns_rebuild (bs : List SelectBit) :
    List.zipWith (fun ab o => SelectBit.mk ab.1 ab.2 o)
      ((bs.map SelectBit.no).zip (bs.map SelectBit.yes)) (bs.map SelectBit.out) = bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    cases b with
    | mk no yes out =>
      simpa using congrArg (List.cons (SelectBit.mk no yes out)) ih

example (bs : List SelectBit) (flag : Wire) :
    chooseXor flag (bs.map SelectBit.no) (bs.map SelectBit.yes) (bs.map SelectBit.out) =
      selectXor bs flag := by
  simp only [chooseXor, select_columns_rebuild]

-- 两个输入方向和控制为 0/1 的选择方向不能对调。
example : chooseXor 3 [0] [1] [2] =
    [.CX 0 2, .CX 1 0, .CCX 3 0 2, .CX 1 0] := rfl
example (cin flag : Wire) :
    addXor [] [] [] [] cin = [] ∧ chooseXor flag [] [] [] = [] := ⟨rfl, rfl⟩

#print axioms modAdd_program
#print axioms modSub_program
#print axioms modAdd_spec
#print axioms modSub_spec

end ECDSAAdd.Arithmetic
