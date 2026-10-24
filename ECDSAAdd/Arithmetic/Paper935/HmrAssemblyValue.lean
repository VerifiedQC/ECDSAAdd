import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyMath

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

theorem hmrAssemblyValue_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed sigma fire stored decoded : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (hs : sigma=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (hf : fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (hr : stored=((!(oldFrozen || fire) && !sigma && decide ((zStep st).z≤0) &&
      decide ((2 : Int)^5∣(zStep st).fv)) && decide (bbit st=1)))
    (hd : decoded=((!(oldFrozen || fire) && !sigma && decide ((zStep st).z≤0) &&
      decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) && decide (bbit st=1))) :
    ((stored ^^ decoded ^^ sigma) ^^ (if !armed then false else fire && !sigma))=decide (bbit st=1) := by
  have pieces := hmrBranchPieces
    (decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4))
    (decide ((2:Int)^5 ∣ (zStep st).fv)) (decide (0≤st.z ∧ st.g%2=1))
    oldFrozen fire (decide ((zStep st).z≤0)) (decide (bbit st=1))
    (hmrBranchDepth_partition p st inv hp)
  have contribution : (stored ^^ decoded)=
      (!(oldFrozen || fire) && !sigma && decide ((zStep st).z≤0) && decide (bbit st=1)) := by
    rw [hr,hd,hs]
    exact pieces
  have term : (if !armed then false else fire && !sigma)=(fire && !sigma) := by
    cases armed <;> simp [hf]
  rw [contribution,term,hs,hf]
  exact branchAssembly_value st inv.fodd oldFrozen armed hfg hfirst

end ECDSAAdd.Arithmetic.Paper935
