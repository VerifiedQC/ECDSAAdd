import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontArithmeticRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontEntryMath
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontShiftFinish

namespace ECDSAAdd.Arithmetic.Paper935

def hmrStepRows (z : ECDSAAdd.Divsteps.ZState) (frozen : Bool) : ECDSAAdd.Divsteps.ZState :=
  let q := decide (0≤z.z ∧ z.g%2=1)
  let b := decide (ECDSAAdd.Divsteps.bbit z=1)
  hmrShiftRows (hmrBranchRows (hmrRouteBank z q) q b) false frozen

/-- Integer meaning of the source row stages. The z field is handled by
its own physical counter theorem and is deliberately absent here. -/
theorem hmrStepRows_fields (z : ECDSAAdd.Divsteps.ZState) (frozen : Bool)
    (fodd : z.f%2=1) (frozenZero : frozen=true → z.g=0) :
    let out := hmrStepRows z frozen
    let expected := if frozen then z else ECDSAAdd.Divsteps.zStep z
    out.f=expected.f ∧ out.g=expected.g ∧ out.fv=expected.fv ∧ out.gv=expected.gv := by
  cases hf : frozen
  · have g := branchInt_divstep_g z fodd
    have gv := branchInt_divstep_gv z fodd
    have routedF : (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))).f=
        (if 0≤z.z ∧ z.g%2=1 then z.g else z.f) := by
      by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [hmrRouteBank,hq]
    have routedG : (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))).g=
        (if 0≤z.z ∧ z.g%2=1 then z.f else z.g) := by
      by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [hmrRouteBank,hq]
    have routedV : (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))).fv=
        (if 0≤z.z ∧ z.g%2=1 then z.gv else z.fv) := by
      by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [hmrRouteBank,hq]
    have routedW : (hmrRouteBank z (decide (0≤z.z ∧ z.g%2=1))).gv=
        (if 0≤z.z ∧ z.g%2=1 then z.fv else z.gv) := by
      by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [hmrRouteBank,hq]
    dsimp only [hmrStepRows,hmrBranchRows,hmrShiftRows]
    simp only [Bool.false_eq_true,if_false,routedF,routedG,routedV,routedW,g,gv]
    refine ⟨?_,by omega,?_,True.intro⟩
    · by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [ECDSAAdd.Divsteps.zStep,hq]
    · by_cases hq : 0≤z.z ∧ z.g%2=1 <;> simp [ECDSAAdd.Divsteps.zStep,hq]
  · have zero := frozenZero hf
    simp [hmrStepRows,hmrBranchRows,hmrRouteBank,hmrShiftRows,branchInt,ECDSAAdd.Divsteps.bbit,zero]

end ECDSAAdd.Arithmetic.Paper935
