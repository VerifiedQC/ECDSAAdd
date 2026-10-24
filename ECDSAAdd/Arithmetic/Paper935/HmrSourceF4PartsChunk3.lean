import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48F4FlagArena : Arena := ⟨s2Step48HeadFvAfter.live∪{792},Finset.union_subset s2Step48HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step48F4_flag : s2Step48HeadFvAfter.checkBorrow 1 [792]=some s2Step48F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step48HeadFvAfter,arenaWires]
  · rfl
theorem s2Step48F4_carry : s2Step48F4FlagArena.checkBorrow 1 [800]=some s2Step48Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step48F4FlagArena,s2Step48HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step48F4FlagArena,s2Step48HeadFvAfter,s2Step48Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48F4_owned : (798::803::((s2Step48Add0A++s2Step48Add1A)++(s2Step48Add0B++s2Step48Add1B))).toFinset⊆s2Step48HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48F4_distinct : (798::803::792::800::((s2Step48Add0A++s2Step48Add1A)++(s2Step48Add0B++s2Step48Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48F4_apart : Disjoint (s2Step48Add0A++s2Step48Add0B).toFinset (s2Step48Add1A++s2Step48Add1B).toFinset := by
  have nd : ((s2Step48Add0A++s2Step48Add0B)++(s2Step48Add1A++s2Step48Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step48F4Plan : HmrHybridF4Plan := ⟨s2Step48F4FlagArena,[792],s2Step48Add0Arena,[800],s2Step48Add0During,s2Step48Add0Work,s2Step48Add1During,s2Step48Add1Work⟩
theorem s2Step48F4_checked : compileHmrHybridF4Log s2Step48HeadFvAfter 798 803 s2Step48Add0A s2Step48Add0B s2Step48Add1A s2Step48Add1B [792] [800] s2Step48Add0Work s2Step48Add1Work=some s2Step48F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step48HeadFvAfter s2Step48F4FlagArena s2Step48Add0Arena s2Step48Add0During s2Step48Add1During 798 803
    s2Step48Add0A s2Step48Add0B s2Step48Add1A s2Step48Add1B [792] [800] s2Step48Add0Work s2Step48Add1Work
    (fun q hq => s2Step48F4_owned (List.mem_toFinset.mpr hq)) s2Step48F4_flag s2Step48F4_carry
    s2Step48F4_distinct s2Step48F4_apart s2Step48Add0_checked s2Step48Add1_checked
def s2Step49F4FlagArena : Arena := ⟨s2Step49HeadFvAfter.live∪{792},Finset.union_subset s2Step49HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step49F4_flag : s2Step49HeadFvAfter.checkBorrow 1 [792]=some s2Step49F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step49HeadFvAfter,s2Step48HeadFvAfter,arenaWires]
  · rfl
theorem s2Step49F4_carry : s2Step49F4FlagArena.checkBorrow 1 [800]=some s2Step49Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step49F4FlagArena,s2Step49HeadFvAfter,s2Step48HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step49F4FlagArena,s2Step49HeadFvAfter,s2Step48HeadFvAfter,s2Step49Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49F4_owned : (798::808::((s2Step49Add0A++s2Step49Add1A)++(s2Step49Add0B++s2Step49Add1B))).toFinset⊆s2Step49HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49F4_distinct : (798::808::792::800::((s2Step49Add0A++s2Step49Add1A)++(s2Step49Add0B++s2Step49Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49F4_apart : Disjoint (s2Step49Add0A++s2Step49Add0B).toFinset (s2Step49Add1A++s2Step49Add1B).toFinset := by
  have nd : ((s2Step49Add0A++s2Step49Add0B)++(s2Step49Add1A++s2Step49Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step49F4Plan : HmrHybridF4Plan := ⟨s2Step49F4FlagArena,[792],s2Step49Add0Arena,[800],s2Step49Add0During,s2Step49Add0Work,s2Step49Add1During,s2Step49Add1Work⟩
theorem s2Step49F4_checked : compileHmrHybridF4Log s2Step49HeadFvAfter 798 808 s2Step49Add0A s2Step49Add0B s2Step49Add1A s2Step49Add1B [792] [800] s2Step49Add0Work s2Step49Add1Work=some s2Step49F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step49HeadFvAfter s2Step49F4FlagArena s2Step49Add0Arena s2Step49Add0During s2Step49Add1During 798 808
    s2Step49Add0A s2Step49Add0B s2Step49Add1A s2Step49Add1B [792] [800] s2Step49Add0Work s2Step49Add1Work
    (fun q hq => s2Step49F4_owned (List.mem_toFinset.mpr hq)) s2Step49F4_flag s2Step49F4_carry
    s2Step49F4_distinct s2Step49F4_apart s2Step49Add0_checked s2Step49Add1_checked
def s2Step50F4FlagArena : Arena := ⟨s2Step50HeadFvAfter.live∪{792},Finset.union_subset s2Step50HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step50F4_flag : s2Step50HeadFvAfter.checkBorrow 1 [792]=some s2Step50F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step50HeadFvAfter,arenaWires]
  · rfl
theorem s2Step50F4_carry : s2Step50F4FlagArena.checkBorrow 1 [800]=some s2Step50Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step50F4FlagArena,s2Step50HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step50F4FlagArena,s2Step50HeadFvAfter,s2Step50Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50F4_owned : (798::807::((s2Step50Add0A++s2Step50Add1A)++(s2Step50Add0B++s2Step50Add1B))).toFinset⊆s2Step50HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50F4_distinct : (798::807::792::800::((s2Step50Add0A++s2Step50Add1A)++(s2Step50Add0B++s2Step50Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50F4_apart : Disjoint (s2Step50Add0A++s2Step50Add0B).toFinset (s2Step50Add1A++s2Step50Add1B).toFinset := by
  have nd : ((s2Step50Add0A++s2Step50Add0B)++(s2Step50Add1A++s2Step50Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step50F4Plan : HmrHybridF4Plan := ⟨s2Step50F4FlagArena,[792],s2Step50Add0Arena,[800],s2Step50Add0During,s2Step50Add0Work,s2Step50Add1During,s2Step50Add1Work⟩
theorem s2Step50F4_checked : compileHmrHybridF4Log s2Step50HeadFvAfter 798 807 s2Step50Add0A s2Step50Add0B s2Step50Add1A s2Step50Add1B [792] [800] s2Step50Add0Work s2Step50Add1Work=some s2Step50F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step50HeadFvAfter s2Step50F4FlagArena s2Step50Add0Arena s2Step50Add0During s2Step50Add1During 798 807
    s2Step50Add0A s2Step50Add0B s2Step50Add1A s2Step50Add1B [792] [800] s2Step50Add0Work s2Step50Add1Work
    (fun q hq => s2Step50F4_owned (List.mem_toFinset.mpr hq)) s2Step50F4_flag s2Step50F4_carry
    s2Step50F4_distinct s2Step50F4_apart s2Step50Add0_checked s2Step50Add1_checked
def s2Step51F4FlagArena : Arena := ⟨s2Step51HeadFvAfter.live∪{792},Finset.union_subset s2Step51HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step51F4_flag : s2Step51HeadFvAfter.checkBorrow 1 [792]=some s2Step51F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step51HeadFvAfter,s2Step50HeadFvAfter,arenaWires]
  · rfl
theorem s2Step51F4_carry : s2Step51F4FlagArena.checkBorrow 1 [800]=some s2Step51Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step51F4FlagArena,s2Step51HeadFvAfter,s2Step50HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step51F4FlagArena,s2Step51HeadFvAfter,s2Step50HeadFvAfter,s2Step51Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51F4_owned : (810::808::((s2Step51Add0A++s2Step51Add1A)++(s2Step51Add0B++s2Step51Add1B))).toFinset⊆s2Step51HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51F4_distinct : (810::808::792::800::((s2Step51Add0A++s2Step51Add1A)++(s2Step51Add0B++s2Step51Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51F4_apart : Disjoint (s2Step51Add0A++s2Step51Add0B).toFinset (s2Step51Add1A++s2Step51Add1B).toFinset := by
  have nd : ((s2Step51Add0A++s2Step51Add0B)++(s2Step51Add1A++s2Step51Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step51F4Plan : HmrHybridF4Plan := ⟨s2Step51F4FlagArena,[792],s2Step51Add0Arena,[800],s2Step51Add0During,s2Step51Add0Work,s2Step51Add1During,s2Step51Add1Work⟩
theorem s2Step51F4_checked : compileHmrHybridF4Log s2Step51HeadFvAfter 810 808 s2Step51Add0A s2Step51Add0B s2Step51Add1A s2Step51Add1B [792] [800] s2Step51Add0Work s2Step51Add1Work=some s2Step51F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step51HeadFvAfter s2Step51F4FlagArena s2Step51Add0Arena s2Step51Add0During s2Step51Add1During 810 808
    s2Step51Add0A s2Step51Add0B s2Step51Add1A s2Step51Add1B [792] [800] s2Step51Add0Work s2Step51Add1Work
    (fun q hq => s2Step51F4_owned (List.mem_toFinset.mpr hq)) s2Step51F4_flag s2Step51F4_carry
    s2Step51F4_distinct s2Step51F4_apart s2Step51Add0_checked s2Step51Add1_checked
def s2Step52F4FlagArena : Arena := ⟨s2Step52HeadFvAfter.live∪{792},Finset.union_subset s2Step52HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step52F4_flag : s2Step52HeadFvAfter.checkBorrow 1 [792]=some s2Step52F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52HeadFvAfter,arenaWires]
  · rfl
theorem s2Step52F4_carry : s2Step52F4FlagArena.checkBorrow 1 [800]=some s2Step52Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52F4FlagArena,s2Step52HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step52F4FlagArena,s2Step52HeadFvAfter,s2Step52Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52F4_owned : (810::809::((s2Step52Add0A++s2Step52Add1A)++(s2Step52Add0B++s2Step52Add1B))).toFinset⊆s2Step52HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52F4_distinct : (810::809::792::800::((s2Step52Add0A++s2Step52Add1A)++(s2Step52Add0B++s2Step52Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52F4_apart : Disjoint (s2Step52Add0A++s2Step52Add0B).toFinset (s2Step52Add1A++s2Step52Add1B).toFinset := by
  have nd : ((s2Step52Add0A++s2Step52Add0B)++(s2Step52Add1A++s2Step52Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step52F4Plan : HmrHybridF4Plan := ⟨s2Step52F4FlagArena,[792],s2Step52Add0Arena,[800],s2Step52Add0During,s2Step52Add0Work,s2Step52Add1During,s2Step52Add1Work⟩
theorem s2Step52F4_checked : compileHmrHybridF4Log s2Step52HeadFvAfter 810 809 s2Step52Add0A s2Step52Add0B s2Step52Add1A s2Step52Add1B [792] [800] s2Step52Add0Work s2Step52Add1Work=some s2Step52F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step52HeadFvAfter s2Step52F4FlagArena s2Step52Add0Arena s2Step52Add0During s2Step52Add1During 810 809
    s2Step52Add0A s2Step52Add0B s2Step52Add1A s2Step52Add1B [792] [800] s2Step52Add0Work s2Step52Add1Work
    (fun q hq => s2Step52F4_owned (List.mem_toFinset.mpr hq)) s2Step52F4_flag s2Step52F4_carry
    s2Step52F4_distinct s2Step52F4_apart s2Step52Add0_checked s2Step52Add1_checked
def s2Step53F4FlagArena : Arena := ⟨s2Step53HeadFvAfter.live∪{787},Finset.union_subset s2Step53HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step53F4_flag : s2Step53HeadFvAfter.checkBorrow 1 [787]=some s2Step53F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step53HeadFvAfter,arenaWires]
  · rfl
theorem s2Step53F4_carry : s2Step53F4FlagArena.checkBorrow 1 [790]=some s2Step53Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step53F4FlagArena,s2Step53HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step53F4FlagArena,s2Step53HeadFvAfter,s2Step53Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53F4_owned : (810::811::((s2Step53Add0A++s2Step53Add1A)++(s2Step53Add0B++s2Step53Add1B))).toFinset⊆s2Step53HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53F4_distinct : (810::811::787::790::((s2Step53Add0A++s2Step53Add1A)++(s2Step53Add0B++s2Step53Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53F4_apart : Disjoint (s2Step53Add0A++s2Step53Add0B).toFinset (s2Step53Add1A++s2Step53Add1B).toFinset := by
  have nd : ((s2Step53Add0A++s2Step53Add0B)++(s2Step53Add1A++s2Step53Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step53F4Plan : HmrHybridF4Plan := ⟨s2Step53F4FlagArena,[787],s2Step53Add0Arena,[790],s2Step53Add0During,s2Step53Add0Work,s2Step53Add1During,s2Step53Add1Work⟩
theorem s2Step53F4_checked : compileHmrHybridF4Log s2Step53HeadFvAfter 810 811 s2Step53Add0A s2Step53Add0B s2Step53Add1A s2Step53Add1B [787] [790] s2Step53Add0Work s2Step53Add1Work=some s2Step53F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step53HeadFvAfter s2Step53F4FlagArena s2Step53Add0Arena s2Step53Add0During s2Step53Add1During 810 811
    s2Step53Add0A s2Step53Add0B s2Step53Add1A s2Step53Add1B [787] [790] s2Step53Add0Work s2Step53Add1Work
    (fun q hq => s2Step53F4_owned (List.mem_toFinset.mpr hq)) s2Step53F4_flag s2Step53F4_carry
    s2Step53F4_distinct s2Step53F4_apart s2Step53Add0_checked s2Step53Add1_checked
def s2Step54F4FlagArena : Arena := ⟨s2Step54HeadFvAfter.live∪{792},Finset.union_subset s2Step54HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step54F4_flag : s2Step54HeadFvAfter.checkBorrow 1 [792]=some s2Step54F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step54HeadFvAfter,arenaWires]
  · rfl
theorem s2Step54F4_carry : s2Step54F4FlagArena.checkBorrow 1 [800]=some s2Step54Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step54F4FlagArena,s2Step54HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step54F4FlagArena,s2Step54HeadFvAfter,s2Step54Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54F4_owned : (810::807::((s2Step54Add0A++s2Step54Add1A)++(s2Step54Add0B++s2Step54Add1B))).toFinset⊆s2Step54HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54F4_distinct : (810::807::792::800::((s2Step54Add0A++s2Step54Add1A)++(s2Step54Add0B++s2Step54Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54F4_apart : Disjoint (s2Step54Add0A++s2Step54Add0B).toFinset (s2Step54Add1A++s2Step54Add1B).toFinset := by
  have nd : ((s2Step54Add0A++s2Step54Add0B)++(s2Step54Add1A++s2Step54Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step54F4Plan : HmrHybridF4Plan := ⟨s2Step54F4FlagArena,[792],s2Step54Add0Arena,[800],s2Step54Add0During,s2Step54Add0Work,s2Step54Add1During,s2Step54Add1Work⟩
theorem s2Step54F4_checked : compileHmrHybridF4Log s2Step54HeadFvAfter 810 807 s2Step54Add0A s2Step54Add0B s2Step54Add1A s2Step54Add1B [792] [800] s2Step54Add0Work s2Step54Add1Work=some s2Step54F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step54HeadFvAfter s2Step54F4FlagArena s2Step54Add0Arena s2Step54Add0During s2Step54Add1During 810 807
    s2Step54Add0A s2Step54Add0B s2Step54Add1A s2Step54Add1B [792] [800] s2Step54Add0Work s2Step54Add1Work
    (fun q hq => s2Step54F4_owned (List.mem_toFinset.mpr hq)) s2Step54F4_flag s2Step54F4_carry
    s2Step54F4_distinct s2Step54F4_apart s2Step54Add0_checked s2Step54Add1_checked
def s2Step55F4FlagArena : Arena := ⟨s2Step55HeadFvAfter.live∪{844},Finset.union_subset s2Step55HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step55F4_flag : s2Step55HeadFvAfter.checkBorrow 1 [844]=some s2Step55F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step55HeadFvAfter,arenaWires]
  · rfl
theorem s2Step55F4_carry : s2Step55F4FlagArena.checkBorrow 1 [845]=some s2Step55Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step55F4FlagArena,s2Step55HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step55F4FlagArena,s2Step55HeadFvAfter,s2Step55Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55F4_owned : (815::787::((s2Step55Add0A++s2Step55Add1A)++(s2Step55Add0B++s2Step55Add1B))).toFinset⊆s2Step55HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55F4_distinct : (815::787::844::845::((s2Step55Add0A++s2Step55Add1A)++(s2Step55Add0B++s2Step55Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55F4_apart : Disjoint (s2Step55Add0A++s2Step55Add0B).toFinset (s2Step55Add1A++s2Step55Add1B).toFinset := by
  have nd : ((s2Step55Add0A++s2Step55Add0B)++(s2Step55Add1A++s2Step55Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step55F4Plan : HmrHybridF4Plan := ⟨s2Step55F4FlagArena,[844],s2Step55Add0Arena,[845],s2Step55Add0During,s2Step55Add0Work,s2Step55Add1During,s2Step55Add1Work⟩
theorem s2Step55F4_checked : compileHmrHybridF4Log s2Step55HeadFvAfter 815 787 s2Step55Add0A s2Step55Add0B s2Step55Add1A s2Step55Add1B [844] [845] s2Step55Add0Work s2Step55Add1Work=some s2Step55F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step55HeadFvAfter s2Step55F4FlagArena s2Step55Add0Arena s2Step55Add0During s2Step55Add1During 815 787
    s2Step55Add0A s2Step55Add0B s2Step55Add1A s2Step55Add1B [844] [845] s2Step55Add0Work s2Step55Add1Work
    (fun q hq => s2Step55F4_owned (List.mem_toFinset.mpr hq)) s2Step55F4_flag s2Step55F4_carry
    s2Step55F4_distinct s2Step55F4_apart s2Step55Add0_checked s2Step55Add1_checked
def s2Step56F4FlagArena : Arena := ⟨s2Step56HeadFvAfter.live∪{807},Finset.union_subset s2Step56HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step56F4_flag : s2Step56HeadFvAfter.checkBorrow 1 [807]=some s2Step56F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step56HeadFvAfter,arenaWires]
  · rfl
theorem s2Step56F4_carry : s2Step56F4FlagArena.checkBorrow 1 [812]=some s2Step56Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step56F4FlagArena,s2Step56HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step56F4FlagArena,s2Step56HeadFvAfter,s2Step56Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56F4_owned : (815::814::((s2Step56Add0A++s2Step56Add1A)++(s2Step56Add0B++s2Step56Add1B))).toFinset⊆s2Step56HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56F4_distinct : (815::814::807::812::((s2Step56Add0A++s2Step56Add1A)++(s2Step56Add0B++s2Step56Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56F4_apart : Disjoint (s2Step56Add0A++s2Step56Add0B).toFinset (s2Step56Add1A++s2Step56Add1B).toFinset := by
  have nd : ((s2Step56Add0A++s2Step56Add0B)++(s2Step56Add1A++s2Step56Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step56F4Plan : HmrHybridF4Plan := ⟨s2Step56F4FlagArena,[807],s2Step56Add0Arena,[812],s2Step56Add0During,s2Step56Add0Work,s2Step56Add1During,s2Step56Add1Work⟩
theorem s2Step56F4_checked : compileHmrHybridF4Log s2Step56HeadFvAfter 815 814 s2Step56Add0A s2Step56Add0B s2Step56Add1A s2Step56Add1B [807] [812] s2Step56Add0Work s2Step56Add1Work=some s2Step56F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step56HeadFvAfter s2Step56F4FlagArena s2Step56Add0Arena s2Step56Add0During s2Step56Add1During 815 814
    s2Step56Add0A s2Step56Add0B s2Step56Add1A s2Step56Add1B [807] [812] s2Step56Add0Work s2Step56Add1Work
    (fun q hq => s2Step56F4_owned (List.mem_toFinset.mpr hq)) s2Step56F4_flag s2Step56F4_carry
    s2Step56F4_distinct s2Step56F4_apart s2Step56Add0_checked s2Step56Add1_checked
def s2Step57F4FlagArena : Arena := ⟨s2Step57HeadFvAfter.live∪{807},Finset.union_subset s2Step57HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step57F4_flag : s2Step57HeadFvAfter.checkBorrow 1 [807]=some s2Step57F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57HeadFvAfter,s2Step56HeadFvAfter,arenaWires]
  · rfl
theorem s2Step57F4_carry : s2Step57F4FlagArena.checkBorrow 1 [812]=some s2Step57Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57F4FlagArena,s2Step57HeadFvAfter,s2Step56HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step57F4FlagArena,s2Step57HeadFvAfter,s2Step56HeadFvAfter,s2Step57Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57F4_owned : (815::817::((s2Step57Add0A++s2Step57Add1A)++(s2Step57Add0B++s2Step57Add1B))).toFinset⊆s2Step57HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57F4_distinct : (815::817::807::812::((s2Step57Add0A++s2Step57Add1A)++(s2Step57Add0B++s2Step57Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57F4_apart : Disjoint (s2Step57Add0A++s2Step57Add0B).toFinset (s2Step57Add1A++s2Step57Add1B).toFinset := by
  have nd : ((s2Step57Add0A++s2Step57Add0B)++(s2Step57Add1A++s2Step57Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step57F4Plan : HmrHybridF4Plan := ⟨s2Step57F4FlagArena,[807],s2Step57Add0Arena,[812],s2Step57Add0During,s2Step57Add0Work,s2Step57Add1During,s2Step57Add1Work⟩
theorem s2Step57F4_checked : compileHmrHybridF4Log s2Step57HeadFvAfter 815 817 s2Step57Add0A s2Step57Add0B s2Step57Add1A s2Step57Add1B [807] [812] s2Step57Add0Work s2Step57Add1Work=some s2Step57F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step57HeadFvAfter s2Step57F4FlagArena s2Step57Add0Arena s2Step57Add0During s2Step57Add1During 815 817
    s2Step57Add0A s2Step57Add0B s2Step57Add1A s2Step57Add1B [807] [812] s2Step57Add0Work s2Step57Add1Work
    (fun q hq => s2Step57F4_owned (List.mem_toFinset.mpr hq)) s2Step57F4_flag s2Step57F4_carry
    s2Step57F4_distinct s2Step57F4_apart s2Step57Add0_checked s2Step57Add1_checked
def s2Step58F4FlagArena : Arena := ⟨s2Step58HeadFvAfter.live∪{814},Finset.union_subset s2Step58HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step58F4_flag : s2Step58HeadFvAfter.checkBorrow 1 [814]=some s2Step58F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step58HeadFvAfter,arenaWires]
  · rfl
theorem s2Step58F4_carry : s2Step58F4FlagArena.checkBorrow 1 [800]=some s2Step58Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step58F4FlagArena,s2Step58HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step58F4FlagArena,s2Step58HeadFvAfter,s2Step58Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58F4_owned : (815::816::((s2Step58Add0A++s2Step58Add1A)++(s2Step58Add0B++s2Step58Add1B))).toFinset⊆s2Step58HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58F4_distinct : (815::816::814::800::((s2Step58Add0A++s2Step58Add1A)++(s2Step58Add0B++s2Step58Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58F4_apart : Disjoint (s2Step58Add0A++s2Step58Add0B).toFinset (s2Step58Add1A++s2Step58Add1B).toFinset := by
  have nd : ((s2Step58Add0A++s2Step58Add0B)++(s2Step58Add1A++s2Step58Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step58F4Plan : HmrHybridF4Plan := ⟨s2Step58F4FlagArena,[814],s2Step58Add0Arena,[800],s2Step58Add0During,s2Step58Add0Work,s2Step58Add1During,s2Step58Add1Work⟩
theorem s2Step58F4_checked : compileHmrHybridF4Log s2Step58HeadFvAfter 815 816 s2Step58Add0A s2Step58Add0B s2Step58Add1A s2Step58Add1B [814] [800] s2Step58Add0Work s2Step58Add1Work=some s2Step58F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step58HeadFvAfter s2Step58F4FlagArena s2Step58Add0Arena s2Step58Add0During s2Step58Add1During 815 816
    s2Step58Add0A s2Step58Add0B s2Step58Add1A s2Step58Add1B [814] [800] s2Step58Add0Work s2Step58Add1Work
    (fun q hq => s2Step58F4_owned (List.mem_toFinset.mpr hq)) s2Step58F4_flag s2Step58F4_carry
    s2Step58F4_distinct s2Step58F4_apart s2Step58Add0_checked s2Step58Add1_checked
def s2Step59F4FlagArena : Arena := ⟨s2Step59HeadFvAfter.live∪{807},Finset.union_subset s2Step59HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step59F4_flag : s2Step59HeadFvAfter.checkBorrow 1 [807]=some s2Step59F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step59HeadFvAfter,s2Step56HeadFvAfter,arenaWires]
  · rfl
theorem s2Step59F4_carry : s2Step59F4FlagArena.checkBorrow 1 [812]=some s2Step59Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step59F4FlagArena,s2Step59HeadFvAfter,s2Step56HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step59F4FlagArena,s2Step59HeadFvAfter,s2Step56HeadFvAfter,s2Step59Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59F4_owned : (792::790::((s2Step59Add0A++s2Step59Add1A)++(s2Step59Add0B++s2Step59Add1B))).toFinset⊆s2Step59HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59F4_distinct : (792::790::807::812::((s2Step59Add0A++s2Step59Add1A)++(s2Step59Add0B++s2Step59Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59F4_apart : Disjoint (s2Step59Add0A++s2Step59Add0B).toFinset (s2Step59Add1A++s2Step59Add1B).toFinset := by
  have nd : ((s2Step59Add0A++s2Step59Add0B)++(s2Step59Add1A++s2Step59Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step59F4Plan : HmrHybridF4Plan := ⟨s2Step59F4FlagArena,[807],s2Step59Add0Arena,[812],s2Step59Add0During,s2Step59Add0Work,s2Step59Add1During,s2Step59Add1Work⟩
theorem s2Step59F4_checked : compileHmrHybridF4Log s2Step59HeadFvAfter 792 790 s2Step59Add0A s2Step59Add0B s2Step59Add1A s2Step59Add1B [807] [812] s2Step59Add0Work s2Step59Add1Work=some s2Step59F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step59HeadFvAfter s2Step59F4FlagArena s2Step59Add0Arena s2Step59Add0During s2Step59Add1During 792 790
    s2Step59Add0A s2Step59Add0B s2Step59Add1A s2Step59Add1B [807] [812] s2Step59Add0Work s2Step59Add1Work
    (fun q hq => s2Step59F4_owned (List.mem_toFinset.mpr hq)) s2Step59F4_flag s2Step59F4_carry
    s2Step59F4_distinct s2Step59F4_apart s2Step59Add0_checked s2Step59Add1_checked
def s2Step60F4FlagArena : Arena := ⟨s2Step60HeadFvAfter.live∪{844},Finset.union_subset s2Step60HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step60F4_flag : s2Step60HeadFvAfter.checkBorrow 1 [844]=some s2Step60F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step60HeadFvAfter,arenaWires]
  · rfl
theorem s2Step60F4_carry : s2Step60F4FlagArena.checkBorrow 1 [845]=some s2Step60Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step60F4FlagArena,s2Step60HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step60F4FlagArena,s2Step60HeadFvAfter,s2Step60Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60F4_owned : (814::820::((s2Step60Add0A++s2Step60Add1A)++(s2Step60Add0B++s2Step60Add1B))).toFinset⊆s2Step60HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60F4_distinct : (814::820::844::845::((s2Step60Add0A++s2Step60Add1A)++(s2Step60Add0B++s2Step60Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60F4_apart : Disjoint (s2Step60Add0A++s2Step60Add0B).toFinset (s2Step60Add1A++s2Step60Add1B).toFinset := by
  have nd : ((s2Step60Add0A++s2Step60Add0B)++(s2Step60Add1A++s2Step60Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step60F4Plan : HmrHybridF4Plan := ⟨s2Step60F4FlagArena,[844],s2Step60Add0Arena,[845],s2Step60Add0During,s2Step60Add0Work,s2Step60Add1During,s2Step60Add1Work⟩
theorem s2Step60F4_checked : compileHmrHybridF4Log s2Step60HeadFvAfter 814 820 s2Step60Add0A s2Step60Add0B s2Step60Add1A s2Step60Add1B [844] [845] s2Step60Add0Work s2Step60Add1Work=some s2Step60F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step60HeadFvAfter s2Step60F4FlagArena s2Step60Add0Arena s2Step60Add0During s2Step60Add1During 814 820
    s2Step60Add0A s2Step60Add0B s2Step60Add1A s2Step60Add1B [844] [845] s2Step60Add0Work s2Step60Add1Work
    (fun q hq => s2Step60F4_owned (List.mem_toFinset.mpr hq)) s2Step60F4_flag s2Step60F4_carry
    s2Step60F4_distinct s2Step60F4_apart s2Step60Add0_checked s2Step60Add1_checked
def s2Step61F4FlagArena : Arena := ⟨s2Step61HeadFvAfter.live∪{846},Finset.union_subset s2Step61HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step61F4_flag : s2Step61HeadFvAfter.checkBorrow 1 [846]=some s2Step61F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step61HeadFvAfter,arenaWires]
  · rfl
theorem s2Step61F4_carry : s2Step61F4FlagArena.checkBorrow 1 [847]=some s2Step61Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step61F4FlagArena,s2Step61HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step61F4FlagArena,s2Step61HeadFvAfter,s2Step61Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61F4_owned : (807::817::((s2Step61Add0A++s2Step61Add1A)++(s2Step61Add0B++s2Step61Add1B))).toFinset⊆s2Step61HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61F4_distinct : (807::817::846::847::((s2Step61Add0A++s2Step61Add1A)++(s2Step61Add0B++s2Step61Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61F4_apart : Disjoint (s2Step61Add0A++s2Step61Add0B).toFinset (s2Step61Add1A++s2Step61Add1B).toFinset := by
  have nd : ((s2Step61Add0A++s2Step61Add0B)++(s2Step61Add1A++s2Step61Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step61F4Plan : HmrHybridF4Plan := ⟨s2Step61F4FlagArena,[846],s2Step61Add0Arena,[847],s2Step61Add0During,s2Step61Add0Work,s2Step61Add1During,s2Step61Add1Work⟩
theorem s2Step61F4_checked : compileHmrHybridF4Log s2Step61HeadFvAfter 807 817 s2Step61Add0A s2Step61Add0B s2Step61Add1A s2Step61Add1B [846] [847] s2Step61Add0Work s2Step61Add1Work=some s2Step61F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step61HeadFvAfter s2Step61F4FlagArena s2Step61Add0Arena s2Step61Add0During s2Step61Add1During 807 817
    s2Step61Add0A s2Step61Add0B s2Step61Add1A s2Step61Add1B [846] [847] s2Step61Add0Work s2Step61Add1Work
    (fun q hq => s2Step61F4_owned (List.mem_toFinset.mpr hq)) s2Step61F4_flag s2Step61F4_carry
    s2Step61F4_distinct s2Step61F4_apart s2Step61Add0_checked s2Step61Add1_checked
def s2Step62F4FlagArena : Arena := ⟨s2Step62HeadFvAfter.live∪{814},Finset.union_subset s2Step62HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step62F4_flag : s2Step62HeadFvAfter.checkBorrow 1 [814]=some s2Step62F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step62HeadFvAfter,arenaWires]
  · rfl
theorem s2Step62F4_carry : s2Step62F4FlagArena.checkBorrow 1 [790]=some s2Step62Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step62F4FlagArena,s2Step62HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step62F4FlagArena,s2Step62HeadFvAfter,s2Step62Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62F4_owned : (819::822::((s2Step62Add0A++s2Step62Add1A)++(s2Step62Add0B++s2Step62Add1B))).toFinset⊆s2Step62HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62F4_distinct : (819::822::814::790::((s2Step62Add0A++s2Step62Add1A)++(s2Step62Add0B++s2Step62Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62F4_apart : Disjoint (s2Step62Add0A++s2Step62Add0B).toFinset (s2Step62Add1A++s2Step62Add1B).toFinset := by
  have nd : ((s2Step62Add0A++s2Step62Add0B)++(s2Step62Add1A++s2Step62Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step62F4Plan : HmrHybridF4Plan := ⟨s2Step62F4FlagArena,[814],s2Step62Add0Arena,[790],s2Step62Add0During,s2Step62Add0Work,s2Step62Add1During,s2Step62Add1Work⟩
theorem s2Step62F4_checked : compileHmrHybridF4Log s2Step62HeadFvAfter 819 822 s2Step62Add0A s2Step62Add0B s2Step62Add1A s2Step62Add1B [814] [790] s2Step62Add0Work s2Step62Add1Work=some s2Step62F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step62HeadFvAfter s2Step62F4FlagArena s2Step62Add0Arena s2Step62Add0During s2Step62Add1During 819 822
    s2Step62Add0A s2Step62Add0B s2Step62Add1A s2Step62Add1B [814] [790] s2Step62Add0Work s2Step62Add1Work
    (fun q hq => s2Step62F4_owned (List.mem_toFinset.mpr hq)) s2Step62F4_flag s2Step62F4_carry
    s2Step62F4_distinct s2Step62F4_apart s2Step62Add0_checked s2Step62Add1_checked
def s2Step63F4FlagArena : Arena := ⟨s2Step63HeadFvAfter.live∪{814},Finset.union_subset s2Step63HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step63F4_flag : s2Step63HeadFvAfter.checkBorrow 1 [814]=some s2Step63F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step63HeadFvAfter,arenaWires]
  · rfl
theorem s2Step63F4_carry : s2Step63F4FlagArena.checkBorrow 1 [790]=some s2Step63Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step63F4FlagArena,s2Step63HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step63F4FlagArena,s2Step63HeadFvAfter,s2Step63Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63F4_owned : (819::821::((s2Step63Add0A++s2Step63Add1A)++(s2Step63Add0B++s2Step63Add1B))).toFinset⊆s2Step63HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63F4_distinct : (819::821::814::790::((s2Step63Add0A++s2Step63Add1A)++(s2Step63Add0B++s2Step63Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63F4_apart : Disjoint (s2Step63Add0A++s2Step63Add0B).toFinset (s2Step63Add1A++s2Step63Add1B).toFinset := by
  have nd : ((s2Step63Add0A++s2Step63Add0B)++(s2Step63Add1A++s2Step63Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s2Step63F4Plan : HmrHybridF4Plan := ⟨s2Step63F4FlagArena,[814],s2Step63Add0Arena,[790],s2Step63Add0During,s2Step63Add0Work,s2Step63Add1During,s2Step63Add1Work⟩
theorem s2Step63F4_checked : compileHmrHybridF4Log s2Step63HeadFvAfter 819 821 s2Step63Add0A s2Step63Add0B s2Step63Add1A s2Step63Add1B [814] [790] s2Step63Add0Work s2Step63Add1Work=some s2Step63F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step63HeadFvAfter s2Step63F4FlagArena s2Step63Add0Arena s2Step63Add0During s2Step63Add1During 819 821
    s2Step63Add0A s2Step63Add0B s2Step63Add1A s2Step63Add1B [814] [790] s2Step63Add0Work s2Step63Add1Work
    (fun q hq => s2Step63F4_owned (List.mem_toFinset.mpr hq)) s2Step63F4_flag s2Step63F4_carry
    s2Step63F4_distinct s2Step63F4_apart s2Step63Add0_checked s2Step63Add1_checked

end ECDSAAdd.Arithmetic.Paper935
