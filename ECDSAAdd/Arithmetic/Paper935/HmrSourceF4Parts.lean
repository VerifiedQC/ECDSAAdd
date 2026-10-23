import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank
namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0F4FlagArena : Arena := ⟨s2Step0HeadFvAfter.live∪{786},Finset.union_subset s2Step0HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step0F4_flag : s2Step0HeadFvAfter.checkBorrow 1 [786]=some s2Step0F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step0HeadFvAfter,arenaWires]
  · rfl
theorem s2Step0F4_carry : s2Step0F4FlagArena.checkBorrow 1 [787]=some s2Step0Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step0F4FlagArena,s2Step0HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step0F4FlagArena,s2Step0HeadFvAfter,s2Step0Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0F4_owned : (780::781::((s2Step0Add0A++s2Step0Add1A)++(s2Step0Add0B++s2Step0Add1B))).toFinset⊆s2Step0HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadFvAfter (fun q => (0≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0F4_distinct : (780::781::786::787::((s2Step0Add0A++s2Step0Add1A)++(s2Step0Add0B++s2Step0Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0F4_apart : Disjoint (s2Step0Add0A++s2Step0Add0B).toFinset (s2Step0Add1A++s2Step0Add1B).toFinset := by
  have nd : ((s2Step0Add0A++s2Step0Add0B)++(s2Step0Add1A++s2Step0Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step0F4Plan : HmrHybridF4Plan := ⟨s2Step0F4FlagArena,[786],s2Step0Add0Arena,[787],s2Step0Add0During,s2Step0Add0Work,s2Step0Add1During,s2Step0Add1Work⟩
theorem s2Step0F4_checked : compileHmrHybridF4Log s2Step0HeadFvAfter 780 781 s2Step0Add0A s2Step0Add0B s2Step0Add1A s2Step0Add1B [786] [787] s2Step0Add0Work s2Step0Add1Work=some s2Step0F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step0HeadFvAfter s2Step0F4FlagArena s2Step0Add0Arena s2Step0Add0During s2Step0Add1During 780 781
    s2Step0Add0A s2Step0Add0B s2Step0Add1A s2Step0Add1B [786] [787] s2Step0Add0Work s2Step0Add1Work
    (fun q hq => s2Step0F4_owned (List.mem_toFinset.mpr hq)) s2Step0F4_flag s2Step0F4_carry
    s2Step0F4_distinct s2Step0F4_apart s2Step0Add0_checked s2Step0Add1_checked
def s2Step498F4FlagArena : Arena := ⟨s2Step498HeadFvAfter.live∪{921},Finset.union_subset s2Step498HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step498F4_flag : s2Step498HeadFvAfter.checkBorrow 1 [921]=some s2Step498F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step498HeadFvAfter,arenaWires]
  · rfl
theorem s2Step498F4_carry : s2Step498F4FlagArena.checkBorrow 1 [922]=some s2Step498Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step498F4FlagArena,s2Step498HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step498F4FlagArena,s2Step498HeadFvAfter,s2Step498Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step498F4_owned : (879::916::((s2Step498Add0A++s2Step498Add1A)++(s2Step498Add0B++s2Step498Add1B))).toFinset⊆s2Step498HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step498HeadFvAfter (fun q => (0≤q ∧ q<921)) rfl
  decide +kernel
theorem s2Step498F4_distinct : (879::916::921::922::((s2Step498Add0A++s2Step498Add1A)++(s2Step498Add0B++s2Step498Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498F4_apart : Disjoint (s2Step498Add0A++s2Step498Add0B).toFinset (s2Step498Add1A++s2Step498Add1B).toFinset := by
  have nd : ((s2Step498Add0A++s2Step498Add0B)++(s2Step498Add1A++s2Step498Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step498F4Plan : HmrHybridF4Plan := ⟨s2Step498F4FlagArena,[921],s2Step498Add0Arena,[922],s2Step498Add0During,s2Step498Add0Work,s2Step498Add1During,s2Step498Add1Work⟩
theorem s2Step498F4_checked : compileHmrHybridF4Log s2Step498HeadFvAfter 879 916 s2Step498Add0A s2Step498Add0B s2Step498Add1A s2Step498Add1B [921] [922] s2Step498Add0Work s2Step498Add1Work=some s2Step498F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step498HeadFvAfter s2Step498F4FlagArena s2Step498Add0Arena s2Step498Add0During s2Step498Add1During 879 916
    s2Step498Add0A s2Step498Add0B s2Step498Add1A s2Step498Add1B [921] [922] s2Step498Add0Work s2Step498Add1Work
    (fun q hq => s2Step498F4_owned (List.mem_toFinset.mpr hq)) s2Step498F4_flag s2Step498F4_carry
    s2Step498F4_distinct s2Step498F4_apart s2Step498Add0_checked s2Step498Add1_checked
def s6Step0F4FlagArena : Arena := ⟨s6Step0HeadFvAfter.live∪{874},Finset.union_subset s6Step0HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step0F4_flag : s6Step0HeadFvAfter.checkBorrow 1 [874]=some s6Step0F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step0HeadFvAfter,arenaWires]
  · rfl
theorem s6Step0F4_carry : s6Step0F4FlagArena.checkBorrow 1 [793]=some s6Step0Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step0F4FlagArena,s6Step0HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step0F4FlagArena,s6Step0HeadFvAfter,s6Step0Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step0F4_owned : (887::813::((s6Step0Add0A++s6Step0Add1A)++(s6Step0Add0B++s6Step0Add1B))).toFinset⊆s6Step0HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step0HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0F4_distinct : (887::813::874::793::((s6Step0Add0A++s6Step0Add1A)++(s6Step0Add0B++s6Step0Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0F4_apart : Disjoint (s6Step0Add0A++s6Step0Add0B).toFinset (s6Step0Add1A++s6Step0Add1B).toFinset := by
  have nd : ((s6Step0Add0A++s6Step0Add0B)++(s6Step0Add1A++s6Step0Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step0F4Plan : HmrHybridF4Plan := ⟨s6Step0F4FlagArena,[874],s6Step0Add0Arena,[793],s6Step0Add0During,s6Step0Add0Work,s6Step0Add1During,s6Step0Add1Work⟩
theorem s6Step0F4_checked : compileHmrHybridF4Log s6Step0HeadFvAfter 887 813 s6Step0Add0A s6Step0Add0B s6Step0Add1A s6Step0Add1B [874] [793] s6Step0Add0Work s6Step0Add1Work=some s6Step0F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step0HeadFvAfter s6Step0F4FlagArena s6Step0Add0Arena s6Step0Add0During s6Step0Add1During 887 813
    s6Step0Add0A s6Step0Add0B s6Step0Add1A s6Step0Add1B [874] [793] s6Step0Add0Work s6Step0Add1Work
    (fun q hq => s6Step0F4_owned (List.mem_toFinset.mpr hq)) s6Step0F4_flag s6Step0F4_carry
    s6Step0F4_distinct s6Step0F4_apart s6Step0Add0_checked s6Step0Add1_checked
def s6Step498F4FlagArena : Arena := ⟨s6Step498HeadFvAfter.live∪{790},Finset.union_subset s6Step498HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step498F4_flag : s6Step498HeadFvAfter.checkBorrow 1 [790]=some s6Step498F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498HeadFvAfter,arenaWires]
  · rfl
theorem s6Step498F4_carry : s6Step498F4FlagArena.checkBorrow 1 [914]=some s6Step498Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498F4FlagArena,s6Step498HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step498F4FlagArena,s6Step498HeadFvAfter,s6Step498Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498F4_owned : (791::842::((s6Step498Add0A++s6Step498Add1A)++(s6Step498Add0B++s6Step498Add1B))).toFinset⊆s6Step498HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step498HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498F4_distinct : (791::842::790::914::((s6Step498Add0A++s6Step498Add1A)++(s6Step498Add0B++s6Step498Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498F4_apart : Disjoint (s6Step498Add0A++s6Step498Add0B).toFinset (s6Step498Add1A++s6Step498Add1B).toFinset := by
  have nd : ((s6Step498Add0A++s6Step498Add0B)++(s6Step498Add1A++s6Step498Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step498F4Plan : HmrHybridF4Plan := ⟨s6Step498F4FlagArena,[790],s6Step498Add0Arena,[914],s6Step498Add0During,s6Step498Add0Work,s6Step498Add1During,s6Step498Add1Work⟩
theorem s6Step498F4_checked : compileHmrHybridF4Log s6Step498HeadFvAfter 791 842 s6Step498Add0A s6Step498Add0B s6Step498Add1A s6Step498Add1B [790] [914] s6Step498Add0Work s6Step498Add1Work=some s6Step498F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step498HeadFvAfter s6Step498F4FlagArena s6Step498Add0Arena s6Step498Add0During s6Step498Add1During 791 842
    s6Step498Add0A s6Step498Add0B s6Step498Add1A s6Step498Add1B [790] [914] s6Step498Add0Work s6Step498Add1Work
    (fun q hq => s6Step498F4_owned (List.mem_toFinset.mpr hq)) s6Step498F4_flag s6Step498F4_carry
    s6Step498F4_distinct s6Step498F4_apart s6Step498Add0_checked s6Step498Add1_checked
end ECDSAAdd.Arithmetic.Paper935
