import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk4

namespace ECDSAAdd.Arithmetic.Paper935
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
def s6Step16F4FlagArena : Arena := ⟨s6Step16HeadFvAfter.live∪{778},Finset.union_subset s6Step16HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step16F4_flag : s6Step16HeadFvAfter.checkBorrow 1 [778]=some s6Step16F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step16HeadFvAfter,arenaWires]
  · rfl
theorem s6Step16F4_carry : s6Step16F4FlagArena.checkBorrow 1 [838]=some s6Step16Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step16F4FlagArena,s6Step16HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step16F4FlagArena,s6Step16HeadFvAfter,s6Step16Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step16F4_owned : (780::813::((s6Step16Add0A++s6Step16Add1A)++(s6Step16Add0B++s6Step16Add1B))).toFinset⊆s6Step16HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step16HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16F4_distinct : (780::813::778::838::((s6Step16Add0A++s6Step16Add1A)++(s6Step16Add0B++s6Step16Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16F4_apart : Disjoint (s6Step16Add0A++s6Step16Add0B).toFinset (s6Step16Add1A++s6Step16Add1B).toFinset := by
  have nd : ((s6Step16Add0A++s6Step16Add0B)++(s6Step16Add1A++s6Step16Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step16F4Plan : HmrHybridF4Plan := ⟨s6Step16F4FlagArena,[778],s6Step16Add0Arena,[838],s6Step16Add0During,s6Step16Add0Work,s6Step16Add1During,s6Step16Add1Work⟩
theorem s6Step16F4_checked : compileHmrHybridF4Log s6Step16HeadFvAfter 780 813 s6Step16Add0A s6Step16Add0B s6Step16Add1A s6Step16Add1B [778] [838] s6Step16Add0Work s6Step16Add1Work=some s6Step16F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step16HeadFvAfter s6Step16F4FlagArena s6Step16Add0Arena s6Step16Add0During s6Step16Add1During 780 813
    s6Step16Add0A s6Step16Add0B s6Step16Add1A s6Step16Add1B [778] [838] s6Step16Add0Work s6Step16Add1Work
    (fun q hq => s6Step16F4_owned (List.mem_toFinset.mpr hq)) s6Step16F4_flag s6Step16F4_carry
    s6Step16F4_distinct s6Step16F4_apart s6Step16Add0_checked s6Step16Add1_checked
def s6Step17F4FlagArena : Arena := ⟨s6Step17HeadFvAfter.live∪{814},Finset.union_subset s6Step17HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step17F4_flag : s6Step17HeadFvAfter.checkBorrow 1 [814]=some s6Step17F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step17HeadFvAfter,arenaWires]
  · rfl
theorem s6Step17F4_carry : s6Step17F4FlagArena.checkBorrow 1 [821]=some s6Step17Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step17F4FlagArena,s6Step17HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step17F4FlagArena,s6Step17HeadFvAfter,s6Step17Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step17F4_owned : (888::860::((s6Step17Add0A++s6Step17Add1A)++(s6Step17Add0B++s6Step17Add1B))).toFinset⊆s6Step17HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step17HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17F4_distinct : (888::860::814::821::((s6Step17Add0A++s6Step17Add1A)++(s6Step17Add0B++s6Step17Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17F4_apart : Disjoint (s6Step17Add0A++s6Step17Add0B).toFinset (s6Step17Add1A++s6Step17Add1B).toFinset := by
  have nd : ((s6Step17Add0A++s6Step17Add0B)++(s6Step17Add1A++s6Step17Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step17F4Plan : HmrHybridF4Plan := ⟨s6Step17F4FlagArena,[814],s6Step17Add0Arena,[821],s6Step17Add0During,s6Step17Add0Work,s6Step17Add1During,s6Step17Add1Work⟩
theorem s6Step17F4_checked : compileHmrHybridF4Log s6Step17HeadFvAfter 888 860 s6Step17Add0A s6Step17Add0B s6Step17Add1A s6Step17Add1B [814] [821] s6Step17Add0Work s6Step17Add1Work=some s6Step17F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step17HeadFvAfter s6Step17F4FlagArena s6Step17Add0Arena s6Step17Add0During s6Step17Add1During 888 860
    s6Step17Add0A s6Step17Add0B s6Step17Add1A s6Step17Add1B [814] [821] s6Step17Add0Work s6Step17Add1Work
    (fun q hq => s6Step17F4_owned (List.mem_toFinset.mpr hq)) s6Step17F4_flag s6Step17F4_carry
    s6Step17F4_distinct s6Step17F4_apart s6Step17Add0_checked s6Step17Add1_checked
def s6Step18F4FlagArena : Arena := ⟨s6Step18HeadFvAfter.live∪{869},Finset.union_subset s6Step18HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step18F4_flag : s6Step18HeadFvAfter.checkBorrow 1 [869]=some s6Step18F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step18HeadFvAfter,arenaWires]
  · rfl
theorem s6Step18F4_carry : s6Step18F4FlagArena.checkBorrow 1 [843]=some s6Step18Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step18F4FlagArena,s6Step18HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step18F4FlagArena,s6Step18HeadFvAfter,s6Step18Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step18F4_owned : (778::862::((s6Step18Add0A++s6Step18Add1A)++(s6Step18Add0B++s6Step18Add1B))).toFinset⊆s6Step18HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step18HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18F4_distinct : (778::862::869::843::((s6Step18Add0A++s6Step18Add1A)++(s6Step18Add0B++s6Step18Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18F4_apart : Disjoint (s6Step18Add0A++s6Step18Add0B).toFinset (s6Step18Add1A++s6Step18Add1B).toFinset := by
  have nd : ((s6Step18Add0A++s6Step18Add0B)++(s6Step18Add1A++s6Step18Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step18F4Plan : HmrHybridF4Plan := ⟨s6Step18F4FlagArena,[869],s6Step18Add0Arena,[843],s6Step18Add0During,s6Step18Add0Work,s6Step18Add1During,s6Step18Add1Work⟩
theorem s6Step18F4_checked : compileHmrHybridF4Log s6Step18HeadFvAfter 778 862 s6Step18Add0A s6Step18Add0B s6Step18Add1A s6Step18Add1B [869] [843] s6Step18Add0Work s6Step18Add1Work=some s6Step18F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step18HeadFvAfter s6Step18F4FlagArena s6Step18Add0Arena s6Step18Add0During s6Step18Add1During 778 862
    s6Step18Add0A s6Step18Add0B s6Step18Add1A s6Step18Add1B [869] [843] s6Step18Add0Work s6Step18Add1Work
    (fun q hq => s6Step18F4_owned (List.mem_toFinset.mpr hq)) s6Step18F4_flag s6Step18F4_carry
    s6Step18F4_distinct s6Step18F4_apart s6Step18Add0_checked s6Step18Add1_checked
def s6Step19F4FlagArena : Arena := ⟨s6Step19HeadFvAfter.live∪{854},Finset.union_subset s6Step19HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step19F4_flag : s6Step19HeadFvAfter.checkBorrow 1 [854]=some s6Step19F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step19HeadFvAfter,arenaWires]
  · rfl
theorem s6Step19F4_carry : s6Step19F4FlagArena.checkBorrow 1 [830]=some s6Step19Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step19F4FlagArena,s6Step19HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step19F4FlagArena,s6Step19HeadFvAfter,s6Step19Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step19F4_owned : (814::807::((s6Step19Add0A++s6Step19Add1A)++(s6Step19Add0B++s6Step19Add1B))).toFinset⊆s6Step19HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step19HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19F4_distinct : (814::807::854::830::((s6Step19Add0A++s6Step19Add1A)++(s6Step19Add0B++s6Step19Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19F4_apart : Disjoint (s6Step19Add0A++s6Step19Add0B).toFinset (s6Step19Add1A++s6Step19Add1B).toFinset := by
  have nd : ((s6Step19Add0A++s6Step19Add0B)++(s6Step19Add1A++s6Step19Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step19F4Plan : HmrHybridF4Plan := ⟨s6Step19F4FlagArena,[854],s6Step19Add0Arena,[830],s6Step19Add0During,s6Step19Add0Work,s6Step19Add1During,s6Step19Add1Work⟩
theorem s6Step19F4_checked : compileHmrHybridF4Log s6Step19HeadFvAfter 814 807 s6Step19Add0A s6Step19Add0B s6Step19Add1A s6Step19Add1B [854] [830] s6Step19Add0Work s6Step19Add1Work=some s6Step19F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step19HeadFvAfter s6Step19F4FlagArena s6Step19Add0Arena s6Step19Add0During s6Step19Add1During 814 807
    s6Step19Add0A s6Step19Add0B s6Step19Add1A s6Step19Add1B [854] [830] s6Step19Add0Work s6Step19Add1Work
    (fun q hq => s6Step19F4_owned (List.mem_toFinset.mpr hq)) s6Step19F4_flag s6Step19F4_carry
    s6Step19F4_distinct s6Step19F4_apart s6Step19Add0_checked s6Step19Add1_checked
def s6Step20F4FlagArena : Arena := ⟨s6Step20HeadFvAfter.live∪{898},Finset.union_subset s6Step20HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step20F4_flag : s6Step20HeadFvAfter.checkBorrow 1 [898]=some s6Step20F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step20HeadFvAfter,arenaWires]
  · rfl
theorem s6Step20F4_carry : s6Step20F4FlagArena.checkBorrow 1 [848]=some s6Step20Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step20F4FlagArena,s6Step20HeadFvAfter,arenaWires]
  · change s6Step20Add0Arena.live=(s6Step20HeadFvAfter.live∪{898})∪{848}
    apply hmrArena_union_pair_of_filter_check s6Step20HeadFvAfter s6Step20Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 898 848 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step20F4_owned : (869::813::((s6Step20Add0A++s6Step20Add1A)++(s6Step20Add0B++s6Step20Add1B))).toFinset⊆s6Step20HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step20HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20F4_distinct : (869::813::898::848::((s6Step20Add0A++s6Step20Add1A)++(s6Step20Add0B++s6Step20Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20F4_apart : Disjoint (s6Step20Add0A++s6Step20Add0B).toFinset (s6Step20Add1A++s6Step20Add1B).toFinset := by
  have nd : ((s6Step20Add0A++s6Step20Add0B)++(s6Step20Add1A++s6Step20Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step20F4Plan : HmrHybridF4Plan := ⟨s6Step20F4FlagArena,[898],s6Step20Add0Arena,[848],s6Step20Add0During,s6Step20Add0Work,s6Step20Add1During,s6Step20Add1Work⟩
theorem s6Step20F4_checked : compileHmrHybridF4Log s6Step20HeadFvAfter 869 813 s6Step20Add0A s6Step20Add0B s6Step20Add1A s6Step20Add1B [898] [848] s6Step20Add0Work s6Step20Add1Work=some s6Step20F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step20HeadFvAfter s6Step20F4FlagArena s6Step20Add0Arena s6Step20Add0During s6Step20Add1During 869 813
    s6Step20Add0A s6Step20Add0B s6Step20Add1A s6Step20Add1B [898] [848] s6Step20Add0Work s6Step20Add1Work
    (fun q hq => s6Step20F4_owned (List.mem_toFinset.mpr hq)) s6Step20F4_flag s6Step20F4_carry
    s6Step20F4_distinct s6Step20F4_apart s6Step20Add0_checked s6Step20Add1_checked
def s6Step21F4FlagArena : Arena := ⟨s6Step21HeadFvAfter.live∪{841},Finset.union_subset s6Step21HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step21F4_flag : s6Step21HeadFvAfter.checkBorrow 1 [841]=some s6Step21F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step21HeadFvAfter,arenaWires]
  · rfl
theorem s6Step21F4_carry : s6Step21F4FlagArena.checkBorrow 1 [839]=some s6Step21Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step21F4FlagArena,s6Step21HeadFvAfter,arenaWires]
  · change s6Step21Add0Arena.live=(s6Step21HeadFvAfter.live∪{841})∪{839}
    apply hmrArena_union_pair_of_filter_check s6Step21HeadFvAfter s6Step21Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 841 839 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step21F4_owned : (854::860::((s6Step21Add0A++s6Step21Add1A)++(s6Step21Add0B++s6Step21Add1B))).toFinset⊆s6Step21HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step21HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21F4_distinct : (854::860::841::839::((s6Step21Add0A++s6Step21Add1A)++(s6Step21Add0B++s6Step21Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21F4_apart : Disjoint (s6Step21Add0A++s6Step21Add0B).toFinset (s6Step21Add1A++s6Step21Add1B).toFinset := by
  have nd : ((s6Step21Add0A++s6Step21Add0B)++(s6Step21Add1A++s6Step21Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step21F4Plan : HmrHybridF4Plan := ⟨s6Step21F4FlagArena,[841],s6Step21Add0Arena,[839],s6Step21Add0During,s6Step21Add0Work,s6Step21Add1During,s6Step21Add1Work⟩
theorem s6Step21F4_checked : compileHmrHybridF4Log s6Step21HeadFvAfter 854 860 s6Step21Add0A s6Step21Add0B s6Step21Add1A s6Step21Add1B [841] [839] s6Step21Add0Work s6Step21Add1Work=some s6Step21F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step21HeadFvAfter s6Step21F4FlagArena s6Step21Add0Arena s6Step21Add0During s6Step21Add1During 854 860
    s6Step21Add0A s6Step21Add0B s6Step21Add1A s6Step21Add1B [841] [839] s6Step21Add0Work s6Step21Add1Work
    (fun q hq => s6Step21F4_owned (List.mem_toFinset.mpr hq)) s6Step21F4_flag s6Step21F4_carry
    s6Step21F4_distinct s6Step21F4_apart s6Step21Add0_checked s6Step21Add1_checked
def s6Step22F4FlagArena : Arena := ⟨s6Step22HeadFvAfter.live∪{794},Finset.union_subset s6Step22HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step22F4_flag : s6Step22HeadFvAfter.checkBorrow 1 [794]=some s6Step22F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step22HeadFvAfter,arenaWires]
  · rfl
theorem s6Step22F4_carry : s6Step22F4FlagArena.checkBorrow 1 [850]=some s6Step22Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step22F4FlagArena,s6Step22HeadFvAfter,arenaWires]
  · change s6Step22Add0Arena.live=(s6Step22HeadFvAfter.live∪{794})∪{850}
    apply hmrArena_union_pair_of_filter_check s6Step22HeadFvAfter s6Step22Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 850 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step22F4_owned : (898::862::((s6Step22Add0A++s6Step22Add1A)++(s6Step22Add0B++s6Step22Add1B))).toFinset⊆s6Step22HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step22HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22F4_distinct : (898::862::794::850::((s6Step22Add0A++s6Step22Add1A)++(s6Step22Add0B++s6Step22Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22F4_apart : Disjoint (s6Step22Add0A++s6Step22Add0B).toFinset (s6Step22Add1A++s6Step22Add1B).toFinset := by
  have nd : ((s6Step22Add0A++s6Step22Add0B)++(s6Step22Add1A++s6Step22Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step22F4Plan : HmrHybridF4Plan := ⟨s6Step22F4FlagArena,[794],s6Step22Add0Arena,[850],s6Step22Add0During,s6Step22Add0Work,s6Step22Add1During,s6Step22Add1Work⟩
theorem s6Step22F4_checked : compileHmrHybridF4Log s6Step22HeadFvAfter 898 862 s6Step22Add0A s6Step22Add0B s6Step22Add1A s6Step22Add1B [794] [850] s6Step22Add0Work s6Step22Add1Work=some s6Step22F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step22HeadFvAfter s6Step22F4FlagArena s6Step22Add0Arena s6Step22Add0During s6Step22Add1During 898 862
    s6Step22Add0A s6Step22Add0B s6Step22Add1A s6Step22Add1B [794] [850] s6Step22Add0Work s6Step22Add1Work
    (fun q hq => s6Step22F4_owned (List.mem_toFinset.mpr hq)) s6Step22F4_flag s6Step22F4_carry
    s6Step22F4_distinct s6Step22F4_apart s6Step22Add0_checked s6Step22Add1_checked
def s6Step23F4FlagArena : Arena := ⟨s6Step23HeadFvAfter.live∪{881},Finset.union_subset s6Step23HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step23F4_flag : s6Step23HeadFvAfter.checkBorrow 1 [881]=some s6Step23F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step23HeadFvAfter,arenaWires]
  · rfl
theorem s6Step23F4_carry : s6Step23F4FlagArena.checkBorrow 1 [853]=some s6Step23Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step23F4FlagArena,s6Step23HeadFvAfter,arenaWires]
  · change s6Step23Add0Arena.live=(s6Step23HeadFvAfter.live∪{881})∪{853}
    apply hmrArena_union_pair_of_filter_check s6Step23HeadFvAfter s6Step23Add0Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 881 853 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step23F4_owned : (841::807::((s6Step23Add0A++s6Step23Add1A)++(s6Step23Add0B++s6Step23Add1B))).toFinset⊆s6Step23HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step23HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23F4_distinct : (841::807::881::853::((s6Step23Add0A++s6Step23Add1A)++(s6Step23Add0B++s6Step23Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23F4_apart : Disjoint (s6Step23Add0A++s6Step23Add0B).toFinset (s6Step23Add1A++s6Step23Add1B).toFinset := by
  have nd : ((s6Step23Add0A++s6Step23Add0B)++(s6Step23Add1A++s6Step23Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step23F4Plan : HmrHybridF4Plan := ⟨s6Step23F4FlagArena,[881],s6Step23Add0Arena,[853],s6Step23Add0During,s6Step23Add0Work,s6Step23Add1During,s6Step23Add1Work⟩
theorem s6Step23F4_checked : compileHmrHybridF4Log s6Step23HeadFvAfter 841 807 s6Step23Add0A s6Step23Add0B s6Step23Add1A s6Step23Add1B [881] [853] s6Step23Add0Work s6Step23Add1Work=some s6Step23F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step23HeadFvAfter s6Step23F4FlagArena s6Step23Add0Arena s6Step23Add0During s6Step23Add1During 841 807
    s6Step23Add0A s6Step23Add0B s6Step23Add1A s6Step23Add1B [881] [853] s6Step23Add0Work s6Step23Add1Work
    (fun q hq => s6Step23F4_owned (List.mem_toFinset.mpr hq)) s6Step23F4_flag s6Step23F4_carry
    s6Step23F4_distinct s6Step23F4_apart s6Step23Add0_checked s6Step23Add1_checked
def s6Step24F4FlagArena : Arena := ⟨s6Step24HeadFvAfter.live∪{867},Finset.union_subset s6Step24HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step24F4_flag : s6Step24HeadFvAfter.checkBorrow 1 [867]=some s6Step24F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24HeadFvAfter,arenaWires]
  · rfl
theorem s6Step24F4_carry : s6Step24F4FlagArena.checkBorrow 1 [786]=some s6Step24Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24F4FlagArena,s6Step24HeadFvAfter,arenaWires]
  · change s6Step24Add0Arena.live=(s6Step24HeadFvAfter.live∪{867})∪{786}
    apply hmrArena_union_pair_of_filter_check s6Step24HeadFvAfter s6Step24Add0Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 867 786 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step24F4_owned : (794::813::((s6Step24Add0A++s6Step24Add1A)++(s6Step24Add0B++s6Step24Add1B))).toFinset⊆s6Step24HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step24HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24F4_distinct : (794::813::867::786::((s6Step24Add0A++s6Step24Add1A)++(s6Step24Add0B++s6Step24Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24F4_apart : Disjoint (s6Step24Add0A++s6Step24Add0B).toFinset (s6Step24Add1A++s6Step24Add1B).toFinset := by
  have nd : ((s6Step24Add0A++s6Step24Add0B)++(s6Step24Add1A++s6Step24Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step24F4Plan : HmrHybridF4Plan := ⟨s6Step24F4FlagArena,[867],s6Step24Add0Arena,[786],s6Step24Add0During,s6Step24Add0Work,s6Step24Add1During,s6Step24Add1Work⟩
theorem s6Step24F4_checked : compileHmrHybridF4Log s6Step24HeadFvAfter 794 813 s6Step24Add0A s6Step24Add0B s6Step24Add1A s6Step24Add1B [867] [786] s6Step24Add0Work s6Step24Add1Work=some s6Step24F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step24HeadFvAfter s6Step24F4FlagArena s6Step24Add0Arena s6Step24Add0During s6Step24Add1During 794 813
    s6Step24Add0A s6Step24Add0B s6Step24Add1A s6Step24Add1B [867] [786] s6Step24Add0Work s6Step24Add1Work
    (fun q hq => s6Step24F4_owned (List.mem_toFinset.mpr hq)) s6Step24F4_flag s6Step24F4_carry
    s6Step24F4_distinct s6Step24F4_apart s6Step24Add0_checked s6Step24Add1_checked
def s6Step25F4FlagArena : Arena := ⟨s6Step25HeadFvAfter.live∪{807},Finset.union_subset s6Step25HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step25F4_flag : s6Step25HeadFvAfter.checkBorrow 1 [807]=some s6Step25F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step25HeadFvAfter,arenaWires]
  · rfl
theorem s6Step25F4_carry : s6Step25F4FlagArena.checkBorrow 1 [862]=some s6Step25Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step25F4FlagArena,s6Step25HeadFvAfter,arenaWires]
  · change s6Step25Add0Arena.live=(s6Step25HeadFvAfter.live∪{807})∪{862}
    apply hmrArena_union_pair_of_filter_check s6Step25HeadFvAfter s6Step25Add0Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 807 862 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step25F4_owned : (859::876::((s6Step25Add0A++s6Step25Add1A)++(s6Step25Add0B++s6Step25Add1B))).toFinset⊆s6Step25HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step25HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25F4_distinct : (859::876::807::862::((s6Step25Add0A++s6Step25Add1A)++(s6Step25Add0B++s6Step25Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25F4_apart : Disjoint (s6Step25Add0A++s6Step25Add0B).toFinset (s6Step25Add1A++s6Step25Add1B).toFinset := by
  have nd : ((s6Step25Add0A++s6Step25Add0B)++(s6Step25Add1A++s6Step25Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step25F4Plan : HmrHybridF4Plan := ⟨s6Step25F4FlagArena,[807],s6Step25Add0Arena,[862],s6Step25Add0During,s6Step25Add0Work,s6Step25Add1During,s6Step25Add1Work⟩
theorem s6Step25F4_checked : compileHmrHybridF4Log s6Step25HeadFvAfter 859 876 s6Step25Add0A s6Step25Add0B s6Step25Add1A s6Step25Add1B [807] [862] s6Step25Add0Work s6Step25Add1Work=some s6Step25F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step25HeadFvAfter s6Step25F4FlagArena s6Step25Add0Arena s6Step25Add0During s6Step25Add1During 859 876
    s6Step25Add0A s6Step25Add0B s6Step25Add1A s6Step25Add1B [807] [862] s6Step25Add0Work s6Step25Add1Work
    (fun q hq => s6Step25F4_owned (List.mem_toFinset.mpr hq)) s6Step25F4_flag s6Step25F4_carry
    s6Step25F4_distinct s6Step25F4_apart s6Step25Add0_checked s6Step25Add1_checked
def s6Step26F4FlagArena : Arena := ⟨s6Step26HeadFvAfter.live∪{867},Finset.union_subset s6Step26HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step26F4_flag : s6Step26HeadFvAfter.checkBorrow 1 [867]=some s6Step26F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step26HeadFvAfter,arenaWires]
  · rfl
theorem s6Step26F4_carry : s6Step26F4FlagArena.checkBorrow 1 [786]=some s6Step26Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step26F4FlagArena,s6Step26HeadFvAfter,arenaWires]
  · change s6Step26Add0Arena.live=(s6Step26HeadFvAfter.live∪{867})∪{786}
    apply hmrArena_union_pair_of_filter_check s6Step26HeadFvAfter s6Step26Add0Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 867 786 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step26F4_owned : (853::881::((s6Step26Add0A++s6Step26Add1A)++(s6Step26Add0B++s6Step26Add1B))).toFinset⊆s6Step26HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step26HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26F4_distinct : (853::881::867::786::((s6Step26Add0A++s6Step26Add1A)++(s6Step26Add0B++s6Step26Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26F4_apart : Disjoint (s6Step26Add0A++s6Step26Add0B).toFinset (s6Step26Add1A++s6Step26Add1B).toFinset := by
  have nd : ((s6Step26Add0A++s6Step26Add0B)++(s6Step26Add1A++s6Step26Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step26F4Plan : HmrHybridF4Plan := ⟨s6Step26F4FlagArena,[867],s6Step26Add0Arena,[786],s6Step26Add0During,s6Step26Add0Work,s6Step26Add1During,s6Step26Add1Work⟩
theorem s6Step26F4_checked : compileHmrHybridF4Log s6Step26HeadFvAfter 853 881 s6Step26Add0A s6Step26Add0B s6Step26Add1A s6Step26Add1B [867] [786] s6Step26Add0Work s6Step26Add1Work=some s6Step26F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step26HeadFvAfter s6Step26F4FlagArena s6Step26Add0Arena s6Step26Add0During s6Step26Add1During 853 881
    s6Step26Add0A s6Step26Add0B s6Step26Add1A s6Step26Add1B [867] [786] s6Step26Add0Work s6Step26Add1Work
    (fun q hq => s6Step26F4_owned (List.mem_toFinset.mpr hq)) s6Step26F4_flag s6Step26F4_carry
    s6Step26F4_distinct s6Step26F4_apart s6Step26Add0_checked s6Step26Add1_checked
def s6Step27F4FlagArena : Arena := ⟨s6Step27HeadFvAfter.live∪{877},Finset.union_subset s6Step27HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step27F4_flag : s6Step27HeadFvAfter.checkBorrow 1 [877]=some s6Step27F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27HeadFvAfter,arenaWires]
  · rfl
theorem s6Step27F4_carry : s6Step27F4FlagArena.checkBorrow 1 [855]=some s6Step27Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27F4FlagArena,s6Step27HeadFvAfter,arenaWires]
  · change s6Step27Add0Arena.live=(s6Step27HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step27HeadFvAfter s6Step27Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step27F4_owned : (807::887::((s6Step27Add0A++s6Step27Add1A)++(s6Step27Add0B++s6Step27Add1B))).toFinset⊆s6Step27HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step27HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27F4_distinct : (807::887::877::855::((s6Step27Add0A++s6Step27Add1A)++(s6Step27Add0B++s6Step27Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27F4_apart : Disjoint (s6Step27Add0A++s6Step27Add0B).toFinset (s6Step27Add1A++s6Step27Add1B).toFinset := by
  have nd : ((s6Step27Add0A++s6Step27Add0B)++(s6Step27Add1A++s6Step27Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step27F4Plan : HmrHybridF4Plan := ⟨s6Step27F4FlagArena,[877],s6Step27Add0Arena,[855],s6Step27Add0During,s6Step27Add0Work,s6Step27Add1During,s6Step27Add1Work⟩
theorem s6Step27F4_checked : compileHmrHybridF4Log s6Step27HeadFvAfter 807 887 s6Step27Add0A s6Step27Add0B s6Step27Add1A s6Step27Add1B [877] [855] s6Step27Add0Work s6Step27Add1Work=some s6Step27F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step27HeadFvAfter s6Step27F4FlagArena s6Step27Add0Arena s6Step27Add0During s6Step27Add1During 807 887
    s6Step27Add0A s6Step27Add0B s6Step27Add1A s6Step27Add1B [877] [855] s6Step27Add0Work s6Step27Add1Work
    (fun q hq => s6Step27F4_owned (List.mem_toFinset.mpr hq)) s6Step27F4_flag s6Step27F4_carry
    s6Step27F4_distinct s6Step27F4_apart s6Step27Add0_checked s6Step27Add1_checked
def s6Step28F4FlagArena : Arena := ⟨s6Step28HeadFvAfter.live∪{877},Finset.union_subset s6Step28HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step28F4_flag : s6Step28HeadFvAfter.checkBorrow 1 [877]=some s6Step28F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step28HeadFvAfter,arenaWires]
  · rfl
theorem s6Step28F4_carry : s6Step28F4FlagArena.checkBorrow 1 [855]=some s6Step28Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step28F4FlagArena,s6Step28HeadFvAfter,arenaWires]
  · change s6Step28Add0Arena.live=(s6Step28HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step28HeadFvAfter s6Step28Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step28F4_owned : (793::859::((s6Step28Add0A++s6Step28Add1A)++(s6Step28Add0B++s6Step28Add1B))).toFinset⊆s6Step28HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step28HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28F4_distinct : (793::859::877::855::((s6Step28Add0A++s6Step28Add1A)++(s6Step28Add0B++s6Step28Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28F4_apart : Disjoint (s6Step28Add0A++s6Step28Add0B).toFinset (s6Step28Add1A++s6Step28Add1B).toFinset := by
  have nd : ((s6Step28Add0A++s6Step28Add0B)++(s6Step28Add1A++s6Step28Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step28F4Plan : HmrHybridF4Plan := ⟨s6Step28F4FlagArena,[877],s6Step28Add0Arena,[855],s6Step28Add0During,s6Step28Add0Work,s6Step28Add1During,s6Step28Add1Work⟩
theorem s6Step28F4_checked : compileHmrHybridF4Log s6Step28HeadFvAfter 793 859 s6Step28Add0A s6Step28Add0B s6Step28Add1A s6Step28Add1B [877] [855] s6Step28Add0Work s6Step28Add1Work=some s6Step28F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step28HeadFvAfter s6Step28F4FlagArena s6Step28Add0Arena s6Step28Add0During s6Step28Add1During 793 859
    s6Step28Add0A s6Step28Add0B s6Step28Add1A s6Step28Add1B [877] [855] s6Step28Add0Work s6Step28Add1Work
    (fun q hq => s6Step28F4_owned (List.mem_toFinset.mpr hq)) s6Step28F4_flag s6Step28F4_carry
    s6Step28F4_distinct s6Step28F4_apart s6Step28Add0_checked s6Step28Add1_checked
def s6Step29F4FlagArena : Arena := ⟨s6Step29HeadFvAfter.live∪{877},Finset.union_subset s6Step29HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step29F4_flag : s6Step29HeadFvAfter.checkBorrow 1 [877]=some s6Step29F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29HeadFvAfter,s6Step28HeadFvAfter,arenaWires]
  · rfl
theorem s6Step29F4_carry : s6Step29F4FlagArena.checkBorrow 1 [855]=some s6Step29Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29F4FlagArena,s6Step29HeadFvAfter,s6Step28HeadFvAfter,arenaWires]
  · change s6Step29Add0Arena.live=(s6Step29HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step29HeadFvAfter s6Step29Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step29F4_owned : (768::881::((s6Step29Add0A++s6Step29Add1A)++(s6Step29Add0B++s6Step29Add1B))).toFinset⊆s6Step29HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step29HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29F4_distinct : (768::881::877::855::((s6Step29Add0A++s6Step29Add1A)++(s6Step29Add0B++s6Step29Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29F4_apart : Disjoint (s6Step29Add0A++s6Step29Add0B).toFinset (s6Step29Add1A++s6Step29Add1B).toFinset := by
  have nd : ((s6Step29Add0A++s6Step29Add0B)++(s6Step29Add1A++s6Step29Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step29F4Plan : HmrHybridF4Plan := ⟨s6Step29F4FlagArena,[877],s6Step29Add0Arena,[855],s6Step29Add0During,s6Step29Add0Work,s6Step29Add1During,s6Step29Add1Work⟩
theorem s6Step29F4_checked : compileHmrHybridF4Log s6Step29HeadFvAfter 768 881 s6Step29Add0A s6Step29Add0B s6Step29Add1A s6Step29Add1B [877] [855] s6Step29Add0Work s6Step29Add1Work=some s6Step29F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step29HeadFvAfter s6Step29F4FlagArena s6Step29Add0Arena s6Step29Add0During s6Step29Add1During 768 881
    s6Step29Add0A s6Step29Add0B s6Step29Add1A s6Step29Add1B [877] [855] s6Step29Add0Work s6Step29Add1Work
    (fun q hq => s6Step29F4_owned (List.mem_toFinset.mpr hq)) s6Step29F4_flag s6Step29F4_carry
    s6Step29F4_distinct s6Step29F4_apart s6Step29Add0_checked s6Step29Add1_checked
def s6Step30F4FlagArena : Arena := ⟨s6Step30HeadFvAfter.live∪{877},Finset.union_subset s6Step30HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step30F4_flag : s6Step30HeadFvAfter.checkBorrow 1 [877]=some s6Step30F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step30HeadFvAfter,arenaWires]
  · rfl
theorem s6Step30F4_carry : s6Step30F4FlagArena.checkBorrow 1 [855]=some s6Step30Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step30F4FlagArena,s6Step30HeadFvAfter,arenaWires]
  · change s6Step30Add0Arena.live=(s6Step30HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step30HeadFvAfter s6Step30Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step30F4_owned : (802::793::((s6Step30Add0A++s6Step30Add1A)++(s6Step30Add0B++s6Step30Add1B))).toFinset⊆s6Step30HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step30HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30F4_distinct : (802::793::877::855::((s6Step30Add0A++s6Step30Add1A)++(s6Step30Add0B++s6Step30Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30F4_apart : Disjoint (s6Step30Add0A++s6Step30Add0B).toFinset (s6Step30Add1A++s6Step30Add1B).toFinset := by
  have nd : ((s6Step30Add0A++s6Step30Add0B)++(s6Step30Add1A++s6Step30Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step30F4Plan : HmrHybridF4Plan := ⟨s6Step30F4FlagArena,[877],s6Step30Add0Arena,[855],s6Step30Add0During,s6Step30Add0Work,s6Step30Add1During,s6Step30Add1Work⟩
theorem s6Step30F4_checked : compileHmrHybridF4Log s6Step30HeadFvAfter 802 793 s6Step30Add0A s6Step30Add0B s6Step30Add1A s6Step30Add1B [877] [855] s6Step30Add0Work s6Step30Add1Work=some s6Step30F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step30HeadFvAfter s6Step30F4FlagArena s6Step30Add0Arena s6Step30Add0During s6Step30Add1During 802 793
    s6Step30Add0A s6Step30Add0B s6Step30Add1A s6Step30Add1B [877] [855] s6Step30Add0Work s6Step30Add1Work
    (fun q hq => s6Step30F4_owned (List.mem_toFinset.mpr hq)) s6Step30F4_flag s6Step30F4_carry
    s6Step30F4_distinct s6Step30F4_apart s6Step30Add0_checked s6Step30Add1_checked

end ECDSAAdd.Arithmetic.Paper935
