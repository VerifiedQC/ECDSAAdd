import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd

namespace ECDSAAdd.Arithmetic.Paper935

def hmrBranchAssembly (early : Bool) (pred parity fire work output : Wire) : Program :=
  [.CX pred output,.CX parity output] ++
    if early then [] else hmrPolarAnd fire parity work true false ++
      ([.CX work output] ++ hmrPolarRelease fire parity work true false)

theorem hmrBranchAssembly_run (early : Bool) (pred parity fire work output : Wire)
    (distinct : [pred,parity,fire,work,output].Nodup)
    (s : State) (m : List Bool) (clean : s.basis work=false) :
    run (hmrBranchAssembly early pred parity fire work output) m s=
      ⟨s.phase,writeBit s.basis output
        ((s.basis output ^^ s.basis pred ^^ s.basis parity) ^^
          (if early then false else s.basis fire && !s.basis parity))⟩ := by
  have d := distinct
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at d
  obtain ⟨⟨hab,hac,had,hae⟩,⟨hbc,hbd,hbe⟩,⟨hcd,hce⟩,hde⟩ := d
  have hcb := Ne.symm hbc
  have hdb := Ne.symm hbd
  have hdc := Ne.symm hcd
  have heb := Ne.symm hbe
  have hec := Ne.symm hce
  have hed := Ne.symm hde
  cases early <;> cases hp : s.basis parity <;> cases hf : s.basis fire <;>
    cases hm : m.head?.getD false <;>
    simp_all [hmrBranchAssembly,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
      run,writeBit,Function.update,measureAndCorrect,correct]
  all_goals
    funext q
    by_cases hqp : q=parity <;> by_cases hqw : q=work <;> by_cases hqo : q=output <;>
      simp_all [Function.update]

theorem hmrBranchAssembly_counts (early : Bool) (pred parity fire work output : Wire) :
    toffoliCount (hmrBranchAssembly early pred parity fire work output)=(if early then 0 else 1) ∧
    measurementCount (hmrBranchAssembly early pred parity fire work output)=(if early then 0 else 1) := by
  cases early <;> exact ⟨rfl,rfl⟩

end ECDSAAdd.Arithmetic.Paper935
