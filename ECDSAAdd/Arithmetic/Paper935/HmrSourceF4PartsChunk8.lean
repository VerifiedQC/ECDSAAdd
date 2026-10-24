import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk7

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step63F4FlagArena : Arena := ⟨s6Step63HeadFvAfter.live∪{822},Finset.union_subset s6Step63HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step63F4_flag : s6Step63HeadFvAfter.checkBorrow 1 [822]=some s6Step63F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step63HeadFvAfter,arenaWires]
  · rfl
theorem s6Step63F4_carry : s6Step63F4FlagArena.checkBorrow 1 [875]=some s6Step63Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step63F4FlagArena,s6Step63HeadFvAfter,arenaWires]
  · change s6Step63Add0Arena.live=(s6Step63HeadFvAfter.live∪{822})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step63HeadFvAfter s6Step63Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 822 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step63F4_owned : (888::778::((s6Step63Add0A++s6Step63Add1A)++(s6Step63Add0B++s6Step63Add1B))).toFinset⊆s6Step63HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step63HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63F4_distinct : (888::778::822::875::((s6Step63Add0A++s6Step63Add1A)++(s6Step63Add0B++s6Step63Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step63F4_apart : Disjoint (s6Step63Add0A++s6Step63Add0B).toFinset (s6Step63Add1A++s6Step63Add1B).toFinset := by
  have nd : ((s6Step63Add0A++s6Step63Add0B)++(s6Step63Add1A++s6Step63Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step63F4Plan : HmrHybridF4Plan := ⟨s6Step63F4FlagArena,[822],s6Step63Add0Arena,[875],s6Step63Add0During,s6Step63Add0Work,s6Step63Add1During,s6Step63Add1Work⟩
theorem s6Step63F4_checked : compileHmrHybridF4Log s6Step63HeadFvAfter 888 778 s6Step63Add0A s6Step63Add0B s6Step63Add1A s6Step63Add1B [822] [875] s6Step63Add0Work s6Step63Add1Work=some s6Step63F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step63HeadFvAfter s6Step63F4FlagArena s6Step63Add0Arena s6Step63Add0During s6Step63Add1During 888 778
    s6Step63Add0A s6Step63Add0B s6Step63Add1A s6Step63Add1B [822] [875] s6Step63Add0Work s6Step63Add1Work
    (fun q hq => s6Step63F4_owned (List.mem_toFinset.mpr hq)) s6Step63F4_flag s6Step63F4_carry
    s6Step63F4_distinct s6Step63F4_apart s6Step63Add0_checked s6Step63Add1_checked
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
