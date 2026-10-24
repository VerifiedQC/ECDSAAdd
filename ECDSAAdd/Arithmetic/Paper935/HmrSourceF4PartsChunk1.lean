import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16F4FlagArena : Arena := ⟨s2Step16HeadFvAfter.live∪{821},Finset.union_subset s2Step16HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step16F4_flag : s2Step16HeadFvAfter.checkBorrow 1 [821]=some s2Step16F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step16HeadFvAfter,arenaWires]
  · rfl
theorem s2Step16F4_carry : s2Step16F4FlagArena.checkBorrow 1 [822]=some s2Step16Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step16F4FlagArena,s2Step16HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step16F4FlagArena,s2Step16HeadFvAfter,s2Step16Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16F4_owned : (816::781::((s2Step16Add0A++s2Step16Add1A)++(s2Step16Add0B++s2Step16Add1B))).toFinset⊆s2Step16HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadFvAfter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16F4_distinct : (816::781::821::822::((s2Step16Add0A++s2Step16Add1A)++(s2Step16Add0B++s2Step16Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16F4_apart : Disjoint (s2Step16Add0A++s2Step16Add0B).toFinset (s2Step16Add1A++s2Step16Add1B).toFinset := by
  have nd : ((s2Step16Add0A++s2Step16Add0B)++(s2Step16Add1A++s2Step16Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step16F4Plan : HmrHybridF4Plan := ⟨s2Step16F4FlagArena,[821],s2Step16Add0Arena,[822],s2Step16Add0During,s2Step16Add0Work,s2Step16Add1During,s2Step16Add1Work⟩
theorem s2Step16F4_checked : compileHmrHybridF4Log s2Step16HeadFvAfter 816 781 s2Step16Add0A s2Step16Add0B s2Step16Add1A s2Step16Add1B [821] [822] s2Step16Add0Work s2Step16Add1Work=some s2Step16F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step16HeadFvAfter s2Step16F4FlagArena s2Step16Add0Arena s2Step16Add0During s2Step16Add1During 816 781
    s2Step16Add0A s2Step16Add0B s2Step16Add1A s2Step16Add1B [821] [822] s2Step16Add0Work s2Step16Add1Work
    (fun q hq => s2Step16F4_owned (List.mem_toFinset.mpr hq)) s2Step16F4_flag s2Step16F4_carry
    s2Step16F4_distinct s2Step16F4_apart s2Step16Add0_checked s2Step16Add1_checked
def s2Step17F4FlagArena : Arena := ⟨s2Step17HeadFvAfter.live∪{824},Finset.union_subset s2Step17HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step17F4_flag : s2Step17HeadFvAfter.checkBorrow 1 [824]=some s2Step17F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step17HeadFvAfter,arenaWires]
  · rfl
theorem s2Step17F4_carry : s2Step17F4FlagArena.checkBorrow 1 [825]=some s2Step17Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step17F4FlagArena,s2Step17HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step17F4FlagArena,s2Step17HeadFvAfter,s2Step17Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17F4_owned : (819::784::((s2Step17Add0A++s2Step17Add1A)++(s2Step17Add0B++s2Step17Add1B))).toFinset⊆s2Step17HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadFvAfter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17F4_distinct : (819::784::824::825::((s2Step17Add0A++s2Step17Add1A)++(s2Step17Add0B++s2Step17Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17F4_apart : Disjoint (s2Step17Add0A++s2Step17Add0B).toFinset (s2Step17Add1A++s2Step17Add1B).toFinset := by
  have nd : ((s2Step17Add0A++s2Step17Add0B)++(s2Step17Add1A++s2Step17Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step17F4Plan : HmrHybridF4Plan := ⟨s2Step17F4FlagArena,[824],s2Step17Add0Arena,[825],s2Step17Add0During,s2Step17Add0Work,s2Step17Add1During,s2Step17Add1Work⟩
theorem s2Step17F4_checked : compileHmrHybridF4Log s2Step17HeadFvAfter 819 784 s2Step17Add0A s2Step17Add0B s2Step17Add1A s2Step17Add1B [824] [825] s2Step17Add0Work s2Step17Add1Work=some s2Step17F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step17HeadFvAfter s2Step17F4FlagArena s2Step17Add0Arena s2Step17Add0During s2Step17Add1During 819 784
    s2Step17Add0A s2Step17Add0B s2Step17Add1A s2Step17Add1B [824] [825] s2Step17Add0Work s2Step17Add1Work
    (fun q hq => s2Step17F4_owned (List.mem_toFinset.mpr hq)) s2Step17F4_flag s2Step17F4_carry
    s2Step17F4_distinct s2Step17F4_apart s2Step17Add0_checked s2Step17Add1_checked
def s2Step18F4FlagArena : Arena := ⟨s2Step18HeadFvAfter.live∪{826},Finset.union_subset s2Step18HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step18F4_flag : s2Step18HeadFvAfter.checkBorrow 1 [826]=some s2Step18F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step18HeadFvAfter,arenaWires]
  · rfl
theorem s2Step18F4_carry : s2Step18F4FlagArena.checkBorrow 1 [827]=some s2Step18Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step18F4FlagArena,s2Step18HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step18F4FlagArena,s2Step18HeadFvAfter,s2Step18Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18F4_owned : (821::782::((s2Step18Add0A++s2Step18Add1A)++(s2Step18Add0B++s2Step18Add1B))).toFinset⊆s2Step18HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18F4_distinct : (821::782::826::827::((s2Step18Add0A++s2Step18Add1A)++(s2Step18Add0B++s2Step18Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18F4_apart : Disjoint (s2Step18Add0A++s2Step18Add0B).toFinset (s2Step18Add1A++s2Step18Add1B).toFinset := by
  have nd : ((s2Step18Add0A++s2Step18Add0B)++(s2Step18Add1A++s2Step18Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step18F4Plan : HmrHybridF4Plan := ⟨s2Step18F4FlagArena,[826],s2Step18Add0Arena,[827],s2Step18Add0During,s2Step18Add0Work,s2Step18Add1During,s2Step18Add1Work⟩
theorem s2Step18F4_checked : compileHmrHybridF4Log s2Step18HeadFvAfter 821 782 s2Step18Add0A s2Step18Add0B s2Step18Add1A s2Step18Add1B [826] [827] s2Step18Add0Work s2Step18Add1Work=some s2Step18F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step18HeadFvAfter s2Step18F4FlagArena s2Step18Add0Arena s2Step18Add0During s2Step18Add1During 821 782
    s2Step18Add0A s2Step18Add0B s2Step18Add1A s2Step18Add1B [826] [827] s2Step18Add0Work s2Step18Add1Work
    (fun q hq => s2Step18F4_owned (List.mem_toFinset.mpr hq)) s2Step18F4_flag s2Step18F4_carry
    s2Step18F4_distinct s2Step18F4_apart s2Step18Add0_checked s2Step18Add1_checked
def s2Step19F4FlagArena : Arena := ⟨s2Step19HeadFvAfter.live∪{829},Finset.union_subset s2Step19HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step19F4_flag : s2Step19HeadFvAfter.checkBorrow 1 [829]=some s2Step19F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step19HeadFvAfter,arenaWires]
  · rfl
theorem s2Step19F4_carry : s2Step19F4FlagArena.checkBorrow 1 [830]=some s2Step19Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step19F4FlagArena,s2Step19HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step19F4FlagArena,s2Step19HeadFvAfter,s2Step19Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19F4_owned : (824::783::((s2Step19Add0A++s2Step19Add1A)++(s2Step19Add0B++s2Step19Add1B))).toFinset⊆s2Step19HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadFvAfter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19F4_distinct : (824::783::829::830::((s2Step19Add0A++s2Step19Add1A)++(s2Step19Add0B++s2Step19Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19F4_apart : Disjoint (s2Step19Add0A++s2Step19Add0B).toFinset (s2Step19Add1A++s2Step19Add1B).toFinset := by
  have nd : ((s2Step19Add0A++s2Step19Add0B)++(s2Step19Add1A++s2Step19Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step19F4Plan : HmrHybridF4Plan := ⟨s2Step19F4FlagArena,[829],s2Step19Add0Arena,[830],s2Step19Add0During,s2Step19Add0Work,s2Step19Add1During,s2Step19Add1Work⟩
theorem s2Step19F4_checked : compileHmrHybridF4Log s2Step19HeadFvAfter 824 783 s2Step19Add0A s2Step19Add0B s2Step19Add1A s2Step19Add1B [829] [830] s2Step19Add0Work s2Step19Add1Work=some s2Step19F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step19HeadFvAfter s2Step19F4FlagArena s2Step19Add0Arena s2Step19Add0During s2Step19Add1During 824 783
    s2Step19Add0A s2Step19Add0B s2Step19Add1A s2Step19Add1B [829] [830] s2Step19Add0Work s2Step19Add1Work
    (fun q hq => s2Step19F4_owned (List.mem_toFinset.mpr hq)) s2Step19F4_flag s2Step19F4_carry
    s2Step19F4_distinct s2Step19F4_apart s2Step19Add0_checked s2Step19Add1_checked
def s2Step20F4FlagArena : Arena := ⟨s2Step20HeadFvAfter.live∪{831},Finset.union_subset s2Step20HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step20F4_flag : s2Step20HeadFvAfter.checkBorrow 1 [831]=some s2Step20F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step20HeadFvAfter,arenaWires]
  · rfl
theorem s2Step20F4_carry : s2Step20F4FlagArena.checkBorrow 1 [832]=some s2Step20Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step20F4FlagArena,s2Step20HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step20F4FlagArena,s2Step20HeadFvAfter,s2Step20Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20F4_owned : (826::781::((s2Step20Add0A++s2Step20Add1A)++(s2Step20Add0B++s2Step20Add1B))).toFinset⊆s2Step20HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadFvAfter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20F4_distinct : (826::781::831::832::((s2Step20Add0A++s2Step20Add1A)++(s2Step20Add0B++s2Step20Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20F4_apart : Disjoint (s2Step20Add0A++s2Step20Add0B).toFinset (s2Step20Add1A++s2Step20Add1B).toFinset := by
  have nd : ((s2Step20Add0A++s2Step20Add0B)++(s2Step20Add1A++s2Step20Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step20F4Plan : HmrHybridF4Plan := ⟨s2Step20F4FlagArena,[831],s2Step20Add0Arena,[832],s2Step20Add0During,s2Step20Add0Work,s2Step20Add1During,s2Step20Add1Work⟩
theorem s2Step20F4_checked : compileHmrHybridF4Log s2Step20HeadFvAfter 826 781 s2Step20Add0A s2Step20Add0B s2Step20Add1A s2Step20Add1B [831] [832] s2Step20Add0Work s2Step20Add1Work=some s2Step20F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step20HeadFvAfter s2Step20F4FlagArena s2Step20Add0Arena s2Step20Add0During s2Step20Add1During 826 781
    s2Step20Add0A s2Step20Add0B s2Step20Add1A s2Step20Add1B [831] [832] s2Step20Add0Work s2Step20Add1Work
    (fun q hq => s2Step20F4_owned (List.mem_toFinset.mpr hq)) s2Step20F4_flag s2Step20F4_carry
    s2Step20F4_distinct s2Step20F4_apart s2Step20Add0_checked s2Step20Add1_checked
def s2Step21F4FlagArena : Arena := ⟨s2Step21HeadFvAfter.live∪{834},Finset.union_subset s2Step21HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step21F4_flag : s2Step21HeadFvAfter.checkBorrow 1 [834]=some s2Step21F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step21HeadFvAfter,arenaWires]
  · rfl
theorem s2Step21F4_carry : s2Step21F4FlagArena.checkBorrow 1 [835]=some s2Step21Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step21F4FlagArena,s2Step21HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step21F4FlagArena,s2Step21HeadFvAfter,s2Step21Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21F4_owned : (829::784::((s2Step21Add0A++s2Step21Add1A)++(s2Step21Add0B++s2Step21Add1B))).toFinset⊆s2Step21HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadFvAfter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21F4_distinct : (829::784::834::835::((s2Step21Add0A++s2Step21Add1A)++(s2Step21Add0B++s2Step21Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21F4_apart : Disjoint (s2Step21Add0A++s2Step21Add0B).toFinset (s2Step21Add1A++s2Step21Add1B).toFinset := by
  have nd : ((s2Step21Add0A++s2Step21Add0B)++(s2Step21Add1A++s2Step21Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step21F4Plan : HmrHybridF4Plan := ⟨s2Step21F4FlagArena,[834],s2Step21Add0Arena,[835],s2Step21Add0During,s2Step21Add0Work,s2Step21Add1During,s2Step21Add1Work⟩
theorem s2Step21F4_checked : compileHmrHybridF4Log s2Step21HeadFvAfter 829 784 s2Step21Add0A s2Step21Add0B s2Step21Add1A s2Step21Add1B [834] [835] s2Step21Add0Work s2Step21Add1Work=some s2Step21F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step21HeadFvAfter s2Step21F4FlagArena s2Step21Add0Arena s2Step21Add0During s2Step21Add1During 829 784
    s2Step21Add0A s2Step21Add0B s2Step21Add1A s2Step21Add1B [834] [835] s2Step21Add0Work s2Step21Add1Work
    (fun q hq => s2Step21F4_owned (List.mem_toFinset.mpr hq)) s2Step21F4_flag s2Step21F4_carry
    s2Step21F4_distinct s2Step21F4_apart s2Step21Add0_checked s2Step21Add1_checked
def s2Step22F4FlagArena : Arena := ⟨s2Step22HeadFvAfter.live∪{836},Finset.union_subset s2Step22HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step22F4_flag : s2Step22HeadFvAfter.checkBorrow 1 [836]=some s2Step22F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step22HeadFvAfter,arenaWires]
  · rfl
theorem s2Step22F4_carry : s2Step22F4FlagArena.checkBorrow 1 [837]=some s2Step22Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step22F4FlagArena,s2Step22HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step22F4FlagArena,s2Step22HeadFvAfter,s2Step22Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22F4_owned : (831::782::((s2Step22Add0A++s2Step22Add1A)++(s2Step22Add0B++s2Step22Add1B))).toFinset⊆s2Step22HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadFvAfter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22F4_distinct : (831::782::836::837::((s2Step22Add0A++s2Step22Add1A)++(s2Step22Add0B++s2Step22Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22F4_apart : Disjoint (s2Step22Add0A++s2Step22Add0B).toFinset (s2Step22Add1A++s2Step22Add1B).toFinset := by
  have nd : ((s2Step22Add0A++s2Step22Add0B)++(s2Step22Add1A++s2Step22Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step22F4Plan : HmrHybridF4Plan := ⟨s2Step22F4FlagArena,[836],s2Step22Add0Arena,[837],s2Step22Add0During,s2Step22Add0Work,s2Step22Add1During,s2Step22Add1Work⟩
theorem s2Step22F4_checked : compileHmrHybridF4Log s2Step22HeadFvAfter 831 782 s2Step22Add0A s2Step22Add0B s2Step22Add1A s2Step22Add1B [836] [837] s2Step22Add0Work s2Step22Add1Work=some s2Step22F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step22HeadFvAfter s2Step22F4FlagArena s2Step22Add0Arena s2Step22Add0During s2Step22Add1During 831 782
    s2Step22Add0A s2Step22Add0B s2Step22Add1A s2Step22Add1B [836] [837] s2Step22Add0Work s2Step22Add1Work
    (fun q hq => s2Step22F4_owned (List.mem_toFinset.mpr hq)) s2Step22F4_flag s2Step22F4_carry
    s2Step22F4_distinct s2Step22F4_apart s2Step22Add0_checked s2Step22Add1_checked
def s2Step23F4FlagArena : Arena := ⟨s2Step23HeadFvAfter.live∪{839},Finset.union_subset s2Step23HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step23F4_flag : s2Step23HeadFvAfter.checkBorrow 1 [839]=some s2Step23F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step23HeadFvAfter,arenaWires]
  · rfl
theorem s2Step23F4_carry : s2Step23F4FlagArena.checkBorrow 1 [840]=some s2Step23Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step23F4FlagArena,s2Step23HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step23F4FlagArena,s2Step23HeadFvAfter,s2Step23Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23F4_owned : (834::783::((s2Step23Add0A++s2Step23Add1A)++(s2Step23Add0B++s2Step23Add1B))).toFinset⊆s2Step23HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23F4_distinct : (834::783::839::840::((s2Step23Add0A++s2Step23Add1A)++(s2Step23Add0B++s2Step23Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23F4_apart : Disjoint (s2Step23Add0A++s2Step23Add0B).toFinset (s2Step23Add1A++s2Step23Add1B).toFinset := by
  have nd : ((s2Step23Add0A++s2Step23Add0B)++(s2Step23Add1A++s2Step23Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step23F4Plan : HmrHybridF4Plan := ⟨s2Step23F4FlagArena,[839],s2Step23Add0Arena,[840],s2Step23Add0During,s2Step23Add0Work,s2Step23Add1During,s2Step23Add1Work⟩
theorem s2Step23F4_checked : compileHmrHybridF4Log s2Step23HeadFvAfter 834 783 s2Step23Add0A s2Step23Add0B s2Step23Add1A s2Step23Add1B [839] [840] s2Step23Add0Work s2Step23Add1Work=some s2Step23F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step23HeadFvAfter s2Step23F4FlagArena s2Step23Add0Arena s2Step23Add0During s2Step23Add1During 834 783
    s2Step23Add0A s2Step23Add0B s2Step23Add1A s2Step23Add1B [839] [840] s2Step23Add0Work s2Step23Add1Work
    (fun q hq => s2Step23F4_owned (List.mem_toFinset.mpr hq)) s2Step23F4_flag s2Step23F4_carry
    s2Step23F4_distinct s2Step23F4_apart s2Step23Add0_checked s2Step23Add1_checked
def s2Step24F4FlagArena : Arena := ⟨s2Step24HeadFvAfter.live∪{841},Finset.union_subset s2Step24HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step24F4_flag : s2Step24HeadFvAfter.checkBorrow 1 [841]=some s2Step24F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24HeadFvAfter,arenaWires]
  · rfl
theorem s2Step24F4_carry : s2Step24F4FlagArena.checkBorrow 1 [842]=some s2Step24Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24F4FlagArena,s2Step24HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step24F4FlagArena,s2Step24HeadFvAfter,s2Step24Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24F4_owned : (836::781::((s2Step24Add0A++s2Step24Add1A)++(s2Step24Add0B++s2Step24Add1B))).toFinset⊆s2Step24HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24F4_distinct : (836::781::841::842::((s2Step24Add0A++s2Step24Add1A)++(s2Step24Add0B++s2Step24Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24F4_apart : Disjoint (s2Step24Add0A++s2Step24Add0B).toFinset (s2Step24Add1A++s2Step24Add1B).toFinset := by
  have nd : ((s2Step24Add0A++s2Step24Add0B)++(s2Step24Add1A++s2Step24Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step24F4Plan : HmrHybridF4Plan := ⟨s2Step24F4FlagArena,[841],s2Step24Add0Arena,[842],s2Step24Add0During,s2Step24Add0Work,s2Step24Add1During,s2Step24Add1Work⟩
theorem s2Step24F4_checked : compileHmrHybridF4Log s2Step24HeadFvAfter 836 781 s2Step24Add0A s2Step24Add0B s2Step24Add1A s2Step24Add1B [841] [842] s2Step24Add0Work s2Step24Add1Work=some s2Step24F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step24HeadFvAfter s2Step24F4FlagArena s2Step24Add0Arena s2Step24Add0During s2Step24Add1During 836 781
    s2Step24Add0A s2Step24Add0B s2Step24Add1A s2Step24Add1B [841] [842] s2Step24Add0Work s2Step24Add1Work
    (fun q hq => s2Step24F4_owned (List.mem_toFinset.mpr hq)) s2Step24F4_flag s2Step24F4_carry
    s2Step24F4_distinct s2Step24F4_apart s2Step24Add0_checked s2Step24Add1_checked
def s2Step25F4FlagArena : Arena := ⟨s2Step25HeadFvAfter.live∪{783},Finset.union_subset s2Step25HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step25F4_flag : s2Step25HeadFvAfter.checkBorrow 1 [783]=some s2Step25F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step25HeadFvAfter,arenaWires]
  · rfl
theorem s2Step25F4_carry : s2Step25F4FlagArena.checkBorrow 1 [782]=some s2Step25Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step25F4FlagArena,s2Step25HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step25F4FlagArena,s2Step25HeadFvAfter,s2Step25Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25F4_owned : (779::785::((s2Step25Add0A++s2Step25Add1A)++(s2Step25Add0B++s2Step25Add1B))).toFinset⊆s2Step25HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25F4_distinct : (779::785::783::782::((s2Step25Add0A++s2Step25Add1A)++(s2Step25Add0B++s2Step25Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25F4_apart : Disjoint (s2Step25Add0A++s2Step25Add0B).toFinset (s2Step25Add1A++s2Step25Add1B).toFinset := by
  have nd : ((s2Step25Add0A++s2Step25Add0B)++(s2Step25Add1A++s2Step25Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step25F4Plan : HmrHybridF4Plan := ⟨s2Step25F4FlagArena,[783],s2Step25Add0Arena,[782],s2Step25Add0During,s2Step25Add0Work,s2Step25Add1During,s2Step25Add1Work⟩
theorem s2Step25F4_checked : compileHmrHybridF4Log s2Step25HeadFvAfter 779 785 s2Step25Add0A s2Step25Add0B s2Step25Add1A s2Step25Add1B [783] [782] s2Step25Add0Work s2Step25Add1Work=some s2Step25F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step25HeadFvAfter s2Step25F4FlagArena s2Step25Add0Arena s2Step25Add0During s2Step25Add1During 779 785
    s2Step25Add0A s2Step25Add0B s2Step25Add1A s2Step25Add1B [783] [782] s2Step25Add0Work s2Step25Add1Work
    (fun q hq => s2Step25F4_owned (List.mem_toFinset.mpr hq)) s2Step25F4_flag s2Step25F4_carry
    s2Step25F4_distinct s2Step25F4_apart s2Step25Add0_checked s2Step25Add1_checked
def s2Step26F4FlagArena : Arena := ⟨s2Step26HeadFvAfter.live∪{841},Finset.union_subset s2Step26HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step26F4_flag : s2Step26HeadFvAfter.checkBorrow 1 [841]=some s2Step26F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step26HeadFvAfter,arenaWires]
  · rfl
theorem s2Step26F4_carry : s2Step26F4FlagArena.checkBorrow 1 [842]=some s2Step26Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step26F4FlagArena,s2Step26HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step26F4FlagArena,s2Step26HeadFvAfter,s2Step26Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26F4_owned : (840::839::((s2Step26Add0A++s2Step26Add1A)++(s2Step26Add0B++s2Step26Add1B))).toFinset⊆s2Step26HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26F4_distinct : (840::839::841::842::((s2Step26Add0A++s2Step26Add1A)++(s2Step26Add0B++s2Step26Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26F4_apart : Disjoint (s2Step26Add0A++s2Step26Add0B).toFinset (s2Step26Add1A++s2Step26Add1B).toFinset := by
  have nd : ((s2Step26Add0A++s2Step26Add0B)++(s2Step26Add1A++s2Step26Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step26F4Plan : HmrHybridF4Plan := ⟨s2Step26F4FlagArena,[841],s2Step26Add0Arena,[842],s2Step26Add0During,s2Step26Add0Work,s2Step26Add1During,s2Step26Add1Work⟩
theorem s2Step26F4_checked : compileHmrHybridF4Log s2Step26HeadFvAfter 840 839 s2Step26Add0A s2Step26Add0B s2Step26Add1A s2Step26Add1B [841] [842] s2Step26Add0Work s2Step26Add1Work=some s2Step26F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step26HeadFvAfter s2Step26F4FlagArena s2Step26Add0Arena s2Step26Add0During s2Step26Add1During 840 839
    s2Step26Add0A s2Step26Add0B s2Step26Add1A s2Step26Add1B [841] [842] s2Step26Add0Work s2Step26Add1Work
    (fun q hq => s2Step26F4_owned (List.mem_toFinset.mpr hq)) s2Step26F4_flag s2Step26F4_carry
    s2Step26F4_distinct s2Step26F4_apart s2Step26Add0_checked s2Step26Add1_checked
def s2Step27F4FlagArena : Arena := ⟨s2Step27HeadFvAfter.live∪{844},Finset.union_subset s2Step27HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step27F4_flag : s2Step27HeadFvAfter.checkBorrow 1 [844]=some s2Step27F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27HeadFvAfter,arenaWires]
  · rfl
theorem s2Step27F4_carry : s2Step27F4FlagArena.checkBorrow 1 [845]=some s2Step27Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27F4FlagArena,s2Step27HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step27F4FlagArena,s2Step27HeadFvAfter,s2Step27Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27F4_owned : (783::780::((s2Step27Add0A++s2Step27Add1A)++(s2Step27Add0B++s2Step27Add1B))).toFinset⊆s2Step27HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27F4_distinct : (783::780::844::845::((s2Step27Add0A++s2Step27Add1A)++(s2Step27Add0B++s2Step27Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27F4_apart : Disjoint (s2Step27Add0A++s2Step27Add0B).toFinset (s2Step27Add1A++s2Step27Add1B).toFinset := by
  have nd : ((s2Step27Add0A++s2Step27Add0B)++(s2Step27Add1A++s2Step27Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step27F4Plan : HmrHybridF4Plan := ⟨s2Step27F4FlagArena,[844],s2Step27Add0Arena,[845],s2Step27Add0During,s2Step27Add0Work,s2Step27Add1During,s2Step27Add1Work⟩
theorem s2Step27F4_checked : compileHmrHybridF4Log s2Step27HeadFvAfter 783 780 s2Step27Add0A s2Step27Add0B s2Step27Add1A s2Step27Add1B [844] [845] s2Step27Add0Work s2Step27Add1Work=some s2Step27F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step27HeadFvAfter s2Step27F4FlagArena s2Step27Add0Arena s2Step27Add0During s2Step27Add1During 783 780
    s2Step27Add0A s2Step27Add0B s2Step27Add1A s2Step27Add1B [844] [845] s2Step27Add0Work s2Step27Add1Work
    (fun q hq => s2Step27F4_owned (List.mem_toFinset.mpr hq)) s2Step27F4_flag s2Step27F4_carry
    s2Step27F4_distinct s2Step27F4_apart s2Step27Add0_checked s2Step27Add1_checked
def s2Step28F4FlagArena : Arena := ⟨s2Step28HeadFvAfter.live∪{844},Finset.union_subset s2Step28HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step28F4_flag : s2Step28HeadFvAfter.checkBorrow 1 [844]=some s2Step28F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step28HeadFvAfter,arenaWires]
  · rfl
theorem s2Step28F4_carry : s2Step28F4FlagArena.checkBorrow 1 [845]=some s2Step28Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step28F4FlagArena,s2Step28HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step28F4FlagArena,s2Step28HeadFvAfter,s2Step28Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28F4_owned : (787::779::((s2Step28Add0A++s2Step28Add1A)++(s2Step28Add0B++s2Step28Add1B))).toFinset⊆s2Step28HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28F4_distinct : (787::779::844::845::((s2Step28Add0A++s2Step28Add1A)++(s2Step28Add0B++s2Step28Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28F4_apart : Disjoint (s2Step28Add0A++s2Step28Add0B).toFinset (s2Step28Add1A++s2Step28Add1B).toFinset := by
  have nd : ((s2Step28Add0A++s2Step28Add0B)++(s2Step28Add1A++s2Step28Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step28F4Plan : HmrHybridF4Plan := ⟨s2Step28F4FlagArena,[844],s2Step28Add0Arena,[845],s2Step28Add0During,s2Step28Add0Work,s2Step28Add1During,s2Step28Add1Work⟩
theorem s2Step28F4_checked : compileHmrHybridF4Log s2Step28HeadFvAfter 787 779 s2Step28Add0A s2Step28Add0B s2Step28Add1A s2Step28Add1B [844] [845] s2Step28Add0Work s2Step28Add1Work=some s2Step28F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step28HeadFvAfter s2Step28F4FlagArena s2Step28Add0Arena s2Step28Add0During s2Step28Add1During 787 779
    s2Step28Add0A s2Step28Add0B s2Step28Add1A s2Step28Add1B [844] [845] s2Step28Add0Work s2Step28Add1Work
    (fun q hq => s2Step28F4_owned (List.mem_toFinset.mpr hq)) s2Step28F4_flag s2Step28F4_carry
    s2Step28F4_distinct s2Step28F4_apart s2Step28Add0_checked s2Step28Add1_checked
def s2Step29F4FlagArena : Arena := ⟨s2Step29HeadFvAfter.live∪{844},Finset.union_subset s2Step29HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step29F4_flag : s2Step29HeadFvAfter.checkBorrow 1 [844]=some s2Step29F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29HeadFvAfter,s2Step28HeadFvAfter,arenaWires]
  · rfl
theorem s2Step29F4_carry : s2Step29F4FlagArena.checkBorrow 1 [845]=some s2Step29Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29F4FlagArena,s2Step29HeadFvAfter,s2Step28HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step29F4FlagArena,s2Step29HeadFvAfter,s2Step28HeadFvAfter,s2Step29Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29F4_owned : (778::839::((s2Step29Add0A++s2Step29Add1A)++(s2Step29Add0B++s2Step29Add1B))).toFinset⊆s2Step29HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29F4_distinct : (778::839::844::845::((s2Step29Add0A++s2Step29Add1A)++(s2Step29Add0B++s2Step29Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29F4_apart : Disjoint (s2Step29Add0A++s2Step29Add0B).toFinset (s2Step29Add1A++s2Step29Add1B).toFinset := by
  have nd : ((s2Step29Add0A++s2Step29Add0B)++(s2Step29Add1A++s2Step29Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step29F4Plan : HmrHybridF4Plan := ⟨s2Step29F4FlagArena,[844],s2Step29Add0Arena,[845],s2Step29Add0During,s2Step29Add0Work,s2Step29Add1During,s2Step29Add1Work⟩
theorem s2Step29F4_checked : compileHmrHybridF4Log s2Step29HeadFvAfter 778 839 s2Step29Add0A s2Step29Add0B s2Step29Add1A s2Step29Add1B [844] [845] s2Step29Add0Work s2Step29Add1Work=some s2Step29F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step29HeadFvAfter s2Step29F4FlagArena s2Step29Add0Arena s2Step29Add0During s2Step29Add1During 778 839
    s2Step29Add0A s2Step29Add0B s2Step29Add1A s2Step29Add1B [844] [845] s2Step29Add0Work s2Step29Add1Work
    (fun q hq => s2Step29F4_owned (List.mem_toFinset.mpr hq)) s2Step29F4_flag s2Step29F4_carry
    s2Step29F4_distinct s2Step29F4_apart s2Step29Add0_checked s2Step29Add1_checked
def s2Step30F4FlagArena : Arena := ⟨s2Step30HeadFvAfter.live∪{844},Finset.union_subset s2Step30HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step30F4_flag : s2Step30HeadFvAfter.checkBorrow 1 [844]=some s2Step30F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step30HeadFvAfter,arenaWires]
  · rfl
theorem s2Step30F4_carry : s2Step30F4FlagArena.checkBorrow 1 [845]=some s2Step30Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step30F4FlagArena,s2Step30HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step30F4FlagArena,s2Step30HeadFvAfter,s2Step30Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30F4_owned : (789::787::((s2Step30Add0A++s2Step30Add1A)++(s2Step30Add0B++s2Step30Add1B))).toFinset⊆s2Step30HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30F4_distinct : (789::787::844::845::((s2Step30Add0A++s2Step30Add1A)++(s2Step30Add0B++s2Step30Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30F4_apart : Disjoint (s2Step30Add0A++s2Step30Add0B).toFinset (s2Step30Add1A++s2Step30Add1B).toFinset := by
  have nd : ((s2Step30Add0A++s2Step30Add0B)++(s2Step30Add1A++s2Step30Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step30F4Plan : HmrHybridF4Plan := ⟨s2Step30F4FlagArena,[844],s2Step30Add0Arena,[845],s2Step30Add0During,s2Step30Add0Work,s2Step30Add1During,s2Step30Add1Work⟩
theorem s2Step30F4_checked : compileHmrHybridF4Log s2Step30HeadFvAfter 789 787 s2Step30Add0A s2Step30Add0B s2Step30Add1A s2Step30Add1B [844] [845] s2Step30Add0Work s2Step30Add1Work=some s2Step30F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step30HeadFvAfter s2Step30F4FlagArena s2Step30Add0Arena s2Step30Add0During s2Step30Add1During 789 787
    s2Step30Add0A s2Step30Add0B s2Step30Add1A s2Step30Add1B [844] [845] s2Step30Add0Work s2Step30Add1Work
    (fun q hq => s2Step30F4_owned (List.mem_toFinset.mpr hq)) s2Step30F4_flag s2Step30F4_carry
    s2Step30F4_distinct s2Step30F4_apart s2Step30Add0_checked s2Step30Add1_checked
def s2Step31F4FlagArena : Arena := ⟨s2Step31HeadFvAfter.live∪{844},Finset.union_subset s2Step31HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step31F4_flag : s2Step31HeadFvAfter.checkBorrow 1 [844]=some s2Step31F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step31HeadFvAfter,s2Step30HeadFvAfter,arenaWires]
  · rfl
theorem s2Step31F4_carry : s2Step31F4FlagArena.checkBorrow 1 [845]=some s2Step31Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step31F4FlagArena,s2Step31HeadFvAfter,s2Step30HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step31F4FlagArena,s2Step31HeadFvAfter,s2Step30HeadFvAfter,s2Step31Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31F4_owned : (786::779::((s2Step31Add0A++s2Step31Add1A)++(s2Step31Add0B++s2Step31Add1B))).toFinset⊆s2Step31HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31F4_distinct : (786::779::844::845::((s2Step31Add0A++s2Step31Add1A)++(s2Step31Add0B++s2Step31Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31F4_apart : Disjoint (s2Step31Add0A++s2Step31Add0B).toFinset (s2Step31Add1A++s2Step31Add1B).toFinset := by
  have nd : ((s2Step31Add0A++s2Step31Add0B)++(s2Step31Add1A++s2Step31Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step31F4Plan : HmrHybridF4Plan := ⟨s2Step31F4FlagArena,[844],s2Step31Add0Arena,[845],s2Step31Add0During,s2Step31Add0Work,s2Step31Add1During,s2Step31Add1Work⟩
theorem s2Step31F4_checked : compileHmrHybridF4Log s2Step31HeadFvAfter 786 779 s2Step31Add0A s2Step31Add0B s2Step31Add1A s2Step31Add1B [844] [845] s2Step31Add0Work s2Step31Add1Work=some s2Step31F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step31HeadFvAfter s2Step31F4FlagArena s2Step31Add0Arena s2Step31Add0During s2Step31Add1During 786 779
    s2Step31Add0A s2Step31Add0B s2Step31Add1A s2Step31Add1B [844] [845] s2Step31Add0Work s2Step31Add1Work
    (fun q hq => s2Step31F4_owned (List.mem_toFinset.mpr hq)) s2Step31F4_flag s2Step31F4_carry
    s2Step31F4_distinct s2Step31F4_apart s2Step31Add0_checked s2Step31Add1_checked

end ECDSAAdd.Arithmetic.Paper935
