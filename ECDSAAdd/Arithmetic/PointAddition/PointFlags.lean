import ECDSAAdd.Arithmetic.Equality.EqualConstant

namespace ECDSAAdd.Arithmetic

/-- generic ^= finite AND NOT equalX，double ^= equalX AND NOT equalNegY。
三个输入标志保持；参与线路互异时可重复运行以清除同一组分支结果。

参数：

- `finite`：输入点是否有限的 wire，1 表示有限点，0 表示无穷远点。
- `equalX`：输入横坐标等于常量点横坐标的条件 wire，有限点检测已由调用者处理。
- `equalNegY`：输入纵坐标等于常量点纵坐标相反数的条件 wire。
- `generic`：普通点加分支条件的 XOR 输出 wire。
- `double`：倍点分支条件的 XOR 输出 wire。
-/
def pointBranchFlags (finite equalX equalNegY generic double : Wire) : Program :=
  [.X equalX, .CCX finite equalX generic, .X equalX,
   .X equalNegY, .CCX equalX equalNegY double, .X equalNegY]

theorem pointBranchFlags_correct (f ex ey g d : Wire)
    (hnd : [f,ex,ey,g,d].Nodup) (s : State) (m : List Bool) :
    run (pointBranchFlags f ex ey g d) m s =
      ⟨s.phase,writeBit (writeBit s.basis g (s.basis g ^^ (s.basis f && !s.basis ex)))
        d (s.basis d ^^ (s.basis ex && !s.basis ey))⟩ := by
  simp only [List.nodup_cons,List.mem_cons,not_or,
    List.not_mem_nil,List.nodup_nil,not_false_eq_true,and_true] at hnd
  simp only [pointBranchFlags,run]
  apply congrArg (State.mk s.phase)
  funext w
  rcases hnd with ⟨⟨hfe,hfy,hfg,hfd⟩,⟨hey,heg,hed⟩,⟨hyg,hyd⟩,hgd⟩
  by_cases hwex : w=ex
  · subst w; simp [writeBit, *, Ne.symm]
  · by_cases hwey : w=ey
    · subst w; simp [writeBit, *, Ne.symm]
    · by_cases hwg : w=g
      · subst w; simp [writeBit, *, Ne.symm]
      · by_cases hwd : w=d
        · subst w; simp [writeBit, *, Ne.symm]
        · simp [writeBit, *, Ne.symm]

theorem pointBranchFlags_counts (f ex ey g d : Wire) :
    toffoliCount (pointBranchFlags f ex ey g d)=2 ∧
    measurementCount (pointBranchFlags f ex ey g d)=0 := by
  simp [pointBranchFlags,toffoliCount,measurementCount]

end ECDSAAdd.Arithmetic
