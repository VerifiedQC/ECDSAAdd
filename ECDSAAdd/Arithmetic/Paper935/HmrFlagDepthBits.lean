import ECDSAAdd.Arithmetic.Paper935.HmrBranchPartition

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Under class 3's divisibility-by-four invariant, the source shared
anchor bits recognize exact depths 2, 3, 4 and the stored cutoff 5. -/
theorem hmrFlagDepthBits (v : Int) (div4 : (4 : Int)∣v) :
    decide (bitk v 2=1)=decide (padicValInt 2 v=2) ∧
    (!decide (bitk v 2=1) && decide (bitk v 3=1))=decide (padicValInt 2 v=3) ∧
    (!decide (bitk v 2=1) && !decide (bitk v 3=1) && decide (bitk v 4=1))=decide (padicValInt 2 v=4) ∧
    (!decide (bitk v 2=1) && !decide (bitk v 3=1) && !decide (bitk v 4=1))=decide ((32 : Int)∣v) := by
  have mod4 : v%4=0 := Int.emod_eq_zero_of_dvd div4
  have d2 := depthResidue_iff v 2 (by decide)
  have d3 := depthResidue_iff v 3 (by decide)
  have d4 := depthResidue_iff v 4 (by decide)
  norm_num at d2 d3 d4
  refine ⟨?_,?_,?_,?_⟩
  · apply Bool.eq_iff_iff.mpr
    simp only [decide_eq_true_eq]
    rw [←d2]
    norm_num [bitk]
    omega
  · apply Bool.eq_iff_iff.mpr
    simp only [Bool.and_eq_true,Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
    rw [←d3]
    norm_num [bitk]
    omega
  · apply Bool.eq_iff_iff.mpr
    simp only [Bool.and_eq_true,Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
    rw [←d4]
    norm_num [bitk]
    omega
  · apply Bool.eq_iff_iff.mpr
    simp only [Bool.and_eq_true,Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
    rw [Int.dvd_iff_emod_eq_zero]
    norm_num [bitk]
    omega

end ECDSAAdd.Arithmetic.Paper935
