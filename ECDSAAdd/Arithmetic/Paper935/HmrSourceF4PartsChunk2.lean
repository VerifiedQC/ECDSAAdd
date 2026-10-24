import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32F4FlagArena : Arena := ⟨s2Step32HeadFvAfter.live∪{844},Finset.union_subset s2Step32HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step32F4_flag : s2Step32HeadFvAfter.checkBorrow 1 [844]=some s2Step32F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step32HeadFvAfter,arenaWires]
  · rfl
theorem s2Step32F4_carry : s2Step32F4FlagArena.checkBorrow 1 [845]=some s2Step32Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step32F4FlagArena,s2Step32HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step32F4FlagArena,s2Step32HeadFvAfter,s2Step32Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32F4_owned : (789::839::((s2Step32Add0A++s2Step32Add1A)++(s2Step32Add0B++s2Step32Add1B))).toFinset⊆s2Step32HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32F4_distinct : (789::839::844::845::((s2Step32Add0A++s2Step32Add1A)++(s2Step32Add0B++s2Step32Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32F4_apart : Disjoint (s2Step32Add0A++s2Step32Add0B).toFinset (s2Step32Add1A++s2Step32Add1B).toFinset := by
  have nd : ((s2Step32Add0A++s2Step32Add0B)++(s2Step32Add1A++s2Step32Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step32F4Plan : HmrHybridF4Plan := ⟨s2Step32F4FlagArena,[844],s2Step32Add0Arena,[845],s2Step32Add0During,s2Step32Add0Work,s2Step32Add1During,s2Step32Add1Work⟩
theorem s2Step32F4_checked : compileHmrHybridF4Log s2Step32HeadFvAfter 789 839 s2Step32Add0A s2Step32Add0B s2Step32Add1A s2Step32Add1B [844] [845] s2Step32Add0Work s2Step32Add1Work=some s2Step32F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step32HeadFvAfter s2Step32F4FlagArena s2Step32Add0Arena s2Step32Add0During s2Step32Add1During 789 839
    s2Step32Add0A s2Step32Add0B s2Step32Add1A s2Step32Add1B [844] [845] s2Step32Add0Work s2Step32Add1Work
    (fun q hq => s2Step32F4_owned (List.mem_toFinset.mpr hq)) s2Step32F4_flag s2Step32F4_carry
    s2Step32F4_distinct s2Step32F4_apart s2Step32Add0_checked s2Step32Add1_checked
def s2Step33F4FlagArena : Arena := ⟨s2Step33HeadFvAfter.live∪{786},Finset.union_subset s2Step33HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step33F4_flag : s2Step33HeadFvAfter.checkBorrow 1 [786]=some s2Step33F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step33HeadFvAfter,arenaWires]
  · rfl
theorem s2Step33F4_carry : s2Step33F4FlagArena.checkBorrow 1 [780]=some s2Step33Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step33F4FlagArena,s2Step33HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step33F4FlagArena,s2Step33HeadFvAfter,s2Step33Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33F4_owned : (789::788::((s2Step33Add0A++s2Step33Add1A)++(s2Step33Add0B++s2Step33Add1B))).toFinset⊆s2Step33HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33F4_distinct : (789::788::786::780::((s2Step33Add0A++s2Step33Add1A)++(s2Step33Add0B++s2Step33Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33F4_apart : Disjoint (s2Step33Add0A++s2Step33Add0B).toFinset (s2Step33Add1A++s2Step33Add1B).toFinset := by
  have nd : ((s2Step33Add0A++s2Step33Add0B)++(s2Step33Add1A++s2Step33Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step33F4Plan : HmrHybridF4Plan := ⟨s2Step33F4FlagArena,[786],s2Step33Add0Arena,[780],s2Step33Add0During,s2Step33Add0Work,s2Step33Add1During,s2Step33Add1Work⟩
theorem s2Step33F4_checked : compileHmrHybridF4Log s2Step33HeadFvAfter 789 788 s2Step33Add0A s2Step33Add0B s2Step33Add1A s2Step33Add1B [786] [780] s2Step33Add0Work s2Step33Add1Work=some s2Step33F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step33HeadFvAfter s2Step33F4FlagArena s2Step33Add0Arena s2Step33Add0During s2Step33Add1During 789 788
    s2Step33Add0A s2Step33Add0B s2Step33Add1A s2Step33Add1B [786] [780] s2Step33Add0Work s2Step33Add1Work
    (fun q hq => s2Step33F4_owned (List.mem_toFinset.mpr hq)) s2Step33F4_flag s2Step33F4_carry
    s2Step33F4_distinct s2Step33F4_apart s2Step33Add0_checked s2Step33Add1_checked
def s2Step34F4FlagArena : Arena := ⟨s2Step34HeadFvAfter.live∪{786},Finset.union_subset s2Step34HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step34F4_flag : s2Step34HeadFvAfter.checkBorrow 1 [786]=some s2Step34F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step34HeadFvAfter,arenaWires]
  · rfl
theorem s2Step34F4_carry : s2Step34F4FlagArena.checkBorrow 1 [780]=some s2Step34Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step34F4FlagArena,s2Step34HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step34F4FlagArena,s2Step34HeadFvAfter,s2Step34Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34F4_owned : (789::790::((s2Step34Add0A++s2Step34Add1A)++(s2Step34Add0B++s2Step34Add1B))).toFinset⊆s2Step34HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34F4_distinct : (789::790::786::780::((s2Step34Add0A++s2Step34Add1A)++(s2Step34Add0B++s2Step34Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34F4_apart : Disjoint (s2Step34Add0A++s2Step34Add0B).toFinset (s2Step34Add1A++s2Step34Add1B).toFinset := by
  have nd : ((s2Step34Add0A++s2Step34Add0B)++(s2Step34Add1A++s2Step34Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step34F4Plan : HmrHybridF4Plan := ⟨s2Step34F4FlagArena,[786],s2Step34Add0Arena,[780],s2Step34Add0During,s2Step34Add0Work,s2Step34Add1During,s2Step34Add1Work⟩
theorem s2Step34F4_checked : compileHmrHybridF4Log s2Step34HeadFvAfter 789 790 s2Step34Add0A s2Step34Add0B s2Step34Add1A s2Step34Add1B [786] [780] s2Step34Add0Work s2Step34Add1Work=some s2Step34F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step34HeadFvAfter s2Step34F4FlagArena s2Step34Add0Arena s2Step34Add0During s2Step34Add1During 789 790
    s2Step34Add0A s2Step34Add0B s2Step34Add1A s2Step34Add1B [786] [780] s2Step34Add0Work s2Step34Add1Work
    (fun q hq => s2Step34F4_owned (List.mem_toFinset.mpr hq)) s2Step34F4_flag s2Step34F4_carry
    s2Step34F4_distinct s2Step34F4_apart s2Step34Add0_checked s2Step34Add1_checked
def s2Step35F4FlagArena : Arena := ⟨s2Step35HeadFvAfter.live∪{786},Finset.union_subset s2Step35HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step35F4_flag : s2Step35HeadFvAfter.checkBorrow 1 [786]=some s2Step35F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step35HeadFvAfter,s2Step34HeadFvAfter,arenaWires]
  · rfl
theorem s2Step35F4_carry : s2Step35F4FlagArena.checkBorrow 1 [780]=some s2Step35Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step35F4FlagArena,s2Step35HeadFvAfter,s2Step34HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step35F4FlagArena,s2Step35HeadFvAfter,s2Step34HeadFvAfter,s2Step35Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35F4_owned : (789::793::((s2Step35Add0A++s2Step35Add1A)++(s2Step35Add0B++s2Step35Add1B))).toFinset⊆s2Step35HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35F4_distinct : (789::793::786::780::((s2Step35Add0A++s2Step35Add1A)++(s2Step35Add0B++s2Step35Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35F4_apart : Disjoint (s2Step35Add0A++s2Step35Add0B).toFinset (s2Step35Add1A++s2Step35Add1B).toFinset := by
  have nd : ((s2Step35Add0A++s2Step35Add0B)++(s2Step35Add1A++s2Step35Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step35F4Plan : HmrHybridF4Plan := ⟨s2Step35F4FlagArena,[786],s2Step35Add0Arena,[780],s2Step35Add0During,s2Step35Add0Work,s2Step35Add1During,s2Step35Add1Work⟩
theorem s2Step35F4_checked : compileHmrHybridF4Log s2Step35HeadFvAfter 789 793 s2Step35Add0A s2Step35Add0B s2Step35Add1A s2Step35Add1B [786] [780] s2Step35Add0Work s2Step35Add1Work=some s2Step35F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step35HeadFvAfter s2Step35F4FlagArena s2Step35Add0Arena s2Step35Add0During s2Step35Add1During 789 793
    s2Step35Add0A s2Step35Add0B s2Step35Add1A s2Step35Add1B [786] [780] s2Step35Add0Work s2Step35Add1Work
    (fun q hq => s2Step35F4_owned (List.mem_toFinset.mpr hq)) s2Step35F4_flag s2Step35F4_carry
    s2Step35F4_distinct s2Step35F4_apart s2Step35Add0_checked s2Step35Add1_checked
def s2Step36F4FlagArena : Arena := ⟨s2Step36HeadFvAfter.live∪{844},Finset.union_subset s2Step36HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step36F4_flag : s2Step36HeadFvAfter.checkBorrow 1 [844]=some s2Step36F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step36HeadFvAfter,arenaWires]
  · rfl
theorem s2Step36F4_carry : s2Step36F4FlagArena.checkBorrow 1 [845]=some s2Step36Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step36F4FlagArena,s2Step36HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step36F4FlagArena,s2Step36HeadFvAfter,s2Step36Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36F4_owned : (792::787::((s2Step36Add0A++s2Step36Add1A)++(s2Step36Add0B++s2Step36Add1B))).toFinset⊆s2Step36HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36F4_distinct : (792::787::844::845::((s2Step36Add0A++s2Step36Add1A)++(s2Step36Add0B++s2Step36Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36F4_apart : Disjoint (s2Step36Add0A++s2Step36Add0B).toFinset (s2Step36Add1A++s2Step36Add1B).toFinset := by
  have nd : ((s2Step36Add0A++s2Step36Add0B)++(s2Step36Add1A++s2Step36Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step36F4Plan : HmrHybridF4Plan := ⟨s2Step36F4FlagArena,[844],s2Step36Add0Arena,[845],s2Step36Add0During,s2Step36Add0Work,s2Step36Add1During,s2Step36Add1Work⟩
theorem s2Step36F4_checked : compileHmrHybridF4Log s2Step36HeadFvAfter 792 787 s2Step36Add0A s2Step36Add0B s2Step36Add1A s2Step36Add1B [844] [845] s2Step36Add0Work s2Step36Add1Work=some s2Step36F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step36HeadFvAfter s2Step36F4FlagArena s2Step36Add0Arena s2Step36Add0During s2Step36Add1During 792 787
    s2Step36Add0A s2Step36Add0B s2Step36Add1A s2Step36Add1B [844] [845] s2Step36Add0Work s2Step36Add1Work
    (fun q hq => s2Step36F4_owned (List.mem_toFinset.mpr hq)) s2Step36F4_flag s2Step36F4_carry
    s2Step36F4_distinct s2Step36F4_apart s2Step36Add0_checked s2Step36Add1_checked
def s2Step37F4FlagArena : Arena := ⟨s2Step37HeadFvAfter.live∪{790},Finset.union_subset s2Step37HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step37F4_flag : s2Step37HeadFvAfter.checkBorrow 1 [790]=some s2Step37F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step37HeadFvAfter,arenaWires]
  · rfl
theorem s2Step37F4_carry : s2Step37F4FlagArena.checkBorrow 1 [791]=some s2Step37Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step37F4FlagArena,s2Step37HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step37F4FlagArena,s2Step37HeadFvAfter,s2Step37Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37F4_owned : (787::792::((s2Step37Add0A++s2Step37Add1A)++(s2Step37Add0B++s2Step37Add1B))).toFinset⊆s2Step37HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37F4_distinct : (787::792::790::791::((s2Step37Add0A++s2Step37Add1A)++(s2Step37Add0B++s2Step37Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37F4_apart : Disjoint (s2Step37Add0A++s2Step37Add0B).toFinset (s2Step37Add1A++s2Step37Add1B).toFinset := by
  have nd : ((s2Step37Add0A++s2Step37Add0B)++(s2Step37Add1A++s2Step37Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step37F4Plan : HmrHybridF4Plan := ⟨s2Step37F4FlagArena,[790],s2Step37Add0Arena,[791],s2Step37Add0During,s2Step37Add0Work,s2Step37Add1During,s2Step37Add1Work⟩
theorem s2Step37F4_checked : compileHmrHybridF4Log s2Step37HeadFvAfter 787 792 s2Step37Add0A s2Step37Add0B s2Step37Add1A s2Step37Add1B [790] [791] s2Step37Add0Work s2Step37Add1Work=some s2Step37F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step37HeadFvAfter s2Step37F4FlagArena s2Step37Add0Arena s2Step37Add0During s2Step37Add1During 787 792
    s2Step37Add0A s2Step37Add0B s2Step37Add1A s2Step37Add1B [790] [791] s2Step37Add0Work s2Step37Add1Work
    (fun q hq => s2Step37F4_owned (List.mem_toFinset.mpr hq)) s2Step37F4_flag s2Step37F4_carry
    s2Step37F4_distinct s2Step37F4_apart s2Step37Add0_checked s2Step37Add1_checked
def s2Step38F4FlagArena : Arena := ⟨s2Step38HeadFvAfter.live∪{844},Finset.union_subset s2Step38HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step38F4_flag : s2Step38HeadFvAfter.checkBorrow 1 [844]=some s2Step38F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step38HeadFvAfter,arenaWires]
  · rfl
theorem s2Step38F4_carry : s2Step38F4FlagArena.checkBorrow 1 [845]=some s2Step38Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step38F4FlagArena,s2Step38HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step38F4FlagArena,s2Step38HeadFvAfter,s2Step38Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38F4_owned : (787::796::((s2Step38Add0A++s2Step38Add1A)++(s2Step38Add0B++s2Step38Add1B))).toFinset⊆s2Step38HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38F4_distinct : (787::796::844::845::((s2Step38Add0A++s2Step38Add1A)++(s2Step38Add0B++s2Step38Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38F4_apart : Disjoint (s2Step38Add0A++s2Step38Add0B).toFinset (s2Step38Add1A++s2Step38Add1B).toFinset := by
  have nd : ((s2Step38Add0A++s2Step38Add0B)++(s2Step38Add1A++s2Step38Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step38F4Plan : HmrHybridF4Plan := ⟨s2Step38F4FlagArena,[844],s2Step38Add0Arena,[845],s2Step38Add0During,s2Step38Add0Work,s2Step38Add1During,s2Step38Add1Work⟩
theorem s2Step38F4_checked : compileHmrHybridF4Log s2Step38HeadFvAfter 787 796 s2Step38Add0A s2Step38Add0B s2Step38Add1A s2Step38Add1B [844] [845] s2Step38Add0Work s2Step38Add1Work=some s2Step38F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step38HeadFvAfter s2Step38F4FlagArena s2Step38Add0Arena s2Step38Add0During s2Step38Add1During 787 796
    s2Step38Add0A s2Step38Add0B s2Step38Add1A s2Step38Add1B [844] [845] s2Step38Add0Work s2Step38Add1Work
    (fun q hq => s2Step38F4_owned (List.mem_toFinset.mpr hq)) s2Step38F4_flag s2Step38F4_carry
    s2Step38F4_distinct s2Step38F4_apart s2Step38Add0_checked s2Step38Add1_checked
def s2Step39F4FlagArena : Arena := ⟨s2Step39HeadFvAfter.live∪{792},Finset.union_subset s2Step39HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step39F4_flag : s2Step39HeadFvAfter.checkBorrow 1 [792]=some s2Step39F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step39HeadFvAfter,arenaWires]
  · rfl
theorem s2Step39F4_carry : s2Step39F4FlagArena.checkBorrow 1 [780]=some s2Step39Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step39F4FlagArena,s2Step39HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step39F4FlagArena,s2Step39HeadFvAfter,s2Step39Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39F4_owned : (796::787::((s2Step39Add0A++s2Step39Add1A)++(s2Step39Add0B++s2Step39Add1B))).toFinset⊆s2Step39HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39F4_distinct : (796::787::792::780::((s2Step39Add0A++s2Step39Add1A)++(s2Step39Add0B++s2Step39Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39F4_apart : Disjoint (s2Step39Add0A++s2Step39Add0B).toFinset (s2Step39Add1A++s2Step39Add1B).toFinset := by
  have nd : ((s2Step39Add0A++s2Step39Add0B)++(s2Step39Add1A++s2Step39Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step39F4Plan : HmrHybridF4Plan := ⟨s2Step39F4FlagArena,[792],s2Step39Add0Arena,[780],s2Step39Add0During,s2Step39Add0Work,s2Step39Add1During,s2Step39Add1Work⟩
theorem s2Step39F4_checked : compileHmrHybridF4Log s2Step39HeadFvAfter 796 787 s2Step39Add0A s2Step39Add0B s2Step39Add1A s2Step39Add1B [792] [780] s2Step39Add0Work s2Step39Add1Work=some s2Step39F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step39HeadFvAfter s2Step39F4FlagArena s2Step39Add0Arena s2Step39Add0During s2Step39Add1During 796 787
    s2Step39Add0A s2Step39Add0B s2Step39Add1A s2Step39Add1B [792] [780] s2Step39Add0Work s2Step39Add1Work
    (fun q hq => s2Step39F4_owned (List.mem_toFinset.mpr hq)) s2Step39F4_flag s2Step39F4_carry
    s2Step39F4_distinct s2Step39F4_apart s2Step39Add0_checked s2Step39Add1_checked
def s2Step40F4FlagArena : Arena := ⟨s2Step40HeadFvAfter.live∪{844},Finset.union_subset s2Step40HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step40F4_flag : s2Step40HeadFvAfter.checkBorrow 1 [844]=some s2Step40F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step40HeadFvAfter,arenaWires]
  · rfl
theorem s2Step40F4_carry : s2Step40F4FlagArena.checkBorrow 1 [845]=some s2Step40Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step40F4FlagArena,s2Step40HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step40F4FlagArena,s2Step40HeadFvAfter,s2Step40Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40F4_owned : (798::791::((s2Step40Add0A++s2Step40Add1A)++(s2Step40Add0B++s2Step40Add1B))).toFinset⊆s2Step40HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40F4_distinct : (798::791::844::845::((s2Step40Add0A++s2Step40Add1A)++(s2Step40Add0B++s2Step40Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40F4_apart : Disjoint (s2Step40Add0A++s2Step40Add0B).toFinset (s2Step40Add1A++s2Step40Add1B).toFinset := by
  have nd : ((s2Step40Add0A++s2Step40Add0B)++(s2Step40Add1A++s2Step40Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step40F4Plan : HmrHybridF4Plan := ⟨s2Step40F4FlagArena,[844],s2Step40Add0Arena,[845],s2Step40Add0During,s2Step40Add0Work,s2Step40Add1During,s2Step40Add1Work⟩
theorem s2Step40F4_checked : compileHmrHybridF4Log s2Step40HeadFvAfter 798 791 s2Step40Add0A s2Step40Add0B s2Step40Add1A s2Step40Add1B [844] [845] s2Step40Add0Work s2Step40Add1Work=some s2Step40F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step40HeadFvAfter s2Step40F4FlagArena s2Step40Add0Arena s2Step40Add0During s2Step40Add1During 798 791
    s2Step40Add0A s2Step40Add0B s2Step40Add1A s2Step40Add1B [844] [845] s2Step40Add0Work s2Step40Add1Work
    (fun q hq => s2Step40F4_owned (List.mem_toFinset.mpr hq)) s2Step40F4_flag s2Step40F4_carry
    s2Step40F4_distinct s2Step40F4_apart s2Step40Add0_checked s2Step40Add1_checked
def s2Step41F4FlagArena : Arena := ⟨s2Step41HeadFvAfter.live∪{844},Finset.union_subset s2Step41HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step41F4_flag : s2Step41HeadFvAfter.checkBorrow 1 [844]=some s2Step41F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step41HeadFvAfter,s2Step40HeadFvAfter,arenaWires]
  · rfl
theorem s2Step41F4_carry : s2Step41F4FlagArena.checkBorrow 1 [845]=some s2Step41Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step41F4FlagArena,s2Step41HeadFvAfter,s2Step40HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step41F4FlagArena,s2Step41HeadFvAfter,s2Step40HeadFvAfter,s2Step41Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41F4_owned : (798::797::((s2Step41Add0A++s2Step41Add1A)++(s2Step41Add0B++s2Step41Add1B))).toFinset⊆s2Step41HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41F4_distinct : (798::797::844::845::((s2Step41Add0A++s2Step41Add1A)++(s2Step41Add0B++s2Step41Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41F4_apart : Disjoint (s2Step41Add0A++s2Step41Add0B).toFinset (s2Step41Add1A++s2Step41Add1B).toFinset := by
  have nd : ((s2Step41Add0A++s2Step41Add0B)++(s2Step41Add1A++s2Step41Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step41F4Plan : HmrHybridF4Plan := ⟨s2Step41F4FlagArena,[844],s2Step41Add0Arena,[845],s2Step41Add0During,s2Step41Add0Work,s2Step41Add1During,s2Step41Add1Work⟩
theorem s2Step41F4_checked : compileHmrHybridF4Log s2Step41HeadFvAfter 798 797 s2Step41Add0A s2Step41Add0B s2Step41Add1A s2Step41Add1B [844] [845] s2Step41Add0Work s2Step41Add1Work=some s2Step41F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step41HeadFvAfter s2Step41F4FlagArena s2Step41Add0Arena s2Step41Add0During s2Step41Add1During 798 797
    s2Step41Add0A s2Step41Add0B s2Step41Add1A s2Step41Add1B [844] [845] s2Step41Add0Work s2Step41Add1Work
    (fun q hq => s2Step41F4_owned (List.mem_toFinset.mpr hq)) s2Step41F4_flag s2Step41F4_carry
    s2Step41F4_distinct s2Step41F4_apart s2Step41Add0_checked s2Step41Add1_checked
def s2Step42F4FlagArena : Arena := ⟨s2Step42HeadFvAfter.live∪{844},Finset.union_subset s2Step42HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step42F4_flag : s2Step42HeadFvAfter.checkBorrow 1 [844]=some s2Step42F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42HeadFvAfter,arenaWires]
  · rfl
theorem s2Step42F4_carry : s2Step42F4FlagArena.checkBorrow 1 [845]=some s2Step42Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42F4FlagArena,s2Step42HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step42F4FlagArena,s2Step42HeadFvAfter,s2Step42Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42F4_owned : (798::791::((s2Step42Add0A++s2Step42Add1A)++(s2Step42Add0B++s2Step42Add1B))).toFinset⊆s2Step42HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42F4_distinct : (798::791::844::845::((s2Step42Add0A++s2Step42Add1A)++(s2Step42Add0B++s2Step42Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42F4_apart : Disjoint (s2Step42Add0A++s2Step42Add0B).toFinset (s2Step42Add1A++s2Step42Add1B).toFinset := by
  have nd : ((s2Step42Add0A++s2Step42Add0B)++(s2Step42Add1A++s2Step42Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step42F4Plan : HmrHybridF4Plan := ⟨s2Step42F4FlagArena,[844],s2Step42Add0Arena,[845],s2Step42Add0During,s2Step42Add0Work,s2Step42Add1During,s2Step42Add1Work⟩
theorem s2Step42F4_checked : compileHmrHybridF4Log s2Step42HeadFvAfter 798 791 s2Step42Add0A s2Step42Add0B s2Step42Add1A s2Step42Add1B [844] [845] s2Step42Add0Work s2Step42Add1Work=some s2Step42F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step42HeadFvAfter s2Step42F4FlagArena s2Step42Add0Arena s2Step42Add0During s2Step42Add1During 798 791
    s2Step42Add0A s2Step42Add0B s2Step42Add1A s2Step42Add1B [844] [845] s2Step42Add0Work s2Step42Add1Work
    (fun q hq => s2Step42F4_owned (List.mem_toFinset.mpr hq)) s2Step42F4_flag s2Step42F4_carry
    s2Step42F4_distinct s2Step42F4_apart s2Step42Add0_checked s2Step42Add1_checked
def s2Step43F4FlagArena : Arena := ⟨s2Step43HeadFvAfter.live∪{844},Finset.union_subset s2Step43HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step43F4_flag : s2Step43HeadFvAfter.checkBorrow 1 [844]=some s2Step43F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43HeadFvAfter,s2Step42HeadFvAfter,arenaWires]
  · rfl
theorem s2Step43F4_carry : s2Step43F4FlagArena.checkBorrow 1 [845]=some s2Step43Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43F4FlagArena,s2Step43HeadFvAfter,s2Step42HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step43F4FlagArena,s2Step43HeadFvAfter,s2Step42HeadFvAfter,s2Step43Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43F4_owned : (798::799::((s2Step43Add0A++s2Step43Add1A)++(s2Step43Add0B++s2Step43Add1B))).toFinset⊆s2Step43HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43F4_distinct : (798::799::844::845::((s2Step43Add0A++s2Step43Add1A)++(s2Step43Add0B++s2Step43Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43F4_apart : Disjoint (s2Step43Add0A++s2Step43Add0B).toFinset (s2Step43Add1A++s2Step43Add1B).toFinset := by
  have nd : ((s2Step43Add0A++s2Step43Add0B)++(s2Step43Add1A++s2Step43Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step43F4Plan : HmrHybridF4Plan := ⟨s2Step43F4FlagArena,[844],s2Step43Add0Arena,[845],s2Step43Add0During,s2Step43Add0Work,s2Step43Add1During,s2Step43Add1Work⟩
theorem s2Step43F4_checked : compileHmrHybridF4Log s2Step43HeadFvAfter 798 799 s2Step43Add0A s2Step43Add0B s2Step43Add1A s2Step43Add1B [844] [845] s2Step43Add0Work s2Step43Add1Work=some s2Step43F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step43HeadFvAfter s2Step43F4FlagArena s2Step43Add0Arena s2Step43Add0During s2Step43Add1During 798 799
    s2Step43Add0A s2Step43Add0B s2Step43Add1A s2Step43Add1B [844] [845] s2Step43Add0Work s2Step43Add1Work
    (fun q hq => s2Step43F4_owned (List.mem_toFinset.mpr hq)) s2Step43F4_flag s2Step43F4_carry
    s2Step43F4_distinct s2Step43F4_apart s2Step43Add0_checked s2Step43Add1_checked
def s2Step44F4FlagArena : Arena := ⟨s2Step44HeadFvAfter.live∪{792},Finset.union_subset s2Step44HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step44F4_flag : s2Step44HeadFvAfter.checkBorrow 1 [792]=some s2Step44F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step44HeadFvAfter,arenaWires]
  · rfl
theorem s2Step44F4_carry : s2Step44F4FlagArena.checkBorrow 1 [800]=some s2Step44Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step44F4FlagArena,s2Step44HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step44F4FlagArena,s2Step44HeadFvAfter,s2Step44Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44F4_owned : (798::801::((s2Step44Add0A++s2Step44Add1A)++(s2Step44Add0B++s2Step44Add1B))).toFinset⊆s2Step44HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44F4_distinct : (798::801::792::800::((s2Step44Add0A++s2Step44Add1A)++(s2Step44Add0B++s2Step44Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44F4_apart : Disjoint (s2Step44Add0A++s2Step44Add0B).toFinset (s2Step44Add1A++s2Step44Add1B).toFinset := by
  have nd : ((s2Step44Add0A++s2Step44Add0B)++(s2Step44Add1A++s2Step44Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step44F4Plan : HmrHybridF4Plan := ⟨s2Step44F4FlagArena,[792],s2Step44Add0Arena,[800],s2Step44Add0During,s2Step44Add0Work,s2Step44Add1During,s2Step44Add1Work⟩
theorem s2Step44F4_checked : compileHmrHybridF4Log s2Step44HeadFvAfter 798 801 s2Step44Add0A s2Step44Add0B s2Step44Add1A s2Step44Add1B [792] [800] s2Step44Add0Work s2Step44Add1Work=some s2Step44F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step44HeadFvAfter s2Step44F4FlagArena s2Step44Add0Arena s2Step44Add0During s2Step44Add1During 798 801
    s2Step44Add0A s2Step44Add0B s2Step44Add1A s2Step44Add1B [792] [800] s2Step44Add0Work s2Step44Add1Work
    (fun q hq => s2Step44F4_owned (List.mem_toFinset.mpr hq)) s2Step44F4_flag s2Step44F4_carry
    s2Step44F4_distinct s2Step44F4_apart s2Step44Add0_checked s2Step44Add1_checked
def s2Step45F4FlagArena : Arena := ⟨s2Step45HeadFvAfter.live∪{792},Finset.union_subset s2Step45HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step45F4_flag : s2Step45HeadFvAfter.checkBorrow 1 [792]=some s2Step45F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step45HeadFvAfter,s2Step44HeadFvAfter,arenaWires]
  · rfl
theorem s2Step45F4_carry : s2Step45F4FlagArena.checkBorrow 1 [800]=some s2Step45Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step45F4FlagArena,s2Step45HeadFvAfter,s2Step44HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step45F4FlagArena,s2Step45HeadFvAfter,s2Step44HeadFvAfter,s2Step45Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45F4_owned : (798::804::((s2Step45Add0A++s2Step45Add1A)++(s2Step45Add0B++s2Step45Add1B))).toFinset⊆s2Step45HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45F4_distinct : (798::804::792::800::((s2Step45Add0A++s2Step45Add1A)++(s2Step45Add0B++s2Step45Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45F4_apart : Disjoint (s2Step45Add0A++s2Step45Add0B).toFinset (s2Step45Add1A++s2Step45Add1B).toFinset := by
  have nd : ((s2Step45Add0A++s2Step45Add0B)++(s2Step45Add1A++s2Step45Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step45F4Plan : HmrHybridF4Plan := ⟨s2Step45F4FlagArena,[792],s2Step45Add0Arena,[800],s2Step45Add0During,s2Step45Add0Work,s2Step45Add1During,s2Step45Add1Work⟩
theorem s2Step45F4_checked : compileHmrHybridF4Log s2Step45HeadFvAfter 798 804 s2Step45Add0A s2Step45Add0B s2Step45Add1A s2Step45Add1B [792] [800] s2Step45Add0Work s2Step45Add1Work=some s2Step45F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step45HeadFvAfter s2Step45F4FlagArena s2Step45Add0Arena s2Step45Add0During s2Step45Add1During 798 804
    s2Step45Add0A s2Step45Add0B s2Step45Add1A s2Step45Add1B [792] [800] s2Step45Add0Work s2Step45Add1Work
    (fun q hq => s2Step45F4_owned (List.mem_toFinset.mpr hq)) s2Step45F4_flag s2Step45F4_carry
    s2Step45F4_distinct s2Step45F4_apart s2Step45Add0_checked s2Step45Add1_checked
def s2Step46F4FlagArena : Arena := ⟨s2Step46HeadFvAfter.live∪{792},Finset.union_subset s2Step46HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step46F4_flag : s2Step46HeadFvAfter.checkBorrow 1 [792]=some s2Step46F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46HeadFvAfter,arenaWires]
  · rfl
theorem s2Step46F4_carry : s2Step46F4FlagArena.checkBorrow 1 [800]=some s2Step46Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46F4FlagArena,s2Step46HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step46F4FlagArena,s2Step46HeadFvAfter,s2Step46Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46F4_owned : (798::803::((s2Step46Add0A++s2Step46Add1A)++(s2Step46Add0B++s2Step46Add1B))).toFinset⊆s2Step46HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46F4_distinct : (798::803::792::800::((s2Step46Add0A++s2Step46Add1A)++(s2Step46Add0B++s2Step46Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46F4_apart : Disjoint (s2Step46Add0A++s2Step46Add0B).toFinset (s2Step46Add1A++s2Step46Add1B).toFinset := by
  have nd : ((s2Step46Add0A++s2Step46Add0B)++(s2Step46Add1A++s2Step46Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step46F4Plan : HmrHybridF4Plan := ⟨s2Step46F4FlagArena,[792],s2Step46Add0Arena,[800],s2Step46Add0During,s2Step46Add0Work,s2Step46Add1During,s2Step46Add1Work⟩
theorem s2Step46F4_checked : compileHmrHybridF4Log s2Step46HeadFvAfter 798 803 s2Step46Add0A s2Step46Add0B s2Step46Add1A s2Step46Add1B [792] [800] s2Step46Add0Work s2Step46Add1Work=some s2Step46F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step46HeadFvAfter s2Step46F4FlagArena s2Step46Add0Arena s2Step46Add0During s2Step46Add1During 798 803
    s2Step46Add0A s2Step46Add0B s2Step46Add1A s2Step46Add1B [792] [800] s2Step46Add0Work s2Step46Add1Work
    (fun q hq => s2Step46F4_owned (List.mem_toFinset.mpr hq)) s2Step46F4_flag s2Step46F4_carry
    s2Step46F4_distinct s2Step46F4_apart s2Step46Add0_checked s2Step46Add1_checked
def s2Step47F4FlagArena : Arena := ⟨s2Step47HeadFvAfter.live∪{787},Finset.union_subset s2Step47HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step47F4_flag : s2Step47HeadFvAfter.checkBorrow 1 [787]=some s2Step47F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step47HeadFvAfter,arenaWires]
  · rfl
theorem s2Step47F4_carry : s2Step47F4FlagArena.checkBorrow 1 [790]=some s2Step47Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step47F4FlagArena,s2Step47HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step47F4FlagArena,s2Step47HeadFvAfter,s2Step47Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47F4_owned : (803::798::((s2Step47Add0A++s2Step47Add1A)++(s2Step47Add0B++s2Step47Add1B))).toFinset⊆s2Step47HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47F4_distinct : (803::798::787::790::((s2Step47Add0A++s2Step47Add1A)++(s2Step47Add0B++s2Step47Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47F4_apart : Disjoint (s2Step47Add0A++s2Step47Add0B).toFinset (s2Step47Add1A++s2Step47Add1B).toFinset := by
  have nd : ((s2Step47Add0A++s2Step47Add0B)++(s2Step47Add1A++s2Step47Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step47F4Plan : HmrHybridF4Plan := ⟨s2Step47F4FlagArena,[787],s2Step47Add0Arena,[790],s2Step47Add0During,s2Step47Add0Work,s2Step47Add1During,s2Step47Add1Work⟩
theorem s2Step47F4_checked : compileHmrHybridF4Log s2Step47HeadFvAfter 803 798 s2Step47Add0A s2Step47Add0B s2Step47Add1A s2Step47Add1B [787] [790] s2Step47Add0Work s2Step47Add1Work=some s2Step47F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step47HeadFvAfter s2Step47F4FlagArena s2Step47Add0Arena s2Step47Add0During s2Step47Add1During 803 798
    s2Step47Add0A s2Step47Add0B s2Step47Add1A s2Step47Add1B [787] [790] s2Step47Add0Work s2Step47Add1Work
    (fun q hq => s2Step47F4_owned (List.mem_toFinset.mpr hq)) s2Step47F4_flag s2Step47F4_carry
    s2Step47F4_distinct s2Step47F4_apart s2Step47Add0_checked s2Step47Add1_checked

end ECDSAAdd.Arithmetic.Paper935
