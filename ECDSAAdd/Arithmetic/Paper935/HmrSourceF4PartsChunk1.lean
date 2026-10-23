import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
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

end ECDSAAdd.Arithmetic.Paper935
