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
def s6Step1F4FlagArena : Arena := ⟨s6Step1HeadFvAfter.live∪{927},Finset.union_subset s6Step1HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step1F4_flag : s6Step1HeadFvAfter.checkBorrow 1 [927]=some s6Step1F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step1HeadFvAfter,arenaWires]
  · rfl
theorem s6Step1F4_carry : s6Step1F4FlagArena.checkBorrow 1 [802]=some s6Step1Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step1F4FlagArena,s6Step1HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step1F4FlagArena,s6Step1HeadFvAfter,s6Step1Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step1F4_owned : (768::860::((s6Step1Add0A++s6Step1Add1A)++(s6Step1Add0B++s6Step1Add1B))).toFinset⊆s6Step1HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step1HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1F4_distinct : (768::860::927::802::((s6Step1Add0A++s6Step1Add1A)++(s6Step1Add0B++s6Step1Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1F4_apart : Disjoint (s6Step1Add0A++s6Step1Add0B).toFinset (s6Step1Add1A++s6Step1Add1B).toFinset := by
  have nd : ((s6Step1Add0A++s6Step1Add0B)++(s6Step1Add1A++s6Step1Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step1F4Plan : HmrHybridF4Plan := ⟨s6Step1F4FlagArena,[927],s6Step1Add0Arena,[802],s6Step1Add0During,s6Step1Add0Work,s6Step1Add1During,s6Step1Add1Work⟩
theorem s6Step1F4_checked : compileHmrHybridF4Log s6Step1HeadFvAfter 768 860 s6Step1Add0A s6Step1Add0B s6Step1Add1A s6Step1Add1B [927] [802] s6Step1Add0Work s6Step1Add1Work=some s6Step1F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step1HeadFvAfter s6Step1F4FlagArena s6Step1Add0Arena s6Step1Add0During s6Step1Add1During 768 860
    s6Step1Add0A s6Step1Add0B s6Step1Add1A s6Step1Add1B [927] [802] s6Step1Add0Work s6Step1Add1Work
    (fun q hq => s6Step1F4_owned (List.mem_toFinset.mpr hq)) s6Step1F4_flag s6Step1F4_carry
    s6Step1F4_distinct s6Step1F4_apart s6Step1Add0_checked s6Step1Add1_checked
def s6Step2F4FlagArena : Arena := ⟨s6Step2HeadFvAfter.live∪{875},Finset.union_subset s6Step2HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step2F4_flag : s6Step2HeadFvAfter.checkBorrow 1 [875]=some s6Step2F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step2HeadFvAfter,arenaWires]
  · rfl
theorem s6Step2F4_carry : s6Step2F4FlagArena.checkBorrow 1 [779]=some s6Step2Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step2F4FlagArena,s6Step2HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step2F4FlagArena,s6Step2HeadFvAfter,s6Step2Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step2F4_owned : (874::862::((s6Step2Add0A++s6Step2Add1A)++(s6Step2Add0B++s6Step2Add1B))).toFinset⊆s6Step2HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step2HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step2F4_distinct : (874::862::875::779::((s6Step2Add0A++s6Step2Add1A)++(s6Step2Add0B++s6Step2Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2F4_apart : Disjoint (s6Step2Add0A++s6Step2Add0B).toFinset (s6Step2Add1A++s6Step2Add1B).toFinset := by
  have nd : ((s6Step2Add0A++s6Step2Add0B)++(s6Step2Add1A++s6Step2Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step2F4Plan : HmrHybridF4Plan := ⟨s6Step2F4FlagArena,[875],s6Step2Add0Arena,[779],s6Step2Add0During,s6Step2Add0Work,s6Step2Add1During,s6Step2Add1Work⟩
theorem s6Step2F4_checked : compileHmrHybridF4Log s6Step2HeadFvAfter 874 862 s6Step2Add0A s6Step2Add0B s6Step2Add1A s6Step2Add1B [875] [779] s6Step2Add0Work s6Step2Add1Work=some s6Step2F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step2HeadFvAfter s6Step2F4FlagArena s6Step2Add0Arena s6Step2Add0During s6Step2Add1During 874 862
    s6Step2Add0A s6Step2Add0B s6Step2Add1A s6Step2Add1B [875] [779] s6Step2Add0Work s6Step2Add1Work
    (fun q hq => s6Step2F4_owned (List.mem_toFinset.mpr hq)) s6Step2F4_flag s6Step2F4_carry
    s6Step2F4_distinct s6Step2F4_apart s6Step2Add0_checked s6Step2Add1_checked
def s6Step3F4FlagArena : Arena := ⟨s6Step3HeadFvAfter.live∪{868},Finset.union_subset s6Step3HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step3F4_flag : s6Step3HeadFvAfter.checkBorrow 1 [868]=some s6Step3F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step3HeadFvAfter,arenaWires]
  · rfl
theorem s6Step3F4_carry : s6Step3F4FlagArena.checkBorrow 1 [857]=some s6Step3Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step3F4FlagArena,s6Step3HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step3F4FlagArena,s6Step3HeadFvAfter,s6Step3Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step3F4_owned : (927::807::((s6Step3Add0A++s6Step3Add1A)++(s6Step3Add0B++s6Step3Add1B))).toFinset⊆s6Step3HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step3HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3F4_distinct : (927::807::868::857::((s6Step3Add0A++s6Step3Add1A)++(s6Step3Add0B++s6Step3Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3F4_apart : Disjoint (s6Step3Add0A++s6Step3Add0B).toFinset (s6Step3Add1A++s6Step3Add1B).toFinset := by
  have nd : ((s6Step3Add0A++s6Step3Add0B)++(s6Step3Add1A++s6Step3Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step3F4Plan : HmrHybridF4Plan := ⟨s6Step3F4FlagArena,[868],s6Step3Add0Arena,[857],s6Step3Add0During,s6Step3Add0Work,s6Step3Add1During,s6Step3Add1Work⟩
theorem s6Step3F4_checked : compileHmrHybridF4Log s6Step3HeadFvAfter 927 807 s6Step3Add0A s6Step3Add0B s6Step3Add1A s6Step3Add1B [868] [857] s6Step3Add0Work s6Step3Add1Work=some s6Step3F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step3HeadFvAfter s6Step3F4FlagArena s6Step3Add0Arena s6Step3Add0During s6Step3Add1During 927 807
    s6Step3Add0A s6Step3Add0B s6Step3Add1A s6Step3Add1B [868] [857] s6Step3Add0Work s6Step3Add1Work
    (fun q hq => s6Step3F4_owned (List.mem_toFinset.mpr hq)) s6Step3F4_flag s6Step3F4_carry
    s6Step3F4_distinct s6Step3F4_apart s6Step3Add0_checked s6Step3Add1_checked
def s6Step4F4FlagArena : Arena := ⟨s6Step4HeadFvAfter.live∪{907},Finset.union_subset s6Step4HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step4F4_flag : s6Step4HeadFvAfter.checkBorrow 1 [907]=some s6Step4F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step4HeadFvAfter,arenaWires]
  · rfl
theorem s6Step4F4_carry : s6Step4F4FlagArena.checkBorrow 1 [858]=some s6Step4Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step4F4FlagArena,s6Step4HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step4F4FlagArena,s6Step4HeadFvAfter,s6Step4Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step4F4_owned : (875::813::((s6Step4Add0A++s6Step4Add1A)++(s6Step4Add0B++s6Step4Add1B))).toFinset⊆s6Step4HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step4HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4F4_distinct : (875::813::907::858::((s6Step4Add0A++s6Step4Add1A)++(s6Step4Add0B++s6Step4Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4F4_apart : Disjoint (s6Step4Add0A++s6Step4Add0B).toFinset (s6Step4Add1A++s6Step4Add1B).toFinset := by
  have nd : ((s6Step4Add0A++s6Step4Add0B)++(s6Step4Add1A++s6Step4Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step4F4Plan : HmrHybridF4Plan := ⟨s6Step4F4FlagArena,[907],s6Step4Add0Arena,[858],s6Step4Add0During,s6Step4Add0Work,s6Step4Add1During,s6Step4Add1Work⟩
theorem s6Step4F4_checked : compileHmrHybridF4Log s6Step4HeadFvAfter 875 813 s6Step4Add0A s6Step4Add0B s6Step4Add1A s6Step4Add1B [907] [858] s6Step4Add0Work s6Step4Add1Work=some s6Step4F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step4HeadFvAfter s6Step4F4FlagArena s6Step4Add0Arena s6Step4Add0During s6Step4Add1During 875 813
    s6Step4Add0A s6Step4Add0B s6Step4Add1A s6Step4Add1B [907] [858] s6Step4Add0Work s6Step4Add1Work
    (fun q hq => s6Step4F4_owned (List.mem_toFinset.mpr hq)) s6Step4F4_flag s6Step4F4_carry
    s6Step4F4_distinct s6Step4F4_apart s6Step4Add0_checked s6Step4Add1_checked
def s6Step5F4FlagArena : Arena := ⟨s6Step5HeadFvAfter.live∪{908},Finset.union_subset s6Step5HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step5F4_flag : s6Step5HeadFvAfter.checkBorrow 1 [908]=some s6Step5F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step5HeadFvAfter,arenaWires]
  · rfl
theorem s6Step5F4_carry : s6Step5F4FlagArena.checkBorrow 1 [845]=some s6Step5Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step5F4FlagArena,s6Step5HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step5F4FlagArena,s6Step5HeadFvAfter,s6Step5Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step5F4_owned : (868::860::((s6Step5Add0A++s6Step5Add1A)++(s6Step5Add0B++s6Step5Add1B))).toFinset⊆s6Step5HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step5HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5F4_distinct : (868::860::908::845::((s6Step5Add0A++s6Step5Add1A)++(s6Step5Add0B++s6Step5Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5F4_apart : Disjoint (s6Step5Add0A++s6Step5Add0B).toFinset (s6Step5Add1A++s6Step5Add1B).toFinset := by
  have nd : ((s6Step5Add0A++s6Step5Add0B)++(s6Step5Add1A++s6Step5Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step5F4Plan : HmrHybridF4Plan := ⟨s6Step5F4FlagArena,[908],s6Step5Add0Arena,[845],s6Step5Add0During,s6Step5Add0Work,s6Step5Add1During,s6Step5Add1Work⟩
theorem s6Step5F4_checked : compileHmrHybridF4Log s6Step5HeadFvAfter 868 860 s6Step5Add0A s6Step5Add0B s6Step5Add1A s6Step5Add1B [908] [845] s6Step5Add0Work s6Step5Add1Work=some s6Step5F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step5HeadFvAfter s6Step5F4FlagArena s6Step5Add0Arena s6Step5Add0During s6Step5Add1During 868 860
    s6Step5Add0A s6Step5Add0B s6Step5Add1A s6Step5Add1B [908] [845] s6Step5Add0Work s6Step5Add1Work
    (fun q hq => s6Step5F4_owned (List.mem_toFinset.mpr hq)) s6Step5F4_flag s6Step5F4_carry
    s6Step5F4_distinct s6Step5F4_apart s6Step5Add0_checked s6Step5Add1_checked
def s6Step6F4FlagArena : Arena := ⟨s6Step6HeadFvAfter.live∪{890},Finset.union_subset s6Step6HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step6F4_flag : s6Step6HeadFvAfter.checkBorrow 1 [890]=some s6Step6F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step6HeadFvAfter,arenaWires]
  · rfl
theorem s6Step6F4_carry : s6Step6F4FlagArena.checkBorrow 1 [805]=some s6Step6Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step6F4FlagArena,s6Step6HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step6F4FlagArena,s6Step6HeadFvAfter,s6Step6Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step6F4_owned : (907::862::((s6Step6Add0A++s6Step6Add1A)++(s6Step6Add0B++s6Step6Add1B))).toFinset⊆s6Step6HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step6HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6F4_distinct : (907::862::890::805::((s6Step6Add0A++s6Step6Add1A)++(s6Step6Add0B++s6Step6Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6F4_apart : Disjoint (s6Step6Add0A++s6Step6Add0B).toFinset (s6Step6Add1A++s6Step6Add1B).toFinset := by
  have nd : ((s6Step6Add0A++s6Step6Add0B)++(s6Step6Add1A++s6Step6Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step6F4Plan : HmrHybridF4Plan := ⟨s6Step6F4FlagArena,[890],s6Step6Add0Arena,[805],s6Step6Add0During,s6Step6Add0Work,s6Step6Add1During,s6Step6Add1Work⟩
theorem s6Step6F4_checked : compileHmrHybridF4Log s6Step6HeadFvAfter 907 862 s6Step6Add0A s6Step6Add0B s6Step6Add1A s6Step6Add1B [890] [805] s6Step6Add0Work s6Step6Add1Work=some s6Step6F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step6HeadFvAfter s6Step6F4FlagArena s6Step6Add0Arena s6Step6Add0During s6Step6Add1During 907 862
    s6Step6Add0A s6Step6Add0B s6Step6Add1A s6Step6Add1B [890] [805] s6Step6Add0Work s6Step6Add1Work
    (fun q hq => s6Step6F4_owned (List.mem_toFinset.mpr hq)) s6Step6F4_flag s6Step6F4_carry
    s6Step6F4_distinct s6Step6F4_apart s6Step6Add0_checked s6Step6Add1_checked
def s6Step7F4FlagArena : Arena := ⟨s6Step7HeadFvAfter.live∪{873},Finset.union_subset s6Step7HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step7F4_flag : s6Step7HeadFvAfter.checkBorrow 1 [873]=some s6Step7F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step7HeadFvAfter,arenaWires]
  · rfl
theorem s6Step7F4_carry : s6Step7F4FlagArena.checkBorrow 1 [796]=some s6Step7Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step7F4FlagArena,s6Step7HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step7F4FlagArena,s6Step7HeadFvAfter,s6Step7Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step7F4_owned : (908::807::((s6Step7Add0A++s6Step7Add1A)++(s6Step7Add0B++s6Step7Add1B))).toFinset⊆s6Step7HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step7HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7F4_distinct : (908::807::873::796::((s6Step7Add0A++s6Step7Add1A)++(s6Step7Add0B++s6Step7Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7F4_apart : Disjoint (s6Step7Add0A++s6Step7Add0B).toFinset (s6Step7Add1A++s6Step7Add1B).toFinset := by
  have nd : ((s6Step7Add0A++s6Step7Add0B)++(s6Step7Add1A++s6Step7Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step7F4Plan : HmrHybridF4Plan := ⟨s6Step7F4FlagArena,[873],s6Step7Add0Arena,[796],s6Step7Add0During,s6Step7Add0Work,s6Step7Add1During,s6Step7Add1Work⟩
theorem s6Step7F4_checked : compileHmrHybridF4Log s6Step7HeadFvAfter 908 807 s6Step7Add0A s6Step7Add0B s6Step7Add1A s6Step7Add1B [873] [796] s6Step7Add0Work s6Step7Add1Work=some s6Step7F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step7HeadFvAfter s6Step7F4FlagArena s6Step7Add0Arena s6Step7Add0During s6Step7Add1During 908 807
    s6Step7Add0A s6Step7Add0B s6Step7Add1A s6Step7Add1B [873] [796] s6Step7Add0Work s6Step7Add1Work
    (fun q hq => s6Step7F4_owned (List.mem_toFinset.mpr hq)) s6Step7F4_flag s6Step7F4_carry
    s6Step7F4_distinct s6Step7F4_apart s6Step7Add0_checked s6Step7Add1_checked
def s6Step8F4FlagArena : Arena := ⟨s6Step8HeadFvAfter.live∪{863},Finset.union_subset s6Step8HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step8F4_flag : s6Step8HeadFvAfter.checkBorrow 1 [863]=some s6Step8F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step8HeadFvAfter,arenaWires]
  · rfl
theorem s6Step8F4_carry : s6Step8F4FlagArena.checkBorrow 1 [856]=some s6Step8Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step8F4FlagArena,s6Step8HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step8F4FlagArena,s6Step8HeadFvAfter,s6Step8Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step8F4_owned : (890::813::((s6Step8Add0A++s6Step8Add1A)++(s6Step8Add0B++s6Step8Add1B))).toFinset⊆s6Step8HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step8HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8F4_distinct : (890::813::863::856::((s6Step8Add0A++s6Step8Add1A)++(s6Step8Add0B++s6Step8Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8F4_apart : Disjoint (s6Step8Add0A++s6Step8Add0B).toFinset (s6Step8Add1A++s6Step8Add1B).toFinset := by
  have nd : ((s6Step8Add0A++s6Step8Add0B)++(s6Step8Add1A++s6Step8Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step8F4Plan : HmrHybridF4Plan := ⟨s6Step8F4FlagArena,[863],s6Step8Add0Arena,[856],s6Step8Add0During,s6Step8Add0Work,s6Step8Add1During,s6Step8Add1Work⟩
theorem s6Step8F4_checked : compileHmrHybridF4Log s6Step8HeadFvAfter 890 813 s6Step8Add0A s6Step8Add0B s6Step8Add1A s6Step8Add1B [863] [856] s6Step8Add0Work s6Step8Add1Work=some s6Step8F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step8HeadFvAfter s6Step8F4FlagArena s6Step8Add0Arena s6Step8Add0During s6Step8Add1During 890 813
    s6Step8Add0A s6Step8Add0B s6Step8Add1A s6Step8Add1B [863] [856] s6Step8Add0Work s6Step8Add1Work
    (fun q hq => s6Step8F4_owned (List.mem_toFinset.mpr hq)) s6Step8F4_flag s6Step8F4_carry
    s6Step8F4_distinct s6Step8F4_apart s6Step8Add0_checked s6Step8Add1_checked
def s6Step9F4FlagArena : Arena := ⟨s6Step9HeadFvAfter.live∪{823},Finset.union_subset s6Step9HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step9F4_flag : s6Step9HeadFvAfter.checkBorrow 1 [823]=some s6Step9F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step9HeadFvAfter,arenaWires]
  · rfl
theorem s6Step9F4_carry : s6Step9F4FlagArena.checkBorrow 1 [865]=some s6Step9Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step9F4FlagArena,s6Step9HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step9F4FlagArena,s6Step9HeadFvAfter,s6Step9Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step9F4_owned : (873::860::((s6Step9Add0A++s6Step9Add1A)++(s6Step9Add0B++s6Step9Add1B))).toFinset⊆s6Step9HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step9HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9F4_distinct : (873::860::823::865::((s6Step9Add0A++s6Step9Add1A)++(s6Step9Add0B++s6Step9Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9F4_apart : Disjoint (s6Step9Add0A++s6Step9Add0B).toFinset (s6Step9Add1A++s6Step9Add1B).toFinset := by
  have nd : ((s6Step9Add0A++s6Step9Add0B)++(s6Step9Add1A++s6Step9Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step9F4Plan : HmrHybridF4Plan := ⟨s6Step9F4FlagArena,[823],s6Step9Add0Arena,[865],s6Step9Add0During,s6Step9Add0Work,s6Step9Add1During,s6Step9Add1Work⟩
theorem s6Step9F4_checked : compileHmrHybridF4Log s6Step9HeadFvAfter 873 860 s6Step9Add0A s6Step9Add0B s6Step9Add1A s6Step9Add1B [823] [865] s6Step9Add0Work s6Step9Add1Work=some s6Step9F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step9HeadFvAfter s6Step9F4FlagArena s6Step9Add0Arena s6Step9Add0During s6Step9Add1During 873 860
    s6Step9Add0A s6Step9Add0B s6Step9Add1A s6Step9Add1B [823] [865] s6Step9Add0Work s6Step9Add1Work
    (fun q hq => s6Step9F4_owned (List.mem_toFinset.mpr hq)) s6Step9F4_flag s6Step9F4_carry
    s6Step9F4_distinct s6Step9F4_apart s6Step9Add0_checked s6Step9Add1_checked
def s6Step10F4FlagArena : Arena := ⟨s6Step10HeadFvAfter.live∪{880},Finset.union_subset s6Step10HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step10F4_flag : s6Step10HeadFvAfter.checkBorrow 1 [880]=some s6Step10F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step10HeadFvAfter,arenaWires]
  · rfl
theorem s6Step10F4_carry : s6Step10F4FlagArena.checkBorrow 1 [789]=some s6Step10Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step10F4FlagArena,s6Step10HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step10F4FlagArena,s6Step10HeadFvAfter,s6Step10Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step10F4_owned : (863::862::((s6Step10Add0A++s6Step10Add1A)++(s6Step10Add0B++s6Step10Add1B))).toFinset⊆s6Step10HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step10HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10F4_distinct : (863::862::880::789::((s6Step10Add0A++s6Step10Add1A)++(s6Step10Add0B++s6Step10Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10F4_apart : Disjoint (s6Step10Add0A++s6Step10Add0B).toFinset (s6Step10Add1A++s6Step10Add1B).toFinset := by
  have nd : ((s6Step10Add0A++s6Step10Add0B)++(s6Step10Add1A++s6Step10Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step10F4Plan : HmrHybridF4Plan := ⟨s6Step10F4FlagArena,[880],s6Step10Add0Arena,[789],s6Step10Add0During,s6Step10Add0Work,s6Step10Add1During,s6Step10Add1Work⟩
theorem s6Step10F4_checked : compileHmrHybridF4Log s6Step10HeadFvAfter 863 862 s6Step10Add0A s6Step10Add0B s6Step10Add1A s6Step10Add1B [880] [789] s6Step10Add0Work s6Step10Add1Work=some s6Step10F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step10HeadFvAfter s6Step10F4FlagArena s6Step10Add0Arena s6Step10Add0During s6Step10Add1During 863 862
    s6Step10Add0A s6Step10Add0B s6Step10Add1A s6Step10Add1B [880] [789] s6Step10Add0Work s6Step10Add1Work
    (fun q hq => s6Step10F4_owned (List.mem_toFinset.mpr hq)) s6Step10F4_flag s6Step10F4_carry
    s6Step10F4_distinct s6Step10F4_apart s6Step10Add0_checked s6Step10Add1_checked
def s6Step11F4FlagArena : Arena := ⟨s6Step11HeadFvAfter.live∪{864},Finset.union_subset s6Step11HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step11F4_flag : s6Step11HeadFvAfter.checkBorrow 1 [864]=some s6Step11F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step11HeadFvAfter,arenaWires]
  · rfl
theorem s6Step11F4_carry : s6Step11F4FlagArena.checkBorrow 1 [818]=some s6Step11Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step11F4FlagArena,s6Step11HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step11F4FlagArena,s6Step11HeadFvAfter,s6Step11Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step11F4_owned : (823::807::((s6Step11Add0A++s6Step11Add1A)++(s6Step11Add0B++s6Step11Add1B))).toFinset⊆s6Step11HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step11HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11F4_distinct : (823::807::864::818::((s6Step11Add0A++s6Step11Add1A)++(s6Step11Add0B++s6Step11Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11F4_apart : Disjoint (s6Step11Add0A++s6Step11Add0B).toFinset (s6Step11Add1A++s6Step11Add1B).toFinset := by
  have nd : ((s6Step11Add0A++s6Step11Add0B)++(s6Step11Add1A++s6Step11Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step11F4Plan : HmrHybridF4Plan := ⟨s6Step11F4FlagArena,[864],s6Step11Add0Arena,[818],s6Step11Add0During,s6Step11Add0Work,s6Step11Add1During,s6Step11Add1Work⟩
theorem s6Step11F4_checked : compileHmrHybridF4Log s6Step11HeadFvAfter 823 807 s6Step11Add0A s6Step11Add0B s6Step11Add1A s6Step11Add1B [864] [818] s6Step11Add0Work s6Step11Add1Work=some s6Step11F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step11HeadFvAfter s6Step11F4FlagArena s6Step11Add0Arena s6Step11Add0During s6Step11Add1During 823 807
    s6Step11Add0A s6Step11Add0B s6Step11Add1A s6Step11Add1B [864] [818] s6Step11Add0Work s6Step11Add1Work
    (fun q hq => s6Step11F4_owned (List.mem_toFinset.mpr hq)) s6Step11F4_flag s6Step11F4_carry
    s6Step11F4_distinct s6Step11F4_apart s6Step11Add0_checked s6Step11Add1_checked
def s6Step12F4FlagArena : Arena := ⟨s6Step12HeadFvAfter.live∪{828},Finset.union_subset s6Step12HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step12F4_flag : s6Step12HeadFvAfter.checkBorrow 1 [828]=some s6Step12F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step12HeadFvAfter,arenaWires]
  · rfl
theorem s6Step12F4_carry : s6Step12F4FlagArena.checkBorrow 1 [892]=some s6Step12Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step12F4FlagArena,s6Step12HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step12F4FlagArena,s6Step12HeadFvAfter,s6Step12Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step12F4_owned : (880::813::((s6Step12Add0A++s6Step12Add1A)++(s6Step12Add0B++s6Step12Add1B))).toFinset⊆s6Step12HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step12HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12F4_distinct : (880::813::828::892::((s6Step12Add0A++s6Step12Add1A)++(s6Step12Add0B++s6Step12Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12F4_apart : Disjoint (s6Step12Add0A++s6Step12Add0B).toFinset (s6Step12Add1A++s6Step12Add1B).toFinset := by
  have nd : ((s6Step12Add0A++s6Step12Add0B)++(s6Step12Add1A++s6Step12Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step12F4Plan : HmrHybridF4Plan := ⟨s6Step12F4FlagArena,[828],s6Step12Add0Arena,[892],s6Step12Add0During,s6Step12Add0Work,s6Step12Add1During,s6Step12Add1Work⟩
theorem s6Step12F4_checked : compileHmrHybridF4Log s6Step12HeadFvAfter 880 813 s6Step12Add0A s6Step12Add0B s6Step12Add1A s6Step12Add1B [828] [892] s6Step12Add0Work s6Step12Add1Work=some s6Step12F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step12HeadFvAfter s6Step12F4FlagArena s6Step12Add0Arena s6Step12Add0During s6Step12Add1During 880 813
    s6Step12Add0A s6Step12Add0B s6Step12Add1A s6Step12Add1B [828] [892] s6Step12Add0Work s6Step12Add1Work
    (fun q hq => s6Step12F4_owned (List.mem_toFinset.mpr hq)) s6Step12F4_flag s6Step12F4_carry
    s6Step12F4_distinct s6Step12F4_apart s6Step12Add0_checked s6Step12Add1_checked
def s6Step13F4FlagArena : Arena := ⟨s6Step13HeadFvAfter.live∪{822},Finset.union_subset s6Step13HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step13F4_flag : s6Step13HeadFvAfter.checkBorrow 1 [822]=some s6Step13F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step13HeadFvAfter,arenaWires]
  · rfl
theorem s6Step13F4_carry : s6Step13F4FlagArena.checkBorrow 1 [882]=some s6Step13Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step13F4FlagArena,s6Step13HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step13F4FlagArena,s6Step13HeadFvAfter,s6Step13Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step13F4_owned : (864::860::((s6Step13Add0A++s6Step13Add1A)++(s6Step13Add0B++s6Step13Add1B))).toFinset⊆s6Step13HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step13HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13F4_distinct : (864::860::822::882::((s6Step13Add0A++s6Step13Add1A)++(s6Step13Add0B++s6Step13Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13F4_apart : Disjoint (s6Step13Add0A++s6Step13Add0B).toFinset (s6Step13Add1A++s6Step13Add1B).toFinset := by
  have nd : ((s6Step13Add0A++s6Step13Add0B)++(s6Step13Add1A++s6Step13Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step13F4Plan : HmrHybridF4Plan := ⟨s6Step13F4FlagArena,[822],s6Step13Add0Arena,[882],s6Step13Add0During,s6Step13Add0Work,s6Step13Add1During,s6Step13Add1Work⟩
theorem s6Step13F4_checked : compileHmrHybridF4Log s6Step13HeadFvAfter 864 860 s6Step13Add0A s6Step13Add0B s6Step13Add1A s6Step13Add1B [822] [882] s6Step13Add0Work s6Step13Add1Work=some s6Step13F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step13HeadFvAfter s6Step13F4FlagArena s6Step13Add0Arena s6Step13Add0During s6Step13Add1During 864 860
    s6Step13Add0A s6Step13Add0B s6Step13Add1A s6Step13Add1B [822] [882] s6Step13Add0Work s6Step13Add1Work
    (fun q hq => s6Step13F4_owned (List.mem_toFinset.mpr hq)) s6Step13F4_flag s6Step13F4_carry
    s6Step13F4_distinct s6Step13F4_apart s6Step13Add0_checked s6Step13Add1_checked
def s6Step14F4FlagArena : Arena := ⟨s6Step14HeadFvAfter.live∪{780},Finset.union_subset s6Step14HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step14F4_flag : s6Step14HeadFvAfter.checkBorrow 1 [780]=some s6Step14F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step14HeadFvAfter,arenaWires]
  · rfl
theorem s6Step14F4_carry : s6Step14F4FlagArena.checkBorrow 1 [833]=some s6Step14Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step14F4FlagArena,s6Step14HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step14F4FlagArena,s6Step14HeadFvAfter,s6Step14Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step14F4_owned : (828::862::((s6Step14Add0A++s6Step14Add1A)++(s6Step14Add0B++s6Step14Add1B))).toFinset⊆s6Step14HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step14HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14F4_distinct : (828::862::780::833::((s6Step14Add0A++s6Step14Add1A)++(s6Step14Add0B++s6Step14Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14F4_apart : Disjoint (s6Step14Add0A++s6Step14Add0B).toFinset (s6Step14Add1A++s6Step14Add1B).toFinset := by
  have nd : ((s6Step14Add0A++s6Step14Add0B)++(s6Step14Add1A++s6Step14Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step14F4Plan : HmrHybridF4Plan := ⟨s6Step14F4FlagArena,[780],s6Step14Add0Arena,[833],s6Step14Add0During,s6Step14Add0Work,s6Step14Add1During,s6Step14Add1Work⟩
theorem s6Step14F4_checked : compileHmrHybridF4Log s6Step14HeadFvAfter 828 862 s6Step14Add0A s6Step14Add0B s6Step14Add1A s6Step14Add1B [780] [833] s6Step14Add0Work s6Step14Add1Work=some s6Step14F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step14HeadFvAfter s6Step14F4FlagArena s6Step14Add0Arena s6Step14Add0During s6Step14Add1During 828 862
    s6Step14Add0A s6Step14Add0B s6Step14Add1A s6Step14Add1B [780] [833] s6Step14Add0Work s6Step14Add1Work
    (fun q hq => s6Step14F4_owned (List.mem_toFinset.mpr hq)) s6Step14F4_flag s6Step14F4_carry
    s6Step14F4_distinct s6Step14F4_apart s6Step14Add0_checked s6Step14Add1_checked
def s6Step15F4FlagArena : Arena := ⟨s6Step15HeadFvAfter.live∪{888},Finset.union_subset s6Step15HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step15F4_flag : s6Step15HeadFvAfter.checkBorrow 1 [888]=some s6Step15F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15HeadFvAfter,arenaWires]
  · rfl
theorem s6Step15F4_carry : s6Step15F4FlagArena.checkBorrow 1 [886]=some s6Step15Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15F4FlagArena,s6Step15HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step15F4FlagArena,s6Step15HeadFvAfter,s6Step15Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15F4_owned : (822::807::((s6Step15Add0A++s6Step15Add1A)++(s6Step15Add0B++s6Step15Add1B))).toFinset⊆s6Step15HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step15HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15F4_distinct : (822::807::888::886::((s6Step15Add0A++s6Step15Add1A)++(s6Step15Add0B++s6Step15Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15F4_apart : Disjoint (s6Step15Add0A++s6Step15Add0B).toFinset (s6Step15Add1A++s6Step15Add1B).toFinset := by
  have nd : ((s6Step15Add0A++s6Step15Add0B)++(s6Step15Add1A++s6Step15Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step15F4Plan : HmrHybridF4Plan := ⟨s6Step15F4FlagArena,[888],s6Step15Add0Arena,[886],s6Step15Add0During,s6Step15Add0Work,s6Step15Add1During,s6Step15Add1Work⟩
theorem s6Step15F4_checked : compileHmrHybridF4Log s6Step15HeadFvAfter 822 807 s6Step15Add0A s6Step15Add0B s6Step15Add1A s6Step15Add1B [888] [886] s6Step15Add0Work s6Step15Add1Work=some s6Step15F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step15HeadFvAfter s6Step15F4FlagArena s6Step15Add0Arena s6Step15Add0During s6Step15Add1During 822 807
    s6Step15Add0A s6Step15Add0B s6Step15Add1A s6Step15Add1B [888] [886] s6Step15Add0Work s6Step15Add1Work
    (fun q hq => s6Step15F4_owned (List.mem_toFinset.mpr hq)) s6Step15F4_flag s6Step15F4_carry
    s6Step15F4_distinct s6Step15F4_apart s6Step15Add0_checked s6Step15Add1_checked
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
