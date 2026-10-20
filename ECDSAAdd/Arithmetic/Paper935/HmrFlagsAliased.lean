import ECDSAAdd.Arithmetic.Paper935.HmrFlags

namespace ECDSAAdd.Arithmetic.Paper935

/-- The coefficient reads may coincide (WRow.pos returns the sign wire past
its payload). Only the seven control/temporary ports must be distinct. -/
def HmrFlagsGeometry (c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p : Wire) : Prop :=
  [c3,j2,a1,j3,a2,j4,j5p].Nodup ∧
  ∀q∈[b2,b3,b4],q∉[c3,j2,a1,j3,a2,j4,j5p]

theorem hmrFlags_ready_aliased (c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p : Wire)
    (geometry : HmrFlagsGeometry c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) (s : BasisState)
    (clean : ∀q∈[j2,a1,j3,a2,j4,j5p],s q=false) :
    HmrFlagReady (hmrFlagStages c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) s := by
  obtain ⟨distinct,separate⟩ := geometry
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  simp only [List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq,not_or] at separate clean
  obtain ⟨⟨h0_1,h0_2,h0_3,h0_4,h0_5,h0_6⟩,⟨h1_2,h1_3,h1_4,h1_5,h1_6⟩,⟨h2_3,h2_4,h2_5,h2_6⟩,⟨h3_4,h3_5,h3_6⟩,⟨h4_5,h4_6⟩,h5_6⟩ := distinct
  obtain ⟨⟨d0_0,d0_1,d0_2,d0_3,d0_4,d0_5,d0_6⟩,⟨d1_0,d1_1,d1_2,d1_3,d1_4,d1_5,d1_6⟩,⟨d2_0,d2_1,d2_2,d2_3,d2_4,d2_5,d2_6⟩⟩ := separate
  have rh0_1 := Ne.symm h0_1
  have rh0_2 := Ne.symm h0_2
  have rh0_3 := Ne.symm h0_3
  have rh0_4 := Ne.symm h0_4
  have rh0_5 := Ne.symm h0_5
  have rh0_6 := Ne.symm h0_6
  have rh1_2 := Ne.symm h1_2
  have rh1_3 := Ne.symm h1_3
  have rh1_4 := Ne.symm h1_4
  have rh1_5 := Ne.symm h1_5
  have rh1_6 := Ne.symm h1_6
  have rh2_3 := Ne.symm h2_3
  have rh2_4 := Ne.symm h2_4
  have rh2_5 := Ne.symm h2_5
  have rh2_6 := Ne.symm h2_6
  have rh3_4 := Ne.symm h3_4
  have rh3_5 := Ne.symm h3_5
  have rh3_6 := Ne.symm h3_6
  have rh4_5 := Ne.symm h4_5
  have rh4_6 := Ne.symm h4_6
  have rh5_6 := Ne.symm h5_6
  have rd0_0 := Ne.symm d0_0
  have rd0_1 := Ne.symm d0_1
  have rd0_2 := Ne.symm d0_2
  have rd0_3 := Ne.symm d0_3
  have rd0_4 := Ne.symm d0_4
  have rd0_5 := Ne.symm d0_5
  have rd0_6 := Ne.symm d0_6
  have rd1_0 := Ne.symm d1_0
  have rd1_1 := Ne.symm d1_1
  have rd1_2 := Ne.symm d1_2
  have rd1_3 := Ne.symm d1_3
  have rd1_4 := Ne.symm d1_4
  have rd1_5 := Ne.symm d1_5
  have rd1_6 := Ne.symm d1_6
  have rd2_0 := Ne.symm d2_0
  have rd2_1 := Ne.symm d2_1
  have rd2_2 := Ne.symm d2_2
  have rd2_3 := Ne.symm d2_3
  have rd2_4 := Ne.symm d2_4
  have rd2_5 := Ne.symm d2_5
  have rd2_6 := Ne.symm d2_6
  simp_all [hmrFlagStages,HmrFlagReady,HmrFlagStage.advance,writeBit,Function.update]

theorem hmrFlags_release_aliased (c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p : Wire)
    (geometry : HmrFlagsGeometry c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) (s : State) (m : List Bool)
    (clean : ∀q∈[j2,a1,j3,a2,j4,j5p],s.basis q=false) :
    run (hmrFlags c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p ++
      hmrFlagsRelease c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) m s=s := by
  have ready := hmrFlags_ready_aliased c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p geometry s.basis clean
  have h := hmrFlagSweep_release (hmrFlagStages c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) s m ready
  simpa [hmrFlagStages,hmrFlagSweep,hmrFlagUnsweep,hmrFlags,hmrFlagsRelease,List.append_assoc] using h

theorem hmrFlags_run_aliased (c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p : Wire)
    (geometry : HmrFlagsGeometry c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) (s : State) (m : List Bool)
    (clean : ∀q∈[j2,a1,j3,a2,j4,j5p],s.basis q=false) :
    run (hmrFlags c3 b2 b3 b4 j2 a1 j3 a2 j4 j5p) m s=
    ⟨s.phase,writeBit (writeBit (writeBit (writeBit (writeBit (writeBit s.basis
      j2 (s.basis c3 && s.basis b2))
      a1 (s.basis c3 && !s.basis b2))
      j3 (s.basis c3 && !s.basis b2 && s.basis b3))
      a2 (s.basis c3 && !s.basis b2 && !s.basis b3))
      j4 (s.basis c3 && !s.basis b2 && !s.basis b3 && s.basis b4))
      j5p (s.basis c3 && !s.basis b2 && !s.basis b3 && !s.basis b4)⟩ := by
  obtain ⟨distinct,separate⟩ := geometry
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  simp only [List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq,not_or] at separate clean
  obtain ⟨⟨h0_1,h0_2,h0_3,h0_4,h0_5,h0_6⟩,⟨h1_2,h1_3,h1_4,h1_5,h1_6⟩,⟨h2_3,h2_4,h2_5,h2_6⟩,⟨h3_4,h3_5,h3_6⟩,⟨h4_5,h4_6⟩,h5_6⟩ := distinct
  obtain ⟨⟨d0_0,d0_1,d0_2,d0_3,d0_4,d0_5,d0_6⟩,⟨d1_0,d1_1,d1_2,d1_3,d1_4,d1_5,d1_6⟩,⟨d2_0,d2_1,d2_2,d2_3,d2_4,d2_5,d2_6⟩⟩ := separate
  have rh0_1 := Ne.symm h0_1
  have rh0_2 := Ne.symm h0_2
  have rh0_3 := Ne.symm h0_3
  have rh0_4 := Ne.symm h0_4
  have rh0_5 := Ne.symm h0_5
  have rh0_6 := Ne.symm h0_6
  have rh1_2 := Ne.symm h1_2
  have rh1_3 := Ne.symm h1_3
  have rh1_4 := Ne.symm h1_4
  have rh1_5 := Ne.symm h1_5
  have rh1_6 := Ne.symm h1_6
  have rh2_3 := Ne.symm h2_3
  have rh2_4 := Ne.symm h2_4
  have rh2_5 := Ne.symm h2_5
  have rh2_6 := Ne.symm h2_6
  have rh3_4 := Ne.symm h3_4
  have rh3_5 := Ne.symm h3_5
  have rh3_6 := Ne.symm h3_6
  have rh4_5 := Ne.symm h4_5
  have rh4_6 := Ne.symm h4_6
  have rh5_6 := Ne.symm h5_6
  have rd0_0 := Ne.symm d0_0
  have rd0_1 := Ne.symm d0_1
  have rd0_2 := Ne.symm d0_2
  have rd0_3 := Ne.symm d0_3
  have rd0_4 := Ne.symm d0_4
  have rd0_5 := Ne.symm d0_5
  have rd0_6 := Ne.symm d0_6
  have rd1_0 := Ne.symm d1_0
  have rd1_1 := Ne.symm d1_1
  have rd1_2 := Ne.symm d1_2
  have rd1_3 := Ne.symm d1_3
  have rd1_4 := Ne.symm d1_4
  have rd1_5 := Ne.symm d1_5
  have rd1_6 := Ne.symm d1_6
  have rd2_0 := Ne.symm d2_0
  have rd2_1 := Ne.symm d2_1
  have rd2_2 := Ne.symm d2_2
  have rd2_3 := Ne.symm d2_3
  have rd2_4 := Ne.symm d2_4
  have rd2_5 := Ne.symm d2_5
  have rd2_6 := Ne.symm d2_6
  cases h0 : s.basis c3 <;> cases h1 : s.basis b2 <;> cases h2 : s.basis b3 <;> cases h3 : s.basis b4 <;>
    simp_all [hmrFlags,hmrFlagCell,run,writeBit,Function.update]



end ECDSAAdd.Arithmetic.Paper935
