import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk3

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31F4FlagArena : Arena := ⟨s6Step31HeadFvAfter.live∪{877},Finset.union_subset s6Step31HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step31F4_flag : s6Step31HeadFvAfter.checkBorrow 1 [877]=some s6Step31F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step31HeadFvAfter,s6Step30HeadFvAfter,arenaWires]
  · rfl
theorem s6Step31F4_carry : s6Step31F4FlagArena.checkBorrow 1 [855]=some s6Step31Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step31F4FlagArena,s6Step31HeadFvAfter,s6Step30HeadFvAfter,arenaWires]
  · change s6Step31Add0Arena.live=(s6Step31HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step31HeadFvAfter s6Step31Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step31F4_owned : (874::859::((s6Step31Add0A++s6Step31Add1A)++(s6Step31Add0B++s6Step31Add1B))).toFinset⊆s6Step31HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step31HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31F4_distinct : (874::859::877::855::((s6Step31Add0A++s6Step31Add1A)++(s6Step31Add0B++s6Step31Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31F4_apart : Disjoint (s6Step31Add0A++s6Step31Add0B).toFinset (s6Step31Add1A++s6Step31Add1B).toFinset := by
  have nd : ((s6Step31Add0A++s6Step31Add0B)++(s6Step31Add1A++s6Step31Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step31F4Plan : HmrHybridF4Plan := ⟨s6Step31F4FlagArena,[877],s6Step31Add0Arena,[855],s6Step31Add0During,s6Step31Add0Work,s6Step31Add1During,s6Step31Add1Work⟩
theorem s6Step31F4_checked : compileHmrHybridF4Log s6Step31HeadFvAfter 874 859 s6Step31Add0A s6Step31Add0B s6Step31Add1A s6Step31Add1B [877] [855] s6Step31Add0Work s6Step31Add1Work=some s6Step31F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step31HeadFvAfter s6Step31F4FlagArena s6Step31Add0Arena s6Step31Add0During s6Step31Add1During 874 859
    s6Step31Add0A s6Step31Add0B s6Step31Add1A s6Step31Add1B [877] [855] s6Step31Add0Work s6Step31Add1Work
    (fun q hq => s6Step31F4_owned (List.mem_toFinset.mpr hq)) s6Step31F4_flag s6Step31F4_carry
    s6Step31F4_distinct s6Step31F4_apart s6Step31Add0_checked s6Step31Add1_checked
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
