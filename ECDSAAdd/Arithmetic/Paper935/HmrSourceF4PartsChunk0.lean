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
def s2Step1F4FlagArena : Arena := ⟨s2Step1HeadFvAfter.live∪{788},Finset.union_subset s2Step1HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step1F4_flag : s2Step1HeadFvAfter.checkBorrow 1 [788]=some s2Step1F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step1HeadFvAfter,arenaWires]
  · rfl
theorem s2Step1F4_carry : s2Step1F4FlagArena.checkBorrow 1 [789]=some s2Step1Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step1F4FlagArena,s2Step1HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step1F4FlagArena,s2Step1HeadFvAfter,s2Step1Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1F4_owned : (778::784::((s2Step1Add0A++s2Step1Add1A)++(s2Step1Add0B++s2Step1Add1B))).toFinset⊆s2Step1HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1F4_distinct : (778::784::788::789::((s2Step1Add0A++s2Step1Add1A)++(s2Step1Add0B++s2Step1Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1F4_apart : Disjoint (s2Step1Add0A++s2Step1Add0B).toFinset (s2Step1Add1A++s2Step1Add1B).toFinset := by
  have nd : ((s2Step1Add0A++s2Step1Add0B)++(s2Step1Add1A++s2Step1Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step1F4Plan : HmrHybridF4Plan := ⟨s2Step1F4FlagArena,[788],s2Step1Add0Arena,[789],s2Step1Add0During,s2Step1Add0Work,s2Step1Add1During,s2Step1Add1Work⟩
theorem s2Step1F4_checked : compileHmrHybridF4Log s2Step1HeadFvAfter 778 784 s2Step1Add0A s2Step1Add0B s2Step1Add1A s2Step1Add1B [788] [789] s2Step1Add0Work s2Step1Add1Work=some s2Step1F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step1HeadFvAfter s2Step1F4FlagArena s2Step1Add0Arena s2Step1Add0During s2Step1Add1During 778 784
    s2Step1Add0A s2Step1Add0B s2Step1Add1A s2Step1Add1B [788] [789] s2Step1Add0Work s2Step1Add1Work
    (fun q hq => s2Step1F4_owned (List.mem_toFinset.mpr hq)) s2Step1F4_flag s2Step1F4_carry
    s2Step1F4_distinct s2Step1F4_apart s2Step1Add0_checked s2Step1Add1_checked
def s2Step2F4FlagArena : Arena := ⟨s2Step2HeadFvAfter.live∪{790},Finset.union_subset s2Step2HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step2F4_flag : s2Step2HeadFvAfter.checkBorrow 1 [790]=some s2Step2F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step2HeadFvAfter,arenaWires]
  · rfl
theorem s2Step2F4_carry : s2Step2F4FlagArena.checkBorrow 1 [791]=some s2Step2Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step2F4FlagArena,s2Step2HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step2F4FlagArena,s2Step2HeadFvAfter,s2Step2Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2F4_owned : (786::782::((s2Step2Add0A++s2Step2Add1A)++(s2Step2Add0B++s2Step2Add1B))).toFinset⊆s2Step2HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2F4_distinct : (786::782::790::791::((s2Step2Add0A++s2Step2Add1A)++(s2Step2Add0B++s2Step2Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2F4_apart : Disjoint (s2Step2Add0A++s2Step2Add0B).toFinset (s2Step2Add1A++s2Step2Add1B).toFinset := by
  have nd : ((s2Step2Add0A++s2Step2Add0B)++(s2Step2Add1A++s2Step2Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step2F4Plan : HmrHybridF4Plan := ⟨s2Step2F4FlagArena,[790],s2Step2Add0Arena,[791],s2Step2Add0During,s2Step2Add0Work,s2Step2Add1During,s2Step2Add1Work⟩
theorem s2Step2F4_checked : compileHmrHybridF4Log s2Step2HeadFvAfter 786 782 s2Step2Add0A s2Step2Add0B s2Step2Add1A s2Step2Add1B [790] [791] s2Step2Add0Work s2Step2Add1Work=some s2Step2F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step2HeadFvAfter s2Step2F4FlagArena s2Step2Add0Arena s2Step2Add0During s2Step2Add1During 786 782
    s2Step2Add0A s2Step2Add0B s2Step2Add1A s2Step2Add1B [790] [791] s2Step2Add0Work s2Step2Add1Work
    (fun q hq => s2Step2F4_owned (List.mem_toFinset.mpr hq)) s2Step2F4_flag s2Step2F4_carry
    s2Step2F4_distinct s2Step2F4_apart s2Step2Add0_checked s2Step2Add1_checked
def s2Step3F4FlagArena : Arena := ⟨s2Step3HeadFvAfter.live∪{792},Finset.union_subset s2Step3HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step3F4_flag : s2Step3HeadFvAfter.checkBorrow 1 [792]=some s2Step3F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step3HeadFvAfter,arenaWires]
  · rfl
theorem s2Step3F4_carry : s2Step3F4FlagArena.checkBorrow 1 [793]=some s2Step3Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step3F4FlagArena,s2Step3HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step3F4FlagArena,s2Step3HeadFvAfter,s2Step3Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3F4_owned : (788::783::((s2Step3Add0A++s2Step3Add1A)++(s2Step3Add0B++s2Step3Add1B))).toFinset⊆s2Step3HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3F4_distinct : (788::783::792::793::((s2Step3Add0A++s2Step3Add1A)++(s2Step3Add0B++s2Step3Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3F4_apart : Disjoint (s2Step3Add0A++s2Step3Add0B).toFinset (s2Step3Add1A++s2Step3Add1B).toFinset := by
  have nd : ((s2Step3Add0A++s2Step3Add0B)++(s2Step3Add1A++s2Step3Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step3F4Plan : HmrHybridF4Plan := ⟨s2Step3F4FlagArena,[792],s2Step3Add0Arena,[793],s2Step3Add0During,s2Step3Add0Work,s2Step3Add1During,s2Step3Add1Work⟩
theorem s2Step3F4_checked : compileHmrHybridF4Log s2Step3HeadFvAfter 788 783 s2Step3Add0A s2Step3Add0B s2Step3Add1A s2Step3Add1B [792] [793] s2Step3Add0Work s2Step3Add1Work=some s2Step3F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step3HeadFvAfter s2Step3F4FlagArena s2Step3Add0Arena s2Step3Add0During s2Step3Add1During 788 783
    s2Step3Add0A s2Step3Add0B s2Step3Add1A s2Step3Add1B [792] [793] s2Step3Add0Work s2Step3Add1Work
    (fun q hq => s2Step3F4_owned (List.mem_toFinset.mpr hq)) s2Step3F4_flag s2Step3F4_carry
    s2Step3F4_distinct s2Step3F4_apart s2Step3Add0_checked s2Step3Add1_checked
def s2Step4F4FlagArena : Arena := ⟨s2Step4HeadFvAfter.live∪{794},Finset.union_subset s2Step4HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step4F4_flag : s2Step4HeadFvAfter.checkBorrow 1 [794]=some s2Step4F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step4HeadFvAfter,arenaWires]
  · rfl
theorem s2Step4F4_carry : s2Step4F4FlagArena.checkBorrow 1 [796]=some s2Step4Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step4F4FlagArena,s2Step4HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step4F4FlagArena,s2Step4HeadFvAfter,s2Step4Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4F4_owned : (790::781::((s2Step4Add0A++s2Step4Add1A)++(s2Step4Add0B++s2Step4Add1B))).toFinset⊆s2Step4HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4F4_distinct : (790::781::794::796::((s2Step4Add0A++s2Step4Add1A)++(s2Step4Add0B++s2Step4Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4F4_apart : Disjoint (s2Step4Add0A++s2Step4Add0B).toFinset (s2Step4Add1A++s2Step4Add1B).toFinset := by
  have nd : ((s2Step4Add0A++s2Step4Add0B)++(s2Step4Add1A++s2Step4Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step4F4Plan : HmrHybridF4Plan := ⟨s2Step4F4FlagArena,[794],s2Step4Add0Arena,[796],s2Step4Add0During,s2Step4Add0Work,s2Step4Add1During,s2Step4Add1Work⟩
theorem s2Step4F4_checked : compileHmrHybridF4Log s2Step4HeadFvAfter 790 781 s2Step4Add0A s2Step4Add0B s2Step4Add1A s2Step4Add1B [794] [796] s2Step4Add0Work s2Step4Add1Work=some s2Step4F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step4HeadFvAfter s2Step4F4FlagArena s2Step4Add0Arena s2Step4Add0During s2Step4Add1During 790 781
    s2Step4Add0A s2Step4Add0B s2Step4Add1A s2Step4Add1B [794] [796] s2Step4Add0Work s2Step4Add1Work
    (fun q hq => s2Step4F4_owned (List.mem_toFinset.mpr hq)) s2Step4F4_flag s2Step4F4_carry
    s2Step4F4_distinct s2Step4F4_apart s2Step4Add0_checked s2Step4Add1_checked
def s2Step5F4FlagArena : Arena := ⟨s2Step5HeadFvAfter.live∪{797},Finset.union_subset s2Step5HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step5F4_flag : s2Step5HeadFvAfter.checkBorrow 1 [797]=some s2Step5F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step5HeadFvAfter,arenaWires]
  · rfl
theorem s2Step5F4_carry : s2Step5F4FlagArena.checkBorrow 1 [798]=some s2Step5Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step5F4FlagArena,s2Step5HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step5F4FlagArena,s2Step5HeadFvAfter,s2Step5Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5F4_owned : (792::784::((s2Step5Add0A++s2Step5Add1A)++(s2Step5Add0B++s2Step5Add1B))).toFinset⊆s2Step5HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadFvAfter (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5F4_distinct : (792::784::797::798::((s2Step5Add0A++s2Step5Add1A)++(s2Step5Add0B++s2Step5Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5F4_apart : Disjoint (s2Step5Add0A++s2Step5Add0B).toFinset (s2Step5Add1A++s2Step5Add1B).toFinset := by
  have nd : ((s2Step5Add0A++s2Step5Add0B)++(s2Step5Add1A++s2Step5Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step5F4Plan : HmrHybridF4Plan := ⟨s2Step5F4FlagArena,[797],s2Step5Add0Arena,[798],s2Step5Add0During,s2Step5Add0Work,s2Step5Add1During,s2Step5Add1Work⟩
theorem s2Step5F4_checked : compileHmrHybridF4Log s2Step5HeadFvAfter 792 784 s2Step5Add0A s2Step5Add0B s2Step5Add1A s2Step5Add1B [797] [798] s2Step5Add0Work s2Step5Add1Work=some s2Step5F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step5HeadFvAfter s2Step5F4FlagArena s2Step5Add0Arena s2Step5Add0During s2Step5Add1During 792 784
    s2Step5Add0A s2Step5Add0B s2Step5Add1A s2Step5Add1B [797] [798] s2Step5Add0Work s2Step5Add1Work
    (fun q hq => s2Step5F4_owned (List.mem_toFinset.mpr hq)) s2Step5F4_flag s2Step5F4_carry
    s2Step5F4_distinct s2Step5F4_apart s2Step5Add0_checked s2Step5Add1_checked
def s2Step6F4FlagArena : Arena := ⟨s2Step6HeadFvAfter.live∪{799},Finset.union_subset s2Step6HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step6F4_flag : s2Step6HeadFvAfter.checkBorrow 1 [799]=some s2Step6F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step6HeadFvAfter,arenaWires]
  · rfl
theorem s2Step6F4_carry : s2Step6F4FlagArena.checkBorrow 1 [800]=some s2Step6Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step6F4FlagArena,s2Step6HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step6F4FlagArena,s2Step6HeadFvAfter,s2Step6Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6F4_owned : (794::782::((s2Step6Add0A++s2Step6Add1A)++(s2Step6Add0B++s2Step6Add1B))).toFinset⊆s2Step6HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadFvAfter (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6F4_distinct : (794::782::799::800::((s2Step6Add0A++s2Step6Add1A)++(s2Step6Add0B++s2Step6Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6F4_apart : Disjoint (s2Step6Add0A++s2Step6Add0B).toFinset (s2Step6Add1A++s2Step6Add1B).toFinset := by
  have nd : ((s2Step6Add0A++s2Step6Add0B)++(s2Step6Add1A++s2Step6Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step6F4Plan : HmrHybridF4Plan := ⟨s2Step6F4FlagArena,[799],s2Step6Add0Arena,[800],s2Step6Add0During,s2Step6Add0Work,s2Step6Add1During,s2Step6Add1Work⟩
theorem s2Step6F4_checked : compileHmrHybridF4Log s2Step6HeadFvAfter 794 782 s2Step6Add0A s2Step6Add0B s2Step6Add1A s2Step6Add1B [799] [800] s2Step6Add0Work s2Step6Add1Work=some s2Step6F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step6HeadFvAfter s2Step6F4FlagArena s2Step6Add0Arena s2Step6Add0During s2Step6Add1During 794 782
    s2Step6Add0A s2Step6Add0B s2Step6Add1A s2Step6Add1B [799] [800] s2Step6Add0Work s2Step6Add1Work
    (fun q hq => s2Step6F4_owned (List.mem_toFinset.mpr hq)) s2Step6F4_flag s2Step6F4_carry
    s2Step6F4_distinct s2Step6F4_apart s2Step6Add0_checked s2Step6Add1_checked
def s2Step7F4FlagArena : Arena := ⟨s2Step7HeadFvAfter.live∪{801},Finset.union_subset s2Step7HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step7F4_flag : s2Step7HeadFvAfter.checkBorrow 1 [801]=some s2Step7F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step7HeadFvAfter,arenaWires]
  · rfl
theorem s2Step7F4_carry : s2Step7F4FlagArena.checkBorrow 1 [802]=some s2Step7Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step7F4FlagArena,s2Step7HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step7F4FlagArena,s2Step7HeadFvAfter,s2Step7Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7F4_owned : (797::783::((s2Step7Add0A++s2Step7Add1A)++(s2Step7Add0B++s2Step7Add1B))).toFinset⊆s2Step7HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadFvAfter (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7F4_distinct : (797::783::801::802::((s2Step7Add0A++s2Step7Add1A)++(s2Step7Add0B++s2Step7Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7F4_apart : Disjoint (s2Step7Add0A++s2Step7Add0B).toFinset (s2Step7Add1A++s2Step7Add1B).toFinset := by
  have nd : ((s2Step7Add0A++s2Step7Add0B)++(s2Step7Add1A++s2Step7Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step7F4Plan : HmrHybridF4Plan := ⟨s2Step7F4FlagArena,[801],s2Step7Add0Arena,[802],s2Step7Add0During,s2Step7Add0Work,s2Step7Add1During,s2Step7Add1Work⟩
theorem s2Step7F4_checked : compileHmrHybridF4Log s2Step7HeadFvAfter 797 783 s2Step7Add0A s2Step7Add0B s2Step7Add1A s2Step7Add1B [801] [802] s2Step7Add0Work s2Step7Add1Work=some s2Step7F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step7HeadFvAfter s2Step7F4FlagArena s2Step7Add0Arena s2Step7Add0During s2Step7Add1During 797 783
    s2Step7Add0A s2Step7Add0B s2Step7Add1A s2Step7Add1B [801] [802] s2Step7Add0Work s2Step7Add1Work
    (fun q hq => s2Step7F4_owned (List.mem_toFinset.mpr hq)) s2Step7F4_flag s2Step7F4_carry
    s2Step7F4_distinct s2Step7F4_apart s2Step7Add0_checked s2Step7Add1_checked
def s2Step8F4FlagArena : Arena := ⟨s2Step8HeadFvAfter.live∪{803},Finset.union_subset s2Step8HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step8F4_flag : s2Step8HeadFvAfter.checkBorrow 1 [803]=some s2Step8F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step8HeadFvAfter,arenaWires]
  · rfl
theorem s2Step8F4_carry : s2Step8F4FlagArena.checkBorrow 1 [804]=some s2Step8Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step8F4FlagArena,s2Step8HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step8F4FlagArena,s2Step8HeadFvAfter,s2Step8Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8F4_owned : (799::781::((s2Step8Add0A++s2Step8Add1A)++(s2Step8Add0B++s2Step8Add1B))).toFinset⊆s2Step8HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadFvAfter (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8F4_distinct : (799::781::803::804::((s2Step8Add0A++s2Step8Add1A)++(s2Step8Add0B++s2Step8Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8F4_apart : Disjoint (s2Step8Add0A++s2Step8Add0B).toFinset (s2Step8Add1A++s2Step8Add1B).toFinset := by
  have nd : ((s2Step8Add0A++s2Step8Add0B)++(s2Step8Add1A++s2Step8Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step8F4Plan : HmrHybridF4Plan := ⟨s2Step8F4FlagArena,[803],s2Step8Add0Arena,[804],s2Step8Add0During,s2Step8Add0Work,s2Step8Add1During,s2Step8Add1Work⟩
theorem s2Step8F4_checked : compileHmrHybridF4Log s2Step8HeadFvAfter 799 781 s2Step8Add0A s2Step8Add0B s2Step8Add1A s2Step8Add1B [803] [804] s2Step8Add0Work s2Step8Add1Work=some s2Step8F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step8HeadFvAfter s2Step8F4FlagArena s2Step8Add0Arena s2Step8Add0During s2Step8Add1During 799 781
    s2Step8Add0A s2Step8Add0B s2Step8Add1A s2Step8Add1B [803] [804] s2Step8Add0Work s2Step8Add1Work
    (fun q hq => s2Step8F4_owned (List.mem_toFinset.mpr hq)) s2Step8F4_flag s2Step8F4_carry
    s2Step8F4_distinct s2Step8F4_apart s2Step8Add0_checked s2Step8Add1_checked
def s2Step9F4FlagArena : Arena := ⟨s2Step9HeadFvAfter.live∪{805},Finset.union_subset s2Step9HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step9F4_flag : s2Step9HeadFvAfter.checkBorrow 1 [805]=some s2Step9F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step9HeadFvAfter,arenaWires]
  · rfl
theorem s2Step9F4_carry : s2Step9F4FlagArena.checkBorrow 1 [806]=some s2Step9Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step9F4FlagArena,s2Step9HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step9F4FlagArena,s2Step9HeadFvAfter,s2Step9Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9F4_owned : (801::784::((s2Step9Add0A++s2Step9Add1A)++(s2Step9Add0B++s2Step9Add1B))).toFinset⊆s2Step9HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadFvAfter (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9F4_distinct : (801::784::805::806::((s2Step9Add0A++s2Step9Add1A)++(s2Step9Add0B++s2Step9Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9F4_apart : Disjoint (s2Step9Add0A++s2Step9Add0B).toFinset (s2Step9Add1A++s2Step9Add1B).toFinset := by
  have nd : ((s2Step9Add0A++s2Step9Add0B)++(s2Step9Add1A++s2Step9Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step9F4Plan : HmrHybridF4Plan := ⟨s2Step9F4FlagArena,[805],s2Step9Add0Arena,[806],s2Step9Add0During,s2Step9Add0Work,s2Step9Add1During,s2Step9Add1Work⟩
theorem s2Step9F4_checked : compileHmrHybridF4Log s2Step9HeadFvAfter 801 784 s2Step9Add0A s2Step9Add0B s2Step9Add1A s2Step9Add1B [805] [806] s2Step9Add0Work s2Step9Add1Work=some s2Step9F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step9HeadFvAfter s2Step9F4FlagArena s2Step9Add0Arena s2Step9Add0During s2Step9Add1During 801 784
    s2Step9Add0A s2Step9Add0B s2Step9Add1A s2Step9Add1B [805] [806] s2Step9Add0Work s2Step9Add1Work
    (fun q hq => s2Step9F4_owned (List.mem_toFinset.mpr hq)) s2Step9F4_flag s2Step9F4_carry
    s2Step9F4_distinct s2Step9F4_apart s2Step9Add0_checked s2Step9Add1_checked
def s2Step10F4FlagArena : Arena := ⟨s2Step10HeadFvAfter.live∪{807},Finset.union_subset s2Step10HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step10F4_flag : s2Step10HeadFvAfter.checkBorrow 1 [807]=some s2Step10F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step10HeadFvAfter,arenaWires]
  · rfl
theorem s2Step10F4_carry : s2Step10F4FlagArena.checkBorrow 1 [808]=some s2Step10Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step10F4FlagArena,s2Step10HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step10F4FlagArena,s2Step10HeadFvAfter,s2Step10Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10F4_owned : (803::782::((s2Step10Add0A++s2Step10Add1A)++(s2Step10Add0B++s2Step10Add1B))).toFinset⊆s2Step10HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10F4_distinct : (803::782::807::808::((s2Step10Add0A++s2Step10Add1A)++(s2Step10Add0B++s2Step10Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10F4_apart : Disjoint (s2Step10Add0A++s2Step10Add0B).toFinset (s2Step10Add1A++s2Step10Add1B).toFinset := by
  have nd : ((s2Step10Add0A++s2Step10Add0B)++(s2Step10Add1A++s2Step10Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step10F4Plan : HmrHybridF4Plan := ⟨s2Step10F4FlagArena,[807],s2Step10Add0Arena,[808],s2Step10Add0During,s2Step10Add0Work,s2Step10Add1During,s2Step10Add1Work⟩
theorem s2Step10F4_checked : compileHmrHybridF4Log s2Step10HeadFvAfter 803 782 s2Step10Add0A s2Step10Add0B s2Step10Add1A s2Step10Add1B [807] [808] s2Step10Add0Work s2Step10Add1Work=some s2Step10F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step10HeadFvAfter s2Step10F4FlagArena s2Step10Add0Arena s2Step10Add0During s2Step10Add1During 803 782
    s2Step10Add0A s2Step10Add0B s2Step10Add1A s2Step10Add1B [807] [808] s2Step10Add0Work s2Step10Add1Work
    (fun q hq => s2Step10F4_owned (List.mem_toFinset.mpr hq)) s2Step10F4_flag s2Step10F4_carry
    s2Step10F4_distinct s2Step10F4_apart s2Step10Add0_checked s2Step10Add1_checked
def s2Step11F4FlagArena : Arena := ⟨s2Step11HeadFvAfter.live∪{809},Finset.union_subset s2Step11HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step11F4_flag : s2Step11HeadFvAfter.checkBorrow 1 [809]=some s2Step11F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step11HeadFvAfter,arenaWires]
  · rfl
theorem s2Step11F4_carry : s2Step11F4FlagArena.checkBorrow 1 [810]=some s2Step11Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step11F4FlagArena,s2Step11HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step11F4FlagArena,s2Step11HeadFvAfter,s2Step11Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11F4_owned : (805::783::((s2Step11Add0A++s2Step11Add1A)++(s2Step11Add0B++s2Step11Add1B))).toFinset⊆s2Step11HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11F4_distinct : (805::783::809::810::((s2Step11Add0A++s2Step11Add1A)++(s2Step11Add0B++s2Step11Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11F4_apart : Disjoint (s2Step11Add0A++s2Step11Add0B).toFinset (s2Step11Add1A++s2Step11Add1B).toFinset := by
  have nd : ((s2Step11Add0A++s2Step11Add0B)++(s2Step11Add1A++s2Step11Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step11F4Plan : HmrHybridF4Plan := ⟨s2Step11F4FlagArena,[809],s2Step11Add0Arena,[810],s2Step11Add0During,s2Step11Add0Work,s2Step11Add1During,s2Step11Add1Work⟩
theorem s2Step11F4_checked : compileHmrHybridF4Log s2Step11HeadFvAfter 805 783 s2Step11Add0A s2Step11Add0B s2Step11Add1A s2Step11Add1B [809] [810] s2Step11Add0Work s2Step11Add1Work=some s2Step11F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step11HeadFvAfter s2Step11F4FlagArena s2Step11Add0Arena s2Step11Add0During s2Step11Add1During 805 783
    s2Step11Add0A s2Step11Add0B s2Step11Add1A s2Step11Add1B [809] [810] s2Step11Add0Work s2Step11Add1Work
    (fun q hq => s2Step11F4_owned (List.mem_toFinset.mpr hq)) s2Step11F4_flag s2Step11F4_carry
    s2Step11F4_distinct s2Step11F4_apart s2Step11Add0_checked s2Step11Add1_checked
def s2Step12F4FlagArena : Arena := ⟨s2Step12HeadFvAfter.live∪{811},Finset.union_subset s2Step12HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step12F4_flag : s2Step12HeadFvAfter.checkBorrow 1 [811]=some s2Step12F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step12HeadFvAfter,arenaWires]
  · rfl
theorem s2Step12F4_carry : s2Step12F4FlagArena.checkBorrow 1 [812]=some s2Step12Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step12F4FlagArena,s2Step12HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step12F4FlagArena,s2Step12HeadFvAfter,s2Step12Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12F4_owned : (807::781::((s2Step12Add0A++s2Step12Add1A)++(s2Step12Add0B++s2Step12Add1B))).toFinset⊆s2Step12HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12F4_distinct : (807::781::811::812::((s2Step12Add0A++s2Step12Add1A)++(s2Step12Add0B++s2Step12Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12F4_apart : Disjoint (s2Step12Add0A++s2Step12Add0B).toFinset (s2Step12Add1A++s2Step12Add1B).toFinset := by
  have nd : ((s2Step12Add0A++s2Step12Add0B)++(s2Step12Add1A++s2Step12Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step12F4Plan : HmrHybridF4Plan := ⟨s2Step12F4FlagArena,[811],s2Step12Add0Arena,[812],s2Step12Add0During,s2Step12Add0Work,s2Step12Add1During,s2Step12Add1Work⟩
theorem s2Step12F4_checked : compileHmrHybridF4Log s2Step12HeadFvAfter 807 781 s2Step12Add0A s2Step12Add0B s2Step12Add1A s2Step12Add1B [811] [812] s2Step12Add0Work s2Step12Add1Work=some s2Step12F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step12HeadFvAfter s2Step12F4FlagArena s2Step12Add0Arena s2Step12Add0During s2Step12Add1During 807 781
    s2Step12Add0A s2Step12Add0B s2Step12Add1A s2Step12Add1B [811] [812] s2Step12Add0Work s2Step12Add1Work
    (fun q hq => s2Step12F4_owned (List.mem_toFinset.mpr hq)) s2Step12F4_flag s2Step12F4_carry
    s2Step12F4_distinct s2Step12F4_apart s2Step12Add0_checked s2Step12Add1_checked
def s2Step13F4FlagArena : Arena := ⟨s2Step13HeadFvAfter.live∪{814},Finset.union_subset s2Step13HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step13F4_flag : s2Step13HeadFvAfter.checkBorrow 1 [814]=some s2Step13F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step13HeadFvAfter,arenaWires]
  · rfl
theorem s2Step13F4_carry : s2Step13F4FlagArena.checkBorrow 1 [815]=some s2Step13Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step13F4FlagArena,s2Step13HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step13F4FlagArena,s2Step13HeadFvAfter,s2Step13Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13F4_owned : (809::784::((s2Step13Add0A++s2Step13Add1A)++(s2Step13Add0B++s2Step13Add1B))).toFinset⊆s2Step13HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13F4_distinct : (809::784::814::815::((s2Step13Add0A++s2Step13Add1A)++(s2Step13Add0B++s2Step13Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13F4_apart : Disjoint (s2Step13Add0A++s2Step13Add0B).toFinset (s2Step13Add1A++s2Step13Add1B).toFinset := by
  have nd : ((s2Step13Add0A++s2Step13Add0B)++(s2Step13Add1A++s2Step13Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step13F4Plan : HmrHybridF4Plan := ⟨s2Step13F4FlagArena,[814],s2Step13Add0Arena,[815],s2Step13Add0During,s2Step13Add0Work,s2Step13Add1During,s2Step13Add1Work⟩
theorem s2Step13F4_checked : compileHmrHybridF4Log s2Step13HeadFvAfter 809 784 s2Step13Add0A s2Step13Add0B s2Step13Add1A s2Step13Add1B [814] [815] s2Step13Add0Work s2Step13Add1Work=some s2Step13F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step13HeadFvAfter s2Step13F4FlagArena s2Step13Add0Arena s2Step13Add0During s2Step13Add1During 809 784
    s2Step13Add0A s2Step13Add0B s2Step13Add1A s2Step13Add1B [814] [815] s2Step13Add0Work s2Step13Add1Work
    (fun q hq => s2Step13F4_owned (List.mem_toFinset.mpr hq)) s2Step13F4_flag s2Step13F4_carry
    s2Step13F4_distinct s2Step13F4_apart s2Step13Add0_checked s2Step13Add1_checked
def s2Step14F4FlagArena : Arena := ⟨s2Step14HeadFvAfter.live∪{816},Finset.union_subset s2Step14HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step14F4_flag : s2Step14HeadFvAfter.checkBorrow 1 [816]=some s2Step14F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step14HeadFvAfter,arenaWires]
  · rfl
theorem s2Step14F4_carry : s2Step14F4FlagArena.checkBorrow 1 [817]=some s2Step14Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step14F4FlagArena,s2Step14HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step14F4FlagArena,s2Step14HeadFvAfter,s2Step14Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14F4_owned : (811::782::((s2Step14Add0A++s2Step14Add1A)++(s2Step14Add0B++s2Step14Add1B))).toFinset⊆s2Step14HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14F4_distinct : (811::782::816::817::((s2Step14Add0A++s2Step14Add1A)++(s2Step14Add0B++s2Step14Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14F4_apart : Disjoint (s2Step14Add0A++s2Step14Add0B).toFinset (s2Step14Add1A++s2Step14Add1B).toFinset := by
  have nd : ((s2Step14Add0A++s2Step14Add0B)++(s2Step14Add1A++s2Step14Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step14F4Plan : HmrHybridF4Plan := ⟨s2Step14F4FlagArena,[816],s2Step14Add0Arena,[817],s2Step14Add0During,s2Step14Add0Work,s2Step14Add1During,s2Step14Add1Work⟩
theorem s2Step14F4_checked : compileHmrHybridF4Log s2Step14HeadFvAfter 811 782 s2Step14Add0A s2Step14Add0B s2Step14Add1A s2Step14Add1B [816] [817] s2Step14Add0Work s2Step14Add1Work=some s2Step14F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step14HeadFvAfter s2Step14F4FlagArena s2Step14Add0Arena s2Step14Add0During s2Step14Add1During 811 782
    s2Step14Add0A s2Step14Add0B s2Step14Add1A s2Step14Add1B [816] [817] s2Step14Add0Work s2Step14Add1Work
    (fun q hq => s2Step14F4_owned (List.mem_toFinset.mpr hq)) s2Step14F4_flag s2Step14F4_carry
    s2Step14F4_distinct s2Step14F4_apart s2Step14Add0_checked s2Step14Add1_checked
def s2Step15F4FlagArena : Arena := ⟨s2Step15HeadFvAfter.live∪{819},Finset.union_subset s2Step15HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step15F4_flag : s2Step15HeadFvAfter.checkBorrow 1 [819]=some s2Step15F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step15HeadFvAfter,arenaWires]
  · rfl
theorem s2Step15F4_carry : s2Step15F4FlagArena.checkBorrow 1 [820]=some s2Step15Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step15F4FlagArena,s2Step15HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step15F4FlagArena,s2Step15HeadFvAfter,s2Step15Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15F4_owned : (814::783::((s2Step15Add0A++s2Step15Add1A)++(s2Step15Add0B++s2Step15Add1B))).toFinset⊆s2Step15HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadFvAfter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15F4_distinct : (814::783::819::820::((s2Step15Add0A++s2Step15Add1A)++(s2Step15Add0B++s2Step15Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15F4_apart : Disjoint (s2Step15Add0A++s2Step15Add0B).toFinset (s2Step15Add1A++s2Step15Add1B).toFinset := by
  have nd : ((s2Step15Add0A++s2Step15Add0B)++(s2Step15Add1A++s2Step15Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step15F4Plan : HmrHybridF4Plan := ⟨s2Step15F4FlagArena,[819],s2Step15Add0Arena,[820],s2Step15Add0During,s2Step15Add0Work,s2Step15Add1During,s2Step15Add1Work⟩
theorem s2Step15F4_checked : compileHmrHybridF4Log s2Step15HeadFvAfter 814 783 s2Step15Add0A s2Step15Add0B s2Step15Add1A s2Step15Add1B [819] [820] s2Step15Add0Work s2Step15Add1Work=some s2Step15F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step15HeadFvAfter s2Step15F4FlagArena s2Step15Add0Arena s2Step15Add0During s2Step15Add1During 814 783
    s2Step15Add0A s2Step15Add0B s2Step15Add1A s2Step15Add1B [819] [820] s2Step15Add0Work s2Step15Add1Work
    (fun q hq => s2Step15F4_owned (List.mem_toFinset.mpr hq)) s2Step15F4_flag s2Step15F4_carry
    s2Step15F4_distinct s2Step15F4_apart s2Step15Add0_checked s2Step15Add1_checked

end ECDSAAdd.Arithmetic.Paper935
