import ECDSAAdd.Arithmetic.Paper935.HmrBranchPartition
import ECDSAAdd.Arithmetic.Paper935.HmrBranchAssembly

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- R7 consumes the physical stored branch and the source 2--4 decoder
contribution. Its output is the old mathematical branch, rather than an
assumed decoder output. Physical bindings to these two pieces are explicit. -/
theorem hmrBranchAssembly_math (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (oldFrozen armed : Bool) (hfg : oldFrozen=true → st.g=0)
    (hfirst : oldFrozen=false → armed=true → (zStep st).g=0 → st.g≠0)
    (pred parity fire work output : Wire) (distinct : [pred,parity,fire,work,output].Nodup)
    (s : State) (m : List Bool) (clean : s.basis work=false)
    (sigma : s.basis parity=(!oldFrozen && decide (0≤st.z ∧ st.g%2=1)))
    (firing : s.basis fire=(!oldFrozen && armed && decide ((zStep st).g=0)))
    (stored : s.basis output=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide ((2:Int)^5 ∣ (zStep st).fv)) && decide (bbit st=1)))
    (decoded : s.basis pred=
      ((!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1))) :
    run (hmrBranchAssembly (!armed) pred parity fire work output) m s=
      ⟨s.phase,writeBit s.basis output (decide (bbit st=1))⟩ := by
  have pieces := hmrBranchPieces
    (decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4))
    (decide ((2:Int)^5 ∣ (zStep st).fv)) (decide (0≤st.z ∧ st.g%2=1))
    oldFrozen (s.basis fire) (decide ((zStep st).z≤0)) (decide (bbit st=1))
    (hmrBranchDepth_partition p st inv hp)
  have contribution : (s.basis output ^^ s.basis pred)=
      (!(oldFrozen || s.basis fire) && !s.basis parity && decide ((zStep st).z≤0) &&
        decide (bbit st=1)) := by
    rw [stored,decoded,sigma]
    exact pieces
  have term : (if !armed then false else s.basis fire && !s.basis parity)=
      (s.basis fire && !s.basis parity) := by
    cases armed <;> simp [firing]
  rw [hmrBranchAssembly_run (!armed) pred parity fire work output distinct s m clean,
    contribution,term,sigma,firing]
  have assembly := branchAssembly_value st inv.fodd oldFrozen armed hfg hfirst
  exact congrArg (fun b => (⟨s.phase,writeBit s.basis output b⟩ : State)) assembly

end ECDSAAdd.Arithmetic.Paper935
