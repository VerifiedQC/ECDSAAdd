import ECDSAAdd.Arithmetic.Paper935.BranchAssembly

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- The source shallow depths 2--4 and j5p cover exactly the nonswap
coefficient strata, including coefficient zero in the stored stratum. -/
theorem hmrBranchDepth_partition (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1) :
    (decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4) ^^
      decide ((2:Int)^5 ∣ (zStep st).fv)) = !decide (0≤st.z ∧ st.g%2=1) := by
  simp only [historyCutoff_valuation]
  have hval := (sigma_class inv hp).2.1
  have hzero : (zStep st).fv=0 → padicValInt 2 (zStep st).fv=0 := by
    intro h; simp [h,padicValInt]
  by_cases hs : 0≤st.z ∧ st.g%2=1
  · have hd := hval.mp hs
    have hn : (zStep st).fv≠0 := by intro hz; have := hzero hz; omega
    simp [hn,hd,hs]
  · have h4 := (sigma_class inv hp).2.2 hs
    have hlo : (zStep st).fv=0 ∨ 2≤padicValInt 2 (zStep st).fv :=
      (historyCutoff_valuation _ 2).mp (by norm_num; exact h4)
    by_cases hz : (zStep st).fv=0
    · simp [hz,padicValInt,hs]
    · have hd := hlo.resolve_left hz
      by_cases hh : padicValInt 2 (zStep st).fv≤4
      · have h5 : ¬5≤padicValInt 2 (zStep st).fv := by omega
        simp [hz,hs,hd,hh,h5]
      · have h5 : 5≤padicValInt 2 (zStep st).fv := by omega
        simp [hz,hs,hh,h5]

/-- XORing the stored and shallow-decoded pieces reconstructs precisely
the old negative-counter contribution before the source R7 terms. -/
theorem hmrBranchPieces (shallow stored swap frozen fire zneg branch : Bool)
    (partition : (shallow ^^ stored)= !swap) :
    (((!(frozen || fire) && !(!frozen && swap) && zneg && stored) && branch) ^^
      ((!(frozen || fire) && !(!frozen && swap) && zneg && shallow) && branch)) =
      (!(frozen || fire) && !(!frozen && swap) && zneg && branch) := by
  cases frozen <;> cases fire <;> cases swap <;> cases zneg <;>
    cases shallow <;> cases stored <;> cases branch <;> simp_all

end ECDSAAdd.Arithmetic.Paper935
